*-------------------------------------------------------------------------------
* prep_state_crosswalk.do
*
* Builds the runtime state dictionaries for indiabridge2 from the human-editable
* sources. Run from the repository root.
*
* Inputs  (sources):
*   ado/indiabridge2/dict/state_names.csv     year, state (canonical), names
*       (regenerate from ado/sclean.ado with src/code/extract_dicts.do)
*   ado/indiabridge2/dict/state/st_lgd.csv    id_st_lgd, names (current LGD names)
*   data/output/lgd_states.dta                id_st_lgd <-> id_st_cen01 <-> id_st_cen11
*
* Outputs (generated, committed, read at runtime):
*   ado/indiabridge2/dict/state/st_crosswalk.csv
*       one row per stable UNIT (registry + name union):
*       id_st_ib name_st_ib names from_year to_year id_st_cen2001 id_st_cen2011 id_st_lgd
*   ado/indiabridge2/dict/state/st_year_dict.csv
*       one row per (round, unit) - the round-aware matching dictionary:
*       round id_st_ib name_st_round names
*   ado/indiabridge2/dict/id_st_indiabridge.csv
*       the stable project-id registry: id_st_ib name_st_ib from_year to_year is_current
*
* Stable id scheme: current units keep their LGD code ("01".."37"); units lost or
* transferred over time get a "999xxxx" id.
*-------------------------------------------------------------------------------

clear all
version 14.0

local dict "ado/indiabridge2/dict"

*-------------------------------------------------------------------------------
* Reusable rename-fold: maps a historical state name to its modern successor so
* the two share one stable unit. EDIT HERE. Only pure 1:1 renames belong here;
* genuine splits/merges are left out and fall through to "999xxxx" lost units.
*-------------------------------------------------------------------------------
capture program drop _fold_states
program define _fold_states
	args v
	replace `v' = "tamilnadu"        if `v' == "madras"
	replace `v' = "odisha"           if `v' == "orissa"
	replace `v' = "karnataka"        if `v' == "mysore"
	replace `v' = "uttarakhand"      if `v' == "uttaranchal"
	replace `v' = "kerala"           if `v' == "travancorecochin"
	replace `v' = "nagaland"         if `v' == "nagahillstuensangarea"
	replace `v' = "arunachalpradesh" if `v' == "northeastfrontieragency"
	replace `v' = "lakshadweep"      if `v' == "laccadiveminicoyamindiviislands"
	* pondicherry kept as-is (matches the LGD canonical name)
	* NOT folded (genuine splits/merges -> become lost "999xxxx" units):
	*   bombay, goadamandiu, hyderabad, madhyabharat, vindhyapradesh, bhopal,
	*   ajmer, coorg, kutch, saurashtra, bilaspur, patialaeastpunjabstatesunion
end

*===============================================================================
* PART A. Stable crosswalk (one row per unit)
*===============================================================================

*--- A1. Period state names ---------------------------------------------------
import delimited "`dict'/state_names.csv", varnames(1) stringcols(_all) clear
destring year, replace
_fold_states state
tempfile raw
save `raw'

*--- A2. Union of name variants per (folded) unit -----------------------------
split names, parse(",") gen(tok)
gen _row = _n
keep state _row tok*
reshape long tok, i(_row) j(k)
drop k
replace tok = lower(strtrim(tok))
replace tok = ustrregexra(tok, "[^a-z]", "")   // alpha only, matching strkeep on input side
drop if missing(tok)
duplicates drop state tok, force
bys state (tok): gen names = tok[1]
by  state: replace names = names[_n-1] + "," + tok if _n > 1
by  state: keep if _n == _N
keep state names
tempfile names_u
save `names_u'

*--- A3. Existence interval per unit ------------------------------------------
use `raw', clear
collapse (min) from_year=year (max) to_year=year, by(state)
merge 1:1 state using `names_u', nogen

*--- A4. Current LGD code by canonical name -----------------------------------
preserve
	import delimited "`dict'/state/st_lgd.csv", varnames(1) stringcols(_all) clear
	rename names state
	destring id_st_lgd, gen(idlgd)
	keep state idlgd
	tempfile lgd
	save `lgd'
restore
merge 1:1 state using `lgd'
*   _merge==3 current | ==1 lost | ==2 LGD-only (telangana, ladakh)
replace names     = "telangana,tg,telengana" if _merge == 2 & state == "telangana"
replace from_year = 2014                      if _merge == 2 & state == "telangana"
replace names     = "ladakh,la"               if _merge == 2 & state == "ladakh"
replace from_year = 2019                      if _merge == 2 & state == "ladakh"
drop _merge

*--- A5. Stable project id ----------------------------------------------------
gen extinct = missing(idlgd)
gen id_st_ib = string(idlgd, "%02.0f") if !extinct
sort extinct state
by  extinct: gen seq = _n if extinct
replace id_st_ib = "999" + string(seq, "%04.0f") if extinct
replace to_year  = 9999 if !extinct
gen id_st_lgd = string(idlgd, "%02.0f") if !extinct

*--- A6. Census codes via the LGD link ----------------------------------------
preserve
	use "data/output/lgd_states.dta", clear
	keep id_st_lgd id_st_cen01 id_st_cen11
	rename id_st_lgd idlgd
	replace id_st_cen01 = . if id_st_cen01 == 0   // 0 = unit absent that census
	replace id_st_cen11 = . if id_st_cen11 == 0
	tempfile cen
	save `cen'
restore
merge m:1 idlgd using `cen', keep(1 3) nogen
gen id_st_cen2001 = string(id_st_cen01, "%02.0f") if !missing(id_st_cen01)
gen id_st_cen2011 = string(id_st_cen11, "%02.0f") if !missing(id_st_cen11)

rename state name_st_ib
keep  id_st_ib name_st_ib names from_year to_year id_st_cen2001 id_st_cen2011 id_st_lgd
order id_st_ib name_st_ib names from_year to_year id_st_cen2001 id_st_cen2011 id_st_lgd
sort  id_st_ib
tempfile cross
save `cross'
export delimited "`dict'/state/st_crosswalk.csv", replace

*--- A7. Stable project-id registry -------------------------------------------
preserve
	keep  id_st_ib name_st_ib from_year to_year
	gen   is_current = (to_year == 9999)
	order id_st_ib name_st_ib from_year to_year is_current
	sort  id_st_ib
	export delimited "`dict'/id_st_indiabridge.csv", replace
restore

*===============================================================================
* PART B. Round-aware year dictionary (one row per round x unit)
*===============================================================================

* name_st_ib -> id_st_ib key (each unit's name_st_ib is unique)
use `cross', clear
keep id_st_ib name_st_ib
rename name_st_ib state
tempfile namekey
save `namekey'

*--- B1. Census rounds: period names + period variant lists -------------------
import delimited "`dict'/state_names.csv", varnames(1) stringcols(_all) clear
gen name_st_round = state          // keep the PERIOD-appropriate canonical
_fold_states state                 // fold only to look up the stable unit
merge m:1 state using `namekey', keep(3) nogen
destring year, replace
gen round = "cen" + string(year)
keep round id_st_ib name_st_round names
tempfile ydict
save `ydict'

*--- B2. LGD round: current units, full name union (forgiving for modern data) -
use `cross', clear
keep if id_st_lgd != ""
gen round = "lgd"
gen name_st_round = name_st_ib
keep round id_st_ib name_st_round names
append using `ydict'

order round id_st_ib name_st_round names
gsort round id_st_ib
export delimited "`dict'/state/st_year_dict.csv", replace

di as result "prep_state_crosswalk: wrote st_crosswalk.csv, st_year_dict.csv, id_st_indiabridge.csv"
