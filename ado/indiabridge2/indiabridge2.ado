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

	* Run matching program
	if "`statename'" != "" {
		ibmatch `statename' , state id(`idstate') ///
			currentyear(`currentyear') fromyear(`fromyear') toyear(`toyear')
	}

	if "`districtname'" != "" {
		di as text "Note: district matching is not yet implemented in indiabridge2 " ///
			"(planned for a future release). Skipping `districtname'."
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

		* attach unit existence year (for tie-breaking)
		merge m:1 id_st_ib using `cross' , keep(1 3) keepusing(from_year) nogen

		* surrogate key per candidate row
		gen _ibkey = _n
		preserve
			keep _ibkey id_st_ib from_year
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
			keep(1 3) keepusing(name_st_ib `roundcol') nogen
		merge m:1 id_st_ib using `roundname' , keep(1 3) nogen

		rename id_st_ib   __id_st_ib
		rename name_st_ib __name_st_ib
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
