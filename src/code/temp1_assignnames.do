include "/home/ved/repos/india-bridge/ado/indiabridge-v2/indiabridge.ado"
do "/home/ved/repos/india-bridge/ado/indiabridge-v2/indiabridge.ado"

*-------------------------------------------------------------------------------

* example data

	clear
		input int id_st strL sname
		1 "Rjrajasthan"
		2 "SK Sikkim"
		3 "Oddisha"
		4 "BalaRampur"
		5 "Andhrunachalpradesh"
		6 "Andhya pradesh"
		7 "Himcha2lpradesh"
		8 "Bihar"
		9 "Shill0ng"
		10 "Shillnxg"
		11 "Utarkhand"
		12 "Utarpradesh"
		13 "National Capital Territory (NCT), Delhi"
	end

tempfile current
save `current', replace

*-------------------------------------------------------------------------------

do "/home/ved/repos/india-bridge/ado/indiabridge-v2/indiabridge.ado"
// use `current', clear
// indiabridge , current(1975) from(2010) to(2012) st(sname) idstate(id_st)

import delimited "/home/ved/repos/india-bridge/ado/indiabridge-v2/dict/dist_names.csv", clear
import delimited "/home/ved/repos/india-bridge/ado/indiabridge-v2/dict/state_names.csv", clear
keep if year == 2001
gen id = _n
indiabridge , current(1975) from(2010) to(2012) st(state) idstate(id)


// replace id_cur = 1
gen test = 1
gen random = runiform()


	** Merge
	ibmatch sname , id(id_st) currentyear(2011) state

// gen dname = sname
dist(dname)
