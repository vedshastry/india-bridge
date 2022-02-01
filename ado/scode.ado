*-------------------------------------------------------------------------------
* Objective: Assign state codes & ISO identifiers to cleaned state names
*-------------------------------------------------------------------------------

* define scode
capture program drop scode
program define scode

  * read and store user input
	local statevar `1'
	local year `2'

	* enter district code information
		qui gen scode_`statevar' = ""
		qui gen ut_`statevar' = 0

		* call programs
		stateiso `statevar'
		scode`year' `statevar'

end

*-------------------------------------------------------------------------------
* ISO codes
*-------------------------------------------------------------------------------

capture program drop stateiso
program define stateiso

	* retrieve argument from syntax and store into sname
		local sname `1'

	* enter iso code information for 28 states and 8 union territories from 2022
		qui gen iso_`sname' = "UNKNOWN"
	  qui replace iso_`sname' = "AN" if inlist(`sname',"andamannicobarislands")
	  qui replace iso_`sname' = "AP" if inlist(`sname',"andhrapradesh")
	  qui replace iso_`sname' = "TG" if inlist(`sname',"telangana","hyderabad")
	  qui replace iso_`sname' = "AR" if inlist(`sname',"arunachalpradesh","northeastfrontieragency")
	  qui replace iso_`sname' = "AS" if inlist(`sname',"assam")
	  qui replace iso_`sname' = "BR" if inlist(`sname',"bihar")
	  qui replace iso_`sname' = "CH" if inlist(`sname',"chandigarh")
	  qui replace iso_`sname' = "CT" if inlist(`sname',"chhattisgarh")
	  qui replace iso_`sname' = "JH" if inlist(`sname',"jharkhand")
	  qui replace iso_`sname' = "DD" if inlist(`sname',"damandiu")
	  qui replace iso_`sname' = "DH" if inlist(`sname',"dadranagarhaveli")
	  qui replace iso_`sname' = "DL" if inlist(`sname',"delhi")
	  qui replace iso_`sname' = "GA" if inlist(`sname',"goadamandiu","goa")
	  qui replace iso_`sname' = "GJ" if inlist(`sname',"gujarat")
	  qui replace iso_`sname' = "HP" if inlist(`sname',"bilaspur","himachalpradesh")
	  qui replace iso_`sname' = "HR" if inlist(`sname',"haryana")
	  qui replace iso_`sname' = "JK" if inlist(`sname',"jammukashmir")
	  qui replace iso_`sname' = "KA" if inlist(`sname',"karnataka","mysore","coorg")
	  qui replace iso_`sname' = "KL" if inlist(`sname',"kerala")
	  qui replace iso_`sname' = "LA" if inlist(`sname',"ladakh")
	  qui replace iso_`sname' = "LD" if inlist(`sname',"laccadiveminicoyamindiviislands","lakshadweep")
	  qui replace iso_`sname' = "TN" if inlist(`sname',"madras","tamilnadu")
	  qui replace iso_`sname' = "MH" if inlist(`sname',"maharashtra","bombay")
	  qui replace iso_`sname' = "MN" if inlist(`sname',"manipur")
	  qui replace iso_`sname' = "ML" if inlist(`sname',"meghalaya")
	  qui replace iso_`sname' = "MP" if inlist(`sname',"madhyapradesh","bhopal","madhyabharat","vindhyapradesh")
	  qui replace iso_`sname' = "MZ" if inlist(`sname',"mizoram")
	  qui replace iso_`sname' = "NL" if inlist(`sname',"nagahillstuensangarea","nagaland")
	  qui replace iso_`sname' = "OR" if inlist(`sname',"orissa","odisha")
	  qui replace iso_`sname' = "PB" if inlist(`sname',"punjab","patialaeastpunjabstatesunion")
	  qui replace iso_`sname' = "PY" if inlist(`sname',"pondicherry")
	  qui replace iso_`sname' = "RJ" if inlist(`sname',"rajasthan","ajmer")
	  qui replace iso_`sname' = "SK" if inlist(`sname',"sikkim")
	  qui replace iso_`sname' = "TR" if inlist(`sname',"tripura")
	  qui replace iso_`sname' = "UP" if inlist(`sname',"uttarpradesh")
	  qui replace iso_`sname' = "UT" if inlist(`sname',"uttaranchal","uttarakhand")
	  qui replace iso_`sname' = "WB" if inlist(`sname',"westbengal","calcutta")

end

*-------------------------------------------------------------------------------
* 1951
*-------------------------------------------------------------------------------
capture program drop scode1951
program define scode1951

* store input into macros
local sname1951 `1'

	* assign codes
	qui replace scode_`sname1951' = "01" if `sname1951' == "ajmer"
	qui replace scode_`sname1951' = "02" if `sname1951' == "assam"
	qui replace scode_`sname1951' = "03" if `sname1951' == "bihar"
	qui replace scode_`sname1951' = "04" if `sname1951' == "bilaspur"
	qui replace scode_`sname1951' = "05" if `sname1951' == "bhopal"
	qui replace scode_`sname1951' = "06" if `sname1951' == "bombay"
	qui replace scode_`sname1951' = "07" if `sname1951' == "coorg"
	qui replace scode_`sname1951' = "08" if `sname1951' == "delhi"
	qui replace scode_`sname1951' = "09" if `sname1951' == "himachalpradesh"
	qui replace scode_`sname1951' = "10" if `sname1951' == "hyderabad"
	qui replace scode_`sname1951' = "11" if `sname1951' == "jammukashmir"
	qui replace scode_`sname1951' = "12" if `sname1951' == "kutch"
	qui replace scode_`sname1951' = "13" if `sname1951' == "madhyapradesh"
	qui replace scode_`sname1951' = "14" if `sname1951' == "madras"
	qui replace scode_`sname1951' = "15" if `sname1951' == "madhyabharat"
	qui replace scode_`sname1951' = "16" if `sname1951' == "manipur"
	qui replace scode_`sname1951' = "17" if `sname1951' == "mysore"
	qui replace scode_`sname1951' = "18" if `sname1951' == "orissa"
	qui replace scode_`sname1951' = "19" if `sname1951' == "patialaeastpunjabstatesunion"
	qui replace scode_`sname1951' = "20" if `sname1951' == "punjab"
	qui replace scode_`sname1951' = "21" if `sname1951' == "rajasthan"
	qui replace scode_`sname1951' = "22" if `sname1951' == "saurashtra"
	qui replace scode_`sname1951' = "23" if `sname1951' == "sikkim"
	qui replace scode_`sname1951' = "24" if `sname1951' == "travancorecochin"
	qui replace scode_`sname1951' = "25" if `sname1951' == "tripura"
	qui replace scode_`sname1951' = "26" if `sname1951' == "uttarpradesh"
	qui replace scode_`sname1951' = "27" if `sname1951' == "vindhyapradesh"
	qui replace scode_`sname1951' = "28" if `sname1951' == "westbengal"
	qui replace scode_`sname1951' = "29" if `sname1951' == "andamannicobarislands"

	* replace union territory status as 1 for andaman & nicobar
	qui replace ut_`sname1951' = 1 if real(scode_`sname1951')==29

end

*-------------------------------------------------------------------------------
* 1961
*-------------------------------------------------------------------------------
capture program drop scode1961
program define scode1961

* store input into macros
local sname1961 `1'

	qui replace scode_`sname1961' = "01" if `sname1961' == "andhrapradesh"
	qui replace scode_`sname1961' = "02" if `sname1961' == "assam"
	qui replace scode_`sname1961' = "03" if `sname1961' == "bihar"
	qui replace scode_`sname1961' = "04" if `sname1961' == "gujarat"
	qui replace scode_`sname1961' = "05" if `sname1961' == "himachalpradesh"
	qui replace scode_`sname1961' = "06" if `sname1961' == "jammukashmir"
	qui replace scode_`sname1961' = "07" if `sname1961' == "kerala"
	qui replace scode_`sname1961' = "08" if `sname1961' == "madhyapradesh"
	qui replace scode_`sname1961' = "09" if `sname1961' == "madras"
	qui replace scode_`sname1961' = "10" if `sname1961' == "maharashtra"
	qui replace scode_`sname1961' = "11" if `sname1961' == "manipur"
	qui replace scode_`sname1961' = "12" if `sname1961' == "mysore"
	qui replace scode_`sname1961' = "13" if `sname1961' == "nagahillstuensangarea"
	qui replace scode_`sname1961' = "14" if `sname1961' == "orissa"
	qui replace scode_`sname1961' = "15" if `sname1961' == "punjab"
	qui replace scode_`sname1961' = "16" if `sname1961' == "rajasthan"
	qui replace scode_`sname1961' = "17" if `sname1961' == "sikkim"
	qui replace scode_`sname1961' = "18" if `sname1961' == "tripura"
	qui replace scode_`sname1961' = "19" if `sname1961' == "uttarpradesh"
	qui replace scode_`sname1961' = "20" if `sname1961' == "westbengal"
	qui replace scode_`sname1961' = "21" if `sname1961' == "andamannicobarislands"
	qui replace scode_`sname1961' = "22" if `sname1961' == "dadranagarhaveli"
	qui replace scode_`sname1961' = "23" if `sname1961' == "delhi"
	qui replace scode_`sname1961' = "24" if `sname1961' == "goadamandiu"
	qui replace scode_`sname1961' = "25" if `sname1961' == "laccadiveminicoyamindiviislands"
	qui replace scode_`sname1961' = "26" if `sname1961' == "northeastfrontieragency"
	qui replace scode_`sname1961' = "27" if `sname1961' == "pondicherry"

	* replace union territory status as 1 for states featured after west bengal
	qui replace ut_`sname1961' = 1 if real(scode_`sname1961')>20 & real(scode_`sname1961') != .

end

*-------------------------------------------------------------------------------
* 1971
*-------------------------------------------------------------------------------
capture program drop scode1971
program define scode1971

* store input into macros
local sname1971 `1'

	* assign codes
	qui replace scode_`sname1971' = "01" if `sname1971' == "andhrapradesh"
	qui replace scode_`sname1971' = "02" if `sname1971' == "assam"
	qui replace scode_`sname1971' = "03" if `sname1971' == "bihar"
	qui replace scode_`sname1971' = "04" if `sname1971' == "gujarat"
	qui replace scode_`sname1971' = "05" if `sname1971' == "haryana"
	qui replace scode_`sname1971' = "06" if `sname1971' == "himachalpradesh"
	qui replace scode_`sname1971' = "07" if `sname1971' == "jammukashmir"
	qui replace scode_`sname1971' = "08" if `sname1971' == "kerala"
	qui replace scode_`sname1971' = "09" if `sname1971' == "madhyapradesh"
	qui replace scode_`sname1971' = "10" if `sname1971' == "maharashtra"
	qui replace scode_`sname1971' = "11" if `sname1971' == "manipur"
	qui replace scode_`sname1971' = "12" if `sname1971' == "meghalaya"
	qui replace scode_`sname1971' = "13" if `sname1971' == "mysore"
	qui replace scode_`sname1971' = "14" if `sname1971' == "nagaland"
	qui replace scode_`sname1971' = "15" if `sname1971' == "orissa"
	qui replace scode_`sname1971' = "16" if `sname1971' == "punjab"
	qui replace scode_`sname1971' = "17" if `sname1971' == "rajasthan"
	qui replace scode_`sname1971' = "18" if `sname1971' == "sikkim"
	qui replace scode_`sname1971' = "19" if `sname1971' == "tamilnadu"
	qui replace scode_`sname1971' = "20" if `sname1971' == "tripura"
	qui replace scode_`sname1971' = "21" if `sname1971' == "uttarpradesh"
	qui replace scode_`sname1971' = "22" if `sname1971' == "westbengal"
	qui replace scode_`sname1971' = "23" if `sname1971' == "andamannicobarislands"
	qui replace scode_`sname1971' = "24" if `sname1971' == "arunachalpradesh"
	qui replace scode_`sname1971' = "25" if `sname1971' == "chandigarh"
	qui replace scode_`sname1971' = "26" if `sname1971' == "dadranagarhaveli"
	qui replace scode_`sname1971' = "27" if `sname1971' == "delhi"
	qui replace scode_`sname1971' = "28" if `sname1971' == "goadamandiu"
	qui replace scode_`sname1971' = "29" if `sname1971' == "laccadiveminicoyamindiviislands"
	qui replace scode_`sname1971' = "30" if `sname1971' == "mizoram"
	qui replace scode_`sname1971' = "31" if `sname1971' == "pondicherry"

	* replace union territory status as 1 for states featured after west bengal
	qui replace ut_`sname1971' = 1 if real(scode_`sname1971')>22 & real(scode_`sname1971') != .

end

*-------------------------------------------------------------------------------
* 1981
*-------------------------------------------------------------------------------
capture program drop scode1981
program define scode1981

* store input into macros
local sname1981 `1'

	* assign codes
	qui replace scode_`sname1981' = "01" if `sname1981' == "andhrapradesh"
	qui replace scode_`sname1981' = "02" if `sname1981' == "assam"
	qui replace scode_`sname1981' = "03" if `sname1981' == "bihar"
	qui replace scode_`sname1981' = "04" if `sname1981' == "gujarat"
	qui replace scode_`sname1981' = "05" if `sname1981' == "haryana"
	qui replace scode_`sname1981' = "06" if `sname1981' == "himachalpradesh"
	qui replace scode_`sname1981' = "07" if `sname1981' == "jammukashmir"
	qui replace scode_`sname1981' = "08" if `sname1981' == "karnataka"
	qui replace scode_`sname1981' = "09" if `sname1981' == "kerala"
	qui replace scode_`sname1981' = "10" if `sname1981' == "madhyapradesh"
	qui replace scode_`sname1981' = "11" if `sname1981' == "maharashtra"
	qui replace scode_`sname1981' = "12" if `sname1981' == "manipur"
	qui replace scode_`sname1981' = "13" if `sname1981' == "meghalaya"
	qui replace scode_`sname1981' = "14" if `sname1981' == "nagaland"
	qui replace scode_`sname1981' = "15" if `sname1981' == "orissa"
	qui replace scode_`sname1981' = "16" if `sname1981' == "punjab"
	qui replace scode_`sname1981' = "17" if `sname1981' == "rajasthan"
	qui replace scode_`sname1981' = "18" if `sname1981' == "sikkim"
	qui replace scode_`sname1981' = "19" if `sname1981' == "tamilnadu"
	qui replace scode_`sname1981' = "20" if `sname1981' == "tripura"
	qui replace scode_`sname1981' = "21" if `sname1981' == "uttarpradesh"
	qui replace scode_`sname1981' = "22" if `sname1981' == "westbengal"
	qui replace scode_`sname1981' = "23" if `sname1981' == "andamannicobarislands"
	qui replace scode_`sname1981' = "24" if `sname1981' == "arunachalpradesh"
	qui replace scode_`sname1981' = "25" if `sname1981' == "chandigarh"
	qui replace scode_`sname1981' = "26" if `sname1981' == "dadranagarhaveli"
	qui replace scode_`sname1981' = "27" if `sname1981' == "delhi"
	qui replace scode_`sname1981' = "28" if `sname1981' == "goadamandiu"
	qui replace scode_`sname1981' = "29" if `sname1981' == "lakshadweep"
	qui replace scode_`sname1981' = "30" if `sname1981' == "mizoram"
	qui replace scode_`sname1981' = "31" if `sname1981' == "pondicherry"

	* replace union territory status as 1 for states featured after west bengal
	qui replace ut_`sname1981' = 1 if real(scode_`sname1981')>22 & real(scode_`sname1981') != .
end

*-------------------------------------------------------------------------------
* 1991
*-------------------------------------------------------------------------------
capture program drop scode1991
program define scode1991

* store input into macros
local sname1991 `1'

	* assign codes
	qui replace scode_`sname1991' = "01" if `sname1991' == "andhrapradesh"
	qui replace scode_`sname1991' = "02" if `sname1991' == "arunachalpradesh"
	qui replace scode_`sname1991' = "03" if `sname1991' == "assam"
	qui replace scode_`sname1991' = "04" if `sname1991' == "bihar"
	qui replace scode_`sname1991' = "05" if `sname1991' == "goa"
	qui replace scode_`sname1991' = "06" if `sname1991' == "gujarat"
	qui replace scode_`sname1991' = "07" if `sname1991' == "haryana"
	qui replace scode_`sname1991' = "08" if `sname1991' == "himachalpradesh"
	qui replace scode_`sname1991' = "09" if `sname1991' == "jammukashmir"
	qui replace scode_`sname1991' = "10" if `sname1991' == "karnataka"
	qui replace scode_`sname1991' = "11" if `sname1991' == "kerala"
	qui replace scode_`sname1991' = "12" if `sname1991' == "madhyapradesh"
	qui replace scode_`sname1991' = "13" if `sname1991' == "maharashtra"
	qui replace scode_`sname1991' = "14" if `sname1991' == "manipur"
	qui replace scode_`sname1991' = "15" if `sname1991' == "meghalaya"
	qui replace scode_`sname1991' = "16" if `sname1991' == "mizoram"
	qui replace scode_`sname1991' = "17" if `sname1991' == "nagaland"
	qui replace scode_`sname1991' = "18" if `sname1991' == "orissa"
	qui replace scode_`sname1991' = "19" if `sname1991' == "punjab"
	qui replace scode_`sname1991' = "20" if `sname1991' == "rajasthan"
	qui replace scode_`sname1991' = "21" if `sname1991' == "sikkim"
	qui replace scode_`sname1991' = "22" if `sname1991' == "tamilnadu"
	qui replace scode_`sname1991' = "23" if `sname1991' == "tripura"
	qui replace scode_`sname1991' = "24" if `sname1991' == "uttarpradesh"
	qui replace scode_`sname1991' = "25" if `sname1991' == "westbengal"
	qui replace scode_`sname1991' = "26" if `sname1991' == "andamannicobarislands"
	qui replace scode_`sname1991' = "27" if `sname1991' == "chandigarh"
	qui replace scode_`sname1991' = "28" if `sname1991' == "dadranagarhaveli"
	qui replace scode_`sname1991' = "29" if `sname1991' == "damandiu"
	qui replace scode_`sname1991' = "30" if `sname1991' == "delhi"
	qui replace scode_`sname1991' = "31" if `sname1991' == "lakshadweep"
	qui replace scode_`sname1991' = "32" if `sname1991' == "pondicherry"

	* replace union territory status as 1 for states featured after west bengal
	qui replace ut_`sname1991' = 1 if real(scode_`sname1991')>25 & real(scode_`sname1991') != .

end

*-------------------------------------------------------------------------------
* 2001
*-------------------------------------------------------------------------------
capture program drop scode2001
program define scode2001

* store input into macros
local sname2001 `1'

* assign codes
	qui replace scode_`sname2001' = "01" if `sname2001' == "jammukashmir"
	qui replace scode_`sname2001' = "02" if `sname2001' == "himachalpradesh"
	qui replace scode_`sname2001' = "03" if `sname2001' == "punjab"
	qui replace scode_`sname2001' = "04" if `sname2001' == "chandigarh"
	qui replace scode_`sname2001' = "05" if `sname2001' == "uttaranchal"
	qui replace scode_`sname2001' = "06" if `sname2001' == "haryana"
	qui replace scode_`sname2001' = "07" if `sname2001' == "delhi"
	qui replace scode_`sname2001' = "08" if `sname2001' == "rajasthan"
	qui replace scode_`sname2001' = "09" if `sname2001' == "uttarpradesh"
	qui replace scode_`sname2001' = "10" if `sname2001' == "bihar"
	qui replace scode_`sname2001' = "11" if `sname2001' == "sikkim"
	qui replace scode_`sname2001' = "12" if `sname2001' == "arunachalpradesh"
	qui replace scode_`sname2001' = "13" if `sname2001' == "nagaland"
	qui replace scode_`sname2001' = "14" if `sname2001' == "manipur"
	qui replace scode_`sname2001' = "15" if `sname2001' == "mizoram"
	qui replace scode_`sname2001' = "16" if `sname2001' == "tripura"
	qui replace scode_`sname2001' = "17" if `sname2001' == "meghalaya"
	qui replace scode_`sname2001' = "18" if `sname2001' == "assam"
	qui replace scode_`sname2001' = "19" if `sname2001' == "westbengal"
	qui replace scode_`sname2001' = "20" if `sname2001' == "jharkhand"
	qui replace scode_`sname2001' = "21" if `sname2001' == "orissa"
	qui replace scode_`sname2001' = "22" if `sname2001' == "chhattisgarh"
	qui replace scode_`sname2001' = "23" if `sname2001' == "madhyapradesh"
	qui replace scode_`sname2001' = "24" if `sname2001' == "gujarat"
	qui replace scode_`sname2001' = "25" if `sname2001' == "damandiu"
	qui replace scode_`sname2001' = "26" if `sname2001' == "dadranagarhaveli"
	qui replace scode_`sname2001' = "27" if `sname2001' == "maharashtra"
	qui replace scode_`sname2001' = "28" if `sname2001' == "andhrapradesh"
	qui replace scode_`sname2001' = "29" if `sname2001' == "karnataka"
	qui replace scode_`sname2001' = "30" if `sname2001' == "goa"
	qui replace scode_`sname2001' = "31" if `sname2001' == "lakshadweep"
	qui replace scode_`sname2001' = "32" if `sname2001' == "kerala"
	qui replace scode_`sname2001' = "33" if `sname2001' == "tamil nadu"
	qui replace scode_`sname2001' = "34" if `sname2001' == "pondicherry"
	qui replace scode_`sname2001' = "35" if `sname2001' == "andamannicobarislands"

	* replace union territory status as 1 for UTs
	qui replace ut_`sname2001' = 1 if inlist(scode_`sname2001',"04","07","25","26","31","35")

end

*-------------------------------------------------------------------------------
* 2011
*-------------------------------------------------------------------------------
capture program drop scode2011
program define scode2011

* store input into macros
local sname2011 `1'

* assign codes
	qui replace scode_`sname2011' = "01" if `sname2011' == "jammukashmir"
	qui replace scode_`sname2011' = "02" if `sname2011' == "himachalpradesh"
	qui replace scode_`sname2011' = "03" if `sname2011' == "punjab"
	qui replace scode_`sname2011' = "04" if `sname2011' == "chandigarh"
	qui replace scode_`sname2011' = "05" if `sname2011' == "uttaranchal"
	qui replace scode_`sname2011' = "06" if `sname2011' == "haryana"
	qui replace scode_`sname2011' = "07" if `sname2011' == "delhi"
	qui replace scode_`sname2011' = "08" if `sname2011' == "rajasthan"
	qui replace scode_`sname2011' = "09" if `sname2011' == "uttarpradesh"
	qui replace scode_`sname2011' = "10" if `sname2011' == "bihar"
	qui replace scode_`sname2011' = "11" if `sname2011' == "sikkim"
	qui replace scode_`sname2011' = "12" if `sname2011' == "arunachalpradesh"
	qui replace scode_`sname2011' = "13" if `sname2011' == "nagaland"
	qui replace scode_`sname2011' = "14" if `sname2011' == "manipur"
	qui replace scode_`sname2011' = "15" if `sname2011' == "mizoram"
	qui replace scode_`sname2011' = "16" if `sname2011' == "tripura"
	qui replace scode_`sname2011' = "17" if `sname2011' == "meghalaya"
	qui replace scode_`sname2011' = "18" if `sname2011' == "assam"
	qui replace scode_`sname2011' = "19" if `sname2011' == "westbengal"
	qui replace scode_`sname2011' = "20" if `sname2011' == "jharkhand"
	qui replace scode_`sname2011' = "21" if `sname2011' == "orissa"
	qui replace scode_`sname2011' = "22" if `sname2011' == "chhattisgarh"
	qui replace scode_`sname2011' = "23" if `sname2011' == "madhyapradesh"
	qui replace scode_`sname2011' = "24" if `sname2011' == "gujarat"
	qui replace scode_`sname2011' = "25" if `sname2011' == "damandiu"
	qui replace scode_`sname2011' = "26" if `sname2011' == "dadranagarhaveli"
	qui replace scode_`sname2011' = "27" if `sname2011' == "maharashtra"
	qui replace scode_`sname2011' = "28" if `sname2011' == "andhrapradesh"
	qui replace scode_`sname2011' = "29" if `sname2011' == "karnataka"
	qui replace scode_`sname2011' = "30" if `sname2011' == "goa"
	qui replace scode_`sname2011' = "31" if `sname2011' == "lakshadweep"
	qui replace scode_`sname2011' = "32" if `sname2011' == "kerala"
	qui replace scode_`sname2011' = "33" if `sname2011' == "tamil nadu"
	qui replace scode_`sname2011' = "34" if `sname2011' == "pondicherry"
	qui replace scode_`sname2011' = "35" if `sname2011' == "andamannicobarislands"

	* replace union territory status as 1 for UTs
	qui replace ut_`sname2011' = 1 if inlist(scode_`sname2011',"04","07","25","26","31","35")

end
