*-------------------------------------------------------------------------------
* Objective: Standardise a list of state names with typos/variations
*-------------------------------------------------------------------------------

* define sclean
capture program drop sclean
program define sclean

	* read and store user input
		local statevar `1'
		local year `2'

	* backup original state name, and generate new sieved name
		qui rename `statevar' `statevar'_raw
		qui egen `statevar' = sieve(`statevar'_raw), keep(a space)

	* remove symbols and whitespaces from state names
		qui replace `statevar' = subinstr(`statevar', " and ", "", .)
		qui replace `statevar' = subinstr(`statevar', " of ", "", .)

	* trim spaces and standardise to lowercase
		qui replace `statevar' = ustrtrim(strlower(`statevar'))
		qui replace `statevar' = subinstr(`statevar'," ","",.)

	* read year and run sclean
		sclean`year' `statevar'

end

*-------------------------------------------------------------------------------
* Clean state names
* (search for `snameYYYY')
*-------------------------------------------------------------------------------

*-------------------------------------------------------------------------------
* 1951
*-------------------------------------------------------------------------------
capture program drop sclean1951
program define sclean1951

* store input into macros
local sname1951 `1'

	* clean state names
	qui replace `sname1951' = "ajmer" if inlist(`sname1951', "ajmr", "ajmer", "rajasthanajmer")
	qui replace `sname1951' = "assam" if inlist(`sname1951', "assam", "asassam", "as")
	qui replace `sname1951' = "bihar" if inlist(`sname1951', "bihar", "bhbihar", "br")
	qui replace `sname1951' = "bilaspur" if inlist(`sname1951', "bilaspur")
	qui replace `sname1951' = "bhopal" if inlist(`sname1951', "bhopal", "sehore")
	qui replace `sname1951' = "bombay" if inlist(`sname1951',"bombay", "greaterbombay")
	qui replace `sname1951' = "coorg" if inlist(`sname1951', "coorg", "kodagu", "goorgordodagu")
	qui replace `sname1951' = "delhi" if inlist(`sname1951', "delhincr", "delhi", "dldelhi", "newdelhi", "nationalcapitalterritorydelhi", "nctdelhi", "nct", "dl")
	qui replace `sname1951' = "himachalpradesh" if inlist(`sname1951', "himachalpradesh", "hphimachalpradesh", "himachal", "hp")
	qui replace `sname1951' = "hyderabad" if inlist(`sname1951', "hyderabad", "hyderbad")
	qui replace `sname1951' = "jammukashmir" if inlist(`sname1951', "jammukashmir", "jmjammukashmir", "jammu", "jk")
	qui replace `sname1951' = "kutch" if inlist(`sname1951', "gujarat", "gjgujarat", "gujrat", "gj", "kutch")
	qui replace `sname1951' = "madhyapradesh" if inlist(`sname1951', "madhyapradesh", "madhypradesh", "mpmadhyapradesh", "mp")
	qui replace `sname1951' = "madras" if inlist(`sname1951', "madras", "tamilnadu")
	qui replace `sname1951' = "madhyabharat" if inlist(`sname1951', "madhyabharat", "madhybharat")
	qui replace `sname1951' = "manipur" if inlist(`sname1951', "manipur", "mamanipur", "mn")
	qui replace `sname1951' = "mysore" if inlist(`sname1951', "mysore", "mysuru")
	qui replace `sname1951' = "orissa" if inlist(`sname1951', "orissa", "ororissa", "or")
	qui replace `sname1951' = "patialaeastpunjabstatesunion" if inlist(`sname1951', "patiala", "patialaeastpunjabstatesunion", "pepsu")
	qui replace `sname1951' = "punjab" if inlist(`sname1951', "punjab", "pjpunjab", "panjab", "pb", "simla")
	qui replace `sname1951' = "rajasthan" if inlist(`sname1951', "rajasthan", "rjrajasthan", "rj")
	qui replace `sname1951' = "sikkim" if inlist(`sname1951', "sikkim", "sksikkim", "sk")
	qui replace `sname1951' = "saurashtra" if inlist(`sname1951', "saurashtra", "rajkot", "navanagar")
	qui replace `sname1951' = "travancorecochin" if inlist(`sname1951', "kerala", "kekerala", "kerela", "kl", "travancorecochin")
	qui replace `sname1951' = "tripura" if inlist(`sname1951', "tripura", "trtripura", "tr")
	qui replace `sname1951' = "uttarpradesh" if inlist(`sname1951', "uttarpradesh", "uputtarpradesh", "uttarapradesh", "up")
	qui replace `sname1951' = "vindhyapradesh" if inlist(`sname1951', "vindhyapradesh", "vindhypradesh")
	qui replace `sname1951' = "westbengal" if inlist(`sname1951', "westbengal", "wbwestbengal", "wb")
	qui replace `sname1951' = "andamannicobarislands" if inlist(`sname1951', "andamannicobarislands", "andamannicobarisland", "anislands", "anisland", "andamannicobar", "an")

end

*-------------------------------------------------------------------------------
* 1961
*-------------------------------------------------------------------------------
capture program drop sclean1961
program define sclean1961

* store input into macros
local sname1961 `1'

	* clean state names
	qui replace `sname1961' = "andhrapradesh" if inlist(`sname1961', "andhrapradesh", "apandhrapradesh", "ap")
	qui replace `sname1961' = "assam" if inlist(`sname1961', "assam", "asassam", "as")
	qui replace `sname1961' = "bihar" if inlist(`sname1961', "bihar", "bhbihar", "br")
	qui replace `sname1961' = "gujarat" if inlist(`sname1961', "gujarat", "gjgujarat", "gujrat", "gj", "kutch", "saurashtra")
	qui replace `sname1961' = "himachalpradesh" if inlist(`sname1961', "himachalpradesh", "hphimachalpradesh", "himachal", "hp", "bilaspur")
	qui replace `sname1961' = "jammukashmir" if inlist(`sname1961', "jammukashmir", "jmjammukashmir", "jammu", "jk")
	qui replace `sname1961' = "kerala" if inlist(`sname1961', "kerala", "kekerala", "kerela", "kl", "travancorecochin")
	qui replace `sname1961' = "madhyapradesh" if inlist(`sname1961', "madhyapradesh", "madhypradesh", "mpmadhyapradesh", "mp")
	qui replace `sname1961' = "madras" if inlist(`sname1961', "madras", "tamilnadu")
	qui replace `sname1961' = "maharashtra" if inlist(`sname1961', "maharashtra", "mhmaharashtra", "mh", "ms")
	qui replace `sname1961' = "manipur" if inlist(`sname1961', "manipur", "mamanipur", "mn")
	qui replace `sname1961' = "mysore" if inlist(`sname1961', "mysore", "mysuru")
	qui replace `sname1961' = "nagahillstuensangarea" if inlist(`sname1961', "nagahillstuensangarea", "nagahills")
	qui replace `sname1961' = "orissa" if inlist(`sname1961', "orissa", "ororissa", "or", "odisha")
	qui replace `sname1961' = "punjab" if inlist(`sname1961', "punjab", "pjpunjab", "panjab", "pb")
	qui replace `sname1961' = "rajasthan" if inlist(`sname1961', "rajasthan", "rjrajasthan", "rj")
	qui replace `sname1961' = "sikkim" if inlist(`sname1961', "sikkim", "sksikkim", "sk")
	qui replace `sname1961' = "tripura" if inlist(`sname1961', "tripura", "trtripura", "tr")
	qui replace `sname1961' = "uttarpradesh" if inlist(`sname1961', "uttarpradesh", "uputtarpradesh", "uttarapradesh", "up")
	qui replace `sname1961' = "westbengal" if inlist(`sname1961', "westbengal", "wbwestbengal", "wb")
	qui replace `sname1961' = "andamannicobarislands" if inlist(`sname1961', "andamannicobarislands", "andamannicobarisland", "anislands", "anisland", "andamannicobar", "an")
	qui replace `sname1961' = "dadranagarhaveli" if inlist(`sname1961', "dadranagarhaveli")
	qui replace `sname1961' = "delhi" if inlist(`sname1961', "delhincr", "delhi", "dldelhi", "newdelhi", "nationalcapitalterritorydelhi", "nctdelhi", "nct", "dl")
	qui replace `sname1961' = "goadamandiu" if inlist(`sname1961', "goadamandiu","goadamandiuportugese")
	qui replace `sname1961' = "laccadiveminicoyamindiviislands" if inlist(`sname1961', "laccadiveminicoyamindiviislands", "laccadiveminicoiamindiviislands")
	qui replace `sname1961' = "northeastfrontieragency" if inlist(`sname1961', "northeastfrontieragency", "nefa")
	qui replace `sname1961' = "pondicherry" if inlist(`sname1961', "puducherry", "pondicherry", "pondi", "py", "pondicherryfrench")

end

*-------------------------------------------------------------------------------
* 1971
*-------------------------------------------------------------------------------
capture program drop sclean1971
program define sclean1971

* store input into macros
local sname1971 `1'

	* clean state names
	qui replace `sname1971' = "andhrapradesh" if inlist(`sname1971', "andhrapradesh", "apandhrapradesh", "ap")
	qui replace `sname1971' = "assam" if inlist(`sname1971', "assam", "asassam", "as")
	qui replace `sname1971' = "bihar" if inlist(`sname1971', "bihar", "bhbihar", "br")
	qui replace `sname1971' = "gujarat" if inlist(`sname1971', "gujarat", "gjgujarat", "gujrat", "gj", "kutch", "saurashtra")
	qui replace `sname1971' = "himachalpradesh" if inlist(`sname1971', "himachalpradesh", "hphimachalpradesh", "himachal", "hp", "bilaspur")
	qui replace `sname1971' = "jammukashmir" if inlist(`sname1971', "jammukashmir", "jmjammukashmir", "jammu", "jk")
	qui replace `sname1971' = "kerala" if inlist(`sname1971', "kerala", "kekerala", "kerela", "kl", "travancorecochin")
	qui replace `sname1971' = "madhyapradesh" if inlist(`sname1971', "madhyapradesh", "madhypradesh", "mpmadhyapradesh", "mp")
	qui replace `sname1971' = "maharashtra" if inlist(`sname1971', "maharashtra", "mhmaharashtra", "mh", "ms")
	qui replace `sname1971' = "manipur" if inlist(`sname1971', "manipur", "mamanipur", "mn")
	qui replace `sname1971' = "meghalaya" if inlist(`sname1971', "shillong", "meghalay", "meghalaya")
	qui replace `sname1971' = "mysore" if inlist(`sname1971', "mysore", "mysuru")
	qui replace `sname1971' = "nagaland" if inlist(`sname1971', "nagaland", "nanagaland", "nl")
	qui replace `sname1971' = "orissa" if inlist(`sname1971', "orissa", "ororissa", "or")
	qui replace `sname1971' = "punjab" if inlist(`sname1971', "punjab", "pjpunjab", "panjab", "pb")
	qui replace `sname1971' = "rajasthan" if inlist(`sname1971', "rajasthan", "rjrajasthan", "rj")
	qui replace `sname1971' = "sikkim" if inlist(`sname1971', "sikkim", "sksikkim", "sk")
	qui replace `sname1971' = "tamilnadu" if inlist(`sname1971', "tamilnadu", "tntamilnadu", "tn", "madras")
	qui replace `sname1971' = "tripura" if inlist(`sname1971', "tripura", "trtripura", "tr")
	qui replace `sname1971' = "uttarpradesh" if inlist(`sname1971', "uttarpradesh", "uputtarpradesh", "uttarapradesh", "up")
	qui replace `sname1971' = "westbengal" if inlist(`sname1971', "westbengal", "wbwestbengal", "wb")
	qui replace `sname1971' = "andamannicobarislands" if inlist(`sname1971', "andamannicobarislands", "andamannicobarisland", "anislands", "anisland", "andamannicobar", "an")
	qui replace `sname1971' = "arunachalpradesh" if inlist(`sname1971', "arunachalpradesh", "ararunachalpradesh", "arunanchalpradesh", "ar")
	qui replace `sname1971' = "chandigarh" if inlist(`sname1971', "chandigarh", "sahibzadaajitsinghnagar")
	qui replace `sname1971' = "dadranagarhaveli" if inlist(`sname1971', "dadranagarhaveli")
	qui replace `sname1971' = "delhi" if inlist(`sname1971', "delhincr", "delhi", "dldelhi", "newdelhi", "nationalcapitalterritorydelhi", "nctdelhi", "nct", "dl")
	qui replace `sname1971' = "goadamandiu" if inlist(`sname1971', "goadamandiu","goadamandiuportugese","goa")
	qui replace `sname1971' = "laccadiveminicoyamindiviislands" if inlist(`sname1971', "laccadiveminicoyamindiviislands", "laccadiveminicoiamindiviislands")
	qui replace `sname1971' = "mizoram" if inlist(`sname1971', "mizohills","mizoram")
	qui replace `sname1971' = "pondicherry" if inlist(`sname1971', "puducherry", "pondicherry", "pondi", "py", "pondicherryfrench")

end

*-------------------------------------------------------------------------------
* 1981
*-------------------------------------------------------------------------------
capture program drop sclean1981
program define sclean1981

* store input into macros
local sname1981 `1'

	* clean state names
	qui replace `sname1981' = "andhrapradesh" if inlist(`sname1981', "andhrapradesh", "apandhrapradesh", "ap")
	qui replace `sname1981' = "assam" if inlist(`sname1981', "assam", "asassam", "as")
	qui replace `sname1981' = "bihar" if inlist(`sname1981', "bihar", "bhbihar", "br")
	qui replace `sname1981' = "gujarat" if inlist(`sname1981', "gujarat", "gjgujarat", "gujrat", "gj", "kutch", "saurashtra")
	qui replace `sname1981' = "haryana" if inlist(`sname1981', "haryana", "hrharyana", "hr")
	qui replace `sname1981' = "himachalpradesh" if inlist(`sname1981', "himachalpradesh", "hphimachalpradesh", "himachal", "hp", "bilaspur")
	qui replace `sname1981' = "jammukashmir" if inlist(`sname1981', "jammukashmir", "jmjammukashmir", "jammu", "jk")
	qui replace `sname1981' = "karnataka" if inlist(`sname1981', "karnataka", "kakarnataka", "ka", "mysore")
	qui replace `sname1981' = "kerala" if inlist(`sname1981', "kerala", "kekerala", "kerela", "kl", "travancorecochin")
	qui replace `sname1981' = "madhyapradesh" if inlist(`sname1981', "madhyapradesh", "madhypradesh", "mpmadhyapradesh", "mp")
	qui replace `sname1981' = "maharashtra" if inlist(`sname1981', "maharashtra", "mhmaharashtra", "mh", "ms")
	qui replace `sname1981' = "manipur" if inlist(`sname1981', "manipur", "mamanipur", "mn")
	qui replace `sname1981' = "meghalaya" if inlist(`sname1981', "shillong", "meghalay", "meghalaya")
	qui replace `sname1981' = "nagaland" if inlist(`sname1981', "nagaland", "nanagaland", "nl")
	qui replace `sname1981' = "orissa" if inlist(`sname1981', "orissa", "ororissa", "or")
	qui replace `sname1981' = "punjab" if inlist(`sname1981', "punjab", "pjpunjab", "panjab", "pb")
	qui replace `sname1981' = "rajasthan" if inlist(`sname1981', "rajasthan", "rjrajasthan", "rj")
	qui replace `sname1981' = "sikkim" if inlist(`sname1981', "sikkim", "sksikkim", "sk")
	qui replace `sname1981' = "tamilnadu" if inlist(`sname1981', "tamilnadu", "tntamilnadu", "tn", "madras")
	qui replace `sname1981' = "tripura" if inlist(`sname1981', "tripura", "trtripura", "tr")
	qui replace `sname1981' = "uttarpradesh" if inlist(`sname1981', "uttarpradesh", "uputtarpradesh", "uttarapradesh", "up")
	qui replace `sname1981' = "westbengal" if inlist(`sname1981', "westbengal", "wbwestbengal", "wb")
	qui replace `sname1981' = "andamannicobarislands" if inlist(`sname1981', "andamannicobarislands", "andamannicobarisland", "anislands", "anisland", "andamannicobar", "an")
	qui replace `sname1981' = "arunachalpradesh" if inlist(`sname1981', "arunachalpradesh", "ararunachalpradesh", "arunanchalpradesh", "ar")
	qui replace `sname1981' = "chandigarh" if inlist(`sname1981', "chandigarh", "sahibzadaajitsinghnagar")
	qui replace `sname1981' = "dadranagarhaveli" if inlist(`sname1981', "dadranagarhaveli")
	qui replace `sname1981' = "delhi" if inlist(`sname1981', "delhincr", "delhi", "dldelhi", "newdelhi", "nationalcapitalterritorydelhi", "nctdelhi", "nct", "dl")
	qui replace `sname1981' = "goadamandiu" if inlist(`sname1981', "goadamandiu","goadamandiuportugese")
	qui replace `sname1981' = "lakshadweep" if inlist(`sname1981', "laccadiveminicoyamindiviislands", "laccadiveminicoiamindiviislands", "laccadive", "lakshadweep", "lakshdweep")
	qui replace `sname1981' = "mizoram" if inlist(`sname1981', "mizohills","mizoram")
	qui replace `sname1981' = "pondicherry" if inlist(`sname1981', "puducherry", "pondicherry", "pondi", "py", "pondicherryfrench")

end

*-------------------------------------------------------------------------------
* 1991
*-------------------------------------------------------------------------------
capture program drop sclean1991
program define sclean1991

* store input into macros
local sname1991 `1'

* clean state names
	qui replace `sname1991' = "andhrapradesh" if inlist(`sname1991', "andhrapradesh", "apandhrapradesh", "ap")
	qui replace `sname1991' = "arunachalpradesh" if inlist(`sname1991', "arunachalpradesh", "ararunachalpradesh", "arunanchalpradesh", "ar")
	qui replace `sname1991' = "assam" if inlist(`sname1991', "assam", "asassam", "as")
	qui replace `sname1991' = "bihar" if inlist(`sname1991', "bihar", "bhbihar", "br")
	qui replace `sname1991' = "goa" if inlist(`sname1991', "goadamandiu","goa")
	qui replace `sname1991' = "gujarat" if inlist(`sname1991', "gujarat", "gjgujarat", "gujrat", "gj", "kutch", "saurashtra")
	qui replace `sname1991' = "haryana" if inlist(`sname1991', "haryana", "hrharyana", "hr")
	qui replace `sname1991' = "himachalpradesh" if inlist(`sname1991', "himachalpradesh", "hphimachalpradesh", "himachal", "hp", "bilaspur")
	qui replace `sname1991' = "jammukashmir" if inlist(`sname1991', "jammukashmir", "jmjammukashmir", "jammu", "jk")
	qui replace `sname1991' = "karnataka" if inlist(`sname1991', "karnataka", "kakarnataka", "ka", "mysore")
	qui replace `sname1991' = "kerala" if inlist(`sname1991', "kerala", "kekerala", "kerela", "kl", "travancorecochin")
	qui replace `sname1991' = "madhyapradesh" if inlist(`sname1991', "madhyapradesh", "madhypradesh", "mpmadhyapradesh", "mp")
	qui replace `sname1991' = "maharashtra" if inlist(`sname1991', "maharashtra", "mhmaharashtra", "mh", "ms", "maharastra")
	qui replace `sname1991' = "manipur" if inlist(`sname1991', "manipur", "mamanipur", "mn")
	qui replace `sname1991' = "meghalaya" if inlist(`sname1991', "shillong", "meghalay", "meghalaya")
	qui replace `sname1991' = "mizoram" if inlist(`sname1991', "mizohills","mizoram")
	qui replace `sname1991' = "nagaland" if inlist(`sname1991', "nagaland", "nanagaland", "nl")
	qui replace `sname1991' = "orissa" if inlist(`sname1991', "orissa", "ororissa", "or")
	qui replace `sname1991' = "punjab" if inlist(`sname1991', "punjab", "pjpunjab", "panjab", "pb")
	qui replace `sname1991' = "rajasthan" if inlist(`sname1991', "rajasthan", "rjrajasthan", "rj")
	qui replace `sname1991' = "sikkim" if inlist(`sname1991', "sikkim", "sksikkim", "sk", "gangtok", "districtsikkim")
	qui replace `sname1991' = "tamilnadu" if inlist(`sname1991', "tamilnadu", "tntamilnadu", "tn", "madras")
	qui replace `sname1991' = "tripura" if inlist(`sname1991', "tripura", "trtripura", "tr", "agartala")
	qui replace `sname1991' = "uttarpradesh" if inlist(`sname1991', "uttarpradesh", "uputtarpradesh", "uttarapradesh", "up")
	qui replace `sname1991' = "westbengal" if inlist(`sname1991', "westbengal", "wbwestbengal", "wb")
	qui replace `sname1991' = "andamannicobarislands" if inlist(`sname1991', "andamannicobarislands", "andamannicobarisland", "anislands", "anisland", "andamannicobar", "an", "port blair", "andamanandnicobarislands")
	qui replace `sname1991' = "chandigarh" if inlist(`sname1991', "chandigarh", "sahibzadaajitsinghnagar")
	qui replace `sname1991' = "dadranagarhaveli" if inlist(`sname1991', "dadranagarhaveli", "silvassa", "dadraandnagarhaveli")
	qui replace `sname1991' = "delhi" if inlist(`sname1991', "delhincr", "delhi", "dldelhi", "newdelhi", "nationalcapitalterritorydelhi", "nctdelhi", "nct", "dl")
	qui replace `sname1991' = "damandiu" if inlist(`sname1991', "daman", "diu", "damandiu", "damananddiu")
	qui replace `sname1991' = "lakshadweep" if inlist(`sname1991', "laccadiveminicoyamindiviislands", "laccadiveminicoiamindiviislands", "laccadive", "lakshadweep", "lakshdweep", "kavaratti", "districtlakshadweep")
	qui replace `sname1991' = "pondicherry" if inlist(`sname1991', "puducherry", "pondicherry", "pondi", "py", "pondicherryfrench", "districtpuducherry")

end

*-------------------------------------------------------------------------------
* 2001
*-------------------------------------------------------------------------------
capture program drop sclean2001
program define sclean2001

* store input into macros
local sname2001 `1'

	* clean state names
	qui replace `sname2001' = "jammukashmir" if inlist(`sname2001', "jammukashmir", "jmjammukashmir", "jammu", "jk")
	qui replace `sname2001' = "himachalpradesh" if inlist(`sname2001', "himachalpradesh", "hphimachalpradesh", "himachal", "hp", "bilaspur")
	qui replace `sname2001' = "punjab" if inlist(`sname2001', "punjab", "pjpunjab", "panjab", "pb")
	qui replace `sname2001' = "chandigarh" if inlist(`sname2001', "chandigarh", "sahibzadaajitsinghnagar")
	qui replace `sname2001' = "uttaranchal" if inlist(`sname2001', "ut", "uttaranchal", "uttarakhand")
	qui replace `sname2001' = "haryana" if inlist(`sname2001', "haryana", "hrharyana", "hr")
	qui replace `sname2001' = "delhi" if inlist(`sname2001', "delhincr", "delhi", "dldelhi", "newdelhi", "nationalcapitalterritorydelhi", "nctdelhi", "nct", "dl")
	qui replace `sname2001' = "rajasthan" if inlist(`sname2001', "rajasthan", "rjrajasthan", "rj")
	qui replace `sname2001' = "uttarpradesh" if inlist(`sname2001', "uttarpradesh", "uputtarpradesh", "uttarapradesh", "up")
	qui replace `sname2001' = "bihar" if inlist(`sname2001', "bihar", "bhbihar", "br")
	qui replace `sname2001' = "sikkim" if inlist(`sname2001', "sikkim", "sksikkim", "sk")
	qui replace `sname2001' = "arunachalpradesh" if inlist(`sname2001', "arunachalpradesh", "ararunachalpradesh", "arunanchalpradesh", "ar")
	qui replace `sname2001' = "nagaland" if inlist(`sname2001', "nagaland", "nanagaland", "nl")
	qui replace `sname2001' = "manipur" if inlist(`sname2001', "manipur", "mamanipur", "mn")
	qui replace `sname2001' = "mizoram" if inlist(`sname2001', "mizohills","mizoram")
	qui replace `sname2001' = "tripura" if inlist(`sname2001', "tripura", "trtripura", "tr")
	qui replace `sname2001' = "meghalaya" if inlist(`sname2001', "shillong", "meghalay", "meghalaya")
	qui replace `sname2001' = "assam" if inlist(`sname2001', "assam", "asassam", "as")
	qui replace `sname2001' = "westbengal" if inlist(`sname2001', "westbengal", "wbwestbengal", "wb")
	qui replace `sname2001' = "jharkhand" if inlist(`sname2001', "jharkhand", "jh")
	qui replace `sname2001' = "orissa" if inlist(`sname2001', "orissa", "ororissa", "or")
	qui replace `sname2001' = "chhattisgarh" if inlist(`sname2001', "chhattisgarh", "ct", "chhatisgarh")
	qui replace `sname2001' = "madhyapradesh" if inlist(`sname2001', "madhyapradesh", "madhypradesh", "mpmadhyapradesh", "mp")
	qui replace `sname2001' = "gujarat" if inlist(`sname2001', "gujarat", "gjgujarat", "gujrat", "gj", "kutch", "saurashtra")
	qui replace `sname2001' = "damandiu" if inlist(`sname2001', "damandiu","daman", "diu")
	qui replace `sname2001' = "dadranagarhaveli" if inlist(`sname2001', "dadranagarhaveli")
	qui replace `sname2001' = "maharashtra" if inlist(`sname2001', "maharashtra", "mhmaharashtra", "maharastra", "mh", "ms")
	qui replace `sname2001' = "andhrapradesh" if inlist(`sname2001', "andhrapradesh", "apandhrapradesh", "ap")
	qui replace `sname2001' = "karnataka" if inlist(`sname2001', "karnataka", "kakarnataka", "ka", "mysore")
	qui replace `sname2001' = "goa" if inlist(`sname2001', "goa")
	qui replace `sname2001' = "lakshadweep" if inlist(`sname2001', "lakshadweep", "lakshadwep", "ld")
	qui replace `sname2001' = "kerala" if inlist(`sname2001', "kerala", "kekerala", "kerela", "kl", "travancorecochin")
	qui replace `sname2001' = "tamilnadu" if inlist(`sname2001', "tamilnadu", "tntamilnadu", "tn", "madras")
	qui replace `sname2001' = "pondicherry" if inlist(`sname2001', "puducherry", "pondicherry", "pondi", "py", "pondicherryfrench")
	qui replace `sname2001' = "andamannicobarislands" if inlist(`sname2001', "andamannicobarislands", "andamannicobarisland", "anislands", "anisland", "andamannicobar", "an", "andamanandnicobarislands")

end

*-------------------------------------------------------------------------------
* 2011
*-------------------------------------------------------------------------------
capture program drop sclean2011
program define sclean2011

* store input into macros
local sname2011 `1'

	* clean state names
	qui replace `sname2011' = "jammukashmir" if inlist(`sname2011', "jammukashmir", "jmjammukashmir", "jammu", "jk")
	qui replace `sname2011' = "himachalpradesh" if inlist(`sname2011', "himachalpradesh", "hphimachalpradesh", "himachal", "hp", "bilaspur")
	qui replace `sname2011' = "punjab" if inlist(`sname2011', "punjab", "pjpunjab", "panjab", "pb")
	qui replace `sname2011' = "chandigarh" if inlist(`sname2011', "chandigarh", "sahibzadaajitsinghnagar")
	qui replace `sname2011' = "uttarakhand" if inlist(`sname2011', "ut", "uttaranchal","uttrakhand", "uk", "uttranchal")
	qui replace `sname2011' = "haryana" if inlist(`sname2011', "haryana", "hrharyana", "hr")
	qui replace `sname2011' = "delhi" if inlist(`sname2011', "delhincr", "delhi", "dldelhi", "newdelhi", "nationalcapitalterritorydelhi", "nctdelhi", "nct", "dl", "nctofdelhi")
	qui replace `sname2011' = "rajasthan" if inlist(`sname2011', "rajasthan", "rjrajasthan", "rj")
	qui replace `sname2011' = "uttarpradesh" if inlist(`sname2011', "uttarpradesh", "uputtarpradesh", "uttarapradesh", "up")
	qui replace `sname2011' = "bihar" if inlist(`sname2011', "bihar", "bhbihar", "br", "bh")
	qui replace `sname2011' = "sikkim" if inlist(`sname2011', "sikkim", "sksikkim", "sk")
	qui replace `sname2011' = "arunachalpradesh" if inlist(`sname2011', "arunachalpradesh", "ararunachalpradesh", "arunanchalpradesh", "ar", "arunancal predesh", "arp")
	qui replace `sname2011' = "nagaland" if inlist(`sname2011', "nagaland", "nanagaland", "nl")
	qui replace `sname2011' = "manipur" if inlist(`sname2011', "manipur", "mamanipur", "mn", "mnp")
	qui replace `sname2011' = "mizoram" if inlist(`sname2011', "mizohills","mizoram", "mz")
	qui replace `sname2011' = "tripura" if inlist(`sname2011', "tripura", "trtripura", "tr", "tp")
	qui replace `sname2011' = "meghalaya" if inlist(`sname2011', "shillong", "meghalay", "meghalaya", "mgh")
	qui replace `sname2011' = "assam" if inlist(`sname2011', "assam", "asassam", "as")
	qui replace `sname2011' = "westbengal" if inlist(`sname2011', "westbengal", "wbwestbengal", "wb")
	qui replace `sname2011' = "jharkhand" if inlist(`sname2011', "jharkhand", "jh")
	qui replace `sname2011' = "odisha" if inlist(`sname2011', "orissa", "ororissa", "or", "odisha")
	qui replace `sname2011' = "chhattisgarh" if inlist(`sname2011', "chhattisgarh", "ct", "chhatisgarh","cg", "chattisgarh")
	qui replace `sname2011' = "madhyapradesh" if inlist(`sname2011', "madhyapradesh", "madhypradesh", "mpmadhyapradesh", "mp")
	qui replace `sname2011' = "gujarat" if inlist(`sname2011', "gujarat", "gjgujarat", "gujrat", "gj", "kutch", "saurashtra")
	qui replace `sname2011' = "damandiu" if inlist(`sname2011', "damandiu","daman", "diu")
	qui replace `sname2011' = "dadranagarhaveli" if inlist(`sname2011', "dadranagarhaveli", "dnhaveli")
	qui replace `sname2011' = "maharashtra" if inlist(`sname2011', "maharashtra", "mhmaharashtra", "mh", "ms")
	qui replace `sname2011' = "andhrapradesh" if inlist(`sname2011', "andhrapradesh", "apandhrapradesh", "ap", "telangana")
	qui replace `sname2011' = "karnataka" if inlist(`sname2011', "karnataka", "kakarnataka", "ka", "mysore")
	qui replace `sname2011' = "goa" if inlist(`sname2011', "goa")
	qui replace `sname2011' = "lakshadweep" if inlist(`sname2011', "lakshadweep", "lakshadwep", "ld")
	qui replace `sname2011' = "kerala" if inlist(`sname2011', "kerala", "kekerala", "kerela", "kl", "travancorecochin", "ke")
	qui replace `sname2011' = "tamilnadu" if inlist(`sname2011', "tamilnadu", "tntamilnadu", "tn", "madras")
	qui replace `sname2011' = "pondicherry" if inlist(`sname2011', "puducherry", "pondicherry", "pondi", "py", "pondicherryfrench")
	qui replace `sname2011' = "andamannicobarislands" if inlist(`sname2011', "andamannicobarislands", "andamannicobarisland", "anislands", "anisland", "andamannicobar", "an", "andamansnicobars")

end
