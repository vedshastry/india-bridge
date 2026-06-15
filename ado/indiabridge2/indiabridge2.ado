/*
`indiabridge2`
! Version 2.0
Last updated: Vedarshi Shastry

indiabridge2 takes a vector of state strings in India and assigns identifiers by
fuzzy ("closest") string matching against the india-bridge dictionary, rather
than the hard-coded lookups of indiabridge v1.

Each matched unit carries:
    * a stable india-bridge project id   [id_st_ib]   - constant across time;
      units lost/transferred over time get a 999xxxx id
    * the matched census/LGD round id     [id_st_<round>]

	* use current year to pick the india-bridge round (census decade / LGD)
	* use from and to years to trim the candidate set to units that existed
	  within the data's time window (resolves names reused across eras)

District matching is not yet implemented (planned for a future release).
*/

cap prog drop indiabridge2
prog indiabridge2, sortpreserve
version 14.0

	syntax , 	CURRENTyear(numlist integer) ///
				FROMyear(numlist integer) TOyear(numlist integer) ///
				[STatename(varname string) ///
				DISTrictname(varname string) ///
				IDState(varlist numeric max=1) IDDistrict(varlist numeric max=1)]

	* Dependencies
		local pkglist "strkeep matchit"
		foreach pkg in `pkglist'{

			* confirm package existence and install if required
			cap which `pkg'
			if _rc {

				di as text "Dependency <`pkg'> not found. Attempting to install from ssc."
				ssc install `pkg'

			}

		}

	* Assert syntax

	* 1. Check if either state/district name +ID variable specified
	if "`statename'`districtname'" == "" {
			di as error "Please specify at least 1 out of statename() or districtname() to continue."
			exit 198
	}
	else {
		if "`statename'" != "" & "`idstate'" == "" {
			di as error "Syntax error: the ID variable for states in `statename' must be specified using idstate()."
			exit 198
		}
		if "`districtname'" != "" & "`iddistrict'" == "" {
			di as error "Syntax error: the ID variable for districts in `districtname' must be specified using iddistrict()."
			exit 198
		}
	}

	* 2. From/to years are valid
	if `fromyear' > `toyear' {
			di as error "From year (`fromyear') must be lesser than to year (`toyear')"
			exit 198
	}

	* Run matching program(s). State first; if both are given, the matched state
	* iso (__iso_st) scopes the district match to disambiguate repeated names.
	if "`statename'" != "" {
		ibmatch `statename' , state id(`idstate') ///
			currentyear(`currentyear') fromyear(`fromyear') toyear(`toyear')
	}

	if "`districtname'" != "" {
		local scopeopt ""
		capture confirm variable __iso_st
		if !_rc local scopeopt "isovar(__iso_st)"
		ibmatch_dist `districtname' , id(`iddistrict') ///
			currentyear(`currentyear') fromyear(`fromyear') toyear(`toyear') `scopeopt'
	}

end

*-------------------------------------------------------------------------------
* Subprograms
*-------------------------------------------------------------------------------

*-------------------------------------------------------------------------------
*** ibmatch : matches specified strings against the india-bridge dictionary
*-------------------------------------------------------------------------------
capture program drop ibmatch
program define ibmatch

	* input: name variable, round (census/LGD), id, year window
	syntax varlist(string max=1), id(varlist numeric max=1) ///
		[currentyear(numlist integer) fromyear(numlist integer) toyear(numlist integer) state district]

		* Assert ID variable
		isid `id'

		* Pull name variable
		local name "`1'"

		* District matching is not yet available
		if "`district'" != "" {
			di as error "District matching is not yet implemented in indiabridge2."
			exit 198
		}
		if "`state'" == "" {
			di as error "Syntax error: must specify the state option with ibmatch."
			exit 198
		}

		* Default the year window if called directly
		if "`fromyear'" == "" local fromyear 1951
		if "`toyear'"   == "" local toyear   9999

		* Map current year to the closest india-bridge round. Default to LGD.
		if "`currentyear'" != "" {
			local IBDECADE = round(`currentyear',10) + 1

			if !inrange(`IBDECADE',1951,2023) {
				di as error "Syntax error: current year must be between 1951-present"
				exit 198
			}
		}
		else {
			di as text "Current year not specified. Defaulting to Local Government Directory (LGD) 2023"
			local IBDECADE = 2023
		}

		** Assign the primary india-bridge round from currentyear
		if inlist(`IBDECADE',1951,1961,1971,1981,1991,2001,2011) {
			local IBROUND "cen`IBDECADE'"
		}
		else if `IBDECADE' > 2011 {
			local IBROUND "lgd"
		}

		* Round-specific id column (only census 2001/2011 and LGD carry a numeric code)
		local roundcol ""
		if inlist("`IBROUND'","cen2001","cen2011","lgd") local roundcol "id_st_`IBROUND'"

		* Candidate rounds = the primary round, plus any census round inside the
		* data window (so multi-year data still matches era-specific spellings).
		local candrounds `"`IBROUND'"'
		foreach y of numlist 1951 1961 1971 1981 1991 2001 2011 {
			if (`y' >= `fromyear') & (`y' <= `toyear') local candrounds `"`candrounds' cen`y'"'
		}

		* Locate the dictionaries alongside this ado (portable; no hard-coded path)
		findfile indiabridge2.ado
		local pkgdir = substr("`r(fn)'", 1, strlen("`r(fn)'") - strlen("indiabridge2.ado"))
		local crosswalk "`pkgdir'dict/state/st_crosswalk.csv"
		local yeardict  "`pkgdir'dict/state/st_year_dict.csv"

		capture confirm file "`crosswalk'"
		local rc1 = _rc
		capture confirm file "`yeardict'"
		if `rc1' | _rc {
			di as error "State dictionaries not found under `pkgdir'dict/state/"
			di as error "Re-generate them with src/code/prep_state_crosswalk.do, or reinstall indiabridge2."
			exit 601
		}

	* run quietly
	quietly {

	* Store current variable arrangement
	unab all_vars : *

	* Save current data in memory
	tempfile current
	save `current' , replace

		* Prepare list of names + ID from current data
		gen 	_IBtempid = `id'
		isid 	_IBtempid

		nois di as text _dup(80) "_"
		nois di "Matching cleaned `name' to india-bridge round (`IBROUND'), years `fromyear'-`toyear'"

		* clean name keeping only alphabets in lowercase
		strkeep 	`name' , alpha lower gen(_IBtempname)
		replace 	_IBtempname = ustrlower(_IBtempname)   // strkeep's lower doesn't lowercase; match lowercase dict

		* Keep keys
		keep 		`id' _IBtempid _IBtempname

		* Save input data
		tempfile input_names
		save `input_names' , replace

		* initiate new tempfile to store matches
		clear
		tempfile match
		save `match', emptyok

		** Stable registry: id_st_ib -> stable name, existence, round codes
		import delimited "`crosswalk'", varnames(1) stringcols(_all) clear
		destring from_year to_year , replace
		tempfile cross
		save `cross'

		** Round-aware candidate dictionary
		tempfile roundname
		import delimited "`yeardict'", varnames(1) stringcols(_all) clear

		* round-appropriate canonical name for the primary round
		preserve
			keep if round == "`IBROUND'"
			keep id_st_ib name_st_round
			rename name_st_round __name_st_`IBROUND'
			save `roundname'
		restore

		** Candidate dictionary: rows for the primary + in-window census rounds
		gen byte _keep = 0
		foreach r of local candrounds {
			replace _keep = 1 if round == "`r'"
		}
		keep if _keep
		count
		if `r(N)' == 0 {
			nois di as error "No dictionary entries for round(s): `candrounds'."
			exit 2000
		}

		* surrogate key per candidate row
		gen _ibkey = _n
		* lookup: key -> unit + existence year. from_year is merged HERE only, not
		* into the matchit candidate file (merging there degrades matchit's scoring).
		preserve
			keep _ibkey id_st_ib
			merge m:1 id_st_ib using `cross' , keep(1 3) keepusing(from_year) nogen
			rename from_year _ib_from
			tempfile lookup
			save `lookup'
		restore

		* explode the comma-separated variant names into columns
		split names , parse(",") gen(_nm)
		drop names
		unab namevars : _nm*
		local n_values : word count `namevars'

		keep _ibkey _nm*
		tempfile ib_names
		save `ib_names', replace

	* match input against every variant column, keeping the best score per obs
	_dots 0
	forval i = 1/`n_values' {

		nois _dots `i' 0

		use `input_names' , clear

			matchit 	_IBtempid _IBtempname using `ib_names' , ///
						idu(_ibkey) txtu(_nm`i') ///
						gen(_IBscore) sim(ngram_circ,2)

			* Skip iteration if no pair matched
			count
			if `r(N)' == 0 {
				continue
			}

		* keep each input obs's best match in this column
			bys _IBtempid (_IBscore) : keep if _IBscore == _IBscore[_N]
			recast 	float _IBscore , force
			keep 	_IBtempid _ibkey _IBscore

		* append and update match set
		append 		using `match'
		save 		`match', replace

	}

	use `match', clear

		* keep each input obs's best-scoring candidate row
		bys _IBtempid (_IBscore) : keep if _IBscore == _IBscore[_N]

		* map row -> unit; break ties on the more recently formed unit
		* (e.g. "telangana" -> telangana, not andhra pradesh, once it exists)
		merge m:1 _ibkey using `lookup' , keep(1 3) nogen
		gsort _IBtempid -_ib_from id_st_ib
		by _IBtempid : keep if _n == 1

		* attach stable outputs + the primary round's code and name
		merge m:1 id_st_ib using `cross' , ///
			keep(1 3) keepusing(name_st_ib iso `roundcol') nogen
		merge m:1 id_st_ib using `roundname' , keep(1 3) nogen

		rename id_st_ib   __id_st_ib
		rename name_st_ib __name_st_ib
		rename iso        __iso_st
		if "`roundcol'" != "" rename `roundcol' __`roundcol'

		* recover the input id and flag matched vs unmatched
		merge 1:1 _IBtempid using `input_names' , assert(2 3)
		gen 	_IBmatch = (_merge == 3)
		drop 	_merge

	** Drop temp keys
	drop _IBtempid _IBtempname _ibkey _ib_from

	* verify that original data is identified
	isid `id' , missok

		* Merge back against original data
		merge m:1 `id' using `current' , assert(2 3) nogen

	** Restore original variable order, append new outputs
	order `all_vars' , first
	order _IBmatch _IBscore __* , last

	/* end quietly */
	}

	* Display final output
	qui count
	local TOTAL_OBS = r(N)

	qui 	 sum _IBmatch
	local 	 TOTAL_MERGE 	= r(sum)
	local 	 PCT_MERGE 		= round(100 * r(mean),0.01)

	local 	 TOTAL_NONMERGE = `TOTAL_OBS' - `TOTAL_MERGE'
	local 	 PCT_NONMERGE 	= 100 - `PCT_MERGE'

	di as text _dup(80) " "
	di as res "`TOTAL_MERGE' out of `TOTAL_OBS' (`PCT_MERGE'%) observation/s in <`name'> matched"
	di as text "	Stable id __id_st_ib (name __name_st_ib); round (`IBROUND') name __name_st_`IBROUND'" _continue
	if "`roundcol'" != "" {
		di as text ", id __`roundcol'"
	}
	else {
		di as text ""
	}

	** if non perfect merge
	if r(mean) != 1 {
		di as error "		Warning: `TOTAL_NONMERGE' observation/s (`PCT_NONMERGE'%) did not match."
		di as error "		Please verify matches in _IBmatch, using similarity scores in _IBscore"
	}
	di as text _dup(80) " "
	di as res "ibmatch complete"
	di as text _dup(80) "_"

* end ibmatch
end

*-------------------------------------------------------------------------------
*** ibmatch_dist : matches district strings, scoped by state iso where available
*-------------------------------------------------------------------------------
capture program drop ibmatch_dist
program define ibmatch_dist

	syntax varlist(string max=1), id(varlist numeric max=1) ///
		[currentyear(numlist integer) fromyear(numlist integer) toyear(numlist integer) isovar(varname)]

		isid `id'
		local name "`1'"

		if "`fromyear'" == "" local fromyear 1951
		if "`toyear'"   == "" local toyear   9999

		* round selection (identical scheme to the state matcher)
		if "`currentyear'" != "" {
			local IBDECADE = round(`currentyear',10) + 1
			if !inrange(`IBDECADE',1951,2023) {
				di as error "Syntax error: current year must be between 1951-present"
				exit 198
			}
		}
		else local IBDECADE = 2023

		if inlist(`IBDECADE',1951,1961,1971,1981,1991,2001,2011) local IBROUND "cen`IBDECADE'"
		else if `IBDECADE' > 2011                                local IBROUND "lgd"

		local roundcol ""
		if inlist("`IBROUND'","cen2001","cen2011","lgd") local roundcol "id_dt_`IBROUND'"

		local candrounds `"`IBROUND'"'
		foreach y of numlist 1951 1961 1971 1981 1991 2001 2011 {
			if (`y' >= `fromyear') & (`y' <= `toyear') local candrounds `"`candrounds' cen`y'"'
		}

		findfile indiabridge2.ado
		local pkgdir = substr("`r(fn)'", 1, strlen("`r(fn)'") - strlen("indiabridge2.ado"))
		local crosswalk "`pkgdir'dict/district/dt_crosswalk.csv"
		local yeardict  "`pkgdir'dict/district/dt_year_dict.csv"
		capture confirm file "`crosswalk'"
		local rc1 = _rc
		capture confirm file "`yeardict'"
		if `rc1' | _rc {
			di as error "District dictionaries not found under `pkgdir'dict/district/"
			di as error "Re-generate them with src/code/prep_district_crosswalk.do."
			exit 601
		}

	quietly {

	unab all_vars : *
	tempfile current
	save `current'

		gen _IBtempid = `id'
		isid _IBtempid

		nois di as text _dup(80) "_"
		nois di "Matching cleaned `name' to india-bridge district round (`IBROUND'), years `fromyear'-`toyear'"
		if "`isovar'" != "" nois di as text "Scoping districts to matched state iso in `isovar'"

		strkeep `name' , alpha lower gen(_IBtempname)
		replace _IBtempname = ustrlower(_IBtempname)   // strkeep's lower doesn't lowercase; match lowercase dict
		if "`isovar'" != "" gen _IBiso = `isovar'
		else                gen _IBiso = ""
		keep `id' _IBtempid _IBtempname _IBiso
		tempfile input_names
		save `input_names'

		clear
		tempfile match
		save `match', emptyok

		** stable registry
		import delimited "`crosswalk'", varnames(1) stringcols(_all) clear
		destring from_year to_year , replace
		tempfile cross
		save `cross'

		** round-aware candidate dictionary
		tempfile roundname
		import delimited "`yeardict'", varnames(1) stringcols(_all) clear
		preserve
			keep if round == "`IBROUND'"
			keep id_dt_ib name_dt_round
			rename name_dt_round __name_dt_`IBROUND'
			save `roundname'
		restore

		gen byte _keep = 0
		foreach r of local candrounds {
			replace _keep = 1 if round == "`r'"
		}
		keep if _keep
		count
		if `r(N)' == 0 {
			nois di as error "No district dictionary entries for round(s): `candrounds'."
			exit 2000
		}

		gen _ibkey = _n
		* lookup: key -> unit, iso, existence year (from_year merged here, NOT into
		* the matchit candidate file - merging there degrades matchit's scoring)
		preserve
			keep _ibkey id_dt_ib iso
			merge m:1 id_dt_ib using `cross' , keep(1 3) keepusing(from_year) nogen
			rename iso       _cand_iso
			rename from_year _ib_from
			tempfile lookup
			save `lookup'
		restore

		split names , parse(",") gen(_nm)
		drop names
		unab namevars : _nm*
		local n_values : word count `namevars'
		keep _ibkey _nm*
		tempfile ib_names
		save `ib_names'

	* match input against each variant column; keep only candidates in the row's iso
	_dots 0
	forval i = 1/`n_values' {

		nois _dots `i' 0
		use `input_names' , clear

			matchit 	_IBtempid _IBtempname using `ib_names' , ///
						idu(_ibkey) txtu(_nm`i') gen(_IBscore) sim(ngram_circ,2)
			count
			if `r(N)' == 0 continue
			recast float _IBscore , force

			merge m:1 _ibkey    using `lookup'      , keep(3) keepusing(id_dt_ib _cand_iso _ib_from) nogen
			merge m:1 _IBtempid using `input_names'  , keep(3) keepusing(_IBiso) nogen

			* scope: if the row has a known state iso, keep only that state's districts
			keep if (_IBiso == "") | (_cand_iso == _IBiso)
			count
			if `r(N)' == 0 continue

			keep _IBtempid _ibkey _IBscore id_dt_ib _cand_iso _ib_from

		append using `match'
		save `match', replace
	}

	use `match', clear

		* keep each input's best-scoring candidates, then reduce to distinct units
		bys _IBtempid (_IBscore) : keep if _IBscore == _IBscore[_N]
		bys _IBtempid id_dt_ib (_ib_from _cand_iso) : keep if _n == 1

		* ambiguity = a name that resolves to more than one (state) unit at top score
		bys _IBtempid : gen _nu = _N

		* candidate list "ISO:id, ISO:id" (only meaningful when ambiguous)
		gen _candstr = _cand_iso + ":" + id_dt_ib
		sort _IBtempid _candstr
		by _IBtempid : gen _cum = _candstr if _n == 1
		by _IBtempid : replace _cum = _cum[_n-1] + ", " + _candstr if _n > 1
		by _IBtempid : gen __dt_candidates = _cum[_N]

		* pick a representative row (newer unit, then lower id)
		gsort _IBtempid -_ib_from id_dt_ib
		by _IBtempid : keep if _n == 1
		gen byte _IBambig = (_nu > 1)
		replace __dt_candidates = "" if _IBambig == 0

		* attach outputs
		merge m:1 id_dt_ib using `cross' , keep(1 3) keepusing(name_dt_ib iso `roundcol') nogen
		merge m:1 id_dt_ib using `roundname' , keep(1 3) nogen

		rename id_dt_ib   __id_dt_ib
		rename name_dt_ib __name_dt_ib
		rename iso        __iso_dt
		if "`roundcol'" != "" rename `roundcol' __`roundcol'

		* blank the id on ambiguous rows (keep the candidate list for review)
		foreach v of varlist __id_dt_ib __name_dt_ib __iso_dt __name_dt_`IBROUND' {
			replace `v' = "" if _IBambig == 1
		}
		if "`roundcol'" != "" replace __`roundcol' = "" if _IBambig == 1

		* recover input id (and other input cols); flag matched / unmatched / ambiguous
		merge 1:1 _IBtempid using `input_names' , assert(2 3)
		gen _IBmatch = (_merge == 3 & _IBambig != 1)
		replace _IBambig = 0 if _merge == 2
		drop _merge

	drop _IBtempid _IBtempname _IBiso _ibkey _ib_from _cand_iso _candstr _cum _nu

	isid `id' , missok
	merge m:1 `id' using `current' , assert(2 3) nogen

	order `all_vars' , first
	order _IBmatch _IBambig _IBscore __* , last

	/* end quietly */
	}

	* report
	qui count
	local TOT = r(N)
	qui count if _IBmatch == 1
	local M = r(N)
	qui count if _IBambig == 1
	local A = r(N)
	local U = `TOT' - `M' - `A'

	di as text _dup(80) " "
	di as res "`M' of `TOT' district observation/s in <`name'> matched cleanly"
	di as text "	Stable id __id_dt_ib (name __name_dt_ib, iso __iso_dt); round (`IBROUND') name __name_dt_`IBROUND'"
	if `A' > 0 {
		di as error "	`A' observation/s had an AMBIGUOUS district name (matches >1 state)."
		di as error "	Their __id_dt_ib is left missing; candidate ids are listed in __dt_candidates."
		di as error "	Provide statename()/idstate() so the matched state can disambiguate them."
	}
	if `U' > 0 {
		di as text "	`U' observation/s did not match (see _IBmatch==0, _IBscore)."
	}
	di as text _dup(80) " "
	di as res "ibmatch_dist complete"
	di as text _dup(80) "_"

end
