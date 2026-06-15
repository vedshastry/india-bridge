*-------------------------------------------------------------------------------
* test_indiabridge2.do
*
* End-to-end check for indiabridge2 round-aware state matching. Run from the
* repository root:  stata-mp -b do src/code/test_indiabridge2.do
*-------------------------------------------------------------------------------

clear all
version 14.0

* make the package (and its dict/) discoverable via the ado path
adopath + "ado/indiabridge2"
which indiabridge2

*-------------------------------------------------------------------------------
* example data: misspelled / abbreviated / noisy state names
*-------------------------------------------------------------------------------
clear
input int id_st strL sname
	1  "Rjrajasthan"
	2  "SK Sikkim"
	3  "Oddisha"
	4  "Andhrunachalpradesh"
	5  "Himcha2lpradesh"
	6  "Bihar"
	7  "Shill0ng"
	8  "Utarpradesh"
	9  "National Capital Territory (NCT), Delhi"
	10 "Madras"
	11 "Telangana"
end
tempfile sample
save `sample'

*-------------------------------------------------------------------------------
* 1. 2011 census round
*-------------------------------------------------------------------------------
di as text _n "==== TEST 1: current(2011) from(2011) to(2011) ===="
use `sample' , clear
indiabridge2 , currentyear(2011) fromyear(2011) toyear(2011) statename(sname) idstate(id_st)
list id_st sname __id_st_ib __name_st_ib __name_st_cen2011 __id_st_cen2011 _IBscore, sepby(id_st) noobs

assert _IBmatch == 1
assert __id_st_ib == "08" if sname == "Rjrajasthan"
assert __id_st_ib == "21" if sname == "Oddisha"
* 2011 round returns the 2011 canonical
assert __name_st_cen2011 == "odisha"    if sname == "Oddisha"
assert __name_st_cen2011 == "tamilnadu" if sname == "Madras"
* Telangana did not exist in 2011 -> Andhra Pradesh
assert __id_st_ib == "28" if sname == "Telangana"

*-------------------------------------------------------------------------------
* 2. LGD round (recent data): Telangana now resolves to its own unit
*-------------------------------------------------------------------------------
di as text _n "==== TEST 2: current(2020) from(2015) to(2020) ===="
use `sample' , clear
indiabridge2 , currentyear(2020) fromyear(2015) toyear(2020) statename(sname) idstate(id_st)
list id_st sname __id_st_ib __name_st_ib __name_st_lgd __id_st_lgd _IBmatch, sepby(id_st) noobs

assert __id_st_ib == "36" if sname == "Telangana"
assert __name_st_lgd == "telangana" if sname == "Telangana"

*-------------------------------------------------------------------------------
* 3. Period names: 2001 round returns era-specific canonical, stable id is constant
*-------------------------------------------------------------------------------
di as text _n "==== TEST 3: current(2001) from(2001) to(2001) -- period names ===="
clear
input int id strL s
	1 "Orissa"
	2 "Uttaranchal"
	3 "Pondicherry"
end
indiabridge2 , currentyear(2001) fromyear(2001) toyear(2001) statename(s) idstate(id)
list id s __name_st_cen2001 __name_st_ib __id_st_ib _IBscore, noobs

* the 2001 census name differs from today's, but the stable id is the same unit
assert __name_st_cen2001 == "orissa"      & __name_st_ib == "odisha"      & __id_st_ib == "21" if s == "Orissa"
assert __name_st_cen2001 == "uttaranchal" & __name_st_ib == "uttarakhand" & __id_st_ib == "05" if s == "Uttaranchal"

*-------------------------------------------------------------------------------
* 4. from/to trimming across a multi-year window (1991-2011)
*-------------------------------------------------------------------------------
di as text _n "==== TEST 4: current(2011) from(1991) to(2011) ===="
use `sample' , clear
indiabridge2 , currentyear(2011) fromyear(1991) toyear(2011) statename(sname) idstate(id_st)
list id_st sname __id_st_ib __name_st_ib __name_st_cen2011 _IBmatch, sepby(id_st) noobs
* "Madras" (a 1971-and-earlier spelling) still resolves via the widened window
assert __id_st_ib == "33" if sname == "Madras"

di as result _n "ALL indiabridge2 TESTS PASSED"
