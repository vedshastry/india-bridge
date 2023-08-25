/*
`indiabridge2`
! Version 2.0
Last updated: Vedarshi Shastry, 01 Dec 2022
Dependencies: `strkeep`, `egenmore`, `ereplace`

indiabridge2 takes a vector of state and district strings in India and assigns identifiers consistent with -
	* Local Government Directory (LGD)  [suffix: _lgd]
	* Administrative Atlas of India (Census 1951-2011)  [suffix: _cenYYYY]
*/

cap prog drop indiabridge2
prog indiabridge2, sortpreserve
version 14.0

* syntax: statename must be string, and year must be specified (district optional)
syntax , Fromyear(numlist integer) Toyear(numlist integer) Statevar(varname string) [Districtvar(varname string)]

* dependencies
local pkglist "strkeep ereplace inlist2"
foreach pkg in `pkglist'{
	* confirm package existence and install if required
	cap which `pkg'
	if _rc {
		di "Dependency <`pkg'> not found. Attempting to install from ssc."
		ssc install `pkg'
	}
}

di "`fromyear' `toyear' `statevar' `districtvar'"

sclean2 `statevar'
// scode2 `statevar'
/*
* call name cleanup programs
dclean `districtvar'

* assign identifiers
scode `statevar'
dcode `districtvar'
*/

end

use `cen', clear
indiabridge2, f(1971) t(2011) s(state_name) d(district_name)
append using `stkeys'

local statevar "state_name"
strkeep `statevar', alpha strlower gen(_state_std)
* pass arguments to state and district programs on variables specified
// ibrstate2 `statevar'
// ibrdist2 `districtvar'

*-------------------------------------------------------------------------------
* Objective: Assign india_bridge consistent identifiers
*-------------------------------------------------------------------------------

* Input: year, state, district (year must be in YYYY entered directly or as a numeric var)
* indiabridge, y() s() d()

* define program
capture program drop indiabridge
program define indiabridge
	* syntax: statename must be string, and year must be specified (district optional)
	syntax [if], Year(string) State(varlist string) [District(varlist string)]

	* confirm if dependency -egenmore- is available
	capture findfile egenmore.sthlp, path(BASE;SITE;PERSONAL;PLUS)
		* return error if not available
		if "`r(fn)'" == "" {
		  di as error "User-written package -egenmore- needs to be installed first;"
		  di as error "Ensure the dependency is available by running -ssc install egenmore- before indiabridge"
		  exit 498
		}

	* display progress
	di as text _dup(99) "_"
	di as text "Running india-bridge for year (`year') on state variable/s (`state') and district variable/s (`district')"
	di as text _dup(99) "_"

	* pass arguments to state and district programs individually over varlist specified

	* for each statename variable,
	di as text "Applying (`year') identification on states: `state'"

	foreach sv in `state'{

		* run state programs for the given year
		ibrstate, y(`year') s(`sv')

		* for each district variable,
		di as text "Applying (`year') identification on districts: `district'"
		foreach dv in `district'{
				* store isocode from above
				local iso iso_`sv'
				* run district programs for the given year
				ibrdist, y(`year') d(`dv') i(iso_`sv')
				* concatenate state & district identifiers to generate unique identifier
					if `year' != 2011{
					qui replace dcode_`dv' = scode_`sv' + dcode_`dv'
				* labels
					label var `dv' "`year' census district name"
					label var dcode_`dv' "`year' census district identifier"
			}

			* labels
			label var `sv' "`year' census state name"
			label var scode_`sv' "`year' census state identifier"
			label var iso_`sv' "ISO code for state"
			label var ut_`sv' "`year' union territory status"

			* display progress
			di as text _dup(99) "-"
			di as text "State identifiers assigned in variables: iso_`sv' scode_`sv' ut_`sv'"
			di as text _dup(99) "-"
			di as text "District codes assigned in variable: dcode_`dv'"
			qui count if strlen(dcode_`dv') != 4
			di as text _dup(99) "-"
			di as text "`r(N)' districts did not get a 4 digit identifier"
			di as text _dup(99) "-"
		}
	}

di as text _dup(99) "_"

* end indiabridge
end


*-------------------------------------------------------------------------------
* subprograms
*-------------------------------------------------------------------------------
* States
* Objective: Assign india_bridge consistent identifiers to a list of state names
*-------------------------------------------------------------------------------

* define ibrstate (india_bridge state)
capture program drop ibrstate
program define ibrstate

	* syntax: statename must be string, and year must be specified
	syntax [if], Year(string) Statevar(varlist string)

	* call state clean + assign programs
	sclean `statevar' `year'
	scode `statevar' `year'

* end ibrstate
end

*-------------------------------------------------------------------------------
* Districts
* Objective: Assign india_bridge consistent identifiers to a column of district names
*-------------------------------------------------------------------------------

* define ibrdist (india_bridge district)
capture program drop ibrdist
program define ibrdist

	* syntax: distname must be string, and year must be specified along with iso code
	syntax [if], Year(string) Distvar(varlist string) Isocode(varlist string)

	* backup original state name, and generate new sieved name
		qui rename `distvar' `distvar'_raw
		qui egen `distvar' = sieve(`distvar'_raw), keep(a)
	* trim spaces and standardise to lowercase
		qui replace `distvar' = ustrtrim(strlower(`distvar'))
		qui replace `distvar' = subinstr(`distvar'," ","",.)

	* call district clean + assign programs
		dclean `distvar' `isocode' `year'
		dcode `distvar' `isocode' `year'

* end ibrdist
end
