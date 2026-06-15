/*
`indiabridge2`
! Version 2.0
Last updated: Vedarshi Shastry, 01 Dec 2022

indiabridge2 takes a vector of state and district strings in India and assigns identifiers consistent with -
	* Local Government Directory (LGD)  [suffix: _lgd]
	* Administrative Atlas of India (Census 1951-2011)  [suffix: _cenYYYY]

			* create lgdcensus database. find closest decade to current time

			    1. lgdcensus_st : historical state mapping
			    2. lgdcensus_dt : historical district mapping
			        - id_lgdcen_st and id_lgdcen_dt always map onto indiabridge project ID
			        - project ID starts with 999xxxx if unit was lost/transferred at some point of time

			* fuzzy string match with current time

			* use current year to map onto lgdcensus database
			* use from and to time variables to trim mapped set

			* state names -> matchit with ib states
			* district names ->
			    - first match states
			    - then match with ib districts
			    - drop obs where
			    - require state

*/

cap prog drop indiabridge2
prog indiabridge2, sortpreserve
version 14.0

		/*
		syntax
		- current data year required
		- from and to years required
		- state/district names are string vars. one must be specified

		*/

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
			exit
	}
	else {
		if "`statename'" != "" & "`idstate'" == "" {
			di as error "Syntax error: the ID variable for states in`statename' must be specified using idstate()."
			exit
		}
		if "`districtname'" != "" & "`iddistrict'" == "" {

			di as error "Syntax error: the ID variable for districts in `districtname' must be specified using iddistrict()."
			exit
		}
	}


	* 2. From/to years are valid
	if `fromyear' > `toyear' {
			di as error "From year (`fromyear') must be lesser than to year (`toyear')"
			exit
	}


	* Run matching program
	if "`statename'" != "" {
		ibmatch `statename' , state id(`idstate') currentyear(`currentyear')
	}
	else if "`districtname'" != "" {
		ibmatch `districtname' , district id(`iddistrict') currentyear(`currentyear')
	}

end

*-------------------------------------------------------------------------------
* Subprograms
*-------------------------------------------------------------------------------

*-------------------------------------------------------------------------------
*** ibmatch : matches specified strings against indiabridge database
*-------------------------------------------------------------------------------
capture program drop ibmatch
program define ibmatch

	* input: name variable, round (census/LGD), id
	syntax varlist(string max=1), id(varlist numeric max=1) [currentyear(numlist integer) state district]

		* Assert ID variable
		isid `id'

		* Pull name variable
		local name "`1'"

		* Assert only one of state or district is specified, with the corresponding ID
			if "`state'`district'" == "" {

				di as error "Syntax error: must specify either the state or district option with ibmatch."
				exit

			}
			else if "`state'`district'" == "statedistrict" {

				di as error "Syntax error: can specify only 1 of state or district with ibmatch, not both."
				exit

			}

		* Map current year to closest indiabridge round. Set default as LGD
		if "`currentyear'" != "" {
			local IBDECADE = round(`currentyear',10) + 1

			if !inrange(`IBDECADE',1961,2023) {
				di as error "Syntax error: current year must be between 1960-present"
				exit
			}

		}
		else {
			di as text "Current year not specified. Defaulting to Local Government Directory (LGD) 2023"
			local IBDECADE = 2023
		}

	* run quietly
	quietly {

	* Store current variable arrangemen
	unab all_vars : *

	* Save current data in memory
	tempfile current
	save `current' , replace

		** Assign indiabridge round

			if inlist(`IBDECADE',1961,1971,1981,1991,2001,2011) {
				local IBROUND "cen`IBDECADE'"
			}
			else if `IBDECADE' > 2011 {
				local IBROUND "lgd"
			}


		* Prepare list of names + ID from current data
		use `current' , clear

		gen 	_IBtempid = `id'
		isid 	_IBtempid

		nois di as text _dup(80) "_"
		nois di "Matching cleaned `name' to indiabridge round (`IBROUND')"

		* clean name keeping only alphabets in lowercase
		strkeep 	`name' , alpha lower gen(_IBtempname)

		* Keep vars
		keep 		`id' `name' _IBtempid _IBtempname

		* Save input data
		tempfile input_names
		save `input_names' , replace

		* initiate new tempfile to store matches
		clear
		tempfile match
		save `match', emptyok

		** Store parameters based on indiabridge round
		// local ib_names_csv "https://raw.githubusercontent.com/vedshastry/india-bridge/refs/heads/testing/ado/indiabridge2/dict/state/stvals_cen2011.csv"
		local ib_names_csv "/home/ved/repos/india-bridge/ado/indiabridge2/dict/state/st_`IBROUND'.csv"
		local ib_idvar "id_st_`IBROUND'"
		local ib_namevar "name_st_`IBROUND'"

		* Prepare list of names to match against (from indiabridge database)

		import delimited "`ib_names_csv'", clear varnames(1) delimiter(",")

			split names, parse(",") gen(name)
			local n_values = r(k_new)

		tempfile ib_names
		save `ib_names', replace

	** Display confirmation

	* match against all values, display progress
	_dots 0
	forval i = 1/`n_values' {

		nois _dots `i' 0

		** use data from memory
		use `input_names' , clear

			matchit 	_IBtempid _IBtempname using `ib_names' , ///
						idu(`ib_idvar') txtu(name`i') ///
						gen(_IBscore) sim(ngram_circ,2)

			* Skip iteration if data is empty
			count
			if `r(N)' == 0 {
				continue
			}

		* keep current data obs with its best match from ib_names (max _IBscore)
			bys _IBtempid (_IBscore) : keep if _IBscore == _IBscore[_N]

			recast 	float _IBscore , force

			rename 	name`i' __`ib_namevar'
			rename 	`ib_idvar' __`ib_idvar'

		* append and update match set

		append 		using `match'
		save 		`match', replace

	}

	use `match', clear

		* keep current data obs with its best match from ib_names (max _IBscore)
			bys _IBtempid (_IBscore): keep if _IBscore == _IBscore[_N]

		* map current ID to indiabridge database. assert only new unmerged keys are added
		merge m:1 _IBtempid using `input_names' , assert(2 3)

		* Rearrange
			gen 		_IBmatch = .
				replace 	_IBmatch = 0 if _merge == 2
				replace 	_IBmatch = 1 if _merge == 3
			drop 		_merge

	** Drop temp ID/name
	drop _IBtemp*

	* verify that original data is identified
	isid `id' , missok

		* Merge against original data
		merge m:1 `id' using `current' , assert(2 3) nogen

	** Restore original variable order
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
	di as text "	Matches for `name' stored in __`ib_namevar', identified by __`ib_idvar'"

	** if non perfect merge

	if r(mean) != 1 {
		di as error "		Warning: `TOTAL_NONMERGE' observation/s (`PCT_NONMERGE'%) did not match perfectly."
		di as error "		Please verify matches in _IBmatch, using similarity scores in _IBscore"
	}
	di as text _dup(80) " "
	di as res "ibmatch complete"
	di as text _dup(80) "_"

* end ibmatch
end
