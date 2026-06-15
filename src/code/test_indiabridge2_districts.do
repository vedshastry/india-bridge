*-------------------------------------------------------------------------------
* test_indiabridge2_districts.do
*
* End-to-end check for indiabridge2 district matching: state-scoped vs district-
* only (with repeat-name ambiguity handling). Run from the repository root:
*   stata-mp -b do src/code/test_indiabridge2_districts.do
*-------------------------------------------------------------------------------

clear all
version 14.0
adopath + "ado/indiabridge2"
which indiabridge2

*-------------------------------------------------------------------------------
* 1. District-only: unique names resolve; repeated names are flagged ambiguous
*-------------------------------------------------------------------------------
di as text _n "==== TEST 1: district only (2011) ===="
clear
input int id strL d
1 "Patna"
2 "Aurangabad"
3 "Hamirpur"
4 "Bangalore"
end
indiabridge2 , currentyear(2011) fromyear(2011) toyear(2011) districtname(d) iddistrict(id)
list id d __id_dt_ib __name_dt_ib __iso_dt _IBscore _IBmatch _IBambig __dt_candidates, sepby(id) noobs

* unique name resolves cleanly
assert _IBmatch == 1 & _IBambig == 0 & __id_dt_ib == "0212" if d == "Patna"
* repeated names are flagged, id left missing, candidates listed
assert _IBmatch == 0 & _IBambig == 1 & __id_dt_ib == "" if inlist(d, "Aurangabad", "Hamirpur")
assert strpos(__dt_candidates, "MH:0469") & strpos(__dt_candidates, "BR:0189") if d == "Aurangabad"

*-------------------------------------------------------------------------------
* 2. State + district: matched state iso disambiguates the repeated names
*-------------------------------------------------------------------------------
di as text _n "==== TEST 2: state-scoped district (2011) ===="
clear
input int id strL s strL d
1 "Maharashtra" "Aurangabad"
2 "Bihar"       "Aurangabad"
3 "Himachal"    "Hamirpur"
end
indiabridge2 , currentyear(2011) fromyear(2011) toyear(2011) ///
	statename(s) idstate(id) districtname(d) iddistrict(id)
list id s d __iso_st __id_dt_ib __name_dt_ib __iso_dt _IBmatch _IBambig, sepby(id) noobs

assert _IBmatch == 1 & _IBambig == 0
assert __id_dt_ib == "0469" & __iso_dt == "MH" if id == 1
assert __id_dt_ib == "0189" & __iso_dt == "BR" if id == 2
* hamirpur scoped to Himachal (HP), not UP
assert __iso_dt == "HP" if id == 3

di as result _n "ALL indiabridge2 DISTRICT TESTS PASSED"
