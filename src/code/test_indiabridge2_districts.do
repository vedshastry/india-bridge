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
list id d _IB_dtid _IB_dtname _IB_dtiso _IB_score _IB_match _IB_ambig _IB_dtcandidates, sepby(id) noobs

* unique name resolves cleanly
assert _IB_match == 1 & _IB_ambig == 0 & _IB_dtid == "0212" if d == "Patna"
* repeated names are flagged, id left missing, candidates listed
assert _IB_match == 0 & _IB_ambig == 1 & _IB_dtid == "" if inlist(d, "Aurangabad", "Hamirpur")
assert strpos(_IB_dtcandidates, "MH:0469") & strpos(_IB_dtcandidates, "BR:0189") if d == "Aurangabad"

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
list id s d _IB_stiso _IB_dtid _IB_dtname _IB_dtiso _IB_match _IB_ambig, sepby(id) noobs

assert _IB_match == 1 & _IB_ambig == 0
assert _IB_dtid == "0469" & _IB_dtiso == "MH" if id == 1
assert _IB_dtid == "0189" & _IB_dtiso == "BR" if id == 2
* hamirpur scoped to Himachal (HP), not UP
assert _IB_dtiso == "HP" if id == 3

di as result _n "ALL indiabridge2 DISTRICT TESTS PASSED"
