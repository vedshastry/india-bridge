*-------------------------------------------------------------------------------
* prep_district_crosswalk.do
*
* Builds the runtime DISTRICT dictionaries for indiabridge2, mirroring
* prep_state_crosswalk.do one level down (scoped by state iso). Run from repo root.
*
* Inputs:
*   ado/indiabridge2/dict/dist_names.csv       year, dist, iso, names (period)
*       (regenerate from ado/dclean.ado with src/code/extract_dicts.do)
*   data/output/lgd_districts.dta              id_dt_lgd, name_dt_lgd_en, hierarchy,
*                                              id_dt_cen01, id_dt_cen11
*   ado/indiabridge2/dict/state/st_crosswalk.csv   id_st_lgd <-> iso
*   data/output/lgd_states.dta                 LGD state name <-> id_st_lgd
*
* Outputs:
*   ado/indiabridge2/dict/district/dt_crosswalk.csv
*       id_dt_ib name_dt_ib iso names from_year to_year id_dt_cen2001 id_dt_cen2011 id_dt_lgd
*   ado/indiabridge2/dict/district/dt_year_dict.csv
*       round id_dt_ib iso name_dt_round names
*   ado/indiabridge2/dict/id_dt_indiabridge.csv
*       id_dt_ib name_dt_ib iso from_year to_year is_current
*
* Stable id: current districts keep their (globally-unique) LGD code; districts
* lost/transferred/renamed out of LGD get a "999xxxxx" id. The LGD code namespaces
* repeated names (aurangabad-MH vs aurangabad-BR) automatically.
*
* LIMITATION (v1): districts are anchored to LGD by (iso, normalized name). A
* district that was RENAMED (allahabad->prayagraj, gurgaon->gurugram) or moved to
* a NEW state (Telangana districts AP->TG in 2014, Leh/Kargil JK->LA in 2019) does
* not auto-link to its modern LGD unit and currently lands as a "999xxxxx" historical
* unit (it still matches and returns its period name + a stable id, just not the
* LGD code). Full cross-time bridging of these is the planned next refinement: a
* `_fold_districts` rename map (mirroring `_fold_states`) and/or census-code-based
* anchoring via an extracted ado/dcode.ado.
*-------------------------------------------------------------------------------

clear all
version 14.0
local dict "ado/indiabridge2/dict"

*-------------------------------------------------------------------------------
* 0. LGD state name -> iso  (via st_crosswalk id_st_lgd <-> iso)
*-------------------------------------------------------------------------------
import delimited "`dict'/state/st_crosswalk.csv", varnames(1) stringcols(_all) clear
keep if id_st_lgd != ""
destring id_st_lgd, gen(idstlgd)
keep idstlgd iso
tempfile isobylgd
save `isobylgd'

use "data/output/lgd_states.dta", clear
rename id_st_lgd idstlgd
gen statekey = lower(ustrregexra(name_st_lgd_en, "[^a-zA-Z]", ""))
merge m:1 idstlgd using `isobylgd', keep(3) nogen
keep statekey iso
tempfile statename2iso
save `statename2iso'

*-------------------------------------------------------------------------------
* 1. LGD district spine (current districts) with iso + normalized name
*-------------------------------------------------------------------------------
use "data/output/lgd_districts.dta", clear
gen statename = ustrregexra(hierarchy, "\(.*\)", "")
gen statekey  = lower(ustrregexra(statename, "[^a-zA-Z]", ""))
gen dist = lower(ustrregexra(name_dt_lgd_en, "[^a-zA-Z]", ""))
merge m:1 statekey using `statename2iso', keep(1 3)
* states absent from lgd_states.dta / merged UTs: resolve to the scode iso scheme
replace iso = "LA" if missing(iso) & strpos(lower(statename), "ladakh")
replace iso = "DD" if missing(iso) & inlist(dist, "daman", "diu")
replace iso = "DH" if missing(iso) & dist == "dadraandnagarhaveli"
qui count if missing(iso)
di as text "LGD districts with unresolved state iso: " r(N)
assert !missing(iso)
drop _merge statename statekey hierarchy
replace id_dt_cen01 = . if id_dt_cen01 == 0
replace id_dt_cen11 = . if id_dt_cen11 == 0
keep id_dt_lgd dist iso id_dt_cen01 id_dt_cen11
* a normalized name can repeat within a state only rarely; keep first if so
duplicates drop iso dist, force
tempfile lgddist
save `lgddist'

*-------------------------------------------------------------------------------
* 2. dist_names -> historical district units (period iso)
*-------------------------------------------------------------------------------
import delimited "`dict'/dist_names.csv", varnames(1) stringcols(_all) clear
destring year, replace
* reconcile dclean iso codes to the scode/state scheme used for scoping
replace iso = "DH" if iso == "DN"   // dadra & nagar haveli
replace iso = "GA" if iso == "DG"   // goa-daman-diu (combined UT era)
* v1 dclean disambiguates same-name districts with "(state)" suffixes, e.g.
* aurangabad(bihar)/aurangabad(maharashtra). v2 already disambiguates by iso, so
* drop the parenthetical and keep alpha-only (matches the LGD normalization).
replace dist = ustrregexra(dist, "\(.*\)", "")
replace dist = lower(ustrregexra(dist, "[^a-zA-Z]", ""))
tempfile rawd
save `rawd'

* name union per (iso, dist)
split names, parse(",") gen(tok)
gen _row = _n
keep iso dist _row tok*
reshape long tok, i(_row) j(k)
drop k
replace tok = lower(strtrim(tok))
replace tok = ustrregexra(tok, "[^a-z]", "")
drop if missing(tok)
duplicates drop iso dist tok, force
bys iso dist (tok): gen names = tok[1]
by  iso dist: replace names = names[_n-1] + "," + tok if _n > 1
by  iso dist: keep if _n == _N
keep iso dist names
tempfile names_u
save `names_u'

* existence interval per (iso, dist)
use `rawd', clear
collapse (min) from_year=year (max) to_year=year, by(iso dist)
merge 1:1 iso dist using `names_u', nogen

*-------------------------------------------------------------------------------
* 3. Anchor to LGD by (iso, name); classify current vs lost; add LGD-only
*-------------------------------------------------------------------------------
merge 1:1 iso dist using `lgddist'
*   _merge==3 current | ==1 lost (no LGD match) | ==2 LGD district absent from dclean
* LGD-only current districts: seed name/existence so modern data can still match
replace names     = dist if _merge == 2
replace from_year = 2011 if _merge == 2
replace to_year   = 9999 if _merge == 2

gen current = !missing(id_dt_lgd)
replace to_year = 9999 if current

* stable id
gen id_dt_ib = string(id_dt_lgd, "%04.0f") if current
sort current iso dist
by  current: gen seq = _n if !current
replace id_dt_ib = "999" + string(seq, "%05.0f") if !current

* census codes (zero-padded strings)
gen id_dt_cen2001 = string(id_dt_cen01, "%02.0f") if !missing(id_dt_cen01)
gen id_dt_cen2011 = string(id_dt_cen11, "%02.0f") if !missing(id_dt_cen11)
gen id_dt_lgd_s   = string(id_dt_lgd,   "%04.0f") if current

rename dist name_dt_ib
drop _merge current seq id_dt_lgd id_dt_cen01 id_dt_cen11
rename id_dt_lgd_s id_dt_lgd

keep  id_dt_ib name_dt_ib iso names from_year to_year id_dt_cen2001 id_dt_cen2011 id_dt_lgd
order id_dt_ib name_dt_ib iso names from_year to_year id_dt_cen2001 id_dt_cen2011 id_dt_lgd
sort  id_dt_ib
tempfile crossd
save `crossd'
export delimited "`dict'/district/dt_crosswalk.csv", replace

* registry
preserve
	keep  id_dt_ib name_dt_ib iso from_year to_year
	gen   is_current = (to_year == 9999)
	order id_dt_ib name_dt_ib iso from_year to_year is_current
	sort  id_dt_ib
	export delimited "`dict'/id_dt_indiabridge.csv", replace
restore

* diagnostics
count
local total = r(N)
count if substr(id_dt_ib,1,3) == "999"
di as result "district units: `total' total, " r(N) " lost (999xxxxx), " `=`total'-r(N)' " current"

*-------------------------------------------------------------------------------
* 4. Round-aware year dictionary
*-------------------------------------------------------------------------------
* (iso, name_dt_ib) -> id_dt_ib key
use `crossd', clear
keep id_dt_ib name_dt_ib iso
rename name_dt_ib dist
tempfile dnamekey
save `dnamekey'

* census rounds: period names + period variant lists
use `rawd', clear
gen name_dt_round = dist
merge m:1 iso dist using `dnamekey', keep(3) nogen
gen round = "cen" + string(year)
keep round id_dt_ib iso name_dt_round names
tempfile ydictd
save `ydictd'

* lgd round: current districts, full union
use `crossd', clear
keep if id_dt_lgd != ""
gen round = "lgd"
gen name_dt_round = name_dt_ib
keep round id_dt_ib iso name_dt_round names
append using `ydictd'

order round id_dt_ib iso name_dt_round names
gsort round iso id_dt_ib
export delimited "`dict'/district/dt_year_dict.csv", replace

di as result "prep_district_crosswalk: wrote dt_crosswalk.csv, dt_year_dict.csv, id_dt_indiabridge.csv"
