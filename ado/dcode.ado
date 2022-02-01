*-------------------------------------------------------------------------------
* Objective: Assign india_bridge consistent identifiers to a list of districts
*-------------------------------------------------------------------------------

* define dcode
capture program drop dcode
program define dcode

  * read and store user input
	local distvar `1'
	local isocode `2'
	local year `3'

	* enter district code information
		qui gen dcode_`distvar' = ""

	* read year and run dcode
	dcode`year' `distvar' `isocode'

end

*-------------------------------------------------------------------------------
*-------------------------------------------------------------------------------
* Clean district names
* (search for `dnameYYYY')
*-------------------------------------------------------------------------------

*-------------------------------------------------------------------------------
* 1951
*-------------------------------------------------------------------------------
capture program drop dcode1951
program define dcode1951

* store input into macros
local dname1951 `1'
local iso1951 `2'

*===============================================================================

    * ajmer
    qui replace dcode_`dname1951' = "01" if `iso1951' == "RJ" & inlist(`dname1951', "ajmer")

*===============================================================================

    * andaman nicobar islands
    qui replace dcode_`dname1951' = "01" if `iso1951' == "AN" & inlist(`dname1951', "andamannicobarislands")

*===============================================================================

    * assam
    qui replace dcode_`dname1951' = "01" if `iso1951' == "AS" & inlist(`dname1951', "goalpara")
    qui replace dcode_`dname1951' = "02" if `iso1951' == "AS" & inlist(`dname1951', "kamrup")
    qui replace dcode_`dname1951' = "03" if `iso1951' == "AS" & inlist(`dname1951', "darrang")
    qui replace dcode_`dname1951' = "04" if `iso1951' == "AS" & inlist(`dname1951', "lakhimpur")
    qui replace dcode_`dname1951' = "05" if `iso1951' == "AS" & inlist(`dname1951', "nowgong")
    qui replace dcode_`dname1951' = "06" if `iso1951' == "AS" & inlist(`dname1951', "sibsagar")
    qui replace dcode_`dname1951' = "07" if `iso1951' == "AS" & inlist(`dname1951', "cachar")
    qui replace dcode_`dname1951' = "08" if `iso1951' == "AS" & inlist(`dname1951', "garohills", "meghalayagarohills")
    qui replace dcode_`dname1951' = "09" if `iso1951' == "AS" & inlist(`dname1951', "unitedkhasijaintiahills")
    qui replace dcode_`dname1951' = "10" if `iso1951' == "AS" & inlist(`dname1951', "unitedmikirnorthcachar","unitedmikirnorthcacharhills","unitedmikirandnorthcacharhill")
    qui replace dcode_`dname1951' = "11" if `iso1951' == "AS" & inlist(`dname1951', "lushaihills", "looshaihills")

*===============================================================================

    * bihar
    qui replace dcode_`dname1951' = "01" if `iso1951' == "BR" & inlist(`dname1951', "patna")
    qui replace dcode_`dname1951' = "02" if `iso1951' == "BR" & inlist(`dname1951', "gaya")
    qui replace dcode_`dname1951' = "03" if `iso1951' == "BR" & inlist(`dname1951', "shahabad")
    qui replace dcode_`dname1951' = "04" if `iso1951' == "BR" & inlist(`dname1951', "saran")
    qui replace dcode_`dname1951' = "05" if `iso1951' == "BR" & inlist(`dname1951', "champaran")
    qui replace dcode_`dname1951' = "06" if `iso1951' == "BR" & inlist(`dname1951', "muzaffarpur")
    qui replace dcode_`dname1951' = "07" if `iso1951' == "BR" & inlist(`dname1951', "darbhanga")
    qui replace dcode_`dname1951' = "08" if `iso1951' == "BR" & inlist(`dname1951', "monghyar", "monghyr")
    qui replace dcode_`dname1951' = "09" if `iso1951' == "BR" & inlist(`dname1951', "bhagalpur")
    qui replace dcode_`dname1951' = "10" if `iso1951' == "BR" & inlist(`dname1951', "saharsa")
    qui replace dcode_`dname1951' = "11" if `iso1951' == "BR" & inlist(`dname1951', "purnia", "purnea")
    qui replace dcode_`dname1951' = "12" if `iso1951' == "BR" & inlist(`dname1951', "santhalparganas", "santalparganas","12santalparganas", "12 santal parganas")
    qui replace dcode_`dname1951' = "13" if `iso1951' == "BR" & inlist(`dname1951', "palamau")
    qui replace dcode_`dname1951' = "14" if `iso1951' == "BR" & inlist(`dname1951', "hazaribag", "hazaribagh")
    qui replace dcode_`dname1951' = "15" if `iso1951' == "BR" & inlist(`dname1951', "ranchi")
    qui replace dcode_`dname1951' = "16" if `iso1951' == "BR" & inlist(`dname1951', "dhanbad")
    qui replace dcode_`dname1951' = "17" if `iso1951' == "BR" & inlist(`dname1951', "purulia")
    qui replace dcode_`dname1951' = "18" if `iso1951' == "BR" & inlist(`dname1951', "singhbhum")

*===============================================================================

    * bilaspur
    qui replace dcode_`dname1951' = "01" if `iso1951' == "HP" & inlist(`dname1951', "bilaspur")

*===============================================================================

    * bhopal
    qui replace dcode_`dname1951' = "01" if `iso1951' == "MP" & inlist(`dname1951', "raisen")
    qui replace dcode_`dname1951' = "02" if `iso1951' == "MP" & inlist(`dname1951', "sehore")

*===============================================================================

    * bombay
    qui replace dcode_`dname1951' = "01" if `iso1951' == "MH" & inlist(`dname1951', "amreli")
    qui replace dcode_`dname1951' = "02" if `iso1951' == "MH" & inlist(`dname1951', "banaskantha")
    qui replace dcode_`dname1951' = "03" if `iso1951' == "MH" & inlist(`dname1951', "mehsana")
    qui replace dcode_`dname1951' = "04" if `iso1951' == "MH" & inlist(`dname1951', "ahmedabad")
    qui replace dcode_`dname1951' = "05" if `iso1951' == "MH" & inlist(`dname1951', "sabarkantha")
    qui replace dcode_`dname1951' = "06" if `iso1951' == "MH" & inlist(`dname1951', "kaira")
    qui replace dcode_`dname1951' = "07" if `iso1951' == "MH" & inlist(`dname1951', "panchmahals")
    qui replace dcode_`dname1951' = "08" if `iso1951' == "MH" & inlist(`dname1951', "baroda")
    qui replace dcode_`dname1951' = "09" if `iso1951' == "MH" & inlist(`dname1951', "broach")
    qui replace dcode_`dname1951' = "10" if `iso1951' == "MH" & inlist(`dname1951', "westkhandesh")
    qui replace dcode_`dname1951' = "11" if `iso1951' == "MH" & inlist(`dname1951', "eastkhandesh")
    qui replace dcode_`dname1951' = "12" if `iso1951' == "MH" & inlist(`dname1951', "surat")
    qui replace dcode_`dname1951' = "13" if `iso1951' == "MH" & inlist(`dname1951', "dangs")
    qui replace dcode_`dname1951' = "14" if `iso1951' == "MH" & inlist(`dname1951', "nasik")
    qui replace dcode_`dname1951' = "15" if `iso1951' == "MH" & inlist(`dname1951', "thana")
    qui replace dcode_`dname1951' = "16" if `iso1951' == "MH" & inlist(`dname1951', "greaterbombay")
    qui replace dcode_`dname1951' = "17" if `iso1951' == "MH" & inlist(`dname1951', "kolaba")
    qui replace dcode_`dname1951' = "18" if `iso1951' == "MH" & inlist(`dname1951', "poona")
    qui replace dcode_`dname1951' = "19" if `iso1951' == "MH" & inlist(`dname1951', "ahmednagar", "ahmadnagar")
    qui replace dcode_`dname1951' = "20" if `iso1951' == "MH" & inlist(`dname1951', "sholapur")
    qui replace dcode_`dname1951' = "21" if `iso1951' == "MH" & inlist(`dname1951', "sataranorth")
    qui replace dcode_`dname1951' = "22" if `iso1951' == "MH" & inlist(`dname1951', "ratnagiri")
    qui replace dcode_`dname1951' = "23" if `iso1951' == "MH" & inlist(`dname1951', "kolhapur")
    qui replace dcode_`dname1951' = "24" if `iso1951' == "MH" & inlist(`dname1951', "satarasouth")
    qui replace dcode_`dname1951' = "25" if `iso1951' == "MH" & inlist(`dname1951', "bijapur")
    qui replace dcode_`dname1951' = "26" if `iso1951' == "MH" & inlist(`dname1951', "belgaon", "belgaum")
    qui replace dcode_`dname1951' = "27" if `iso1951' == "MH" & inlist(`dname1951', "dharwad", "dharwar")
    qui replace dcode_`dname1951' = "28" if `iso1951' == "MH" & inlist(`dname1951', "kanara")

*===============================================================================
    * coorg
    qui replace dcode_`dname1951' = "01" if `iso1951' == "KA" & inlist(`dname1951', "coorg")

*===============================================================================
    * dadra nagar haveli
    qui replace dcode_`dname1951' = "01" if `iso1951' == "DN" & inlist(`dname1951', "dadranagarhaveli")

*===============================================================================

    * delhi
    qui replace dcode_`dname1951' = "01" if `iso1951' == "DL" & inlist(`dname1951', "delhi")

*===============================================================================

    * goa daman diu
    qui replace dcode_`dname1951' = "01" if `iso1951' == "DG" & inlist(`dname1951', "daman")
    qui replace dcode_`dname1951' = "02" if `iso1951' == "DG" & inlist(`dname1951', "diu")
    qui replace dcode_`dname1951' = "03" if `iso1951' == "DG" & inlist(`dname1951', "goa")

*===============================================================================

    * hyderabad
    qui replace dcode_`dname1951' = "01" if `iso1951' == "AP" & inlist(`dname1951', "aurangabad")
    qui replace dcode_`dname1951' = "02" if `iso1951' == "AP" & inlist(`dname1951', "bhir")
    qui replace dcode_`dname1951' = "03" if `iso1951' == "AP" & inlist(`dname1951', "parbhani")
    qui replace dcode_`dname1951' = "04" if `iso1951' == "AP" & inlist(`dname1951', "osmanabad")
    qui replace dcode_`dname1951' = "05" if `iso1951' == "AP" & inlist(`dname1951', "bidar")
    qui replace dcode_`dname1951' = "06" if `iso1951' == "AP" & inlist(`dname1951', "nanded")
    qui replace dcode_`dname1951' = "07" if `iso1951' == "AP" & inlist(`dname1951', "adilabad")
    qui replace dcode_`dname1951' = "08" if `iso1951' == "AP" & inlist(`dname1951', "nizamabad")
    qui replace dcode_`dname1951' = "09" if `iso1951' == "AP" & inlist(`dname1951', "karimnagar")
    qui replace dcode_`dname1951' = "10" if `iso1951' == "AP" & inlist(`dname1951', "medak")
    qui replace dcode_`dname1951' = "11" if `iso1951' == "AP" & inlist(`dname1951', "hyderabad")
    qui replace dcode_`dname1951' = "12" if `iso1951' == "AP" & inlist(`dname1951', "gulbarga")
    qui replace dcode_`dname1951' = "13" if `iso1951' == "AP" & inlist(`dname1951', "raichur")
    qui replace dcode_`dname1951' = "14" if `iso1951' == "AP" & inlist(`dname1951', "mahbubnagar")
    qui replace dcode_`dname1951' = "15" if `iso1951' == "AP" & inlist(`dname1951', "nalgonda")
    qui replace dcode_`dname1951' = "16" if `iso1951' == "AP" & inlist(`dname1951', "warangal")

*===============================================================================

    * himachal pradesh
    qui replace dcode_`dname1951' = "01" if `iso1951' == "HP" & inlist(`dname1951', "champa", "chamba")
    qui replace dcode_`dname1951' = "02" if `iso1951' == "HP" & inlist(`dname1951', "mandi")
    qui replace dcode_`dname1951' = "03" if `iso1951' == "HP" & inlist(`dname1951', "mahasu")
    qui replace dcode_`dname1951' = "04" if `iso1951' == "HP" & inlist(`dname1951', "sirmur", "sirmoor")

*===============================================================================

    * jammu & kashmir
    qui replace dcode_`dname1951' = "01" if `iso1951' == "JK" & inlist(`dname1951', "jammukashmir")

*===============================================================================

    * kutch
    qui replace dcode_`dname1951' = "01" if `iso1951' == "GJ" & inlist(`dname1951', "kutch")

*===============================================================================

    * travancore-cochin
    qui replace dcode_`dname1951' = "01" if `iso1951' == "KL" & inlist(`dname1951', "richur", "trichur")
    qui replace dcode_`dname1951' = "02" if `iso1951' == "KL" & inlist(`dname1951', "kottayam")
    qui replace dcode_`dname1951' = "03" if `iso1951' == "KL" & inlist(`dname1951', "quilon")
    qui replace dcode_`dname1951' = "04" if `iso1951' == "KL" & inlist(`dname1951', "trivandrum")

*===============================================================================

    * lakshadweep
    qui replace dcode_`dname1951' = "01" if `iso1951' == "LD" & inlist(`dname1951', "laccadive", "laccadiveminicoyamindiviislands")

*===============================================================================

    * madhya pradesh
    qui replace dcode_`dname1951' = "01" if `iso1951' == "MP" & inlist(`dname1951', "sagar")
    qui replace dcode_`dname1951' = "02" if `iso1951' == "MP" & inlist(`dname1951', "jabalpur")
    qui replace dcode_`dname1951' = "03" if `iso1951' == "MP" & inlist(`dname1951', "mandla")
    qui replace dcode_`dname1951' = "04" if `iso1951' == "MP" & inlist(`dname1951', "bilaspur")
    qui replace dcode_`dname1951' = "05" if `iso1951' == "MP" & inlist(`dname1951', "surguja")
    qui replace dcode_`dname1951' = "06" if `iso1951' == "MP" & inlist(`dname1951', "raigarh")
    qui replace dcode_`dname1951' = "07" if `iso1951' == "MP" & inlist(`dname1951', "raipur")
    qui replace dcode_`dname1951' = "08" if `iso1951' == "MP" & inlist(`dname1951', "durg")
    qui replace dcode_`dname1951' = "09" if `iso1951' == "MP" & inlist(`dname1951', "balaghat")
    qui replace dcode_`dname1951' = "10" if `iso1951' == "MP" & inlist(`dname1951', "chhindwara")
    qui replace dcode_`dname1951' = "11" if `iso1951' == "MP" & inlist(`dname1951', "hoshangabad")
    qui replace dcode_`dname1951' = "12" if `iso1951' == "MP" & inlist(`dname1951', "nimar", "khargonenimar")
    qui replace dcode_`dname1951' = "13" if `iso1951' == "MP" & inlist(`dname1951', "betul")
    qui replace dcode_`dname1951' = "14" if `iso1951' == "MP" & inlist(`dname1951', "nagpur")
    qui replace dcode_`dname1951' = "15" if `iso1951' == "MP" & inlist(`dname1951', "bhandara")
    qui replace dcode_`dname1951' = "16" if `iso1951' == "MP" & inlist(`dname1951', "bastar")
    qui replace dcode_`dname1951' = "17" if `iso1951' == "MP" & inlist(`dname1951', "chandrapur", "chanda")
    qui replace dcode_`dname1951' = "18" if `iso1951' == "MP" & inlist(`dname1951', "wardha")
    qui replace dcode_`dname1951' = "19" if `iso1951' == "MP" & inlist(`dname1951', "yeotmal","yeotma")
    qui replace dcode_`dname1951' = "20" if `iso1951' == "MP" & inlist(`dname1951', "akola")
    qui replace dcode_`dname1951' = "21" if `iso1951' == "MP" & inlist(`dname1951', "amravati")
    qui replace dcode_`dname1951' = "22" if `iso1951' == "MP" & inlist(`dname1951', "buldhana")

*===============================================================================

    * madhya bharat
    qui replace dcode_`dname1951' = "01" if `iso1951' == "MP" & inlist(`dname1951', "morena")
    qui replace dcode_`dname1951' = "02" if `iso1951' == "MP" & inlist(`dname1951', "bhind")
    qui replace dcode_`dname1951' = "03" if `iso1951' == "MP" & inlist(`dname1951', "gird")
    qui replace dcode_`dname1951' = "04" if `iso1951' == "MP" & inlist(`dname1951', "shivpuri")
    qui replace dcode_`dname1951' = "05" if `iso1951' == "MP" & inlist(`dname1951', "guna", "goona")
    qui replace dcode_`dname1951' = "06" if `iso1951' == "MP" & inlist(`dname1951', "rajgarh")
    qui replace dcode_`dname1951' = "07" if `iso1951' == "MP" & inlist(`dname1951', "shajapur")
    qui replace dcode_`dname1951' = "08" if `iso1951' == "MP" & inlist(`dname1951', "ujjain")
    qui replace dcode_`dname1951' = "09" if `iso1951' == "MP" & inlist(`dname1951', "mandsaur")
    qui replace dcode_`dname1951' = "10" if `iso1951' == "MP" & inlist(`dname1951', "ratlam")
    qui replace dcode_`dname1951' = "11" if `iso1951' == "MP" & inlist(`dname1951', "jhabua")
    qui replace dcode_`dname1951' = "12" if `iso1951' == "MP" & inlist(`dname1951', "dhar")
    qui replace dcode_`dname1951' = "13" if `iso1951' == "MP" & inlist(`dname1951', "nimar", "khandwaeastnimar")
    qui replace dcode_`dname1951' = "14" if `iso1951' == "MP" & inlist(`dname1951', "indore")
    qui replace dcode_`dname1951' = "15" if `iso1951' == "MP" & inlist(`dname1951', "dewas")
    qui replace dcode_`dname1951' = "16" if `iso1951' == "MP" & inlist(`dname1951', "bhilsa", "vidisha")

*===============================================================================

    * vindhya pradesh
    qui replace dcode_`dname1951' = "01" if `iso1951' == "MP" & inlist(`dname1951', "datia")
    qui replace dcode_`dname1951' = "02" if `iso1951' == "MP" & inlist(`dname1951', "tikamgarh")
    qui replace dcode_`dname1951' = "03" if `iso1951' == "MP" & inlist(`dname1951', "chhatarpur")
    qui replace dcode_`dname1951' = "04" if `iso1951' == "MP" & inlist(`dname1951', "panna")
    qui replace dcode_`dname1951' = "05" if `iso1951' == "MP" & inlist(`dname1951', "satna")
    qui replace dcode_`dname1951' = "06" if `iso1951' == "MP" & inlist(`dname1951', "rewa")
    qui replace dcode_`dname1951' = "07" if `iso1951' == "MP" & inlist(`dname1951', "sidhi")
    qui replace dcode_`dname1951' = "08" if `iso1951' == "MP" & inlist(`dname1951', "shahdol")

*===============================================================================

    * madras
    qui replace dcode_`dname1951' = "01" if `iso1951' == "TN" & inlist(`dname1951', "srikakulam")
    qui replace dcode_`dname1951' = "02" if `iso1951' == "TN" & inlist(`dname1951', "vizagapatanam")
    qui replace dcode_`dname1951' = "03" if `iso1951' == "TN" & inlist(`dname1951', "eastgodavari")
    qui replace dcode_`dname1951' = "04" if `iso1951' == "TN" & inlist(`dname1951', "westgodavari")
    qui replace dcode_`dname1951' = "05" if `iso1951' == "TN" & inlist(`dname1951', "krishna")
    qui replace dcode_`dname1951' = "06" if `iso1951' == "TN" & inlist(`dname1951', "guntur")
    qui replace dcode_`dname1951' = "07" if `iso1951' == "TN" & inlist(`dname1951', "nellore", "nellohe")
    qui replace dcode_`dname1951' = "08" if `iso1951' == "TN" & inlist(`dname1951', "chittoor")
    qui replace dcode_`dname1951' = "09" if `iso1951' == "TN" & inlist(`dname1951', "cuddapah")
    qui replace dcode_`dname1951' = "10" if `iso1951' == "TN" & inlist(`dname1951', "anantapur")
    qui replace dcode_`dname1951' = "11" if `iso1951' == "TN" & inlist(`dname1951', "kurnool")
    qui replace dcode_`dname1951' = "12" if `iso1951' == "TN" & inlist(`dname1951', "bellary")
    qui replace dcode_`dname1951' = "13" if `iso1951' == "TN" & inlist(`dname1951', "chingleput")
    qui replace dcode_`dname1951' = "14" if `iso1951' == "TN" & inlist(`dname1951', "northarcot")
    qui replace dcode_`dname1951' = "15" if `iso1951' == "TN" & inlist(`dname1951', "salem")
    qui replace dcode_`dname1951' = "16" if `iso1951' == "TN" & inlist(`dname1951', "southarcot")
    qui replace dcode_`dname1951' = "17" if `iso1951' == "TN" & inlist(`dname1951', "thanjavur", "tanjore")
    qui replace dcode_`dname1951' = "18" if `iso1951' == "TN" & inlist(`dname1951', "tiruchirapalli")
    qui replace dcode_`dname1951' = "19" if `iso1951' == "TN" & inlist(`dname1951', "ramanathapuram")
    qui replace dcode_`dname1951' = "20" if `iso1951' == "TN" & inlist(`dname1951', "tirunelveli", "t")
    qui replace dcode_`dname1951' = "21" if `iso1951' == "TN" & inlist(`dname1951', "madurai")
    qui replace dcode_`dname1951' = "22" if `iso1951' == "TN" & inlist(`dname1951', "coimbatore")
    qui replace dcode_`dname1951' = "23" if `iso1951' == "TN" & inlist(`dname1951', "nilgiri", "nilgiris")
    qui replace dcode_`dname1951' = "24" if `iso1951' == "TN" & inlist(`dname1951', "malabar")
    qui replace dcode_`dname1951' = "25" if `iso1951' == "TN" & inlist(`dname1951', "southkanara")
    qui replace dcode_`dname1951' = "26" if `iso1951' == "TN" & inlist(`dname1951', "madras")

*===============================================================================

    * manipur
    qui replace dcode_`dname1951' = "01" if `iso1951' == "MN" & inlist(`dname1951', "manipur")

*===============================================================================

    * mysore
    qui replace dcode_`dname1951' = "01" if `iso1951' == "KA" & inlist(`dname1951', "shimoga")
    qui replace dcode_`dname1951' = "02" if `iso1951' == "KA" & inlist(`dname1951', "chikmagalur")
    qui replace dcode_`dname1951' = "03" if `iso1951' == "KA" & inlist(`dname1951', "chitaldurga")
    qui replace dcode_`dname1951' = "04" if `iso1951' == "KA" & inlist(`dname1951', "tumkur")
    qui replace dcode_`dname1951' = "05" if `iso1951' == "KA" & inlist(`dname1951', "hassan")
    qui replace dcode_`dname1951' = "06" if `iso1951' == "KA" & inlist(`dname1951', "mysore")
    qui replace dcode_`dname1951' = "07" if `iso1951' == "KA" & inlist(`dname1951', "mandya")
    qui replace dcode_`dname1951' = "08" if `iso1951' == "KA" & inlist(`dname1951', "bangalore")
    qui replace dcode_`dname1951' = "09" if `iso1951' == "KA" & inlist(`dname1951', "kolar")


*===============================================================================

    * nagaland
    qui replace dcode_`dname1951' = "01" if `iso1951' == "AS" & inlist(`dname1951', "kohima", "nagahills")
    qui replace dcode_`dname1951' = "02" if `iso1951' == "AS" & inlist(`dname1951', "tuensang")

*===============================================================================

    * arunachal pradesh
    qui replace dcode_`dname1951' = "01" if `iso1951' == "AS" & inlist(`dname1951', "kameng", "baliparafrontiertract")
    qui replace dcode_`dname1951' = "02" if `iso1951' == "AS" & inlist(`dname1951', "lohit", "mishmihills")
    qui replace dcode_`dname1951' = "03" if `iso1951' == "AS" & inlist(`dname1951', "siang", "aborhills")
    qui replace dcode_`dname1951' = "04" if `iso1951' == "AS" & inlist(`dname1951', "tirap", "tirapfrontiertract")

*===============================================================================

    * orissa
    qui replace dcode_`dname1951' = "01" if `iso1951' == "OR" & inlist(`dname1951', "kalahandi")
    qui replace dcode_`dname1951' = "02" if `iso1951' == "OR" & inlist(`dname1951', "koraput")
    qui replace dcode_`dname1951' = "03" if `iso1951' == "OR" & inlist(`dname1951', "sambalpur")
    qui replace dcode_`dname1951' = "04" if `iso1951' == "OR" & inlist(`dname1951', "bolangir")
    qui replace dcode_`dname1951' = "05" if `iso1951' == "OR" & inlist(`dname1951', "phulbani")
    qui replace dcode_`dname1951' = "06" if `iso1951' == "OR" & inlist(`dname1951', "ganjam")
    qui replace dcode_`dname1951' = "07" if `iso1951' == "OR" & inlist(`dname1951', "sundargarh")
    qui replace dcode_`dname1951' = "08" if `iso1951' == "OR" & inlist(`dname1951', "dhenkanal")
    qui replace dcode_`dname1951' = "09" if `iso1951' == "OR" & inlist(`dname1951', "puri", "purl")
    qui replace dcode_`dname1951' = "10" if `iso1951' == "OR" & inlist(`dname1951', "keonjhar")
    qui replace dcode_`dname1951' = "11" if `iso1951' == "OR" & inlist(`dname1951', "cuttack")
    qui replace dcode_`dname1951' = "12" if `iso1951' == "OR" & inlist(`dname1951', "mayurbhanj")
    qui replace dcode_`dname1951' = "13" if `iso1951' == "OR" & inlist(`dname1951', "balasore")

*===============================================================================

    * pondicherry
    qui replace dcode_`dname1951' = "01" if `iso1951' == "PY" & inlist(`dname1951', "karaikal")
    qui replace dcode_`dname1951' = "02" if `iso1951' == "PY" & inlist(`dname1951', "mahe")
    qui replace dcode_`dname1951' = "03" if `iso1951' == "PY" & inlist(`dname1951', "pondicherry")
    qui replace dcode_`dname1951' = "04" if `iso1951' == "PY" & inlist(`dname1951', "yanam")

*===============================================================================

    * patiala and east punjab states union
    qui replace dcode_`dname1951' = "01" if `iso1951' == "PB" & inlist(`dname1951', "kapurthala")
    qui replace dcode_`dname1951' = "02" if `iso1951' == "PB" & inlist(`dname1951', "barnala")
    qui replace dcode_`dname1951' = "03" if `iso1951' == "PB" & inlist(`dname1951', "bhatinda")
    qui replace dcode_`dname1951' = "04" if `iso1951' == "PB" & inlist(`dname1951', "sangrur")
    qui replace dcode_`dname1951' = "05" if `iso1951' == "PB" & inlist(`dname1951', "patiala")
    qui replace dcode_`dname1951' = "06" if `iso1951' == "PB" & inlist(`dname1951', "fatehgarhsahib")
    qui replace dcode_`dname1951' = "07" if `iso1951' == "PB" & inlist(`dname1951', "kohistan")
    qui replace dcode_`dname1951' = "08" if `iso1951' == "PB" & inlist(`dname1951', "mahendragarh", "mohindergarh")

*===============================================================================

    * punjab
    qui replace dcode_`dname1951' = "01" if `iso1951' == "PB" & inlist(`dname1951', "kangara", "kangra")
    qui replace dcode_`dname1951' = "02" if `iso1951' == "PB" & inlist(`dname1951', "gurdaspur")
    qui replace dcode_`dname1951' = "03" if `iso1951' == "PB" & inlist(`dname1951', "hoshiarpur")
    qui replace dcode_`dname1951' = "04" if `iso1951' == "PB" & inlist(`dname1951', "amritsar")
    qui replace dcode_`dname1951' = "05" if `iso1951' == "PB" & inlist(`dname1951', "ferozepur")
    qui replace dcode_`dname1951' = "06" if `iso1951' == "PB" & inlist(`dname1951', "hissar")
    qui replace dcode_`dname1951' = "07" if `iso1951' == "PB" & inlist(`dname1951', "rohtak")
    qui replace dcode_`dname1951' = "08" if `iso1951' == "PB" & inlist(`dname1951', "gurgaon")
    qui replace dcode_`dname1951' = "09" if `iso1951' == "PB" & inlist(`dname1951', "karnal")
    qui replace dcode_`dname1951' = "10" if `iso1951' == "PB" & inlist(`dname1951', "ambala")
    qui replace dcode_`dname1951' = "11" if `iso1951' == "PB" & inlist(`dname1951', "ludhiana")
    qui replace dcode_`dname1951' = "12" if `iso1951' == "PB" & inlist(`dname1951', "jullundur")
    qui replace dcode_`dname1951' = "13" if `iso1951' == "PB" & inlist(`dname1951', "simla")

*===============================================================================

    * rajasthan
    qui replace dcode_`dname1951' = "01" if `iso1951' == "RJ" & inlist(`dname1951', "ganganagar")
    qui replace dcode_`dname1951' = "02" if `iso1951' == "RJ" & inlist(`dname1951', "bikaner")
    qui replace dcode_`dname1951' = "03" if `iso1951' == "RJ" & inlist(`dname1951', "churu")
    qui replace dcode_`dname1951' = "04" if `iso1951' == "RJ" & inlist(`dname1951', "jhunjhunun", "jhunjhunu")
    qui replace dcode_`dname1951' = "05" if `iso1951' == "RJ" & inlist(`dname1951', "alwar")
    qui replace dcode_`dname1951' = "06" if `iso1951' == "RJ" & inlist(`dname1951', "bharatpur")
    qui replace dcode_`dname1951' = "07" if `iso1951' == "RJ" & inlist(`dname1951', "sawaimadhopur")
    qui replace dcode_`dname1951' = "08" if `iso1951' == "RJ" & inlist(`dname1951', "jaipur")
    qui replace dcode_`dname1951' = "09" if `iso1951' == "RJ" & inlist(`dname1951', "sikar")
    qui replace dcode_`dname1951' = "10" if `iso1951' == "RJ" & inlist(`dname1951', "tonk")
    qui replace dcode_`dname1951' = "11" if `iso1951' == "RJ" & inlist(`dname1951', "jaisalmer")
    qui replace dcode_`dname1951' = "12" if `iso1951' == "RJ" & inlist(`dname1951', "jodhpur")
    qui replace dcode_`dname1951' = "13" if `iso1951' == "RJ" & inlist(`dname1951', "nagaur")
    qui replace dcode_`dname1951' = "14" if `iso1951' == "RJ" & inlist(`dname1951', "pali", "pall")
    qui replace dcode_`dname1951' = "15" if `iso1951' == "RJ" & inlist(`dname1951', "barmer")
    qui replace dcode_`dname1951' = "16" if `iso1951' == "RJ" & inlist(`dname1951', "jalor")
    qui replace dcode_`dname1951' = "17" if `iso1951' == "RJ" & inlist(`dname1951', "sirohi")
    qui replace dcode_`dname1951' = "18" if `iso1951' == "RJ" & inlist(`dname1951', "bhilwara", "bhilwar")
    qui replace dcode_`dname1951' = "19" if `iso1951' == "RJ" & inlist(`dname1951', "udaipur")
    qui replace dcode_`dname1951' = "20" if `iso1951' == "RJ" & inlist(`dname1951', "chittaurgarh", "chitorgarh", "chittorgarh")
    qui replace dcode_`dname1951' = "21" if `iso1951' == "RJ" & inlist(`dname1951', "dungarpur")
    qui replace dcode_`dname1951' = "22" if `iso1951' == "RJ" & inlist(`dname1951', "banswara")
    qui replace dcode_`dname1951' = "23" if `iso1951' == "RJ" & inlist(`dname1951', "bundi")
    qui replace dcode_`dname1951' = "24" if `iso1951' == "RJ" & inlist(`dname1951', "kota", "kotah")
    qui replace dcode_`dname1951' = "25" if `iso1951' == "RJ" & inlist(`dname1951', "jhalawar")

*===============================================================================

    * saurashtra
    qui replace dcode_`dname1951' = "01" if `iso1951' == "GJ" & inlist(`dname1951', "gohilwad")
    qui replace dcode_`dname1951' = "02" if `iso1951' == "GJ" & inlist(`dname1951', "halar")
    qui replace dcode_`dname1951' = "03" if `iso1951' == "GJ" & inlist(`dname1951', "sorath")
    qui replace dcode_`dname1951' = "04" if `iso1951' == "GJ" & inlist(`dname1951', "centralsaurashtra")
    qui replace dcode_`dname1951' = "05" if `iso1951' == "GJ" & inlist(`dname1951', "zalawad")

*===============================================================================

    * sikkim
    qui replace dcode_`dname1951' = "01" if `iso1951' == "SK" & inlist(`dname1951', "sikkim")

*===============================================================================

    * tripura
    qui replace dcode_`dname1951' = "01" if `iso1951' == "TR" & inlist(`dname1951', "tripura")

*===============================================================================

    * uttar pradesh
    qui replace dcode_`dname1951' = "01" if `iso1951' == "UP" & inlist(`dname1951', "tehrigarhwal")
    qui replace dcode_`dname1951' = "02" if `iso1951' == "UP" & inlist(`dname1951', "garhwal", "gurhwal")
    qui replace dcode_`dname1951' = "03" if `iso1951' == "UP" & inlist(`dname1951', "almora")
    qui replace dcode_`dname1951' = "04" if `iso1951' == "UP" & inlist(`dname1951', "nainital")
    qui replace dcode_`dname1951' = "05" if `iso1951' == "UP" & inlist(`dname1951', "dehra")
    qui replace dcode_`dname1951' = "06" if `iso1951' == "UP" & inlist(`dname1951', "saharanpur")
    qui replace dcode_`dname1951' = "07" if `iso1951' == "UP" & inlist(`dname1951', "muzaffarnagar")
    qui replace dcode_`dname1951' = "08" if `iso1951' == "UP" & inlist(`dname1951', "bijnor")
    qui replace dcode_`dname1951' = "09" if `iso1951' == "UP" & inlist(`dname1951', "moradabad")
    qui replace dcode_`dname1951' = "10" if `iso1951' == "UP" & inlist(`dname1951', "budaun")
    qui replace dcode_`dname1951' = "11" if `iso1951' == "UP" & inlist(`dname1951', "rampur")
    qui replace dcode_`dname1951' = "12" if `iso1951' == "UP" & inlist(`dname1951', "bareilly")
    qui replace dcode_`dname1951' = "13" if `iso1951' == "UP" & inlist(`dname1951', "pilibhit")
    qui replace dcode_`dname1951' = "14" if `iso1951' == "UP" & inlist(`dname1951', "shahjahanpur")
    qui replace dcode_`dname1951' = "15" if `iso1951' == "UP" & inlist(`dname1951', "meerut")
    qui replace dcode_`dname1951' = "16" if `iso1951' == "UP" & inlist(`dname1951', "bulandshahr")
    qui replace dcode_`dname1951' = "17" if `iso1951' == "UP" & inlist(`dname1951', "aligarh")
    qui replace dcode_`dname1951' = "18" if `iso1951' == "UP" & inlist(`dname1951', "mathura")
    qui replace dcode_`dname1951' = "19" if `iso1951' == "UP" & inlist(`dname1951', "agra")
    qui replace dcode_`dname1951' = "20" if `iso1951' == "UP" & inlist(`dname1951', "etah")
    qui replace dcode_`dname1951' = "21" if `iso1951' == "UP" & inlist(`dname1951', "mainpuri")
    qui replace dcode_`dname1951' = "22" if `iso1951' == "UP" & inlist(`dname1951', "farrukhabad")
    qui replace dcode_`dname1951' = "23" if `iso1951' == "UP" & inlist(`dname1951', "etawah")
    qui replace dcode_`dname1951' = "24" if `iso1951' == "UP" & inlist(`dname1951', "hardoi")
    qui replace dcode_`dname1951' = "25" if `iso1951' == "UP" & inlist(`dname1951', "kheri", "kherl")
    qui replace dcode_`dname1951' = "26" if `iso1951' == "UP" & inlist(`dname1951', "sitapur")
    qui replace dcode_`dname1951' = "27" if `iso1951' == "UP" & inlist(`dname1951', "kanpur")
    qui replace dcode_`dname1951' = "28" if `iso1951' == "UP" & inlist(`dname1951', "fatehpur")
    qui replace dcode_`dname1951' = "29" if `iso1951' == "UP" & inlist(`dname1951', "allahabad")
    qui replace dcode_`dname1951' = "30" if `iso1951' == "UP" & inlist(`dname1951', "jhansi")
    qui replace dcode_`dname1951' = "31" if `iso1951' == "UP" & inlist(`dname1951', "jalaun")
    qui replace dcode_`dname1951' = "32" if `iso1951' == "UP" & inlist(`dname1951', "hamirpur")
    qui replace dcode_`dname1951' = "33" if `iso1951' == "UP" & inlist(`dname1951', "banda")
    qui replace dcode_`dname1951' = "34" if `iso1951' == "UP" & inlist(`dname1951', "bahraich")
    qui replace dcode_`dname1951' = "35" if `iso1951' == "UP" & inlist(`dname1951', "barabanki")
    qui replace dcode_`dname1951' = "36" if `iso1951' == "UP" & inlist(`dname1951', "lucknow")
    qui replace dcode_`dname1951' = "37" if `iso1951' == "UP" & inlist(`dname1951', "unnao")
    qui replace dcode_`dname1951' = "38" if `iso1951' == "UP" & inlist(`dname1951', "gonda")
    qui replace dcode_`dname1951' = "39" if `iso1951' == "UP" & inlist(`dname1951', "raebareli")
    qui replace dcode_`dname1951' = "40" if `iso1951' == "UP" & inlist(`dname1951', "sultanpur")
    qui replace dcode_`dname1951' = "41" if `iso1951' == "UP" & inlist(`dname1951', "faizabad","fijzabad")
    qui replace dcode_`dname1951' = "42" if `iso1951' == "UP" & inlist(`dname1951', "basti")
    qui replace dcode_`dname1951' = "43" if `iso1951' == "UP" & inlist(`dname1951', "gorakhpur")
    qui replace dcode_`dname1951' = "44" if `iso1951' == "UP" & inlist(`dname1951', "deoria")
    qui replace dcode_`dname1951' = "45" if `iso1951' == "UP" & inlist(`dname1951', "pratapgarh")
    qui replace dcode_`dname1951' = "46" if `iso1951' == "UP" & inlist(`dname1951', "jaunpur")
    qui replace dcode_`dname1951' = "47" if `iso1951' == "UP" & inlist(`dname1951', "azamgarh")
    qui replace dcode_`dname1951' = "48" if `iso1951' == "UP" & inlist(`dname1951', "ballia")
    qui replace dcode_`dname1951' = "49" if `iso1951' == "UP" & inlist(`dname1951', "ghazipur")
    qui replace dcode_`dname1951' = "50" if `iso1951' == "UP" & inlist(`dname1951', "varanasi", "banares")
    qui replace dcode_`dname1951' = "51" if `iso1951' == "UP" & inlist(`dname1951', "mirzapur")

*===============================================================================

    * west bengal
    qui replace dcode_`dname1951' = "01" if `iso1951' == "WB" & inlist(`dname1951', "darjeeling")
    qui replace dcode_`dname1951' = "02" if `iso1951' == "WB" & inlist(`dname1951', "jalpaiguri")
    qui replace dcode_`dname1951' = "03" if `iso1951' == "WB" & inlist(`dname1951', "coochbehar", "cooch")
    qui replace dcode_`dname1951' = "04" if `iso1951' == "WB" & inlist(`dname1951', "westdinajpur")
    qui replace dcode_`dname1951' = "05" if `iso1951' == "WB" & inlist(`dname1951', "malda")
    qui replace dcode_`dname1951' = "06" if `iso1951' == "WB" & inlist(`dname1951', "murshidabad")
    qui replace dcode_`dname1951' = "07" if `iso1951' == "WB" & inlist(`dname1951', "nadia")
    qui replace dcode_`dname1951' = "08" if `iso1951' == "WB" & inlist(`dname1951', "twentyfourparganas", "parganas", "24parganas", "24-paraganas", "twetyfourparganas")
    qui replace dcode_`dname1951' = "09" if `iso1951' == "WB" & regexm(`dname1951',"parganas")
    qui replace dcode_`dname1951' = "10" if `iso1951' == "WB" & inlist(`dname1951', "calcutta")
    qui replace dcode_`dname1951' = "11" if `iso1951' == "WB" & inlist(`dname1951', "howrah")
    qui replace dcode_`dname1951' = "12" if `iso1951' == "WB" & inlist(`dname1951', "hooghly")
    qui replace dcode_`dname1951' = "13" if `iso1951' == "WB" & inlist(`dname1951', "burdwan")
    qui replace dcode_`dname1951' = "14" if `iso1951' == "WB" & inlist(`dname1951', "birbhum")
    qui replace dcode_`dname1951' = "15" if `iso1951' == "WB" & inlist(`dname1951', "midnapore", "midnapur")
    qui replace dcode_`dname1951' = "16" if `iso1951' == "WB" & inlist(`dname1951', "bankura")

*===============================================================================
end

*-------------------------------------------------------------------------------
* 1961
*-------------------------------------------------------------------------------
capture program drop dcode1961
program define dcode1961

* store input into macros
local dname1961 `1'
local iso1961 `2'

*===============================================================================

    * andaman nicobar islands
    qui replace dcode_`dname1961' = "01" if `iso1961' == "AN" & inlist(`dname1961', "andamannicobarislands")

*===============================================================================

    * andhra pradesh
    qui replace dcode_`dname1961' = "01" if `iso1961' == "AP" & inlist(`dname1961', "srikakulam")
    qui replace dcode_`dname1961' = "02" if `iso1961' == "AP" & inlist(`dname1961', "visakhapatnam")
    qui replace dcode_`dname1961' = "03" if `iso1961' == "AP" & inlist(`dname1961', "eastgodavari")
    qui replace dcode_`dname1961' = "04" if `iso1961' == "AP" & inlist(`dname1961', "westgodavari")
    qui replace dcode_`dname1961' = "05" if `iso1961' == "AP" & inlist(`dname1961', "krishna")
    qui replace dcode_`dname1961' = "06" if `iso1961' == "AP" & inlist(`dname1961', "guntur")
    qui replace dcode_`dname1961' = "07" if `iso1961' == "AP" & inlist(`dname1961', "nellore", "s.p.s.nellore", "spsnellore")
    qui replace dcode_`dname1961' = "08" if `iso1961' == "AP" & inlist(`dname1961', "chittoor")
    qui replace dcode_`dname1961' = "09" if `iso1961' == "AP" & inlist(`dname1961', "cuddapah", "kadapaysr")
    qui replace dcode_`dname1961' = "10" if `iso1961' == "AP" & inlist(`dname1961', "anantapur", "ananthapur")
    qui replace dcode_`dname1961' = "11" if `iso1961' == "AP" & inlist(`dname1961', "kurnool")
    qui replace dcode_`dname1961' = "12" if `iso1961' == "AP" & inlist(`dname1961', "mahbubnagar", "mahabubnagar")
    qui replace dcode_`dname1961' = "13" if `iso1961' == "AP" & inlist(`dname1961', "hyderabad")
    qui replace dcode_`dname1961' = "14" if `iso1961' == "AP" & inlist(`dname1961', "medak")
    qui replace dcode_`dname1961' = "15" if `iso1961' == "AP" & inlist(`dname1961', "nizamabad")
    qui replace dcode_`dname1961' = "16" if `iso1961' == "AP" & inlist(`dname1961', "adilabad")
    qui replace dcode_`dname1961' = "17" if `iso1961' == "AP" & inlist(`dname1961', "karimnagar")
    qui replace dcode_`dname1961' = "18" if `iso1961' == "AP" & inlist(`dname1961', "warangal")
    qui replace dcode_`dname1961' = "19" if `iso1961' == "AP" & inlist(`dname1961', "khammam")
    qui replace dcode_`dname1961' = "20" if `iso1961' == "AP" & inlist(`dname1961', "nalgonda")

*===============================================================================

    * assam
    * flag: there were 11 districts in assam in 1961 but only 9 by 1971
    * for the above reason, do not assign "northcacharhil/dimahasao" to unitedmikirnorthcacharhills or cachar
    qui replace dcode_`dname1961' = "01" if `iso1961' == "AS" & inlist(`dname1961', "goalpara")
    qui replace dcode_`dname1961' = "02" if `iso1961' == "AS" & inlist(`dname1961', "kamrup")
    qui replace dcode_`dname1961' = "03" if `iso1961' == "AS" & inlist(`dname1961', "darrang")
    qui replace dcode_`dname1961' = "04" if `iso1961' == "AS" & inlist(`dname1961', "lakhimpur")
    qui replace dcode_`dname1961' = "05" if `iso1961' == "AS" & inlist(`dname1961', "nowgong", "nagaon")
    qui replace dcode_`dname1961' = "06" if `iso1961' == "AS" & inlist(`dname1961', "sibsagar")
    qui replace dcode_`dname1961' = "07" if `iso1961' == "AS" & inlist(`dname1961', "cachar")
    qui replace dcode_`dname1961' = "08" if `iso1961' == "AS" & inlist(`dname1961', "unitedmikirnorthcacharhills", "unitedmikirandnorthcachar")
    qui replace dcode_`dname1961' = "09" if `iso1961' == "AS" & inlist(`dname1961', "garohills")
    qui replace dcode_`dname1961' = "10" if `iso1961' == "AS" & inlist(`dname1961', "unitedkhasijaintiahills", "unitedkhasiandjaintiahills")
    qui replace dcode_`dname1961' = "11" if `iso1961' == "AS" & inlist(`dname1961', "mizohills")

/*
unmatched districts:
karbianglong
dibrugarh
Mikir Hills district was renamed as Karbi Anglong district on 14 October 1976. https://en.wikipedia.org/wiki/Karbi_Anglong_district#:~:text=Mikir%20Hills%20district%20was%20renamed,district%20on%2014%20October%201976.
*/

*===============================================================================

    * bihar
    qui replace dcode_`dname1961' = "01" if `iso1961' == "BR" & inlist(`dname1961', "patna")
    qui replace dcode_`dname1961' = "02" if `iso1961' == "BR" & inlist(`dname1961', "gaya")
    qui replace dcode_`dname1961' = "03" if `iso1961' == "BR" & inlist(`dname1961', "shahabad", "shahabad(nowpartofbhojpurdistrict)", "shahabadnowpartofbhojpurdistrict")
    qui replace dcode_`dname1961' = "04" if `iso1961' == "BR" & inlist(`dname1961', "saran")
    qui replace dcode_`dname1961' = "05" if `iso1961' == "BR" & inlist(`dname1961', "champaran")
    qui replace dcode_`dname1961' = "06" if `iso1961' == "BR" & inlist(`dname1961', "muzaffarpur", "muzzaffarpur")
    qui replace dcode_`dname1961' = "07" if `iso1961' == "BR" & inlist(`dname1961', "darbhanga")
    qui replace dcode_`dname1961' = "08" if `iso1961' == "BR" & inlist(`dname1961', "monghyar", "monghyr", "munger", "mungair")
    qui replace dcode_`dname1961' = "09" if `iso1961' == "BR" & inlist(`dname1961', "bhagalpur")
    qui replace dcode_`dname1961' = "10" if `iso1961' == "BR" & inlist(`dname1961', "saharsa")
    qui replace dcode_`dname1961' = "11" if `iso1961' == "BR" & inlist(`dname1961', "purnia", "purnea")
    qui replace dcode_`dname1961' = "12" if `iso1961' == "BR" & inlist(`dname1961', "santhalparganas", "santalparganas", "dumka", "santhalparagana/dumka", "santhalparaganadumka") // flag: is dumka == santhalparganas?
    qui replace dcode_`dname1961' = "13" if `iso1961' == "BR" & inlist(`dname1961', "palamau", "palamu")
    qui replace dcode_`dname1961' = "14" if `iso1961' == "BR" & inlist(`dname1961', "hazaribag", "hazaribagh")
    qui replace dcode_`dname1961' = "15" if `iso1961' == "BR" & inlist(`dname1961', "ranchi")
    qui replace dcode_`dname1961' = "16" if `iso1961' == "BR" & inlist(`dname1961', "dhanbad")
    qui replace dcode_`dname1961' = "17" if `iso1961' == "BR" & inlist(`dname1961', "singhbhum")

*===============================================================================

    * dadra nagar haveli
    qui replace dcode_`dname1961' = "01" if `iso1961' == "DN" & inlist(`dname1961', "dadranagarhaveli", "dadraandnagarhaveli")

*===============================================================================

    * delhi
    qui replace dcode_`dname1961' = "01" if `iso1961' == "DL" & inlist(`dname1961', "delhi")

*===============================================================================

    * goa daman diu
    qui replace dcode_`dname1961' = "01" if `iso1961' == "DG" & inlist(`dname1961', "goa")
    qui replace dcode_`dname1961' = "02" if `iso1961' == "DG" & inlist(`dname1961', "daman")
    qui replace dcode_`dname1961' = "03" if `iso1961' == "DG" & inlist(`dname1961', "diu")

*===============================================================================

    * gujarat, 17 districts in 1961
    * valsad was formed b/w 1961 and 1971. it shows up as the 18th district in '71
    qui replace dcode_`dname1961' = "01" if `iso1961' == "GJ" & inlist(`dname1961', "jamnagar")
    qui replace dcode_`dname1961' = "02" if `iso1961' == "GJ" & inlist(`dname1961', "rajkot")
    qui replace dcode_`dname1961' = "03" if `iso1961' == "GJ" & inlist(`dname1961', "surendranagar")
    qui replace dcode_`dname1961' = "04" if `iso1961' == "GJ" & inlist(`dname1961', "bhavnagar")
    qui replace dcode_`dname1961' = "05" if `iso1961' == "GJ" & inlist(`dname1961', "amreli")
    qui replace dcode_`dname1961' = "06" if `iso1961' == "GJ" & inlist(`dname1961', "junagadh", "junagarh")
    qui replace dcode_`dname1961' = "07" if `iso1961' == "GJ" & inlist(`dname1961', "kutch", "kachchh")
    qui replace dcode_`dname1961' = "08" if `iso1961' == "GJ" & inlist(`dname1961', "banaskantha", "banas-kantha")
    qui replace dcode_`dname1961' = "09" if `iso1961' == "GJ" & inlist(`dname1961', "sabarkantha", "sabar-kantha")
    qui replace dcode_`dname1961' = "10" if `iso1961' == "GJ" & inlist(`dname1961', "mehsana", "mahesana")
    qui replace dcode_`dname1961' = "11" if `iso1961' == "GJ" & inlist(`dname1961', "ahmedabad")
    qui replace dcode_`dname1961' = "12" if `iso1961' == "GJ" & inlist(`dname1961', "kaira", "kheda")
    qui replace dcode_`dname1961' = "13" if `iso1961' == "GJ" & inlist(`dname1961', "panchmahals", "panch-mahals", "panchmahal")
    qui replace dcode_`dname1961' = "14" if `iso1961' == "GJ" & inlist(`dname1961', "baroda", "vadodara", "vadodara/baroda", "vadodarabaroda")
    qui replace dcode_`dname1961' = "15" if `iso1961' == "GJ" & inlist(`dname1961', "broach", "bharuch")
    qui replace dcode_`dname1961' = "16" if `iso1961' == "GJ" & inlist(`dname1961', "surat")
    qui replace dcode_`dname1961' = "17" if `iso1961' == "GJ" & inlist(`dname1961', "dangs", "the-dangs")
    *  flag: what to do with valsad ?? GJ_Bulsar/Valsad

*===============================================================================

    * himachal pradesh
    qui replace dcode_`dname1961' = "01" if `iso1961' == "HP" & inlist(`dname1961', "chamba", "champa")
    qui replace dcode_`dname1961' = "02" if `iso1961' == "HP" & inlist(`dname1961', "bilaspur", "bilashpur")
    qui replace dcode_`dname1961' = "03" if `iso1961' == "HP" & inlist(`dname1961', "mandi")
    qui replace dcode_`dname1961' = "04" if `iso1961' == "HP" & inlist(`dname1961', "mahasu")
    qui replace dcode_`dname1961' = "05" if `iso1961' == "HP" & inlist(`dname1961', "sirmur", "sirmaur")
    qui replace dcode_`dname1961' = "06" if `iso1961' == "HP" & inlist(`dname1961', "kinnaur")

*===============================================================================

    * jammu & kashmir
    qui replace dcode_`dname1961' = "01" if `iso1961' == "JK" & inlist(`dname1961', "anantnag")
    qui replace dcode_`dname1961' = "02" if `iso1961' == "JK" & inlist(`dname1961', "srinagar")
    qui replace dcode_`dname1961' = "03" if `iso1961' == "JK" & inlist(`dname1961', "baramulla")
    qui replace dcode_`dname1961' = "04" if `iso1961' == "JK" & inlist(`dname1961', "ladakh")
    qui replace dcode_`dname1961' = "05" if `iso1961' == "JK" & inlist(`dname1961', "doda")
    qui replace dcode_`dname1961' = "06" if `iso1961' == "JK" & inlist(`dname1961', "udhampur")
    qui replace dcode_`dname1961' = "07" if `iso1961' == "JK" & inlist(`dname1961', "jammu")
    qui replace dcode_`dname1961' = "08" if `iso1961' == "JK" & inlist(`dname1961', "kathua")
    qui replace dcode_`dname1961' = "09" if `iso1961' == "JK" & inlist(`dname1961', "poonch", "punch")

*===============================================================================

    * kerala
    qui replace dcode_`dname1961' = "01" if `iso1961' == "KL" & inlist(`dname1961', "cannanore", "kannur") // The old name, Cannanore, is the anglicized form of the Malayalam name "Kannur". https://en.wikipedia.org/wiki/Kannur
    qui replace dcode_`dname1961' = "02" if `iso1961' == "KL" & inlist(`dname1961', "kozhikode")
    qui replace dcode_`dname1961' = "03" if `iso1961' == "KL" & inlist(`dname1961', "palghat", "palakkad") // Palakkad also known as Palghat... https://en.wikipedia.org/wiki/Palakkad
    qui replace dcode_`dname1961' = "04" if `iso1961' == "KL" & inlist(`dname1961', "trichur", "thrissur") //Thrissur (formerly Trichur) is a district of Kerala situated in the central part of that state. https://en.wikipedia.org/wiki/Thrissur_district
    qui replace dcode_`dname1961' = "05" if `iso1961' == "KL" & inlist(`dname1961', "ernakulam", "eranakulam")
    qui replace dcode_`dname1961' = "06" if `iso1961' == "KL" & inlist(`dname1961', "kottayam")
    qui replace dcode_`dname1961' = "07" if `iso1961' == "KL" & inlist(`dname1961', "alleppey", "alappuzha")
    qui replace dcode_`dname1961' = "08" if `iso1961' == "KL" & inlist(`dname1961', "quilon", "kollam") // Kollam district (formerly Quilon) is one of 14 districts of the state of Kerala, India https://en.wikipedia.org/wiki/Kollam_district
    qui replace dcode_`dname1961' = "09" if `iso1961' == "KL" & inlist(`dname1961', "trivandrum", "thiruvananthapuram")
/*
unmatched: malappuram
Until the formation of Malappuram district in 1969, the Taluks of Eranad, Kondotty, Nilambur, Tirur, and Tirurangadi were included in the Kozhikode district, while the Taluks of Perinthalmanna and Ponnani formed part of Palakkad district.[26] At that time, the city of Malappuram which separates Eranad Taluk and Tirur Taluk from Perinthalmanna Taluk was located right at the border of Kozhikode and Palakkad districts. https://en.wikipedia.org/wiki/Malappuram_district
*/

*===============================================================================

    * lakshadweep
    qui replace dcode_`dname1961' = "01" if `iso1961' == "LD" & inlist(`dname1961', "laccadive")

*===============================================================================

    * madhya pradesh
    qui replace dcode_`dname1961' = "01" if `iso1961' == "MP" & inlist(`dname1961', "morena")
    qui replace dcode_`dname1961' = "02" if `iso1961' == "MP" & inlist(`dname1961', "bhind")
    qui replace dcode_`dname1961' = "03" if `iso1961' == "MP" & inlist(`dname1961', "gwalior")
    qui replace dcode_`dname1961' = "04" if `iso1961' == "MP" & inlist(`dname1961', "datia")
    qui replace dcode_`dname1961' = "05" if `iso1961' == "MP" & inlist(`dname1961', "shivpuri")
    qui replace dcode_`dname1961' = "06" if `iso1961' == "MP" & inlist(`dname1961', "guna")
    qui replace dcode_`dname1961' = "07" if `iso1961' == "MP" & inlist(`dname1961', "tikamgarh")
    qui replace dcode_`dname1961' = "08" if `iso1961' == "MP" & inlist(`dname1961', "chhatarpur", "chhatapur")
    qui replace dcode_`dname1961' = "09" if `iso1961' == "MP" & inlist(`dname1961', "panna")
    qui replace dcode_`dname1961' = "10" if `iso1961' == "MP" & inlist(`dname1961', "satna")
    qui replace dcode_`dname1961' = "11" if `iso1961' == "MP" & inlist(`dname1961', "rewa")
    qui replace dcode_`dname1961' = "12" if `iso1961' == "MP" & inlist(`dname1961', "shahdol")
    qui replace dcode_`dname1961' = "13" if `iso1961' == "MP" & inlist(`dname1961', "sidhi")
    qui replace dcode_`dname1961' = "14" if `iso1961' == "MP" & inlist(`dname1961', "mandsaur")
    qui replace dcode_`dname1961' = "15" if `iso1961' == "MP" & inlist(`dname1961', "ratlam")
    qui replace dcode_`dname1961' = "16" if `iso1961' == "MP" & inlist(`dname1961', "ujjain")
    qui replace dcode_`dname1961' = "17" if `iso1961' == "MP" & inlist(`dname1961', "jhabua")
    qui replace dcode_`dname1961' = "18" if `iso1961' == "MP" & inlist(`dname1961', "dhar")
    qui replace dcode_`dname1961' = "19" if `iso1961' == "MP" & inlist(`dname1961', "indore")
    qui replace dcode_`dname1961' = "20" if `iso1961' == "MP" & inlist(`dname1961', "dewas")
    qui replace dcode_`dname1961' = "21" if `iso1961' == "MP" & inlist(`dname1961', "westnimar", "khargonewestnimar", "khargone/westnimar")
    qui replace dcode_`dname1961' = "22" if `iso1961' == "MP" & inlist(`dname1961', "eastnimar", "khandwaeastnimar", "khandwa/eastnimar")
    qui replace dcode_`dname1961' = "23" if `iso1961' == "MP" & inlist(`dname1961', "shajapur")
    qui replace dcode_`dname1961' = "24" if `iso1961' == "MP" & inlist(`dname1961', "rajgarh")
    qui replace dcode_`dname1961' = "25" if `iso1961' == "MP" & inlist(`dname1961', "vidishabhilsa", "vidisha", "vidisha(bhilsa)")
    qui replace dcode_`dname1961' = "26" if `iso1961' == "MP" & inlist(`dname1961', "sehore")
    qui replace dcode_`dname1961' = "27" if `iso1961' == "MP" & inlist(`dname1961', "raisen")
    qui replace dcode_`dname1961' = "28" if `iso1961' == "MP" & inlist(`dname1961', "hoshangabad")
    qui replace dcode_`dname1961' = "29" if `iso1961' == "MP" & inlist(`dname1961', "betul")
    qui replace dcode_`dname1961' = "30" if `iso1961' == "MP" & inlist(`dname1961', "sagar")
    qui replace dcode_`dname1961' = "31" if `iso1961' == "MP" & inlist(`dname1961', "damoh")
    qui replace dcode_`dname1961' = "32" if `iso1961' == "MP" & inlist(`dname1961', "jabalpur")
    qui replace dcode_`dname1961' = "33" if `iso1961' == "MP" & inlist(`dname1961', "narsimhapur", "narsinghpur")
    qui replace dcode_`dname1961' = "34" if `iso1961' == "MP" & inlist(`dname1961', "mandla")
    qui replace dcode_`dname1961' = "35" if `iso1961' == "MP" & inlist(`dname1961', "chhindwara")
    qui replace dcode_`dname1961' = "36" if `iso1961' == "MP" & inlist(`dname1961', "seoni", "seoni/shivani", "seonishivani")
    qui replace dcode_`dname1961' = "37" if `iso1961' == "MP" & inlist(`dname1961', "balaghat")
    qui replace dcode_`dname1961' = "38" if `iso1961' == "MP" & inlist(`dname1961', "surguja")
    qui replace dcode_`dname1961' = "39" if `iso1961' == "MP" & inlist(`dname1961', "bilaspur")
    qui replace dcode_`dname1961' = "40" if `iso1961' == "MP" & inlist(`dname1961', "raigarh")
    qui replace dcode_`dname1961' = "41" if `iso1961' == "MP" & inlist(`dname1961', "durg")
    qui replace dcode_`dname1961' = "42" if `iso1961' == "MP" & inlist(`dname1961', "raipur")
    qui replace dcode_`dname1961' = "43" if `iso1961' == "MP" & inlist(`dname1961', "bastar")

*===============================================================================

    * madras
    qui replace dcode_`dname1961' = "01" if `iso1961' == "TN" & inlist(`dname1961', "madras")
    qui replace dcode_`dname1961' = "02" if `iso1961' == "TN" & inlist(`dname1961', "chingleput", "chengalpattu", "chengalpattumgr/kanchipuram", "chengalpattumgrkanchipuram")
    qui replace dcode_`dname1961' = "03" if `iso1961' == "TN" & inlist(`dname1961', "northarcot", "northarcotambedkar", "northarcot/vellore", "northarcotvellore")
    qui replace dcode_`dname1961' = "04" if `iso1961' == "TN" & inlist(`dname1961', "southarcot", "southarcot/cuddalore", "southarcotcuddalore")
    qui replace dcode_`dname1961' = "05" if `iso1961' == "TN" & inlist(`dname1961', "salem")
    qui replace dcode_`dname1961' = "06" if `iso1961' == "TN" & inlist(`dname1961', "coimbatore")
    qui replace dcode_`dname1961' = "07" if `iso1961' == "TN" & inlist(`dname1961', "nilgiri", "thenilgiris")
    qui replace dcode_`dname1961' = "08" if `iso1961' == "TN" & inlist(`dname1961', "madurai")
    qui replace dcode_`dname1961' = "09" if `iso1961' == "TN" & inlist(`dname1961', "tiruchirapalli", "tiruchchirappalli", "tiruchirapalli/trichy", "tiruchirapallitrichy")
    qui replace dcode_`dname1961' = "10" if `iso1961' == "TN" & inlist(`dname1961', "thanjavur")
    qui replace dcode_`dname1961' = "11" if `iso1961' == "TN" & inlist(`dname1961', "ramanathapuram", "ramananthapuram")
    qui replace dcode_`dname1961' = "12" if `iso1961' == "TN" & inlist(`dname1961', "tirunelveli", "tirunelveli-kattabo", "thirunelveli")
    qui replace dcode_`dname1961' = "13" if `iso1961' == "TN" & inlist(`dname1961', "kanyakumari", "kanniyakumari")

*===============================================================================

    * maharasthra
    qui replace dcode_`dname1961' = "01" if `iso1961' == "MH" & inlist(`dname1961', "greaterbombay", "bombay")
    qui replace dcode_`dname1961' = "02" if `iso1961' == "MH" & inlist(`dname1961', "thana", "thane")
    qui replace dcode_`dname1961' = "03" if `iso1961' == "MH" & inlist(`dname1961', "kolaba", "raigarh", "raigad") // Raigad District (Marathi pronunciation: [ɾaiɡəɖ]), previously known as Colaba District, is an district in the Konkan division of Maharashtra, India https://en.wikipedia.org/wiki/Raigad_district
    qui replace dcode_`dname1961' = "04" if `iso1961' == "MH" & inlist(`dname1961', "ratnagiri")
    qui replace dcode_`dname1961' = "05" if `iso1961' == "MH" & inlist(`dname1961', "nasik", "nashik")
    qui replace dcode_`dname1961' = "06" if `iso1961' == "MH" & inlist(`dname1961', "dhulia", "dhule") // FLAG: confirm if dhule == dhulia
    qui replace dcode_`dname1961' = "07" if `iso1961' == "MH" & inlist(`dname1961', "jalgaon")
    qui replace dcode_`dname1961' = "08" if `iso1961' == "MH" & inlist(`dname1961', "ahmadnagar", "ahmednagar")
    qui replace dcode_`dname1961' = "09" if `iso1961' == "MH" & inlist(`dname1961', "poona", "pune")
    qui replace dcode_`dname1961' = "10" if `iso1961' == "MH" & inlist(`dname1961', "satara")
    qui replace dcode_`dname1961' = "11" if `iso1961' == "MH" & inlist(`dname1961', "sangli")
    qui replace dcode_`dname1961' = "12" if `iso1961' == "MH" & inlist(`dname1961', "sholapur", "solapur")
    qui replace dcode_`dname1961' = "13" if `iso1961' == "MH" & inlist(`dname1961', "kolhapur")
    qui replace dcode_`dname1961' = "14" if `iso1961' == "MH" & inlist(`dname1961', "aurangabad")
    qui replace dcode_`dname1961' = "15" if `iso1961' == "MH" & inlist(`dname1961', "parbhani")
    qui replace dcode_`dname1961' = "16" if `iso1961' == "MH" & inlist(`dname1961', "bhir", "bid", "beed") // FLAG: confirm if bid == bhir
    qui replace dcode_`dname1961' = "17" if `iso1961' == "MH" & inlist(`dname1961', "nanded")
    qui replace dcode_`dname1961' = "18" if `iso1961' == "MH" & inlist(`dname1961', "osmanabad")
    qui replace dcode_`dname1961' = "19" if `iso1961' == "MH" & inlist(`dname1961', "buldhana", "buldana")
    qui replace dcode_`dname1961' = "20" if `iso1961' == "MH" & inlist(`dname1961', "akola")
    qui replace dcode_`dname1961' = "21" if `iso1961' == "MH" & inlist(`dname1961', "amravati", "amarawati")
    qui replace dcode_`dname1961' = "22" if `iso1961' == "MH" & inlist(`dname1961', "yeotmal", "yavatmal")
    qui replace dcode_`dname1961' = "23" if `iso1961' == "MH" & inlist(`dname1961', "wardha")
    qui replace dcode_`dname1961' = "24" if `iso1961' == "MH" & inlist(`dname1961', "nagpur")
    qui replace dcode_`dname1961' = "25" if `iso1961' == "MH" & inlist(`dname1961', "bhandara")
    qui replace dcode_`dname1961' = "26" if `iso1961' == "MH" & inlist(`dname1961', "chandrapur")

*===============================================================================

    * manipur
    qui replace dcode_`dname1961' = "01" if `iso1961' == "MN" & inlist(`dname1961', "manipur")

*===============================================================================

    * mysore
    qui replace dcode_`dname1961' = "01" if `iso1961' == "KA" & inlist(`dname1961', "bangalore", "banglore")
    qui replace dcode_`dname1961' = "02" if `iso1961' == "KA" & inlist(`dname1961', "tumkur")
    qui replace dcode_`dname1961' = "03" if `iso1961' == "KA" & inlist(`dname1961', "chitradurga")
    qui replace dcode_`dname1961' = "04" if `iso1961' == "KA" & inlist(`dname1961', "kolar")
    qui replace dcode_`dname1961' = "05" if `iso1961' == "KA" & inlist(`dname1961', "bellary")
    qui replace dcode_`dname1961' = "06" if `iso1961' == "KA" & inlist(`dname1961', "mysore")
    qui replace dcode_`dname1961' = "07" if `iso1961' == "KA" & inlist(`dname1961', "southkanara", "dakshinkannad", "dakshinakannada")
    qui replace dcode_`dname1961' = "08" if `iso1961' == "KA" & inlist(`dname1961', "coorg", "kodagu", "kodagu/coorg", "kodagucoorg") // FLAG: confirm if kodagu == coorg
    qui replace dcode_`dname1961' = "09" if `iso1961' == "KA" & inlist(`dname1961', "hassan")
    qui replace dcode_`dname1961' = "10" if `iso1961' == "KA" & inlist(`dname1961', "shimoga", "shimoge")
    qui replace dcode_`dname1961' = "11" if `iso1961' == "KA" & inlist(`dname1961', "chikmagalur", "chickmagalur")
    qui replace dcode_`dname1961' = "12" if `iso1961' == "KA" & inlist(`dname1961', "mandya")
    qui replace dcode_`dname1961' = "13" if `iso1961' == "KA" & inlist(`dname1961', "belgaum", "belgaon")
    qui replace dcode_`dname1961' = "14" if `iso1961' == "KA" & inlist(`dname1961', "bijapur", "bijapur/vijayapura", "bijapurvijayapura")
    qui replace dcode_`dname1961' = "15" if `iso1961' == "KA" & inlist(`dname1961', "northkanara", "uttarkannad", "uttarakannada")
    qui replace dcode_`dname1961' = "16" if `iso1961' == "KA" & inlist(`dname1961', "dharwar", "dharwad")
    qui replace dcode_`dname1961' = "17" if `iso1961' == "KA" & inlist(`dname1961', "gulbarga", "gulbarga/kalaburagi", "gulbargakalaburagi")
    qui replace dcode_`dname1961' = "18" if `iso1961' == "KA" & inlist(`dname1961', "bidar")
    qui replace dcode_`dname1961' = "19" if `iso1961' == "KA" & inlist(`dname1961', "raichur")

*===============================================================================

    * nagaland / naga hills tuensang area
    qui replace dcode_`dname1961' = "01" if `iso1961' == "NL" & inlist(`dname1961', "kohima")
    qui replace dcode_`dname1961' = "02" if `iso1961' == "NL" & inlist(`dname1961', "mokokchung")
    qui replace dcode_`dname1961' = "03" if `iso1961' == "NL" & inlist(`dname1961', "tuensang")

*===============================================================================

    * arunachal pradesh / northeast frontier agency
    qui replace dcode_`dname1961' = "01" if `iso1961' == "AR" & inlist(`dname1961', "kameng")
    qui replace dcode_`dname1961' = "02" if `iso1961' == "AR" & inlist(`dname1961', "subansiri")
    qui replace dcode_`dname1961' = "03" if `iso1961' == "AR" & inlist(`dname1961', "siang")
    qui replace dcode_`dname1961' = "04" if `iso1961' == "AR" & inlist(`dname1961', "lohit")
    qui replace dcode_`dname1961' = "05" if `iso1961' == "AR" & inlist(`dname1961', "tirap")

*===============================================================================

    * orissa
    qui replace dcode_`dname1961' = "01" if `iso1961' == "OR" & inlist(`dname1961', "kalahandi")
    qui replace dcode_`dname1961' = "02" if `iso1961' == "OR" & inlist(`dname1961', "koraput")
    qui replace dcode_`dname1961' = "03" if `iso1961' == "OR" & inlist(`dname1961', "sambalpur")
    qui replace dcode_`dname1961' = "04" if `iso1961' == "OR" & inlist(`dname1961', "bolangir", "balangir")
    qui replace dcode_`dname1961' = "05" if `iso1961' == "OR" & inlist(`dname1961', "baudhkhondmals", "phulabani", "phulbani(kandhamal)", "phulbanikandhamal")
    qui replace dcode_`dname1961' = "06" if `iso1961' == "OR" & inlist(`dname1961', "ganjam")
    qui replace dcode_`dname1961' = "07" if `iso1961' == "OR" & inlist(`dname1961', "sundargarh")
    qui replace dcode_`dname1961' = "08" if `iso1961' == "OR" & inlist(`dname1961', "dhenkanal")
    qui replace dcode_`dname1961' = "09" if `iso1961' == "OR" & inlist(`dname1961', "puri")
    qui replace dcode_`dname1961' = "10" if `iso1961' == "OR" & inlist(`dname1961', "keonjhar", "kendujhar")
    qui replace dcode_`dname1961' = "11" if `iso1961' == "OR" & inlist(`dname1961', "cuttack")
    qui replace dcode_`dname1961' = "12" if `iso1961' == "OR" & inlist(`dname1961', "mayurbhanj", "mayurbhanja")
    qui replace dcode_`dname1961' = "13" if `iso1961' == "OR" & inlist(`dname1961', "balasore", "baleshwar")

*===============================================================================

    * pondicherry
    qui replace dcode_`dname1961' = "01" if `iso1961' == "PY" & inlist(`dname1961', "pondicherry")
    qui replace dcode_`dname1961' = "02" if `iso1961' == "PY" & inlist(`dname1961', "karaikal")
    qui replace dcode_`dname1961' = "03" if `iso1961' == "PY" & inlist(`dname1961', "mahe")
    qui replace dcode_`dname1961' = "04" if `iso1961' == "PY" & inlist(`dname1961', "yanam")

*===============================================================================

    * punjab
    qui replace dcode_`dname1961' = "01" if `iso1961' == "PB" & inlist(`dname1961', "gurdaspur")
    qui replace dcode_`dname1961' = "02" if `iso1961' == "PB" & inlist(`dname1961', "amritsar")
    qui replace dcode_`dname1961' = "03" if `iso1961' == "PB" & inlist(`dname1961', "ferozepur", "firozpur", "ferozpur")
    qui replace dcode_`dname1961' = "04" if `iso1961' == "PB" & inlist(`dname1961', "ludhiana")
    qui replace dcode_`dname1961' = "05" if `iso1961' == "PB" & inlist(`dname1961', "jullundur", "jalandhar")
    qui replace dcode_`dname1961' = "06" if `iso1961' == "PB" & inlist(`dname1961', "kapurthala")
    qui replace dcode_`dname1961' = "07" if `iso1961' == "PB" & inlist(`dname1961', "hoshiarpur")
    qui replace dcode_`dname1961' = "08" if `iso1961' == "PB" & inlist(`dname1961', "bhatinda", "bathinda")
    qui replace dcode_`dname1961' = "09" if `iso1961' == "PB" & inlist(`dname1961', "sangrur")
    qui replace dcode_`dname1961' = "10" if `iso1961' == "PB" & inlist(`dname1961', "patiala")
    qui replace dcode_`dname1961' = "11" if `iso1961' == "PB" & inlist(`dname1961', "ambala")
    qui replace dcode_`dname1961' = "12" if `iso1961' == "PB" & inlist(`dname1961', "hissar")
    qui replace dcode_`dname1961' = "13" if `iso1961' == "PB" & inlist(`dname1961', "rohtak")
    qui replace dcode_`dname1961' = "14" if `iso1961' == "PB" & inlist(`dname1961', "gurgaon")
    qui replace dcode_`dname1961' = "15" if `iso1961' == "PB" & inlist(`dname1961', "karnal")
    qui replace dcode_`dname1961' = "16" if `iso1961' == "PB" & inlist(`dname1961', "mahendragarh", "mahendragarh/narnaul", "mahendragarhnarnaul")
    qui replace dcode_`dname1961' = "17" if `iso1961' == "PB" & inlist(`dname1961', "simla", "shimla")
    qui replace dcode_`dname1961' = "18" if `iso1961' == "PB" & inlist(`dname1961', "kangra", "kangara")
    qui replace dcode_`dname1961' = "19" if `iso1961' == "PB" & inlist(`dname1961', "lahaul&spiti", "lahaulandspiti", "lahul&spiti", "lahulandspiti", "lahulspiti")
    * flag: special cases -- districts in hp are in punjab in 1961
    qui replace dcode_`dname1961' = "17" if `iso1961' == "HP" & inlist(`dname1961', "simla", "shimla")
    qui replace dcode_`dname1961' = "18" if `iso1961' == "HP" & inlist(`dname1961', "kangra", "kangara")
    qui replace dcode_`dname1961' = "19" if `iso1961' == "HP" & inlist(`dname1961', "lahaul&spiti", "lahaulandspiti", "lahulandspiti", "lahul&spiti", "lahulandspiti", "lahulspiti")

/*
unmatched districts:
jind
roopnagar/ropar
*/

*===============================================================================

    * rajasthan
    qui replace dcode_`dname1961' = "01" if `iso1961' == "RJ" & inlist(`dname1961', "ganganagar")
    qui replace dcode_`dname1961' = "02" if `iso1961' == "RJ" & inlist(`dname1961', "bikaner")
    qui replace dcode_`dname1961' = "03" if `iso1961' == "RJ" & inlist(`dname1961', "churu")
    qui replace dcode_`dname1961' = "04" if `iso1961' == "RJ" & inlist(`dname1961', "jhunjhunu", "jhunjhunun")
    qui replace dcode_`dname1961' = "05" if `iso1961' == "RJ" & inlist(`dname1961', "alwar")
    qui replace dcode_`dname1961' = "06" if `iso1961' == "RJ" & inlist(`dname1961', "bharatpur")
    qui replace dcode_`dname1961' = "07" if `iso1961' == "RJ" & inlist(`dname1961', "sawaimadhopur", "swamimadhopur")
    qui replace dcode_`dname1961' = "08" if `iso1961' == "RJ" & inlist(`dname1961', "jaipur")
    qui replace dcode_`dname1961' = "09" if `iso1961' == "RJ" & inlist(`dname1961', "sikar")
    qui replace dcode_`dname1961' = "10" if `iso1961' == "RJ" & inlist(`dname1961', "ajmer")
    qui replace dcode_`dname1961' = "11" if `iso1961' == "RJ" & inlist(`dname1961', "tonk")
    qui replace dcode_`dname1961' = "12" if `iso1961' == "RJ" & inlist(`dname1961', "jaisalmer")
    qui replace dcode_`dname1961' = "13" if `iso1961' == "RJ" & inlist(`dname1961', "jodhpur")
    qui replace dcode_`dname1961' = "14" if `iso1961' == "RJ" & inlist(`dname1961', "nagaur")
    qui replace dcode_`dname1961' = "15" if `iso1961' == "RJ" & inlist(`dname1961', "pali")
    qui replace dcode_`dname1961' = "16" if `iso1961' == "RJ" & inlist(`dname1961', "barmer")
    qui replace dcode_`dname1961' = "17" if `iso1961' == "RJ" & inlist(`dname1961', "jalor", "jalore")
    qui replace dcode_`dname1961' = "18" if `iso1961' == "RJ" & inlist(`dname1961', "sirohi")
    qui replace dcode_`dname1961' = "19" if `iso1961' == "RJ" & inlist(`dname1961', "bhilwara")
    qui replace dcode_`dname1961' = "20" if `iso1961' == "RJ" & inlist(`dname1961', "udaipur")
    qui replace dcode_`dname1961' = "21" if `iso1961' == "RJ" & inlist(`dname1961', "chitorgarh", "chittaurgarh", "chittorgarh")
    qui replace dcode_`dname1961' = "22" if `iso1961' == "RJ" & inlist(`dname1961', "dungarpur")
    qui replace dcode_`dname1961' = "23" if `iso1961' == "RJ" & inlist(`dname1961', "banswara")
    qui replace dcode_`dname1961' = "24" if `iso1961' == "RJ" & inlist(`dname1961', "bundi")
    qui replace dcode_`dname1961' = "25" if `iso1961' == "RJ" & inlist(`dname1961', "kota")
    qui replace dcode_`dname1961' = "26" if `iso1961' == "RJ" & inlist(`dname1961', "jhalawar")

*===============================================================================

    * sikkim
    qui replace dcode_`dname1961' = "01" if `iso1961' == "SK" & inlist(`dname1961', "sikkim")

*===============================================================================

    * tripura
    qui replace dcode_`dname1961' = "01" if `iso1961' == "TR" & inlist(`dname1961', "tripura")

*===============================================================================

    * uttar pradesh
    qui replace dcode_`dname1961' = "01" if `iso1961' == "UP" & inlist(`dname1961', "bijnor")
    qui replace dcode_`dname1961' = "02" if `iso1961' == "UP" & inlist(`dname1961', "moradabad")
    qui replace dcode_`dname1961' = "03" if `iso1961' == "UP" & inlist(`dname1961', "budaun")
    qui replace dcode_`dname1961' = "04" if `iso1961' == "UP" & inlist(`dname1961', "rampur")
    qui replace dcode_`dname1961' = "05" if `iso1961' == "UP" & inlist(`dname1961', "bareilly")
    qui replace dcode_`dname1961' = "06" if `iso1961' == "UP" & inlist(`dname1961', "pilibhit")
    qui replace dcode_`dname1961' = "07" if `iso1961' == "UP" & inlist(`dname1961', "shahjahanpur")
    qui replace dcode_`dname1961' = "08" if `iso1961' == "UP" & inlist(`dname1961', "saharanpur")
    qui replace dcode_`dname1961' = "09" if `iso1961' == "UP" & inlist(`dname1961', "muzaffarnagar")
    qui replace dcode_`dname1961' = "10" if `iso1961' == "UP" & inlist(`dname1961', "meerut")
    qui replace dcode_`dname1961' = "11" if `iso1961' == "UP" & inlist(`dname1961', "bulandshahr", "bulandshahar")
    qui replace dcode_`dname1961' = "12" if `iso1961' == "UP" & inlist(`dname1961', "aligarh")
    qui replace dcode_`dname1961' = "13" if `iso1961' == "UP" & inlist(`dname1961', "mathura")
    qui replace dcode_`dname1961' = "14" if `iso1961' == "UP" & inlist(`dname1961', "agra")
    qui replace dcode_`dname1961' = "15" if `iso1961' == "UP" & inlist(`dname1961', "etah")
    qui replace dcode_`dname1961' = "16" if `iso1961' == "UP" & inlist(`dname1961', "mainpuri")
    qui replace dcode_`dname1961' = "17" if `iso1961' == "UP" & inlist(`dname1961', "farrukhabad")
    qui replace dcode_`dname1961' = "18" if `iso1961' == "UP" & inlist(`dname1961', "etawah")
    qui replace dcode_`dname1961' = "19" if `iso1961' == "UP" & inlist(`dname1961', "kanpur")
    qui replace dcode_`dname1961' = "20" if `iso1961' == "UP" & inlist(`dname1961', "fatehpur")
    qui replace dcode_`dname1961' = "21" if `iso1961' == "UP" & inlist(`dname1961', "allahabad")
    qui replace dcode_`dname1961' = "22" if `iso1961' == "UP" & inlist(`dname1961', "jhansi")
    qui replace dcode_`dname1961' = "23" if `iso1961' == "UP" & inlist(`dname1961', "jalaun")
    qui replace dcode_`dname1961' = "24" if `iso1961' == "UP" & inlist(`dname1961', "hamirpur")
    qui replace dcode_`dname1961' = "25" if `iso1961' == "UP" & inlist(`dname1961', "banda")
    qui replace dcode_`dname1961' = "26" if `iso1961' == "UP" & inlist(`dname1961', "kheri")
    qui replace dcode_`dname1961' = "27" if `iso1961' == "UP" & inlist(`dname1961', "sitapur")
    qui replace dcode_`dname1961' = "28" if `iso1961' == "UP" & inlist(`dname1961', "hardoi")
    qui replace dcode_`dname1961' = "29" if `iso1961' == "UP" & inlist(`dname1961', "unnao")
    qui replace dcode_`dname1961' = "30" if `iso1961' == "UP" & inlist(`dname1961', "lucknow")
    qui replace dcode_`dname1961' = "31" if `iso1961' == "UP" & inlist(`dname1961', "raebareli", "rae-bareli", "rae-bareily", "raebareily")
    qui replace dcode_`dname1961' = "32" if `iso1961' == "UP" & inlist(`dname1961', "bahraich")
    qui replace dcode_`dname1961' = "33" if `iso1961' == "UP" & inlist(`dname1961', "gonda")
    qui replace dcode_`dname1961' = "34" if `iso1961' == "UP" & inlist(`dname1961', "barabanki")
    qui replace dcode_`dname1961' = "35" if `iso1961' == "UP" & inlist(`dname1961', "faizabad")
    qui replace dcode_`dname1961' = "36" if `iso1961' == "UP" & inlist(`dname1961', "sultanpur")
    qui replace dcode_`dname1961' = "37" if `iso1961' == "UP" & inlist(`dname1961', "pratapgarh")
    qui replace dcode_`dname1961' = "38" if `iso1961' == "UP" & inlist(`dname1961', "basti")
    qui replace dcode_`dname1961' = "39" if `iso1961' == "UP" & inlist(`dname1961', "gorakhpur")
    qui replace dcode_`dname1961' = "40" if `iso1961' == "UP" & inlist(`dname1961', "deoria")
    qui replace dcode_`dname1961' = "41" if `iso1961' == "UP" & inlist(`dname1961', "azamgarh")
    qui replace dcode_`dname1961' = "42" if `iso1961' == "UP" & inlist(`dname1961', "jaunpur")
    qui replace dcode_`dname1961' = "43" if `iso1961' == "UP" & inlist(`dname1961', "ballia")
    qui replace dcode_`dname1961' = "44" if `iso1961' == "UP" & inlist(`dname1961', "ghazipur")
    qui replace dcode_`dname1961' = "45" if `iso1961' == "UP" & inlist(`dname1961', "varanasi")
    qui replace dcode_`dname1961' = "46" if `iso1961' == "UP" & inlist(`dname1961', "mirzapur", "mirzpur")
    qui replace dcode_`dname1961' = "47" if `iso1961' == "UP" & inlist(`dname1961', "uttarkashi")
    qui replace dcode_`dname1961' = "48" if `iso1961' == "UP" & inlist(`dname1961', "chamoli")
    qui replace dcode_`dname1961' = "49" if `iso1961' == "UP" & inlist(`dname1961', "pithoragarh", "pithorgarh")
    qui replace dcode_`dname1961' = "50" if `iso1961' == "UP" & inlist(`dname1961', "tehrigarhwal")
    qui replace dcode_`dname1961' = "51" if `iso1961' == "UP" & inlist(`dname1961', "garhwal")
    qui replace dcode_`dname1961' = "52" if `iso1961' == "UP" & inlist(`dname1961', "almora", "almorah")
    qui replace dcode_`dname1961' = "53" if `iso1961' == "UP" & inlist(`dname1961', "nainital")
    qui replace dcode_`dname1961' = "54" if `iso1961' == "UP" & inlist(`dname1961', "dehradun")

*===============================================================================

    * west bengal
    qui replace dcode_`dname1961' = "01" if `iso1961' == "WB" & inlist(`dname1961', "darjeeling", "darjiling")
    qui replace dcode_`dname1961' = "02" if `iso1961' == "WB" & inlist(`dname1961', "jalpaiguri")
    qui replace dcode_`dname1961' = "03" if `iso1961' == "WB" & inlist(`dname1961', "coochbehar", "koch-bihar")
    qui replace dcode_`dname1961' = "04" if `iso1961' == "WB" & inlist(`dname1961', "westdinajpur")
    qui replace dcode_`dname1961' = "05" if `iso1961' == "WB" & inlist(`dname1961', "malda", "maldah")
    qui replace dcode_`dname1961' = "06" if `iso1961' == "WB" & inlist(`dname1961', "murshidabad")
    qui replace dcode_`dname1961' = "07" if `iso1961' == "WB" & inlist(`dname1961', "nadia")
    qui replace dcode_`dname1961' = "08" if `iso1961' == "WB" & inlist(`dname1961', "twentyfourparganas", "twetyfourparganas", "24parganas")
    qui replace dcode_`dname1961' = "09" if `iso1961' == "WB" & inlist(`dname1961', "calcutta")
    qui replace dcode_`dname1961' = "10" if `iso1961' == "WB" & inlist(`dname1961', "howrah", "haora")
    qui replace dcode_`dname1961' = "11" if `iso1961' == "WB" & inlist(`dname1961', "hooghly", "hugli")
    qui replace dcode_`dname1961' = "12" if `iso1961' == "WB" & inlist(`dname1961', "burdwan", "barddhaman")
    qui replace dcode_`dname1961' = "13" if `iso1961' == "WB" & inlist(`dname1961', "birbhum")
    qui replace dcode_`dname1961' = "14" if `iso1961' == "WB" & inlist(`dname1961', "bankura")
    qui replace dcode_`dname1961' = "15" if `iso1961' == "WB" & inlist(`dname1961', "midnapore", "medinipur", "midnapur")
    qui replace dcode_`dname1961' = "16" if `iso1961' == "WB" & inlist(`dname1961', "purulia", "puruliya")


*===============================================================================
end

*-------------------------------------------------------------------------------
* 1971
*-------------------------------------------------------------------------------
capture program drop dcode1971
program define dcode1971

* store input into macros
local dname1971 `1'
local iso1971 `2'

*===============================================================================

    * andaman nicobar islands
    replace dcode_`dname1971' = "01" if `iso1971' == "AN" & inlist(`dname1971', "andamannicobarislands")

*===============================================================================

    * andhra pradesh
    replace dcode_`dname1971' = "01" if `iso1971' == "AP" & inlist(`dname1971', "srikakulam")
    replace dcode_`dname1971' = "02" if `iso1971' == "AP" & inlist(`dname1971', "visakhapatnam")
    replace dcode_`dname1971' = "03" if `iso1971' == "AP" & inlist(`dname1971', "east godavari")
    replace dcode_`dname1971' = "04" if `iso1971' == "AP" & inlist(`dname1971', "west godavari")
    replace dcode_`dname1971' = "05" if `iso1971' == "AP" & inlist(`dname1971', "krishna")
    replace dcode_`dname1971' = "06" if `iso1971' == "AP" & inlist(`dname1971', "guntur")
    replace dcode_`dname1971' = "07" if `iso1971' == "AP" & inlist(`dname1971', "nellore")
    replace dcode_`dname1971' = "08" if `iso1971' == "AP" & inlist(`dname1971', "ongole")
    replace dcode_`dname1971' = "09" if `iso1971' == "AP" & inlist(`dname1971', "chittoor")
    replace dcode_`dname1971' = "10" if `iso1971' == "AP" & inlist(`dname1971', "cuddapah")
    replace dcode_`dname1971' = "11" if `iso1971' == "AP" & inlist(`dname1971', "anantapur")
    replace dcode_`dname1971' = "12" if `iso1971' == "AP" & inlist(`dname1971', "kurnool")
    replace dcode_`dname1971' = "13" if `iso1971' == "AP" & inlist(`dname1971', "mahbubnagar")
    replace dcode_`dname1971' = "14" if `iso1971' == "AP" & inlist(`dname1971', "hyderabad")
    replace dcode_`dname1971' = "15" if `iso1971' == "AP" & inlist(`dname1971', "medak")
    replace dcode_`dname1971' = "16" if `iso1971' == "AP" & inlist(`dname1971', "nizamabad")
    replace dcode_`dname1971' = "17" if `iso1971' == "AP" & inlist(`dname1971', "adilabad")
    replace dcode_`dname1971' = "18" if `iso1971' == "AP" & inlist(`dname1971', "karimnagar")
    replace dcode_`dname1971' = "19" if `iso1971' == "AP" & inlist(`dname1971', "warangal")
    replace dcode_`dname1971' = "20" if `iso1971' == "AP" & inlist(`dname1971', "khammam")
    replace dcode_`dname1971' = "21" if `iso1971' == "AP" & inlist(`dname1971', "nalgonda")

*===============================================================================

    * assam
    replace dcode_`dname1971' = "01" if `iso1971' == "AS" & inlist(`dname1971', "goalpara")
    replace dcode_`dname1971' = "02" if `iso1971' == "AS" & inlist(`dname1971', "kamrup")
    replace dcode_`dname1971' = "03" if `iso1971' == "AS" & inlist(`dname1971', "darrang")
    replace dcode_`dname1971' = "04" if `iso1971' == "AS" & inlist(`dname1971', "lakhimpur")
    replace dcode_`dname1971' = "05" if `iso1971' == "AS" & inlist(`dname1971', "nowgong")
    replace dcode_`dname1971' = "06" if `iso1971' == "AS" & inlist(`dname1971', "sibsagar")
    replace dcode_`dname1971' = "07" if `iso1971' == "AS" & inlist(`dname1971', "cachar")
    replace dcode_`dname1971' = "08" if `iso1971' == "AS" & inlist(`dname1971', "mikir hills")
    replace dcode_`dname1971' = "09" if `iso1971' == "AS" & inlist(`dname1971', "north cachar hills")

*===============================================================================

    * bihar
    replace dcode_`dname1971' = "01" if `iso1971' == "BR" & inlist(`dname1971', "bhagalpur")
    replace dcode_`dname1971' = "02" if `iso1971' == "BR" & inlist(`dname1971', "champaran")
    replace dcode_`dname1971' = "03" if `iso1971' == "BR" & inlist(`dname1971', "darbhanga")
    replace dcode_`dname1971' = "04" if `iso1971' == "BR" & inlist(`dname1971', "dhanbad")
    replace dcode_`dname1971' = "05" if `iso1971' == "BR" & inlist(`dname1971', "gaya")
    replace dcode_`dname1971' = "06" if `iso1971' == "BR" & inlist(`dname1971', "hazaribag", "hazaribagh")
    replace dcode_`dname1971' = "07" if `iso1971' == "BR" & inlist(`dname1971', "monghyar", "monghyr", "munger")
    replace dcode_`dname1971' = "08" if `iso1971' == "BR" & inlist(`dname1971', "muzaffarpur")
    replace dcode_`dname1971' = "09" if `iso1971' == "BR" & inlist(`dname1971', "palamau")
    replace dcode_`dname1971' = "10" if `iso1971' == "BR" & inlist(`dname1971', "patna")
    replace dcode_`dname1971' = "11" if `iso1971' == "BR" & inlist(`dname1971', "purnia", "purnea")
    replace dcode_`dname1971' = "12" if `iso1971' == "BR" & inlist(`dname1971', "ranchi")
    replace dcode_`dname1971' = "13" if `iso1971' == "BR" & inlist(`dname1971', "saharsa")
    replace dcode_`dname1971' = "14" if `iso1971' == "BR" & inlist(`dname1971', "santhalparganas", "santalparganas")
    replace dcode_`dname1971' = "15" if `iso1971' == "BR" & inlist(`dname1971', "saran")
    replace dcode_`dname1971' = "16" if `iso1971' == "BR" & inlist(`dname1971', "shahabad")
    replace dcode_`dname1971' = "17" if `iso1971' == "BR" & inlist(`dname1971', "singhbhum")

*===============================================================================

    * chandigarh
    replace dcode_`dname1971' = "01" if `iso1971' == "CH" & inlist(`dname1971', "chandigarh")

*===============================================================================

    * dadra nagar haveli
    replace dcode_`dname1971' = "01" if `iso1971' == "DN" & inlist(`dname1971', "dadranagarhaveli")

*===============================================================================

    * delhi
    replace dcode_`dname1971' = "01" if `iso1971' == "DL" & inlist(`dname1971', "delhi")

*===============================================================================

    * goa daman diu
    replace dcode_`dname1971' = "01" if `iso1971' == "DG" & inlist(`dname1971', "daman")
    replace dcode_`dname1971' = "02" if `iso1971' == "DG" & inlist(`dname1971', "diu")
    replace dcode_`dname1971' = "03" if `iso1971' == "DG" & inlist(`dname1971', "goa")

*===============================================================================

    * gujarat
    replace dcode_`dname1971' = "01" if `iso1971' == "GJ" & inlist(`dname1971', "ahmedabad")
    replace dcode_`dname1971' = "02" if `iso1971' == "GJ" & inlist(`dname1971', "gandhinagar")
    replace dcode_`dname1971' = "03" if `iso1971' == "GJ" & inlist(`dname1971', "amreli")
    replace dcode_`dname1971' = "04" if `iso1971' == "GJ" & inlist(`dname1971', "banaskantha")
    replace dcode_`dname1971' = "05" if `iso1971' == "GJ" & inlist(`dname1971', "baroda")
    replace dcode_`dname1971' = "06" if `iso1971' == "GJ" & inlist(`dname1971', "bhavnagar")
    replace dcode_`dname1971' = "07" if `iso1971' == "GJ" & inlist(`dname1971', "broach")
    replace dcode_`dname1971' = "08" if `iso1971' == "GJ" & inlist(`dname1971', "thedangs")
    replace dcode_`dname1971' = "09" if `iso1971' == "GJ" & inlist(`dname1971', "jamnagar")
    replace dcode_`dname1971' = "10" if `iso1971' == "GJ" & inlist(`dname1971', "junagadh")
    replace dcode_`dname1971' = "11" if `iso1971' == "GJ" & inlist(`dname1971', "kheda")
    replace dcode_`dname1971' = "12" if `iso1971' == "GJ" & inlist(`dname1971', "kutch")
    replace dcode_`dname1971' = "13" if `iso1971' == "GJ" & inlist(`dname1971', "mehsana")
    replace dcode_`dname1971' = "14" if `iso1971' == "GJ" & inlist(`dname1971', "panchmahals")
    replace dcode_`dname1971' = "15" if `iso1971' == "GJ" & inlist(`dname1971', "rajkot")
    replace dcode_`dname1971' = "16" if `iso1971' == "GJ" & inlist(`dname1971', "sabarkantha")
    replace dcode_`dname1971' = "17" if `iso1971' == "GJ" & inlist(`dname1971', "surat")
    replace dcode_`dname1971' = "18" if `iso1971' == "GJ" & inlist(`dname1971', "valsad")
    replace dcode_`dname1971' = "19" if `iso1971' == "GJ" & inlist(`dname1971', "surendranagar")

*===============================================================================

    * haryana
    replace dcode_`dname1971' = "01" if `iso1971' == "HR" & inlist(`dname1971', "ambala")
    replace dcode_`dname1971' = "02" if `iso1971' == "HR" & inlist(`dname1971', "gurgaon")
    replace dcode_`dname1971' = "03" if `iso1971' == "HR" & inlist(`dname1971', "hisar")
    replace dcode_`dname1971' = "04" if `iso1971' == "HR" & inlist(`dname1971', "karnal")
    replace dcode_`dname1971' = "05" if `iso1971' == "HR" & inlist(`dname1971', "mahendragarh")
    replace dcode_`dname1971' = "06" if `iso1971' == "HR" & inlist(`dname1971', "rohtak")
    replace dcode_`dname1971' = "07" if `iso1971' == "HR" & inlist(`dname1971', "jind")

*===============================================================================

    * himachal pradesh
    replace dcode_`dname1971' = "01" if `iso1971' == "HP" & inlist(`dname1971', "bilaspur")
    replace dcode_`dname1971' = "02" if `iso1971' == "HP" & inlist(`dname1971', "champa", "chamba")
    replace dcode_`dname1971' = "03" if `iso1971' == "HP" & inlist(`dname1971', "kinnaur")
    replace dcode_`dname1971' = "04" if `iso1971' == "HP" & inlist(`dname1971', "mahasu")
    replace dcode_`dname1971' = "05" if `iso1971' == "HP" & inlist(`dname1971', "mandi")
    replace dcode_`dname1971' = "06" if `iso1971' == "HP" & inlist(`dname1971', "sirmaur")
    replace dcode_`dname1971' = "07" if `iso1971' == "HP" & inlist(`dname1971', "kangara", "kangra")
    replace dcode_`dname1971' = "08" if `iso1971' == "HP" & inlist(`dname1971', "kulu")
    replace dcode_`dname1971' = "09" if `iso1971' == "HP" & inlist(`dname1971', "una")
    replace dcode_`dname1971' = "10" if `iso1971' == "HP" & inlist(`dname1971', "lahaulspiti", "lahulspiti", "lahul&spiti", "lahaul&spiti")
    replace dcode_`dname1971' = "11" if `iso1971' == "HP" & inlist(`dname1971', "simla")
    replace dcode_`dname1971' = "12" if `iso1971' == "HP" & inlist(`dname1971', "solan")

*===============================================================================

    * jammu & kashmir
    replace dcode_`dname1971' = "01" if `iso1971' == "JK" & inlist(`dname1971', "anantnag")
    replace dcode_`dname1971' = "02" if `iso1971' == "JK" & inlist(`dname1971', "baramulla", "baramula")
    replace dcode_`dname1971' = "03" if `iso1971' == "JK" & inlist(`dname1971', "doda")
    replace dcode_`dname1971' = "04" if `iso1971' == "JK" & inlist(`dname1971', "jammu")
    replace dcode_`dname1971' = "05" if `iso1971' == "JK" & inlist(`dname1971', "kathua")
    replace dcode_`dname1971' = "06" if `iso1971' == "JK" & inlist(`dname1971', "ladakh")
    replace dcode_`dname1971' = "07" if `iso1971' == "JK" & inlist(`dname1971', "punch", "poonch")
    replace dcode_`dname1971' = "08" if `iso1971' == "JK" & inlist(`dname1971', "rajauri")
    replace dcode_`dname1971' = "09" if `iso1971' == "JK" & inlist(`dname1971', "srinagar")
    replace dcode_`dname1971' = "10" if `iso1971' == "JK" & inlist(`dname1971', "udhampur")

*===============================================================================

    * kerala
    replace dcode_`dname1971' = "01" if `iso1971' == "KL" & inlist(`dname1971', "alleppey")
    replace dcode_`dname1971' = "02" if `iso1971' == "KL" & inlist(`dname1971', "cannanore")
    replace dcode_`dname1971' = "03" if `iso1971' == "KL" & inlist(`dname1971', "ernakulam")
    replace dcode_`dname1971' = "04" if `iso1971' == "KL" & inlist(`dname1971', "kottayam")
    replace dcode_`dname1971' = "05" if `iso1971' == "KL" & inlist(`dname1971', "kozhikode")
    replace dcode_`dname1971' = "06" if `iso1971' == "KL" & inlist(`dname1971', "malappuram", "mallapuram")
    replace dcode_`dname1971' = "07" if `iso1971' == "KL" & inlist(`dname1971', "palghat")
    replace dcode_`dname1971' = "08" if `iso1971' == "KL" & inlist(`dname1971', "quilon")
    replace dcode_`dname1971' = "09" if `iso1971' == "KL" & inlist(`dname1971', "richur", "trichur")
    replace dcode_`dname1971' = "10" if `iso1971' == "KL" & inlist(`dname1971', "trivandrum")

*===============================================================================

    * lakshadweep
    replace dcode_`dname1971' = "01" if `iso1971' == "LD" & inlist(`dname1971', "laccadive", "laccadiveminicoyamindiviislands")

*===============================================================================

    * madhya pradesh
    replace dcode_`dname1971' = "01" if `iso1971' == "MP" & inlist(`dname1971', "balaghat")
    replace dcode_`dname1971' = "02" if `iso1971' == "MP" & inlist(`dname1971', "bastar")
    replace dcode_`dname1971' = "03" if `iso1971' == "MP" & inlist(`dname1971', "betul")
    replace dcode_`dname1971' = "04" if `iso1971' == "MP" & inlist(`dname1971', "bhind")
    replace dcode_`dname1971' = "05" if `iso1971' == "MP" & inlist(`dname1971', "bilaspur")
    replace dcode_`dname1971' = "06" if `iso1971' == "MP" & inlist(`dname1971', "chhatarpur")
    replace dcode_`dname1971' = "07" if `iso1971' == "MP" & inlist(`dname1971', "chhindwara")
    replace dcode_`dname1971' = "08" if `iso1971' == "MP" & inlist(`dname1971', "damoh")
    replace dcode_`dname1971' = "09" if `iso1971' == "MP" & inlist(`dname1971', "datia")
    replace dcode_`dname1971' = "10" if `iso1971' == "MP" & inlist(`dname1971', "dewas")
    replace dcode_`dname1971' = "11" if `iso1971' == "MP" & inlist(`dname1971', "dhar")
    replace dcode_`dname1971' = "12" if `iso1971' == "MP" & inlist(`dname1971', "durg")
    replace dcode_`dname1971' = "13" if `iso1971' == "MP" & inlist(`dname1971', "khandwa")
    replace dcode_`dname1971' = "14" if `iso1971' == "MP" & inlist(`dname1971', "guna")
    replace dcode_`dname1971' = "15" if `iso1971' == "MP" & inlist(`dname1971', "gwalior")
    replace dcode_`dname1971' = "16" if `iso1971' == "MP" & inlist(`dname1971', "hoshangabad")
    replace dcode_`dname1971' = "17" if `iso1971' == "MP" & inlist(`dname1971', "indore")
    replace dcode_`dname1971' = "18" if `iso1971' == "MP" & inlist(`dname1971', "jabalpur")
    replace dcode_`dname1971' = "19" if `iso1971' == "MP" & inlist(`dname1971', "jhabua")
    replace dcode_`dname1971' = "20" if `iso1971' == "MP" & inlist(`dname1971', "mandla")
    replace dcode_`dname1971' = "21" if `iso1971' == "MP" & inlist(`dname1971', "mandsaur")
    replace dcode_`dname1971' = "22" if `iso1971' == "MP" & inlist(`dname1971', "morena")
    replace dcode_`dname1971' = "23" if `iso1971' == "MP" & inlist(`dname1971', "narsimhapur")
    replace dcode_`dname1971' = "24" if `iso1971' == "MP" & inlist(`dname1971', "panna")
    replace dcode_`dname1971' = "25" if `iso1971' == "MP" & inlist(`dname1971', "raigarh")
    replace dcode_`dname1971' = "26" if `iso1971' == "MP" & inlist(`dname1971', "raipur")
    replace dcode_`dname1971' = "27" if `iso1971' == "MP" & inlist(`dname1971', "raisen")
    replace dcode_`dname1971' = "28" if `iso1971' == "MP" & inlist(`dname1971', "rajgarh")
    replace dcode_`dname1971' = "29" if `iso1971' == "MP" & inlist(`dname1971', "ratlam")
    replace dcode_`dname1971' = "30" if `iso1971' == "MP" & inlist(`dname1971', "rewa")
    replace dcode_`dname1971' = "31" if `iso1971' == "MP" & inlist(`dname1971', "sagar")
    replace dcode_`dname1971' = "32" if `iso1971' == "MP" & inlist(`dname1971', "satna")
    replace dcode_`dname1971' = "33" if `iso1971' == "MP" & inlist(`dname1971', "sehore")
    replace dcode_`dname1971' = "34" if `iso1971' == "MP" & inlist(`dname1971', "seoni")
    replace dcode_`dname1971' = "35" if `iso1971' == "MP" & inlist(`dname1971', "shahdol")
    replace dcode_`dname1971' = "36" if `iso1971' == "MP" & inlist(`dname1971', "shajapur")
    replace dcode_`dname1971' = "37" if `iso1971' == "MP" & inlist(`dname1971', "shivpuri")
    replace dcode_`dname1971' = "38" if `iso1971' == "MP" & inlist(`dname1971', "sidhi")
    replace dcode_`dname1971' = "39" if `iso1971' == "MP" & inlist(`dname1971', "surguja")
    replace dcode_`dname1971' = "40" if `iso1971' == "MP" & inlist(`dname1971', "tikamgarh")
    replace dcode_`dname1971' = "41" if `iso1971' == "MP" & inlist(`dname1971', "ujjain")
    replace dcode_`dname1971' = "42" if `iso1971' == "MP" & inlist(`dname1971', "vidisha")
    replace dcode_`dname1971' = "43" if `iso1971' == "MP" & inlist(`dname1971', "khargone")

*===============================================================================

    * tamil nadu
    replace dcode_`dname1971' = "01" if `iso1971' == "TN" & inlist(`dname1971', "chingleput")
    replace dcode_`dname1971' = "02" if `iso1971' == "TN" & inlist(`dname1971', "coimbatore")
    replace dcode_`dname1971' = "03" if `iso1971' == "TN" & inlist(`dname1971', "kanyakumari")
    replace dcode_`dname1971' = "04" if `iso1971' == "TN" & inlist(`dname1971', "madras")
    replace dcode_`dname1971' = "05" if `iso1971' == "TN" & inlist(`dname1971', "madurai")
    replace dcode_`dname1971' = "06" if `iso1971' == "TN" & inlist(`dname1971', "nilgiri", "nilgiris")
    replace dcode_`dname1971' = "07" if `iso1971' == "TN" & inlist(`dname1971', "northarcot")
    replace dcode_`dname1971' = "08" if `iso1971' == "TN" & inlist(`dname1971', "ramanathapuram")
    replace dcode_`dname1971' = "09" if `iso1971' == "TN" & inlist(`dname1971', "salem")
    replace dcode_`dname1971' = "10" if `iso1971' == "TN" & inlist(`dname1971', "dharmapuri")
    replace dcode_`dname1971' = "11" if `iso1971' == "TN" & inlist(`dname1971', "southarcot")
    replace dcode_`dname1971' = "12" if `iso1971' == "TN" & inlist(`dname1971', "thanjavur")
    replace dcode_`dname1971' = "13" if `iso1971' == "TN" & inlist(`dname1971', "tiruchirapalli")
    replace dcode_`dname1971' = "14" if `iso1971' == "TN" & inlist(`dname1971', "tirunelveli", "t")

*===============================================================================

    * maharashtra
    replace dcode_`dname1971' = "01" if `iso1971' == "MH" & inlist(`dname1971', "ahmednagar", "ahmadnagar")
    replace dcode_`dname1971' = "02" if `iso1971' == "MH" & inlist(`dname1971', "akola")
    replace dcode_`dname1971' = "03" if `iso1971' == "MH" & inlist(`dname1971', "amravati")
    replace dcode_`dname1971' = "04" if `iso1971' == "MH" & inlist(`dname1971', "aurangabad")
    replace dcode_`dname1971' = "05" if `iso1971' == "MH" & inlist(`dname1971', "bhandara")
    replace dcode_`dname1971' = "06" if `iso1971' == "MH" & inlist(`dname1971', "bhir")
    replace dcode_`dname1971' = "07" if `iso1971' == "MH" & inlist(`dname1971', "buldhana")
    replace dcode_`dname1971' = "08" if `iso1971' == "MH" & inlist(`dname1971', "chandrapur", "chanda")
    replace dcode_`dname1971' = "09" if `iso1971' == "MH" & inlist(`dname1971', "dhulia")
    replace dcode_`dname1971' = "10" if `iso1971' == "MH" & inlist(`dname1971', "greaterbombay")
    replace dcode_`dname1971' = "11" if `iso1971' == "MH" & inlist(`dname1971', "jalgaon")
    replace dcode_`dname1971' = "12" if `iso1971' == "MH" & inlist(`dname1971', "kolaba")
    replace dcode_`dname1971' = "13" if `iso1971' == "MH" & inlist(`dname1971', "kolhapur")
    replace dcode_`dname1971' = "14" if `iso1971' == "MH" & inlist(`dname1971', "nagpur")
    replace dcode_`dname1971' = "15" if `iso1971' == "MH" & inlist(`dname1971', "nanded")
    replace dcode_`dname1971' = "16" if `iso1971' == "MH" & inlist(`dname1971', "nasik")
    replace dcode_`dname1971' = "17" if `iso1971' == "MH" & inlist(`dname1971', "osmanabad")
    replace dcode_`dname1971' = "18" if `iso1971' == "MH" & inlist(`dname1971', "parbhani")
    replace dcode_`dname1971' = "19" if `iso1971' == "MH" & inlist(`dname1971', "poona")
    replace dcode_`dname1971' = "20" if `iso1971' == "MH" & inlist(`dname1971', "ratnagiri")
    replace dcode_`dname1971' = "21" if `iso1971' == "MH" & inlist(`dname1971', "sangli")
    replace dcode_`dname1971' = "22" if `iso1971' == "MH" & inlist(`dname1971', "satara")
    replace dcode_`dname1971' = "23" if `iso1971' == "MH" & inlist(`dname1971', "sholapur")
    replace dcode_`dname1971' = "24" if `iso1971' == "MH" & inlist(`dname1971', "thana")
    replace dcode_`dname1971' = "25" if `iso1971' == "MH" & inlist(`dname1971', "wardha")
    replace dcode_`dname1971' = "26" if `iso1971' == "MH" & inlist(`dname1971', "yeotmal")

*===============================================================================

    * manipur
    replace dcode_`dname1971' = "01" if `iso1971' == "MN" & inlist(`dname1971', "manipur central")
    replace dcode_`dname1971' = "02" if `iso1971' == "MN" & inlist(`dname1971', "manipur east")
    replace dcode_`dname1971' = "03" if `iso1971' == "MN" & inlist(`dname1971', "manipur north")
    replace dcode_`dname1971' = "04" if `iso1971' == "MN" & inlist(`dname1971', "manipur south")
    replace dcode_`dname1971' = "05" if `iso1971' == "MN" & inlist(`dname1971', "manipur west")

*===============================================================================

    * meghalaya
    replace dcode_`dname1971' = "01" if `iso1971' == "ML" & inlist(`dname1971', "garo hills")
    replace dcode_`dname1971' = "02" if `iso1971' == "ML" & inlist(`dname1971', "united khasi jaintia hills")


*===============================================================================

    * mizoram
    replace dcode_`dname1971' = "01" if `iso1971' == "MZ" & inlist(`dname1971', "mizohills", "mizoram")

*===============================================================================

    * mysore
    replace dcode_`dname1971' = "01" if `iso1971' == "KA" & inlist(`dname1971', "bangalore")
    replace dcode_`dname1971' = "02" if `iso1971' == "KA" & inlist(`dname1971', "belgaon", "belgaum")
    replace dcode_`dname1971' = "03" if `iso1971' == "KA" & inlist(`dname1971', "bellary")
    replace dcode_`dname1971' = "04" if `iso1971' == "KA" & inlist(`dname1971', "bidar")
    replace dcode_`dname1971' = "05" if `iso1971' == "KA" & inlist(`dname1971', "bijapur")
    replace dcode_`dname1971' = "06" if `iso1971' == "KA" & inlist(`dname1971', "chikmagalur")
    replace dcode_`dname1971' = "07" if `iso1971' == "KA" & inlist(`dname1971', "chitradurga")
    replace dcode_`dname1971' = "08" if `iso1971' == "KA" & inlist(`dname1971', "coorg")
    replace dcode_`dname1971' = "09" if `iso1971' == "KA" & inlist(`dname1971', "dharwad", "dharwar")
    replace dcode_`dname1971' = "10" if `iso1971' == "KA" & inlist(`dname1971', "gulbarga")
    replace dcode_`dname1971' = "11" if `iso1971' == "KA" & inlist(`dname1971', "hassan")
    replace dcode_`dname1971' = "12" if `iso1971' == "KA" & inlist(`dname1971', "kolar")
    replace dcode_`dname1971' = "13" if `iso1971' == "KA" & inlist(`dname1971', "mandya")
    replace dcode_`dname1971' = "14" if `iso1971' == "KA" & inlist(`dname1971', "mysore")
    replace dcode_`dname1971' = "15" if `iso1971' == "KA" & inlist(`dname1971', "northkanara")
    replace dcode_`dname1971' = "16" if `iso1971' == "KA" & inlist(`dname1971', "raichur")
    replace dcode_`dname1971' = "17" if `iso1971' == "KA" & inlist(`dname1971', "shimoga")
    replace dcode_`dname1971' = "18" if `iso1971' == "KA" & inlist(`dname1971', "southkanara")
    replace dcode_`dname1971' = "19" if `iso1971' == "KA" & inlist(`dname1971', "tumkur")

*===============================================================================

    * nagaland
    replace dcode_`dname1971' = "01" if `iso1971' == "NL" & inlist(`dname1971', "kohima")
    replace dcode_`dname1971' = "02" if `iso1971' == "NL" & inlist(`dname1971', "mokokchung")
    replace dcode_`dname1971' = "03" if `iso1971' == "NL" & inlist(`dname1971', "tuensang")

*===============================================================================

    * arunachal pradesh
    replace dcode_`dname1971' = "01" if `iso1971' == "AR" & inlist(`dname1971', "kameng")
    replace dcode_`dname1971' = "02" if `iso1971' == "AR" & inlist(`dname1971', "lohit")
    replace dcode_`dname1971' = "03" if `iso1971' == "AR" & inlist(`dname1971', "siang")
    replace dcode_`dname1971' = "04" if `iso1971' == "AR" & inlist(`dname1971', "subansiri")
    replace dcode_`dname1971' = "05" if `iso1971' == "AR" & inlist(`dname1971', "tirap")

*===============================================================================

    * orissa
    replace dcode_`dname1971' = "01" if `iso1971' == "OR" & inlist(`dname1971', "balasore")
    replace dcode_`dname1971' = "02" if `iso1971' == "OR" & inlist(`dname1971', "baudhkhondmals")
    replace dcode_`dname1971' = "03" if `iso1971' == "OR" & inlist(`dname1971', "bolangir")
    replace dcode_`dname1971' = "04" if `iso1971' == "OR" & inlist(`dname1971', "cuttack")
    replace dcode_`dname1971' = "05" if `iso1971' == "OR" & inlist(`dname1971', "dhenkanal")
    replace dcode_`dname1971' = "06" if `iso1971' == "OR" & inlist(`dname1971', "ganjam")
    replace dcode_`dname1971' = "07" if `iso1971' == "OR" & inlist(`dname1971', "kalahandi")
    replace dcode_`dname1971' = "08" if `iso1971' == "OR" & inlist(`dname1971', "keonjhar")
    replace dcode_`dname1971' = "09" if `iso1971' == "OR" & inlist(`dname1971', "koraput")
    replace dcode_`dname1971' = "10" if `iso1971' == "OR" & inlist(`dname1971', "mayurbhanj")
    replace dcode_`dname1971' = "11" if `iso1971' == "OR" & inlist(`dname1971', "puri", "purl")
    replace dcode_`dname1971' = "12" if `iso1971' == "OR" & inlist(`dname1971', "sambalpur")
    replace dcode_`dname1971' = "13" if `iso1971' == "OR" & inlist(`dname1971', "sundargarh")

*===============================================================================

    * pondicherry
    replace dcode_`dname1971' = "01" if `iso1971' == "PY" & inlist(`dname1971', "karaikal")
    replace dcode_`dname1971' = "02" if `iso1971' == "PY" & inlist(`dname1971', "mahe")
    replace dcode_`dname1971' = "03" if `iso1971' == "PY" & inlist(`dname1971', "pondicherry")
    replace dcode_`dname1971' = "04" if `iso1971' == "PY" & inlist(`dname1971', "yanam")

*===============================================================================

    * punjab
    replace dcode_`dname1971' = "01" if `iso1971' == "PB" & inlist(`dname1971', "amritsar")
    replace dcode_`dname1971' = "02" if `iso1971' == "PB" & inlist(`dname1971', "bhatinda")
    replace dcode_`dname1971' = "03" if `iso1971' == "PB" & inlist(`dname1971', "firozpur")
    replace dcode_`dname1971' = "04" if `iso1971' == "PB" & inlist(`dname1971', "gurdaspur")
    replace dcode_`dname1971' = "05" if `iso1971' == "PB" & inlist(`dname1971', "hoshiarpur")
    replace dcode_`dname1971' = "06" if `iso1971' == "PB" & inlist(`dname1971', "jullundur")
    replace dcode_`dname1971' = "07" if `iso1971' == "PB" & inlist(`dname1971', "kapurthala")
    replace dcode_`dname1971' = "08" if `iso1971' == "PB" & inlist(`dname1971', "ludhiana")
    replace dcode_`dname1971' = "09" if `iso1971' == "PB" & inlist(`dname1971', "patiala")
    replace dcode_`dname1971' = "10" if `iso1971' == "PB" & inlist(`dname1971', "ropar")
    replace dcode_`dname1971' = "11" if `iso1971' == "PB" & inlist(`dname1971', "sangrur")

*===============================================================================

    * rajasthan
    replace dcode_`dname1971' = "01" if `iso1971' == "RJ" & inlist(`dname1971', "ajmer")
    replace dcode_`dname1971' = "02" if `iso1971' == "RJ" & inlist(`dname1971', "alwar")
    replace dcode_`dname1971' = "03" if `iso1971' == "RJ" & inlist(`dname1971', "banswara")
    replace dcode_`dname1971' = "04" if `iso1971' == "RJ" & inlist(`dname1971', "barmer")
    replace dcode_`dname1971' = "05" if `iso1971' == "RJ" & inlist(`dname1971', "bharatpur")
    replace dcode_`dname1971' = "06" if `iso1971' == "RJ" & inlist(`dname1971', "bhilwara", "bhilwar")
    replace dcode_`dname1971' = "07" if `iso1971' == "RJ" & inlist(`dname1971', "bikaner")
    replace dcode_`dname1971' = "08" if `iso1971' == "RJ" & inlist(`dname1971', "bundi")
    replace dcode_`dname1971' = "09" if `iso1971' == "RJ" & inlist(`dname1971', "chittaurgarh", "chitorgarh")
    replace dcode_`dname1971' = "10" if `iso1971' == "RJ" & inlist(`dname1971', "churu")
    replace dcode_`dname1971' = "11" if `iso1971' == "RJ" & inlist(`dname1971', "dungarpur")
    replace dcode_`dname1971' = "12" if `iso1971' == "RJ" & inlist(`dname1971', "ganganagar")
    replace dcode_`dname1971' = "13" if `iso1971' == "RJ" & inlist(`dname1971', "jaipur")
    replace dcode_`dname1971' = "14" if `iso1971' == "RJ" & inlist(`dname1971', "jaisalmer")
    replace dcode_`dname1971' = "15" if `iso1971' == "RJ" & inlist(`dname1971', "jalor")
    replace dcode_`dname1971' = "16" if `iso1971' == "RJ" & inlist(`dname1971', "jhalawar")
    replace dcode_`dname1971' = "17" if `iso1971' == "RJ" & inlist(`dname1971', "jhunjhunun", "jhunjhunu")
    replace dcode_`dname1971' = "18" if `iso1971' == "RJ" & inlist(`dname1971', "jodhpur")
    replace dcode_`dname1971' = "19" if `iso1971' == "RJ" & inlist(`dname1971', "kota")
    replace dcode_`dname1971' = "20" if `iso1971' == "RJ" & inlist(`dname1971', "nagaur")
    replace dcode_`dname1971' = "21" if `iso1971' == "RJ" & inlist(`dname1971', "pali", "pall")
    replace dcode_`dname1971' = "22" if `iso1971' == "RJ" & inlist(`dname1971', "sawaimadhopur")
    replace dcode_`dname1971' = "23" if `iso1971' == "RJ" & inlist(`dname1971', "sikar")
    replace dcode_`dname1971' = "24" if `iso1971' == "RJ" & inlist(`dname1971', "sirohi")
    replace dcode_`dname1971' = "25" if `iso1971' == "RJ" & inlist(`dname1971', "tonk")
    replace dcode_`dname1971' = "26" if `iso1971' == "RJ" & inlist(`dname1971', "udaipur")

*===============================================================================

    * sikkim
    replace dcode_`dname1971' = "01" if `iso1971' == "SK" & inlist(`dname1971', "sikkim")

*===============================================================================

    * tripura
    replace dcode_`dname1971' = "01" if `iso1971' == "TR" & inlist(`dname1971', "north tripura")
    replace dcode_`dname1971' = "02" if `iso1971' == "TR" & inlist(`dname1971', "south tripura")
    replace dcode_`dname1971' = "03" if `iso1971' == "TR" & inlist(`dname1971', "west tripura")

*===============================================================================

    * uttar pradesh
    replace dcode_`dname1971' = "01" if `iso1971' == "UP" & inlist(`dname1971', "agra")
    replace dcode_`dname1971' = "02" if `iso1971' == "UP" & inlist(`dname1971', "aligarh")
    replace dcode_`dname1971' = "03" if `iso1971' == "UP" & inlist(`dname1971', "allahabad")
    replace dcode_`dname1971' = "04" if `iso1971' == "UP" & inlist(`dname1971', "almora")
    replace dcode_`dname1971' = "05" if `iso1971' == "UP" & inlist(`dname1971', "azamgarh")
    replace dcode_`dname1971' = "06" if `iso1971' == "UP" & inlist(`dname1971', "bahraich")
    replace dcode_`dname1971' = "07" if `iso1971' == "UP" & inlist(`dname1971', "ballia")
    replace dcode_`dname1971' = "08" if `iso1971' == "UP" & inlist(`dname1971', "banda")
    replace dcode_`dname1971' = "09" if `iso1971' == "UP" & inlist(`dname1971', "barabanki")
    replace dcode_`dname1971' = "10" if `iso1971' == "UP" & inlist(`dname1971', "bareilly")
    replace dcode_`dname1971' = "11" if `iso1971' == "UP" & inlist(`dname1971', "basti")
    replace dcode_`dname1971' = "12" if `iso1971' == "UP" & inlist(`dname1971', "bijnor")
    replace dcode_`dname1971' = "13" if `iso1971' == "UP" & inlist(`dname1971', "moradabad")
    replace dcode_`dname1971' = "14" if `iso1971' == "UP" & inlist(`dname1971', "budaun")
    replace dcode_`dname1971' = "15" if `iso1971' == "UP" & inlist(`dname1971', "bulandshahr")
    replace dcode_`dname1971' = "16" if `iso1971' == "UP" & inlist(`dname1971', "chamoli")
    replace dcode_`dname1971' = "17" if `iso1971' == "UP" & inlist(`dname1971', "dehradun")
    replace dcode_`dname1971' = "18" if `iso1971' == "UP" & inlist(`dname1971', "deoria")
    replace dcode_`dname1971' = "19" if `iso1971' == "UP" & inlist(`dname1971', "etah")
    replace dcode_`dname1971' = "20" if `iso1971' == "UP" & inlist(`dname1971', "etawah")
    replace dcode_`dname1971' = "21" if `iso1971' == "UP" & inlist(`dname1971', "faizabad")
    replace dcode_`dname1971' = "22" if `iso1971' == "UP" & inlist(`dname1971', "farrukhabad")
    replace dcode_`dname1971' = "23" if `iso1971' == "UP" & inlist(`dname1971', "fatehpur")
    replace dcode_`dname1971' = "24" if `iso1971' == "UP" & inlist(`dname1971', "garhwal")
    replace dcode_`dname1971' = "25" if `iso1971' == "UP" & inlist(`dname1971', "ghazipur")
    replace dcode_`dname1971' = "26" if `iso1971' == "UP" & inlist(`dname1971', "gonda")
    replace dcode_`dname1971' = "27" if `iso1971' == "UP" & inlist(`dname1971', "gorakhpur")
    replace dcode_`dname1971' = "28" if `iso1971' == "UP" & inlist(`dname1971', "hamirpur")
    replace dcode_`dname1971' = "29" if `iso1971' == "UP" & inlist(`dname1971', "hardoi")
    replace dcode_`dname1971' = "30" if `iso1971' == "UP" & inlist(`dname1971', "jalaun")
    replace dcode_`dname1971' = "31" if `iso1971' == "UP" & inlist(`dname1971', "jaunpur")
    replace dcode_`dname1971' = "32" if `iso1971' == "UP" & inlist(`dname1971', "jhansi")
    replace dcode_`dname1971' = "33" if `iso1971' == "UP" & inlist(`dname1971', "kanpur")
    replace dcode_`dname1971' = "34" if `iso1971' == "UP" & inlist(`dname1971', "kheri", "kherl")
    replace dcode_`dname1971' = "35" if `iso1971' == "UP" & inlist(`dname1971', "lucknow")
    replace dcode_`dname1971' = "36" if `iso1971' == "UP" & inlist(`dname1971', "mainpuri")
    replace dcode_`dname1971' = "37" if `iso1971' == "UP" & inlist(`dname1971', "mathura")
    replace dcode_`dname1971' = "38" if `iso1971' == "UP" & inlist(`dname1971', "meerut")
    replace dcode_`dname1971' = "39" if `iso1971' == "UP" & inlist(`dname1971', "mirzapur")
    replace dcode_`dname1971' = "40" if `iso1971' == "UP" & inlist(`dname1971', "moradabad")
    replace dcode_`dname1971' = "41" if `iso1971' == "UP" & inlist(`dname1971', "muzaffarnagar")
    replace dcode_`dname1971' = "42" if `iso1971' == "UP" & inlist(`dname1971', "nainital")
    replace dcode_`dname1971' = "43" if `iso1971' == "UP" & inlist(`dname1971', "pilibhit")
    replace dcode_`dname1971' = "44" if `iso1971' == "UP" & inlist(`dname1971', "pithoragarh")
    replace dcode_`dname1971' = "45" if `iso1971' == "UP" & inlist(`dname1971', "pratapgarh")
    replace dcode_`dname1971' = "46" if `iso1971' == "UP" & inlist(`dname1971', "raebareli")
    replace dcode_`dname1971' = "47" if `iso1971' == "UP" & inlist(`dname1971', "rampur")
    replace dcode_`dname1971' = "48" if `iso1971' == "UP" & inlist(`dname1971', "saharanpur")
    replace dcode_`dname1971' = "49" if `iso1971' == "UP" & inlist(`dname1971', "shahjahanpur")
    replace dcode_`dname1971' = "50" if `iso1971' == "UP" & inlist(`dname1971', "sitapur")
    replace dcode_`dname1971' = "51" if `iso1971' == "UP" & inlist(`dname1971', "sultanpur")
    replace dcode_`dname1971' = "52" if `iso1971' == "UP" & inlist(`dname1971', "tehrigarhwal")
    replace dcode_`dname1971' = "53" if `iso1971' == "UP" & inlist(`dname1971', "unnao")
    replace dcode_`dname1971' = "54" if `iso1971' == "UP" & inlist(`dname1971', "uttarkashi")
    replace dcode_`dname1971' = "55" if `iso1971' == "UP" & inlist(`dname1971', "varanasi")

*===============================================================================

    * west bengal
    replace dcode_`dname1971' = "01" if `iso1971' == "WB" & inlist(`dname1971', "bankura")
    replace dcode_`dname1971' = "02" if `iso1971' == "WB" & inlist(`dname1971', "birbhum")
    replace dcode_`dname1971' = "03" if `iso1971' == "WB" & inlist(`dname1971', "burdwan")
    replace dcode_`dname1971' = "04" if `iso1971' == "WB" & inlist(`dname1971', "calcutta")
    replace dcode_`dname1971' = "05" if `iso1971' == "WB" & inlist(`dname1971', "coochbehar", "cooch")
    replace dcode_`dname1971' = "06" if `iso1971' == "WB" & inlist(`dname1971', "darjeeling")
    replace dcode_`dname1971' = "07" if `iso1971' == "WB" & inlist(`dname1971', "hooghly")
    replace dcode_`dname1971' = "08" if `iso1971' == "WB" & inlist(`dname1971', "howrah")
    replace dcode_`dname1971' = "09" if `iso1971' == "WB" & inlist(`dname1971', "jalpaiguri")
    replace dcode_`dname1971' = "10" if `iso1971' == "WB" & inlist(`dname1971', "malda")
    replace dcode_`dname1971' = "11" if `iso1971' == "WB" & inlist(`dname1971', "midnapore")
    replace dcode_`dname1971' = "12" if `iso1971' == "WB" & inlist(`dname1971', "murshidabad")
    replace dcode_`dname1971' = "13" if `iso1971' == "WB" & inlist(`dname1971', "nadia")
    replace dcode_`dname1971' = "14" if `iso1971' == "WB" & inlist(`dname1971', "purulia")
    replace dcode_`dname1971' = "15" if `iso1971' == "WB" & inlist(`dname1971', "twentyfourparganas", "parganas", "24parganas", "24-paraganas", "twetyfourparganas")
    replace dcode_`dname1971' = "16" if `iso1971' == "WB" & inlist(`dname1971', "westdinajpur")


*===============================================================================
end

*-------------------------------------------------------------------------------
* 1981
*-------------------------------------------------------------------------------
capture program drop dcode1981
program define dcode1981

* store input into macros
local dname1981 `1'
local iso1981 `2'

*===============================================================================

    * andaman nicobar islands
    replace dcode_`dname1981' = "01" if `iso1981' == "AN" & inlist(`dname1981', "andaman")
    replace dcode_`dname1981' = "02" if `iso1981' == "AN" & inlist(`dname1981', "nicobar")

*===============================================================================

    * andhra pradesh
    replace dcode_`dname1981' = "01" if `iso1981' == "AP" & inlist(`dname1981', "srikakulam")
    replace dcode_`dname1981' = "02" if `iso1981' == "AP" & inlist(`dname1981', "vizianagaram")
    replace dcode_`dname1981' = "03" if `iso1981' == "AP" & inlist(`dname1981', "visakhapatnam")
    replace dcode_`dname1981' = "04" if `iso1981' == "AP" & inlist(`dname1981', "east godavari")
    replace dcode_`dname1981' = "05" if `iso1981' == "AP" & inlist(`dname1981', "west godavari")
    replace dcode_`dname1981' = "06" if `iso1981' == "AP" & inlist(`dname1981', "krishna")
    replace dcode_`dname1981' = "07" if `iso1981' == "AP" & inlist(`dname1981', "guntur")
    replace dcode_`dname1981' = "08" if `iso1981' == "AP" & inlist(`dname1981', "nellore")
    replace dcode_`dname1981' = "09" if `iso1981' == "AP" & inlist(`dname1981', "prakasam")
    replace dcode_`dname1981' = "10" if `iso1981' == "AP" & inlist(`dname1981', "chittoor")
    replace dcode_`dname1981' = "11" if `iso1981' == "AP" & inlist(`dname1981', "cuddapah")
    replace dcode_`dname1981' = "12" if `iso1981' == "AP" & inlist(`dname1981', "anantapur")
    replace dcode_`dname1981' = "13" if `iso1981' == "AP" & inlist(`dname1981', "kurnool")
    replace dcode_`dname1981' = "14" if `iso1981' == "AP" & inlist(`dname1981', "mahbubnagar")
    replace dcode_`dname1981' = "15" if `iso1981' == "AP" & inlist(`dname1981', "hyderabad")
    replace dcode_`dname1981' = "16" if `iso1981' == "AP" & inlist(`dname1981', "rangareddi")
    replace dcode_`dname1981' = "17" if `iso1981' == "AP" & inlist(`dname1981', "medak")
    replace dcode_`dname1981' = "18" if `iso1981' == "AP" & inlist(`dname1981', "nizamabad")
    replace dcode_`dname1981' = "19" if `iso1981' == "AP" & inlist(`dname1981', "adilabad")
    replace dcode_`dname1981' = "20" if `iso1981' == "AP" & inlist(`dname1981', "karimnagar")
    replace dcode_`dname1981' = "21" if `iso1981' == "AP" & inlist(`dname1981', "warangal")
    replace dcode_`dname1981' = "22" if `iso1981' == "AP" & inlist(`dname1981', "khammam")
    replace dcode_`dname1981' = "23" if `iso1981' == "AP" & inlist(`dname1981', "nalgonda")

*===============================================================================

    * assam
    replace dcode_`dname1981' = "01" if `iso1981' == "AS" & inlist(`dname1981', "cachar")
    replace dcode_`dname1981' = "02" if `iso1981' == "AS" & inlist(`dname1981', "darrang")
    replace dcode_`dname1981' = "03" if `iso1981' == "AS" & inlist(`dname1981', "goalpara")
    replace dcode_`dname1981' = "04" if `iso1981' == "AS" & inlist(`dname1981', "kamrup")
    replace dcode_`dname1981' = "05" if `iso1981' == "AS" & inlist(`dname1981', "lakhimpur")
    replace dcode_`dname1981' = "06" if `iso1981' == "AS" & inlist(`dname1981', "dibrugarh")
    replace dcode_`dname1981' = "07" if `iso1981' == "AS" & inlist(`dname1981', "nowgong")
    replace dcode_`dname1981' = "08" if `iso1981' == "AS" & inlist(`dname1981', "sibsagar")
    replace dcode_`dname1981' = "09" if `iso1981' == "AS" & inlist(`dname1981', "karbi anglong")
    replace dcode_`dname1981' = "10" if `iso1981' == "AS" & inlist(`dname1981', "north cachar hills")

*===============================================================================

    * bihar
    replace dcode_`dname1981' = "01" if `iso1981' == "BR" & inlist(`dname1981', "patna")
    replace dcode_`dname1981' = "02" if `iso1981' == "BR" & inlist(`dname1981', "nalanda")
    replace dcode_`dname1981' = "03" if `iso1981' == "BR" & inlist(`dname1981', "gaya")
    replace dcode_`dname1981' = "04" if `iso1981' == "BR" & inlist(`dname1981', "nawada")
    replace dcode_`dname1981' = "05" if `iso1981' == "BR" & inlist(`dname1981', "aurangabad")
    replace dcode_`dname1981' = "06" if `iso1981' == "BR" & inlist(`dname1981', "bhojpur")
    replace dcode_`dname1981' = "07" if `iso1981' == "BR" & inlist(`dname1981', "rohtas")
    replace dcode_`dname1981' = "08" if `iso1981' == "BR" & inlist(`dname1981', "saran")
    replace dcode_`dname1981' = "09" if `iso1981' == "BR" & inlist(`dname1981', "siwan")
    replace dcode_`dname1981' = "10" if `iso1981' == "BR" & inlist(`dname1981', "gopalganj")
    replace dcode_`dname1981' = "11" if `iso1981' == "BR" & inlist(`dname1981', "purba champaran")
    replace dcode_`dname1981' = "12" if `iso1981' == "BR" & inlist(`dname1981', "pashchim champaran")
    replace dcode_`dname1981' = "13" if `iso1981' == "BR" & inlist(`dname1981', "muzaffarpur")
    replace dcode_`dname1981' = "14" if `iso1981' == "BR" & inlist(`dname1981', "sitamarhi")
    replace dcode_`dname1981' = "15" if `iso1981' == "BR" & inlist(`dname1981', "vaishali")
    replace dcode_`dname1981' = "16" if `iso1981' == "BR" & inlist(`dname1981', "darbhanga")
    replace dcode_`dname1981' = "17" if `iso1981' == "BR" & inlist(`dname1981', "samastipur")
    replace dcode_`dname1981' = "18" if `iso1981' == "BR" & inlist(`dname1981', "madhubani")
    replace dcode_`dname1981' = "19" if `iso1981' == "BR" & inlist(`dname1981', "munger", "monghyr", "munger")
    replace dcode_`dname1981' = "20" if `iso1981' == "BR" & inlist(`dname1981', "begusarai")
    replace dcode_`dname1981' = "21" if `iso1981' == "BR" & inlist(`dname1981', "bhagalpur")
    replace dcode_`dname1981' = "22" if `iso1981' == "BR" & inlist(`dname1981', "saharsa")
    replace dcode_`dname1981' = "23" if `iso1981' == "BR" & inlist(`dname1981', "purnia", "purnea")
    replace dcode_`dname1981' = "24" if `iso1981' == "BR" & inlist(`dname1981', "katihar")
    replace dcode_`dname1981' = "25" if `iso1981' == "BR" & inlist(`dname1981', "santhal pargana")
    replace dcode_`dname1981' = "26" if `iso1981' == "BR" & inlist(`dname1981', "palamu")
    replace dcode_`dname1981' = "27" if `iso1981' == "BR" & inlist(`dname1981', "hazaribag", "hazaribagh")
    replace dcode_`dname1981' = "28" if `iso1981' == "BR" & inlist(`dname1981', "giridih")
    replace dcode_`dname1981' = "29" if `iso1981' == "BR" & inlist(`dname1981', "ranchi")
    replace dcode_`dname1981' = "30" if `iso1981' == "BR" & inlist(`dname1981', "dhanbad")
    replace dcode_`dname1981' = "31" if `iso1981' == "BR" & inlist(`dname1981', "singhbhum")

*===============================================================================

    * chandigarh
    replace dcode_`dname1981' = "01" if `iso1981' == "CH" & inlist(`dname1981', "chandigarh")

*===============================================================================

    * dadra nagar haveli
    replace dcode_`dname1981' = "01" if `iso1981' == "DN" & inlist(`dname1981', "dadranagarhaveli")

*===============================================================================

    * delhi
    replace dcode_`dname1981' = "01" if `iso1981' == "DL" & inlist(`dname1981', "delhi")

*===============================================================================

    * goa daman diu
    replace dcode_`dname1981' = "01" if `iso1981' == "DG" & inlist(`dname1981', "daman")
    replace dcode_`dname1981' = "02" if `iso1981' == "DG" & inlist(`dname1981', "diu")
    replace dcode_`dname1981' = "03" if `iso1981' == "DG" & inlist(`dname1981', "goa")

*===============================================================================

    * gujarat
    replace dcode_`dname1981' = "01" if `iso1981' == "GJ" & inlist(`dname1981', "ahmedabad")
    replace dcode_`dname1981' = "02" if `iso1981' == "GJ" & inlist(`dname1981', "gandhinagar")
    replace dcode_`dname1981' = "03" if `iso1981' == "GJ" & inlist(`dname1981', "amreli")
    replace dcode_`dname1981' = "04" if `iso1981' == "GJ" & inlist(`dname1981', "banaskantha")
    replace dcode_`dname1981' = "05" if `iso1981' == "GJ" & inlist(`dname1981', "vadodara")
    replace dcode_`dname1981' = "06" if `iso1981' == "GJ" & inlist(`dname1981', "bhavnagar")
    replace dcode_`dname1981' = "07" if `iso1981' == "GJ" & inlist(`dname1981', "bharuch")
    replace dcode_`dname1981' = "08" if `iso1981' == "GJ" & inlist(`dname1981', "thedangs")
    replace dcode_`dname1981' = "09" if `iso1981' == "GJ" & inlist(`dname1981', "jamnagar")
    replace dcode_`dname1981' = "10" if `iso1981' == "GJ" & inlist(`dname1981', "junagarh")
    replace dcode_`dname1981' = "11" if `iso1981' == "GJ" & inlist(`dname1981', "kheda")
    replace dcode_`dname1981' = "12" if `iso1981' == "GJ" & inlist(`dname1981', "kachchh")
    replace dcode_`dname1981' = "13" if `iso1981' == "GJ" & inlist(`dname1981', "mehsana")
    replace dcode_`dname1981' = "14" if `iso1981' == "GJ" & inlist(`dname1981', "panchmahals")
    replace dcode_`dname1981' = "15" if `iso1981' == "GJ" & inlist(`dname1981', "rajkot")
    replace dcode_`dname1981' = "16" if `iso1981' == "GJ" & inlist(`dname1981', "sabarkantha")
    replace dcode_`dname1981' = "17" if `iso1981' == "GJ" & inlist(`dname1981', "surat")
    replace dcode_`dname1981' = "18" if `iso1981' == "GJ" & inlist(`dname1981', "valsad")
    replace dcode_`dname1981' = "19" if `iso1981' == "GJ" & inlist(`dname1981', "surendranagar")

*===============================================================================

    * haryana
    replace dcode_`dname1981' = "01" if `iso1981' == "HR" & inlist(`dname1981', "ambala")
    replace dcode_`dname1981' = "02" if `iso1981' == "HR" & inlist(`dname1981', "kurukshetra")
    replace dcode_`dname1981' = "03" if `iso1981' == "HR" & inlist(`dname1981', "karnal")
    replace dcode_`dname1981' = "04" if `iso1981' == "HR" & inlist(`dname1981', "jind")
    replace dcode_`dname1981' = "05" if `iso1981' == "HR" & inlist(`dname1981', "sonipat")
    replace dcode_`dname1981' = "06" if `iso1981' == "HR" & inlist(`dname1981', "rohtak")
    replace dcode_`dname1981' = "07" if `iso1981' == "HR" & inlist(`dname1981', "faridabad")
    replace dcode_`dname1981' = "08" if `iso1981' == "HR" & inlist(`dname1981', "gurgaon")
    replace dcode_`dname1981' = "09" if `iso1981' == "HR" & inlist(`dname1981', "mahendragarh")
    replace dcode_`dname1981' = "10" if `iso1981' == "HR" & inlist(`dname1981', "bhiwani")
    replace dcode_`dname1981' = "11" if `iso1981' == "HR" & inlist(`dname1981', "hissar", "hisar")
    replace dcode_`dname1981' = "12" if `iso1981' == "HR" & inlist(`dname1981', "sirsa")

*===============================================================================

    * himachal pradesh
    replace dcode_`dname1981' = "01" if `iso1981' == "HP" & inlist(`dname1981', "champa", "chamba")
    replace dcode_`dname1981' = "02" if `iso1981' == "HP" & inlist(`dname1981', "kangara", "kangra")
    replace dcode_`dname1981' = "03" if `iso1981' == "HP" & inlist(`dname1981', "hamirpur")
    replace dcode_`dname1981' = "04" if `iso1981' == "HP" & inlist(`dname1981', "una")
    replace dcode_`dname1981' = "05" if `iso1981' == "HP" & inlist(`dname1981', "bilaspur")
    replace dcode_`dname1981' = "06" if `iso1981' == "HP" & inlist(`dname1981', "mandi")
    replace dcode_`dname1981' = "07" if `iso1981' == "HP" & inlist(`dname1981', "kullu", "kulu")
    replace dcode_`dname1981' = "08" if `iso1981' == "HP" & inlist(`dname1981', "lahaulspiti", "lahulspiti", "lahul&spiti", "lahaul&spiti", "lahul and spiti")
    replace dcode_`dname1981' = "09" if `iso1981' == "HP" & inlist(`dname1981', "shimla")
    replace dcode_`dname1981' = "10" if `iso1981' == "HP" & inlist(`dname1981', "solan")
    replace dcode_`dname1981' = "11" if `iso1981' == "HP" & inlist(`dname1981', "sirmur", "sirmaur")
    replace dcode_`dname1981' = "12" if `iso1981' == "HP" & inlist(`dname1981', "kinnaur")

*===============================================================================

    * jammu & kashmir
    replace dcode_`dname1981' = "01" if `iso1981' == "JK" & inlist(`dname1981', "anantnag")
    replace dcode_`dname1981' = "02" if `iso1981' == "JK" & inlist(`dname1981', "pulwama")
    replace dcode_`dname1981' = "03" if `iso1981' == "JK" & inlist(`dname1981', "srinagar")
    replace dcode_`dname1981' = "04" if `iso1981' == "JK" & inlist(`dname1981', "badgam")
    replace dcode_`dname1981' = "05" if `iso1981' == "JK" & inlist(`dname1981', "baramulla", "baramula")
    replace dcode_`dname1981' = "06" if `iso1981' == "JK" & inlist(`dname1981', "kupwara")
    replace dcode_`dname1981' = "07" if `iso1981' == "JK" & inlist(`dname1981', "kargil")
    replace dcode_`dname1981' = "08" if `iso1981' == "JK" & inlist(`dname1981', "ladakh")
    replace dcode_`dname1981' = "09" if `iso1981' == "JK" & inlist(`dname1981', "doda")
    replace dcode_`dname1981' = "10" if `iso1981' == "JK" & inlist(`dname1981', "udhampur")
    replace dcode_`dname1981' = "11" if `iso1981' == "JK" & inlist(`dname1981', "kathua")
    replace dcode_`dname1981' = "12" if `iso1981' == "JK" & inlist(`dname1981', "jammu")
    replace dcode_`dname1981' = "13" if `iso1981' == "JK" & inlist(`dname1981', "rajauri")
    replace dcode_`dname1981' = "14" if `iso1981' == "JK" & inlist(`dname1981', "punch", "poonch")

*===============================================================================

    * kerala
    replace dcode_`dname1981' = "01" if `iso1981' == "KL" & inlist(`dname1981', "alleppey")
    replace dcode_`dname1981' = "02" if `iso1981' == "KL" & inlist(`dname1981', "cannanore")
    replace dcode_`dname1981' = "03" if `iso1981' == "KL" & inlist(`dname1981', "wayanad")
    replace dcode_`dname1981' = "04" if `iso1981' == "KL" & inlist(`dname1981', "ernakulam")
    replace dcode_`dname1981' = "05" if `iso1981' == "KL" & inlist(`dname1981', "kottayam")
    replace dcode_`dname1981' = "06" if `iso1981' == "KL" & inlist(`dname1981', "idukki")
    replace dcode_`dname1981' = "07" if `iso1981' == "KL" & inlist(`dname1981', "kozhikode")
    replace dcode_`dname1981' = "08" if `iso1981' == "KL" & inlist(`dname1981', "malappuram")
    replace dcode_`dname1981' = "09" if `iso1981' == "KL" & inlist(`dname1981', "palghat")
    replace dcode_`dname1981' = "10" if `iso1981' == "KL" & inlist(`dname1981', "quilon")
    replace dcode_`dname1981' = "11" if `iso1981' == "KL" & inlist(`dname1981', "trichur")
    replace dcode_`dname1981' = "12" if `iso1981' == "KL" & inlist(`dname1981', "trivandrum")

*===============================================================================

    * lakshadweep
    replace dcode_`dname1981' = "01" if `iso1981' == "LD" & inlist(`dname1981', "lakshadweep")

*===============================================================================

    * madhya pradesh
    replace dcode_`dname1981' = "01" if `iso1981' == "MP" & inlist(`dname1981', "balaghat")
    replace dcode_`dname1981' = "02" if `iso1981' == "MP" & inlist(`dname1981', "bastar")
    replace dcode_`dname1981' = "03" if `iso1981' == "MP" & inlist(`dname1981', "betul")
    replace dcode_`dname1981' = "04" if `iso1981' == "MP" & inlist(`dname1981', "bhind")
    replace dcode_`dname1981' = "05" if `iso1981' == "MP" & inlist(`dname1981', "bilaspur")
    replace dcode_`dname1981' = "06" if `iso1981' == "MP" & inlist(`dname1981', "chhatarpur")
    replace dcode_`dname1981' = "07" if `iso1981' == "MP" & inlist(`dname1981', "chhindwara")
    replace dcode_`dname1981' = "08" if `iso1981' == "MP" & inlist(`dname1981', "damoh")
    replace dcode_`dname1981' = "09" if `iso1981' == "MP" & inlist(`dname1981', "datia")
    replace dcode_`dname1981' = "10" if `iso1981' == "MP" & inlist(`dname1981', "dewas")
    replace dcode_`dname1981' = "11" if `iso1981' == "MP" & inlist(`dname1981', "dhar")
    replace dcode_`dname1981' = "12" if `iso1981' == "MP" & inlist(`dname1981', "durg")
    replace dcode_`dname1981' = "13" if `iso1981' == "MP" & inlist(`dname1981', "raj nandgaon")
    replace dcode_`dname1981' = "14" if `iso1981' == "MP" & inlist(`dname1981', "east nimar")
    replace dcode_`dname1981' = "15" if `iso1981' == "MP" & inlist(`dname1981', "guna")
    replace dcode_`dname1981' = "16" if `iso1981' == "MP" & inlist(`dname1981', "gwalior")
    replace dcode_`dname1981' = "17" if `iso1981' == "MP" & inlist(`dname1981', "hoshangabad")
    replace dcode_`dname1981' = "18" if `iso1981' == "MP" & inlist(`dname1981', "indore")
    replace dcode_`dname1981' = "19" if `iso1981' == "MP" & inlist(`dname1981', "jabalpur")
    replace dcode_`dname1981' = "20" if `iso1981' == "MP" & inlist(`dname1981', "jhabua")
    replace dcode_`dname1981' = "21" if `iso1981' == "MP" & inlist(`dname1981', "mandla")
    replace dcode_`dname1981' = "22" if `iso1981' == "MP" & inlist(`dname1981', "mandsaur")
    replace dcode_`dname1981' = "23" if `iso1981' == "MP" & inlist(`dname1981', "morena")
    replace dcode_`dname1981' = "24" if `iso1981' == "MP" & inlist(`dname1981', "narsimhapur")
    replace dcode_`dname1981' = "25" if `iso1981' == "MP" & inlist(`dname1981', "panna")
    replace dcode_`dname1981' = "26" if `iso1981' == "MP" & inlist(`dname1981', "raigarh")
    replace dcode_`dname1981' = "27" if `iso1981' == "MP" & inlist(`dname1981', "raipur")
    replace dcode_`dname1981' = "28" if `iso1981' == "MP" & inlist(`dname1981', "raisen")
    replace dcode_`dname1981' = "29" if `iso1981' == "MP" & inlist(`dname1981', "rajgarh")
    replace dcode_`dname1981' = "30" if `iso1981' == "MP" & inlist(`dname1981', "ratlam")
    replace dcode_`dname1981' = "31" if `iso1981' == "MP" & inlist(`dname1981', "rewa")
    replace dcode_`dname1981' = "32" if `iso1981' == "MP" & inlist(`dname1981', "sagar")
    replace dcode_`dname1981' = "33" if `iso1981' == "MP" & inlist(`dname1981', "satna")
    replace dcode_`dname1981' = "34" if `iso1981' == "MP" & inlist(`dname1981', "sehore")
    replace dcode_`dname1981' = "35" if `iso1981' == "MP" & inlist(`dname1981', "bhopal")
    replace dcode_`dname1981' = "36" if `iso1981' == "MP" & inlist(`dname1981', "seoni")
    replace dcode_`dname1981' = "37" if `iso1981' == "MP" & inlist(`dname1981', "shahdol")
    replace dcode_`dname1981' = "38" if `iso1981' == "MP" & inlist(`dname1981', "shajapur")
    replace dcode_`dname1981' = "39" if `iso1981' == "MP" & inlist(`dname1981', "shivpuri")
    replace dcode_`dname1981' = "40" if `iso1981' == "MP" & inlist(`dname1981', "sidhi")
    replace dcode_`dname1981' = "41" if `iso1981' == "MP" & inlist(`dname1981', "surguja")
    replace dcode_`dname1981' = "42" if `iso1981' == "MP" & inlist(`dname1981', "tikamgarh")
    replace dcode_`dname1981' = "43" if `iso1981' == "MP" & inlist(`dname1981', "ujjain")
    replace dcode_`dname1981' = "44" if `iso1981' == "MP" & inlist(`dname1981', "vidishabhilsa", "vidisha")
    replace dcode_`dname1981' = "45" if `iso1981' == "MP" & inlist(`dname1981', "west nimar")

*===============================================================================

    * tamil nadu
    replace dcode_`dname1981' = "01" if `iso1981' == "TN" & inlist(`dname1981', "chingleput")
    replace dcode_`dname1981' = "02" if `iso1981' == "TN" & inlist(`dname1981', "coimbatore")
    replace dcode_`dname1981' = "03" if `iso1981' == "TN" & inlist(`dname1981', "periyar")
    replace dcode_`dname1981' = "04" if `iso1981' == "TN" & inlist(`dname1981', "kanyakumari")
    replace dcode_`dname1981' = "05" if `iso1981' == "TN" & inlist(`dname1981', "madras")
    replace dcode_`dname1981' = "06" if `iso1981' == "TN" & inlist(`dname1981', "madurai")
    replace dcode_`dname1981' = "07" if `iso1981' == "TN" & inlist(`dname1981', "nilgiri", "nilgiris")
    replace dcode_`dname1981' = "08" if `iso1981' == "TN" & inlist(`dname1981', "northarcot")
    replace dcode_`dname1981' = "09" if `iso1981' == "TN" & inlist(`dname1981', "ramanathapuram")
    replace dcode_`dname1981' = "10" if `iso1981' == "TN" & inlist(`dname1981', "salem")
    replace dcode_`dname1981' = "11" if `iso1981' == "TN" & inlist(`dname1981', "dharmapuri")
    replace dcode_`dname1981' = "12" if `iso1981' == "TN" & inlist(`dname1981', "southarcot")
    replace dcode_`dname1981' = "13" if `iso1981' == "TN" & inlist(`dname1981', "thanjavur")
    replace dcode_`dname1981' = "14" if `iso1981' == "TN" & inlist(`dname1981', "tiruchirapalli")
    replace dcode_`dname1981' = "15" if `iso1981' == "TN" & inlist(`dname1981', "pudukkottai")
    replace dcode_`dname1981' = "16" if `iso1981' == "TN" & inlist(`dname1981', "tirunelveli", "t")

*===============================================================================

    * maharashtra
    replace dcode_`dname1981' = "01" if `iso1981' == "MH" & inlist(`dname1981', "ahmednagar", "ahmadnagar")
    replace dcode_`dname1981' = "02" if `iso1981' == "MH" & inlist(`dname1981', "akola")
    replace dcode_`dname1981' = "03" if `iso1981' == "MH" & inlist(`dname1981', "amravati")
    replace dcode_`dname1981' = "04" if `iso1981' == "MH" & inlist(`dname1981', "aurangabad")
    replace dcode_`dname1981' = "05" if `iso1981' == "MH" & inlist(`dname1981', "bhandara")
    replace dcode_`dname1981' = "06" if `iso1981' == "MH" & inlist(`dname1981', "bhir")
    replace dcode_`dname1981' = "07" if `iso1981' == "MH" & inlist(`dname1981', "buldhana")
    replace dcode_`dname1981' = "08" if `iso1981' == "MH" & inlist(`dname1981', "chandrapur", "chanda")
    replace dcode_`dname1981' = "09" if `iso1981' == "MH" & inlist(`dname1981', "dhulia")
    replace dcode_`dname1981' = "10" if `iso1981' == "MH" & inlist(`dname1981', "greaterbombay")
    replace dcode_`dname1981' = "11" if `iso1981' == "MH" & inlist(`dname1981', "jalgaon")
    replace dcode_`dname1981' = "12" if `iso1981' == "MH" & inlist(`dname1981', "raigarh")
    replace dcode_`dname1981' = "13" if `iso1981' == "MH" & inlist(`dname1981', "kolhapur")
    replace dcode_`dname1981' = "14" if `iso1981' == "MH" & inlist(`dname1981', "nagpur")
    replace dcode_`dname1981' = "15" if `iso1981' == "MH" & inlist(`dname1981', "nanded")
    replace dcode_`dname1981' = "16" if `iso1981' == "MH" & inlist(`dname1981', "nasik")
    replace dcode_`dname1981' = "17" if `iso1981' == "MH" & inlist(`dname1981', "osmanabad")
    replace dcode_`dname1981' = "18" if `iso1981' == "MH" & inlist(`dname1981', "parbhani")
    replace dcode_`dname1981' = "19" if `iso1981' == "MH" & inlist(`dname1981', "poona")
    replace dcode_`dname1981' = "20" if `iso1981' == "MH" & inlist(`dname1981', "ratnagiri")
    replace dcode_`dname1981' = "21" if `iso1981' == "MH" & inlist(`dname1981', "sangli")
    replace dcode_`dname1981' = "22" if `iso1981' == "MH" & inlist(`dname1981', "satara")
    replace dcode_`dname1981' = "23" if `iso1981' == "MH" & inlist(`dname1981', "sholapur")
    replace dcode_`dname1981' = "24" if `iso1981' == "MH" & inlist(`dname1981', "thana")
    replace dcode_`dname1981' = "25" if `iso1981' == "MH" & inlist(`dname1981', "wardha")
    replace dcode_`dname1981' = "26" if `iso1981' == "MH" & inlist(`dname1981', "yeotmal")

*===============================================================================

    * manipur
    replace dcode_`dname1981' = "01" if `iso1981' == "MN" & inlist(`dname1981', "manipur central")
    replace dcode_`dname1981' = "02" if `iso1981' == "MN" & inlist(`dname1981', "manipur east")
    replace dcode_`dname1981' = "03" if `iso1981' == "MN" & inlist(`dname1981', "manipur north")
    replace dcode_`dname1981' = "04" if `iso1981' == "MN" & inlist(`dname1981', "manipur south")
    replace dcode_`dname1981' = "05" if `iso1981' == "MN" & inlist(`dname1981', "manipur west")
    replace dcode_`dname1981' = "06" if `iso1981' == "MN" & inlist(`dname1981', "tengnoupal")

*===============================================================================

    * meghalaya
    replace dcode_`dname1981' = "01" if `iso1981' == "ML" & inlist(`dname1981', "east garo hills")
    replace dcode_`dname1981' = "02" if `iso1981' == "ML" & inlist(`dname1981', "west garo hills")
    replace dcode_`dname1981' = "03" if `iso1981' == "ML" & inlist(`dname1981', "jaintia hills")
    replace dcode_`dname1981' = "04" if `iso1981' == "ML" & inlist(`dname1981', "east khasi hills")
    replace dcode_`dname1981' = "05" if `iso1981' == "ML" & inlist(`dname1981', "west khasi hills")


*===============================================================================

    * mizoram
    replace dcode_`dname1981' = "01" if `iso1981' == "MZ" & inlist(`dname1981', "aizawl")
    replace dcode_`dname1981' = "02" if `iso1981' == "MZ" & inlist(`dname1981', "lunglei")
    replace dcode_`dname1981' = "03" if `iso1981' == "MZ" & inlist(`dname1981', "chhimtuipui")

*===============================================================================

    * karnataka
    replace dcode_`dname1981' = "01" if `iso1981' == "KA" & inlist(`dname1981', "bangalore")
    replace dcode_`dname1981' = "02" if `iso1981' == "KA" & inlist(`dname1981', "belgaon", "belgaum")
    replace dcode_`dname1981' = "03" if `iso1981' == "KA" & inlist(`dname1981', "bellary")
    replace dcode_`dname1981' = "04" if `iso1981' == "KA" & inlist(`dname1981', "bidar")
    replace dcode_`dname1981' = "05" if `iso1981' == "KA" & inlist(`dname1981', "bijapur")
    replace dcode_`dname1981' = "06" if `iso1981' == "KA" & inlist(`dname1981', "chikmagalur")
    replace dcode_`dname1981' = "07" if `iso1981' == "KA" & inlist(`dname1981', "chitradurga")
    replace dcode_`dname1981' = "09" if `iso1981' == "KA" & inlist(`dname1981', "dharwar")
    replace dcode_`dname1981' = "10" if `iso1981' == "KA" & inlist(`dname1981', "gulbarga")
    replace dcode_`dname1981' = "11" if `iso1981' == "KA" & inlist(`dname1981', "hassan")
    replace dcode_`dname1981' = "08" if `iso1981' == "KA" & inlist(`dname1981', "kodagu")
    replace dcode_`dname1981' = "12" if `iso1981' == "KA" & inlist(`dname1981', "kolar")
    replace dcode_`dname1981' = "13" if `iso1981' == "KA" & inlist(`dname1981', "mandya")
    replace dcode_`dname1981' = "14" if `iso1981' == "KA" & inlist(`dname1981', "mysore")
    replace dcode_`dname1981' = "15" if `iso1981' == "KA" & inlist(`dname1981', "uttar kannada")
    replace dcode_`dname1981' = "16" if `iso1981' == "KA" & inlist(`dname1981', "raichur")
    replace dcode_`dname1981' = "17" if `iso1981' == "KA" & inlist(`dname1981', "shimoga")
    replace dcode_`dname1981' = "18" if `iso1981' == "KA" & inlist(`dname1981', "dakshin kannada")
    replace dcode_`dname1981' = "19" if `iso1981' == "KA" & inlist(`dname1981', "tumkur")

*===============================================================================

    * nagaland
    replace dcode_`dname1981' = "01" if `iso1981' == "NL" & inlist(`dname1981', "kohima")
    replace dcode_`dname1981' = "02" if `iso1981' == "NL" & inlist(`dname1981', "phek")
    replace dcode_`dname1981' = "03" if `iso1981' == "NL" & inlist(`dname1981', "mokokchung")
    replace dcode_`dname1981' = "04" if `iso1981' == "NL" & inlist(`dname1981', "wokha")
    replace dcode_`dname1981' = "05" if `iso1981' == "NL" & inlist(`dname1981', "zunheboto")
    replace dcode_`dname1981' = "06" if `iso1981' == "NL" & inlist(`dname1981', "tuensang")
    replace dcode_`dname1981' = "07" if `iso1981' == "NL" & inlist(`dname1981', "mon")

*===============================================================================

    * arunachal pradesh
    replace dcode_`dname1981' = "01" if `iso1981' == "AR" & inlist(`dname1981', "west kameng")
    replace dcode_`dname1981' = "02" if `iso1981' == "AR" & inlist(`dname1981', "east kameng")
    replace dcode_`dname1981' = "03" if `iso1981' == "AR" & inlist(`dname1981', "lohit")
    replace dcode_`dname1981' = "04" if `iso1981' == "AR" & inlist(`dname1981', "dibang valley")
    replace dcode_`dname1981' = "05" if `iso1981' == "AR" & inlist(`dname1981', "west siang")
    replace dcode_`dname1981' = "06" if `iso1981' == "AR" & inlist(`dname1981', "east siang")
    replace dcode_`dname1981' = "07" if `iso1981' == "AR" & inlist(`dname1981', "upper subansiri")
    replace dcode_`dname1981' = "08" if `iso1981' == "AR" & inlist(`dname1981', "lower subansiri")
    replace dcode_`dname1981' = "09" if `iso1981' == "AR" & inlist(`dname1981', "tirap")

*===============================================================================

    * orissa
    replace dcode_`dname1981' = "01" if `iso1981' == "OR" & inlist(`dname1981', "baleshwar")
    replace dcode_`dname1981' = "02" if `iso1981' == "OR" & inlist(`dname1981', "phulabani")
    replace dcode_`dname1981' = "03" if `iso1981' == "OR" & inlist(`dname1981', "bolangir")
    replace dcode_`dname1981' = "04" if `iso1981' == "OR" & inlist(`dname1981', "cuttack")
    replace dcode_`dname1981' = "05" if `iso1981' == "OR" & inlist(`dname1981', "dhenkanal")
    replace dcode_`dname1981' = "06" if `iso1981' == "OR" & inlist(`dname1981', "ganjam")
    replace dcode_`dname1981' = "07" if `iso1981' == "OR" & inlist(`dname1981', "kalahandi")
    replace dcode_`dname1981' = "08" if `iso1981' == "OR" & inlist(`dname1981', "keonjhar")
    replace dcode_`dname1981' = "09" if `iso1981' == "OR" & inlist(`dname1981', "koraput")
    replace dcode_`dname1981' = "10" if `iso1981' == "OR" & inlist(`dname1981', "mayurbhanj")
    replace dcode_`dname1981' = "11" if `iso1981' == "OR" & inlist(`dname1981', "puri", "purl")
    replace dcode_`dname1981' = "12" if `iso1981' == "OR" & inlist(`dname1981', "sambalpur")
    replace dcode_`dname1981' = "13" if `iso1981' == "OR" & inlist(`dname1981', "sundargarh")

*===============================================================================

    * pondicherry
    replace dcode_`dname1981' = "01" if `iso1981' == "PY" & inlist(`dname1981', "karaikal")
    replace dcode_`dname1981' = "02" if `iso1981' == "PY" & inlist(`dname1981', "mahe")
    replace dcode_`dname1981' = "03" if `iso1981' == "PY" & inlist(`dname1981', "pondicherry")
    replace dcode_`dname1981' = "04" if `iso1981' == "PY" & inlist(`dname1981', "yanam")

*===============================================================================

    * punjab
    replace dcode_`dname1981' = "01" if `iso1981' == "PB" & inlist(`dname1981', "gurdaspur")
    replace dcode_`dname1981' = "02" if `iso1981' == "PB" & inlist(`dname1981', "amritsar")
    replace dcode_`dname1981' = "03" if `iso1981' == "PB" & inlist(`dname1981', "firozpur")
    replace dcode_`dname1981' = "04" if `iso1981' == "PB" & inlist(`dname1981', "ludhiana")
    replace dcode_`dname1981' = "05" if `iso1981' == "PB" & inlist(`dname1981', "jullundur")
    replace dcode_`dname1981' = "06" if `iso1981' == "PB" & inlist(`dname1981', "kapurthala")
    replace dcode_`dname1981' = "07" if `iso1981' == "PB" & inlist(`dname1981', "hoshiarpur")
    replace dcode_`dname1981' = "08" if `iso1981' == "PB" & inlist(`dname1981', "rupnagar")
    replace dcode_`dname1981' = "09" if `iso1981' == "PB" & inlist(`dname1981', "patiala")
    replace dcode_`dname1981' = "10" if `iso1981' == "PB" & inlist(`dname1981', "sangrur")
    replace dcode_`dname1981' = "11" if `iso1981' == "PB" & inlist(`dname1981', "bathinda")
    replace dcode_`dname1981' = "12" if `iso1981' == "PB" & inlist(`dname1981', "faridkot")

*===============================================================================

    * rajasthan
    replace dcode_`dname1981' = "01" if `iso1981' == "RJ" & inlist(`dname1981', "ajmer")
    replace dcode_`dname1981' = "02" if `iso1981' == "RJ" & inlist(`dname1981', "alwar")
    replace dcode_`dname1981' = "03" if `iso1981' == "RJ" & inlist(`dname1981', "banswara")
    replace dcode_`dname1981' = "04" if `iso1981' == "RJ" & inlist(`dname1981', "barmer")
    replace dcode_`dname1981' = "05" if `iso1981' == "RJ" & inlist(`dname1981', "bharatpur")
    replace dcode_`dname1981' = "06" if `iso1981' == "RJ" & inlist(`dname1981', "bhilwara", "bhilwar")
    replace dcode_`dname1981' = "07" if `iso1981' == "RJ" & inlist(`dname1981', "bikaner")
    replace dcode_`dname1981' = "08" if `iso1981' == "RJ" & inlist(`dname1981', "bundi")
    replace dcode_`dname1981' = "09" if `iso1981' == "RJ" & inlist(`dname1981', "chittaurgarh", "chitorgarh")
    replace dcode_`dname1981' = "10" if `iso1981' == "RJ" & inlist(`dname1981', "churu")
    replace dcode_`dname1981' = "11" if `iso1981' == "RJ" & inlist(`dname1981', "dungarpur")
    replace dcode_`dname1981' = "12" if `iso1981' == "RJ" & inlist(`dname1981', "ganganagar")
    replace dcode_`dname1981' = "13" if `iso1981' == "RJ" & inlist(`dname1981', "jaipur")
    replace dcode_`dname1981' = "14" if `iso1981' == "RJ" & inlist(`dname1981', "jaisalmer")
    replace dcode_`dname1981' = "15" if `iso1981' == "RJ" & inlist(`dname1981', "jalor")
    replace dcode_`dname1981' = "16" if `iso1981' == "RJ" & inlist(`dname1981', "jhalawar")
    replace dcode_`dname1981' = "17" if `iso1981' == "RJ" & inlist(`dname1981', "jhunjhunun", "jhunjhunu")
    replace dcode_`dname1981' = "18" if `iso1981' == "RJ" & inlist(`dname1981', "jodhpur")
    replace dcode_`dname1981' = "19" if `iso1981' == "RJ" & inlist(`dname1981', "kota")
    replace dcode_`dname1981' = "20" if `iso1981' == "RJ" & inlist(`dname1981', "nagaur")
    replace dcode_`dname1981' = "21" if `iso1981' == "RJ" & inlist(`dname1981', "pali", "pall")
    replace dcode_`dname1981' = "22" if `iso1981' == "RJ" & inlist(`dname1981', "sawaimadhopur")
    replace dcode_`dname1981' = "23" if `iso1981' == "RJ" & inlist(`dname1981', "sikar")
    replace dcode_`dname1981' = "24" if `iso1981' == "RJ" & inlist(`dname1981', "sirohi")
    replace dcode_`dname1981' = "25" if `iso1981' == "RJ" & inlist(`dname1981', "tonk")
    replace dcode_`dname1981' = "26" if `iso1981' == "RJ" & inlist(`dname1981', "udaipur")

*===============================================================================

    * sikkim
    replace dcode_`dname1981' = "01" if `iso1981' == "SK" & inlist(`dname1981', "north district")
    replace dcode_`dname1981' = "02" if `iso1981' == "SK" & inlist(`dname1981', "south district")
    replace dcode_`dname1981' = "03" if `iso1981' == "SK" & inlist(`dname1981', "east district")
    replace dcode_`dname1981' = "04" if `iso1981' == "SK" & inlist(`dname1981', "west district")

*===============================================================================

    * tripura
    replace dcode_`dname1981' = "01" if `iso1981' == "TR" & inlist(`dname1981', "north tripura")
    replace dcode_`dname1981' = "02" if `iso1981' == "TR" & inlist(`dname1981', "south tripura")
    replace dcode_`dname1981' = "03" if `iso1981' == "TR" & inlist(`dname1981', "west tripura")

*===============================================================================

    * uttar pradesh
    replace dcode_`dname1981' = "01" if `iso1981' == "UP" & inlist(`dname1981', "agra")
    replace dcode_`dname1981' = "02" if `iso1981' == "UP" & inlist(`dname1981', "aligarh")
    replace dcode_`dname1981' = "03" if `iso1981' == "UP" & inlist(`dname1981', "allahabad")
    replace dcode_`dname1981' = "04" if `iso1981' == "UP" & inlist(`dname1981', "almora")
    replace dcode_`dname1981' = "05" if `iso1981' == "UP" & inlist(`dname1981', "azamgarh")
    replace dcode_`dname1981' = "06" if `iso1981' == "UP" & inlist(`dname1981', "bahraich")
    replace dcode_`dname1981' = "07" if `iso1981' == "UP" & inlist(`dname1981', "ballia")
    replace dcode_`dname1981' = "08" if `iso1981' == "UP" & inlist(`dname1981', "banda")
    replace dcode_`dname1981' = "09" if `iso1981' == "UP" & inlist(`dname1981', "barabanki")
    replace dcode_`dname1981' = "10" if `iso1981' == "UP" & inlist(`dname1981', "bareilly")
    replace dcode_`dname1981' = "11" if `iso1981' == "UP" & inlist(`dname1981', "basti")
    replace dcode_`dname1981' = "12" if `iso1981' == "UP" & inlist(`dname1981', "bijnor")
    replace dcode_`dname1981' = "13" if `iso1981' == "UP" & inlist(`dname1981', "moradabad")
    replace dcode_`dname1981' = "14" if `iso1981' == "UP" & inlist(`dname1981', "budaun")
    replace dcode_`dname1981' = "15" if `iso1981' == "UP" & inlist(`dname1981', "bulandshahr")
    replace dcode_`dname1981' = "16" if `iso1981' == "UP" & inlist(`dname1981', "chamoli")
    replace dcode_`dname1981' = "17" if `iso1981' == "UP" & inlist(`dname1981', "dehradun")
    replace dcode_`dname1981' = "18" if `iso1981' == "UP" & inlist(`dname1981', "deoria")
    replace dcode_`dname1981' = "19" if `iso1981' == "UP" & inlist(`dname1981', "etah")
    replace dcode_`dname1981' = "20" if `iso1981' == "UP" & inlist(`dname1981', "etawah")
    replace dcode_`dname1981' = "21" if `iso1981' == "UP" & inlist(`dname1981', "faizabad")
    replace dcode_`dname1981' = "22" if `iso1981' == "UP" & inlist(`dname1981', "farrukhabad")
    replace dcode_`dname1981' = "23" if `iso1981' == "UP" & inlist(`dname1981', "fatehpur")
    replace dcode_`dname1981' = "24" if `iso1981' == "UP" & inlist(`dname1981', "garhwal")
    replace dcode_`dname1981' = "25" if `iso1981' == "UP" & inlist(`dname1981', "ghazipur")
    replace dcode_`dname1981' = "26" if `iso1981' == "UP" & inlist(`dname1981', "gonda")
    replace dcode_`dname1981' = "27" if `iso1981' == "UP" & inlist(`dname1981', "gorakhpur")
    replace dcode_`dname1981' = "28" if `iso1981' == "UP" & inlist(`dname1981', "hamirpur")
    replace dcode_`dname1981' = "29" if `iso1981' == "UP" & inlist(`dname1981', "hardoi")
    replace dcode_`dname1981' = "30" if `iso1981' == "UP" & inlist(`dname1981', "jalaun")
    replace dcode_`dname1981' = "31" if `iso1981' == "UP" & inlist(`dname1981', "jaunpur")
    replace dcode_`dname1981' = "32" if `iso1981' == "UP" & inlist(`dname1981', "jhansi")
    replace dcode_`dname1981' = "33" if `iso1981' == "UP" & inlist(`dname1981', "lalitpur")
    replace dcode_`dname1981' = "34" if `iso1981' == "UP" & inlist(`dname1981', "kanpur")
    replace dcode_`dname1981' = "35" if `iso1981' == "UP" & inlist(`dname1981', "kheri")
    replace dcode_`dname1981' = "36" if `iso1981' == "UP" & inlist(`dname1981', "lucknow")
    replace dcode_`dname1981' = "37" if `iso1981' == "UP" & inlist(`dname1981', "mainpuri")
    replace dcode_`dname1981' = "38" if `iso1981' == "UP" & inlist(`dname1981', "mathura")
    replace dcode_`dname1981' = "39" if `iso1981' == "UP" & inlist(`dname1981', "meerut")
    replace dcode_`dname1981' = "40" if `iso1981' == "UP" & inlist(`dname1981', "ghaziabad")
    replace dcode_`dname1981' = "41" if `iso1981' == "UP" & inlist(`dname1981', "mirzapur")
    replace dcode_`dname1981' = "42" if `iso1981' == "UP" & inlist(`dname1981', "muzaffarnagar")
    replace dcode_`dname1981' = "43" if `iso1981' == "UP" & inlist(`dname1981', "nainital")
    replace dcode_`dname1981' = "44" if `iso1981' == "UP" & inlist(`dname1981', "pilibhit")
    replace dcode_`dname1981' = "45" if `iso1981' == "UP" & inlist(`dname1981', "pithoragarh")
    replace dcode_`dname1981' = "46" if `iso1981' == "UP" & inlist(`dname1981', "pratapgarh")
    replace dcode_`dname1981' = "47" if `iso1981' == "UP" & inlist(`dname1981', "raebareli")
    replace dcode_`dname1981' = "48" if `iso1981' == "UP" & inlist(`dname1981', "rampur")
    replace dcode_`dname1981' = "49" if `iso1981' == "UP" & inlist(`dname1981', "saharanpur")
    replace dcode_`dname1981' = "50" if `iso1981' == "UP" & inlist(`dname1981', "shahjahanpur")
    replace dcode_`dname1981' = "51" if `iso1981' == "UP" & inlist(`dname1981', "sitapur")
    replace dcode_`dname1981' = "52" if `iso1981' == "UP" & inlist(`dname1981', "sultanpur")
    replace dcode_`dname1981' = "53" if `iso1981' == "UP" & inlist(`dname1981', "tehrigarhwal")
    replace dcode_`dname1981' = "54" if `iso1981' == "UP" & inlist(`dname1981', "unnao")
    replace dcode_`dname1981' = "55" if `iso1981' == "UP" & inlist(`dname1981', "uttarkashi")
    replace dcode_`dname1981' = "56" if `iso1981' == "UP" & inlist(`dname1981', "varanasi")

*===============================================================================

    * west bengal
    replace dcode_`dname1981' = "01" if `iso1981' == "WB" & inlist(`dname1981', "bankura")
    replace dcode_`dname1981' = "02" if `iso1981' == "WB" & inlist(`dname1981', "birbhum")
    replace dcode_`dname1981' = "03" if `iso1981' == "WB" & inlist(`dname1981', "barddhaman")
    replace dcode_`dname1981' = "04" if `iso1981' == "WB" & inlist(`dname1981', "calcutta")
    replace dcode_`dname1981' = "05" if `iso1981' == "WB" & inlist(`dname1981', "koch bihar")
    replace dcode_`dname1981' = "06" if `iso1981' == "WB" & inlist(`dname1981', "darjiling")
    replace dcode_`dname1981' = "07" if `iso1981' == "WB" & inlist(`dname1981', "hugli")
    replace dcode_`dname1981' = "08" if `iso1981' == "WB" & inlist(`dname1981', "haora")
    replace dcode_`dname1981' = "09" if `iso1981' == "WB" & inlist(`dname1981', "jalpaiguri")
    replace dcode_`dname1981' = "10" if `iso1981' == "WB" & inlist(`dname1981', "maldah")
    replace dcode_`dname1981' = "11" if `iso1981' == "WB" & inlist(`dname1981', "medinipur")
    replace dcode_`dname1981' = "12" if `iso1981' == "WB" & inlist(`dname1981', "murshidabad")
    replace dcode_`dname1981' = "13" if `iso1981' == "WB" & inlist(`dname1981', "nadia")
    replace dcode_`dname1981' = "14" if `iso1981' == "WB" & inlist(`dname1981', "puruliya")
    replace dcode_`dname1981' = "15" if `iso1981' == "WB" & inlist(`dname1981', "twentyfourparganas")
    replace dcode_`dname1981' = "16" if `iso1981' == "WB" & inlist(`dname1981', "westdinajpur")


*===============================================================================
end

*-------------------------------------------------------------------------------
* 1991
*-------------------------------------------------------------------------------
capture program drop dcode1991
program define dcode1991

* store input into macros
local dname1991 `1'
local iso1991 `2'

*===============================================================================

    * andaman nicobar islands
    replace dcode_`dname1991' = "01" if `iso1991' == "AN" & inlist(`dname1991', "andaman")
    replace dcode_`dname1991' = "02" if `iso1991' == "AN" & inlist(`dname1991', "nicobar")

*===============================================================================

    * andhra pradesh
    replace dcode_`dname1991' = "01" if `iso1991' == "AP" & inlist(`dname1991', "srikakulam")
    replace dcode_`dname1991' = "02" if `iso1991' == "AP" & inlist(`dname1991', "vizianagaram")
    replace dcode_`dname1991' = "03" if `iso1991' == "AP" & inlist(`dname1991', "visakhapatnam")
    replace dcode_`dname1991' = "04" if `iso1991' == "AP" & inlist(`dname1991', "east godavari")
    replace dcode_`dname1991' = "05" if `iso1991' == "AP" & inlist(`dname1991', "west godavari")
    replace dcode_`dname1991' = "06" if `iso1991' == "AP" & inlist(`dname1991', "krishna")
    replace dcode_`dname1991' = "07" if `iso1991' == "AP" & inlist(`dname1991', "guntur")
    replace dcode_`dname1991' = "08" if `iso1991' == "AP" & inlist(`dname1991', "nellore")
    replace dcode_`dname1991' = "09" if `iso1991' == "AP" & inlist(`dname1991', "prakasam")
    replace dcode_`dname1991' = "10" if `iso1991' == "AP" & inlist(`dname1991', "chittoor")
    replace dcode_`dname1991' = "11" if `iso1991' == "AP" & inlist(`dname1991', "cuddapah")
    replace dcode_`dname1991' = "12" if `iso1991' == "AP" & inlist(`dname1991', "anantapur")
    replace dcode_`dname1991' = "13" if `iso1991' == "AP" & inlist(`dname1991', "kurnool")
    replace dcode_`dname1991' = "14" if `iso1991' == "AP" & inlist(`dname1991', "mahbubnagar")
    replace dcode_`dname1991' = "15" if `iso1991' == "AP" & inlist(`dname1991', "hyderabad")
    replace dcode_`dname1991' = "16" if `iso1991' == "AP" & inlist(`dname1991', "rangareddi")
    replace dcode_`dname1991' = "17" if `iso1991' == "AP" & inlist(`dname1991', "medak")
    replace dcode_`dname1991' = "18" if `iso1991' == "AP" & inlist(`dname1991', "nizamabad")
    replace dcode_`dname1991' = "19" if `iso1991' == "AP" & inlist(`dname1991', "adilabad")
    replace dcode_`dname1991' = "20" if `iso1991' == "AP" & inlist(`dname1991', "karimnagar")
    replace dcode_`dname1991' = "21" if `iso1991' == "AP" & inlist(`dname1991', "warangal")
    replace dcode_`dname1991' = "22" if `iso1991' == "AP" & inlist(`dname1991', "khammam")
    replace dcode_`dname1991' = "23" if `iso1991' == "AP" & inlist(`dname1991', "nalgonda")

*===============================================================================

    * assam
    replace dcode_`dname1991' = "01" if `iso1991' == "AS" & inlist(`dname1991', "goalpara")
    replace dcode_`dname1991' = "02" if `iso1991' == "AS" & inlist(`dname1991', "dhuburi")
    replace dcode_`dname1991' = "03" if `iso1991' == "AS" & inlist(`dname1991', "kokrajhar")
    replace dcode_`dname1991' = "04" if `iso1991' == "AS" & inlist(`dname1991', "bongaigaon")
    replace dcode_`dname1991' = "05" if `iso1991' == "AS" & inlist(`dname1991', "kamrup")
    replace dcode_`dname1991' = "06" if `iso1991' == "AS" & inlist(`dname1991', "barpeta")
    replace dcode_`dname1991' = "07" if `iso1991' == "AS" & inlist(`dname1991', "nalbari")
    replace dcode_`dname1991' = "08" if `iso1991' == "AS" & inlist(`dname1991', "darrang")
    replace dcode_`dname1991' = "09" if `iso1991' == "AS" & inlist(`dname1991', "sonitpur")
    replace dcode_`dname1991' = "10" if `iso1991' == "AS" & inlist(`dname1991', "lakhimpur")
    replace dcode_`dname1991' = "11" if `iso1991' == "AS" & inlist(`dname1991', "dhemaji")
    replace dcode_`dname1991' = "12" if `iso1991' == "AS" & inlist(`dname1991', "dibrugarh")
    replace dcode_`dname1991' = "13" if `iso1991' == "AS" & inlist(`dname1991', "tinsukia")
    replace dcode_`dname1991' = "14" if `iso1991' == "AS" & inlist(`dname1991', "nagaon")
    replace dcode_`dname1991' = "15" if `iso1991' == "AS" & inlist(`dname1991', "marigaon")
    replace dcode_`dname1991' = "16" if `iso1991' == "AS" & inlist(`dname1991', "sibsagar")
    replace dcode_`dname1991' = "17" if `iso1991' == "AS" & inlist(`dname1991', "golaghat")
    replace dcode_`dname1991' = "18" if `iso1991' == "AS" & inlist(`dname1991', "jorhat")
    replace dcode_`dname1991' = "19" if `iso1991' == "AS" & inlist(`dname1991', "cachar")
    replace dcode_`dname1991' = "20" if `iso1991' == "AS" & inlist(`dname1991', "karimganj")
    replace dcode_`dname1991' = "21" if `iso1991' == "AS" & inlist(`dname1991', "hailakandi")
    replace dcode_`dname1991' = "22" if `iso1991' == "AS" & inlist(`dname1991', "karbi anglong")
    replace dcode_`dname1991' = "23" if `iso1991' == "AS" & inlist(`dname1991', "north cachar hills")

*===============================================================================

    * bihar
    replace dcode_`dname1991' = "01" if `iso1991' == "BR" & inlist(`dname1991', "patna")
    replace dcode_`dname1991' = "02" if `iso1991' == "BR" & inlist(`dname1991', "nalanda")
    replace dcode_`dname1991' = "03" if `iso1991' == "BR" & inlist(`dname1991', "gaya")
    replace dcode_`dname1991' = "04" if `iso1991' == "BR" & inlist(`dname1991', "jehanabad")
    replace dcode_`dname1991' = "05" if `iso1991' == "BR" & inlist(`dname1991', "nawada")
    replace dcode_`dname1991' = "06" if `iso1991' == "BR" & inlist(`dname1991', "aurangabad")
    replace dcode_`dname1991' = "07" if `iso1991' == "BR" & inlist(`dname1991', "bhojpur")
    replace dcode_`dname1991' = "08" if `iso1991' == "BR" & inlist(`dname1991', "rohtas")
    replace dcode_`dname1991' = "09" if `iso1991' == "BR" & inlist(`dname1991', "saran")
    replace dcode_`dname1991' = "10" if `iso1991' == "BR" & inlist(`dname1991', "siwan")
    replace dcode_`dname1991' = "11" if `iso1991' == "BR" & inlist(`dname1991', "gopalganj")
    replace dcode_`dname1991' = "12" if `iso1991' == "BR" & inlist(`dname1991', "purba champaran")
    replace dcode_`dname1991' = "13" if `iso1991' == "BR" & inlist(`dname1991', "pashchim champaran")
    replace dcode_`dname1991' = "14" if `iso1991' == "BR" & inlist(`dname1991', "muzaffarpur")
    replace dcode_`dname1991' = "15" if `iso1991' == "BR" & inlist(`dname1991', "sitamarhi")
    replace dcode_`dname1991' = "16" if `iso1991' == "BR" & inlist(`dname1991', "vaishali")
    replace dcode_`dname1991' = "17" if `iso1991' == "BR" & inlist(`dname1991', "darbhanga")
    replace dcode_`dname1991' = "18" if `iso1991' == "BR" & inlist(`dname1991', "samastipur")
    replace dcode_`dname1991' = "19" if `iso1991' == "BR" & inlist(`dname1991', "madhubani")
    replace dcode_`dname1991' = "20" if `iso1991' == "BR" & inlist(`dname1991', "munger")
    replace dcode_`dname1991' = "21" if `iso1991' == "BR" & inlist(`dname1991', "khagaria")
    replace dcode_`dname1991' = "22" if `iso1991' == "BR" & inlist(`dname1991', "begusarai")
    replace dcode_`dname1991' = "23" if `iso1991' == "BR" & inlist(`dname1991', "bhagalpur")
    replace dcode_`dname1991' = "24" if `iso1991' == "BR" & inlist(`dname1991', "saharsa")
    replace dcode_`dname1991' = "25" if `iso1991' == "BR" & inlist(`dname1991', "madhepura")
    replace dcode_`dname1991' = "26" if `iso1991' == "BR" & inlist(`dname1991', "purnia", "purnea")
    replace dcode_`dname1991' = "27" if `iso1991' == "BR" & inlist(`dname1991', "araria")
    replace dcode_`dname1991' = "28" if `iso1991' == "BR" & inlist(`dname1991', "kishanganj")
    replace dcode_`dname1991' = "29" if `iso1991' == "BR" & inlist(`dname1991', "katihar")
    replace dcode_`dname1991' = "30" if `iso1991' == "BR" & inlist(`dname1991', "dumka")
    replace dcode_`dname1991' = "31" if `iso1991' == "BR" & inlist(`dname1991', "godda")
    replace dcode_`dname1991' = "32" if `iso1991' == "BR" & inlist(`dname1991', "sahibganj")
    replace dcode_`dname1991' = "33" if `iso1991' == "BR" & inlist(`dname1991', "deoghar")
    replace dcode_`dname1991' = "34" if `iso1991' == "BR" & inlist(`dname1991', "palamu")
    replace dcode_`dname1991' = "35" if `iso1991' == "BR" & inlist(`dname1991', "hazaribag")
    replace dcode_`dname1991' = "36" if `iso1991' == "BR" & inlist(`dname1991', "giridih")
    replace dcode_`dname1991' = "37" if `iso1991' == "BR" & inlist(`dname1991', "ranchi")
    replace dcode_`dname1991' = "38" if `iso1991' == "BR" & inlist(`dname1991', "lohardaga")
    replace dcode_`dname1991' = "39" if `iso1991' == "BR" & inlist(`dname1991', "gumla")
    replace dcode_`dname1991' = "40" if `iso1991' == "BR" & inlist(`dname1991', "dhanbad")
    replace dcode_`dname1991' = "41" if `iso1991' == "BR" & inlist(`dname1991', "pashchimi singhbhum")
    replace dcode_`dname1991' = "42" if `iso1991' == "BR" & inlist(`dname1991', "purbi singhbhum")

*===============================================================================

    * chandigarh
    replace dcode_`dname1991' = "01" if `iso1991' == "CH" & inlist(`dname1991', "chandigarh")

*===============================================================================

    * dadra nagar haveli
    replace dcode_`dname1991' = "01" if `iso1991' == "DN" & inlist(`dname1991', "dadranagarhaveli")

*===============================================================================

    * delhi
    replace dcode_`dname1991' = "01" if `iso1991' == "DL" & inlist(`dname1991', "delhi")

*===============================================================================

    * daman diu
    replace dcode_`dname1991' = "01" if `iso1991' == "DD" & inlist(`dname1991', "daman")
    replace dcode_`dname1991' = "02" if `iso1991' == "DD" & inlist(`dname1991', "diu")

*===============================================================================

    * goa

    replace dcode_`dname1991' = "01" if `iso1991' == "GA" & inlist(`dname1991', "north goa")
    replace dcode_`dname1991' = "02" if `iso1991' == "GA" & inlist(`dname1991', "south goa")

*===============================================================================

    * gujarat
    replace dcode_`dname1991' = "01" if `iso1991' == "GJ" & inlist(`dname1991', "ahmedabad")
    replace dcode_`dname1991' = "02" if `iso1991' == "GJ" & inlist(`dname1991', "gandhinagar")
    replace dcode_`dname1991' = "03" if `iso1991' == "GJ" & inlist(`dname1991', "amreli")
    replace dcode_`dname1991' = "04" if `iso1991' == "GJ" & inlist(`dname1991', "banaskantha")
    replace dcode_`dname1991' = "05" if `iso1991' == "GJ" & inlist(`dname1991', "vadodara")
    replace dcode_`dname1991' = "06" if `iso1991' == "GJ" & inlist(`dname1991', "bhavnagar")
    replace dcode_`dname1991' = "07" if `iso1991' == "GJ" & inlist(`dname1991', "bharuch")
    replace dcode_`dname1991' = "08" if `iso1991' == "GJ" & inlist(`dname1991', "thedangs")
    replace dcode_`dname1991' = "09" if `iso1991' == "GJ" & inlist(`dname1991', "jamnagar")
    replace dcode_`dname1991' = "10" if `iso1991' == "GJ" & inlist(`dname1991', "junagarh")
    replace dcode_`dname1991' = "11" if `iso1991' == "GJ" & inlist(`dname1991', "kheda")
    replace dcode_`dname1991' = "12" if `iso1991' == "GJ" & inlist(`dname1991', "kachchh")
    replace dcode_`dname1991' = "13" if `iso1991' == "GJ" & inlist(`dname1991', "mehsana")
    replace dcode_`dname1991' = "14" if `iso1991' == "GJ" & inlist(`dname1991', "panchmahals")
    replace dcode_`dname1991' = "15" if `iso1991' == "GJ" & inlist(`dname1991', "rajkot")
    replace dcode_`dname1991' = "16" if `iso1991' == "GJ" & inlist(`dname1991', "sabarkantha")
    replace dcode_`dname1991' = "17" if `iso1991' == "GJ" & inlist(`dname1991', "surat")
    replace dcode_`dname1991' = "18" if `iso1991' == "GJ" & inlist(`dname1991', "valsad")
    replace dcode_`dname1991' = "19" if `iso1991' == "GJ" & inlist(`dname1991', "surendranagar")

*===============================================================================

    * haryana
    replace dcode_`dname1991' = "01" if `iso1991' == "HR" & inlist(`dname1991', "ambala")
    replace dcode_`dname1991' = "02" if `iso1991' == "HR" & inlist(`dname1991', "yamunanagar")
    replace dcode_`dname1991' = "03" if `iso1991' == "HR" & inlist(`dname1991', "kurukshetra")
    replace dcode_`dname1991' = "04" if `iso1991' == "HR" & inlist(`dname1991', "kaithal")
    replace dcode_`dname1991' = "05" if `iso1991' == "HR" & inlist(`dname1991', "karnal")
    replace dcode_`dname1991' = "06" if `iso1991' == "HR" & inlist(`dname1991', "panipat")
    replace dcode_`dname1991' = "07" if `iso1991' == "HR" & inlist(`dname1991', "sonipat")
    replace dcode_`dname1991' = "08" if `iso1991' == "HR" & inlist(`dname1991', "rohtak")
    replace dcode_`dname1991' = "09" if `iso1991' == "HR" & inlist(`dname1991', "faridabad")
    replace dcode_`dname1991' = "10" if `iso1991' == "HR" & inlist(`dname1991', "gurgaon")
    replace dcode_`dname1991' = "11" if `iso1991' == "HR" & inlist(`dname1991', "rewari")
    replace dcode_`dname1991' = "12" if `iso1991' == "HR" & inlist(`dname1991', "mahendragarh")
    replace dcode_`dname1991' = "13" if `iso1991' == "HR" & inlist(`dname1991', "bhiwani")
    replace dcode_`dname1991' = "14" if `iso1991' == "HR" & inlist(`dname1991', "jind")
    replace dcode_`dname1991' = "15" if `iso1991' == "HR" & inlist(`dname1991', "hissar", "hisar")
    replace dcode_`dname1991' = "16" if `iso1991' == "HR" & inlist(`dname1991', "sirsa")

*===============================================================================

    * himachal pradesh
    replace dcode_`dname1991' = "01" if `iso1991' == "HP" & inlist(`dname1991', "champa", "chamba")
    replace dcode_`dname1991' = "02" if `iso1991' == "HP" & inlist(`dname1991', "kangara", "kangra")
    replace dcode_`dname1991' = "03" if `iso1991' == "HP" & inlist(`dname1991', "hamirpur")
    replace dcode_`dname1991' = "04" if `iso1991' == "HP" & inlist(`dname1991', "una")
    replace dcode_`dname1991' = "05" if `iso1991' == "HP" & inlist(`dname1991', "bilaspur")
    replace dcode_`dname1991' = "06" if `iso1991' == "HP" & inlist(`dname1991', "mandi")
    replace dcode_`dname1991' = "07" if `iso1991' == "HP" & inlist(`dname1991', "kullu", "kulu")
    replace dcode_`dname1991' = "08" if `iso1991' == "HP" & inlist(`dname1991', "lahul and spiti")
    replace dcode_`dname1991' = "09" if `iso1991' == "HP" & inlist(`dname1991', "shimla")
    replace dcode_`dname1991' = "10" if `iso1991' == "HP" & inlist(`dname1991', "solan")
    replace dcode_`dname1991' = "11" if `iso1991' == "HP" & inlist(`dname1991', "sirmur", "sirmaur")
    replace dcode_`dname1991' = "12" if `iso1991' == "HP" & inlist(`dname1991', "kinnaur")

*===============================================================================

    * jammu & kashmir
    replace dcode_`dname1991' = "01" if `iso1991' == "JK" & inlist(`dname1991', "kupwara")
    replace dcode_`dname1991' = "02" if `iso1991' == "JK" & inlist(`dname1991', "baramulla", "baramula")
    replace dcode_`dname1991' = "03" if `iso1991' == "JK" & inlist(`dname1991', "srinagar")
    replace dcode_`dname1991' = "04" if `iso1991' == "JK" & inlist(`dname1991', "badgam")
    replace dcode_`dname1991' = "05" if `iso1991' == "JK" & inlist(`dname1991', "punch", "poonch")
    replace dcode_`dname1991' = "06" if `iso1991' == "JK" & inlist(`dname1991', "pulwama")
    replace dcode_`dname1991' = "07" if `iso1991' == "JK" & inlist(`dname1991', "anantnag")
    replace dcode_`dname1991' = "08" if `iso1991' == "JK" & inlist(`dname1991', "kargil")
    replace dcode_`dname1991' = "09" if `iso1991' == "JK" & inlist(`dname1991', "rajauri")
    replace dcode_`dname1991' = "10" if `iso1991' == "JK" & inlist(`dname1991', "udhampur")
    replace dcode_`dname1991' = "11" if `iso1991' == "JK" & inlist(`dname1991', "jammu")
    replace dcode_`dname1991' = "12" if `iso1991' == "JK" & inlist(`dname1991', "doda")
    replace dcode_`dname1991' = "13" if `iso1991' == "JK" & inlist(`dname1991', "kathua")
    replace dcode_`dname1991' = "14" if `iso1991' == "JK" & inlist(`dname1991', "ladakh")

*===============================================================================

    * kerala
    replace dcode_`dname1991' = "01" if `iso1991' == "KL" & inlist(`dname1991', "alleppey")
    replace dcode_`dname1991' = "02" if `iso1991' == "KL" & inlist(`dname1991', "kannur")
    replace dcode_`dname1991' = "03" if `iso1991' == "KL" & inlist(`dname1991', "kasaragod")
    replace dcode_`dname1991' = "04" if `iso1991' == "KL" & inlist(`dname1991', "wayanad")
    replace dcode_`dname1991' = "05" if `iso1991' == "KL" & inlist(`dname1991', "ernakulam")
    replace dcode_`dname1991' = "06" if `iso1991' == "KL" & inlist(`dname1991', "kottayam")
    replace dcode_`dname1991' = "07" if `iso1991' == "KL" & inlist(`dname1991', "idukki")
    replace dcode_`dname1991' = "08" if `iso1991' == "KL" & inlist(`dname1991', "kozhikode")
    replace dcode_`dname1991' = "09" if `iso1991' == "KL" & inlist(`dname1991', "malappuram")
    replace dcode_`dname1991' = "10" if `iso1991' == "KL" & inlist(`dname1991', "palghat")
    replace dcode_`dname1991' = "11" if `iso1991' == "KL" & inlist(`dname1991', "kollam")
    replace dcode_`dname1991' = "12" if `iso1991' == "KL" & inlist(`dname1991', "patthanamthitta")
    replace dcode_`dname1991' = "13" if `iso1991' == "KL" & inlist(`dname1991', "trichur")
    replace dcode_`dname1991' = "14" if `iso1991' == "KL" & inlist(`dname1991', "thiruvananthapuram")

*===============================================================================

    * lakshadweep
    replace dcode_`dname1991' = "01" if `iso1991' == "LD" & inlist(`dname1991', "lakshadweep")

*===============================================================================

    * madhya pradesh
    replace dcode_`dname1991' = "01" if `iso1991' == "MP" & inlist(`dname1991', "balaghat")
    replace dcode_`dname1991' = "02" if `iso1991' == "MP" & inlist(`dname1991', "bastar")
    replace dcode_`dname1991' = "03" if `iso1991' == "MP" & inlist(`dname1991', "betul")
    replace dcode_`dname1991' = "04" if `iso1991' == "MP" & inlist(`dname1991', "bhind")
    replace dcode_`dname1991' = "05" if `iso1991' == "MP" & inlist(`dname1991', "bilaspur")
    replace dcode_`dname1991' = "06" if `iso1991' == "MP" & inlist(`dname1991', "chhatarpur")
    replace dcode_`dname1991' = "07" if `iso1991' == "MP" & inlist(`dname1991', "chhindwara")
    replace dcode_`dname1991' = "08" if `iso1991' == "MP" & inlist(`dname1991', "damoh")
    replace dcode_`dname1991' = "09" if `iso1991' == "MP" & inlist(`dname1991', "datia")
    replace dcode_`dname1991' = "10" if `iso1991' == "MP" & inlist(`dname1991', "dewas")
    replace dcode_`dname1991' = "11" if `iso1991' == "MP" & inlist(`dname1991', "dhar")
    replace dcode_`dname1991' = "12" if `iso1991' == "MP" & inlist(`dname1991', "durg")
    replace dcode_`dname1991' = "13" if `iso1991' == "MP" & inlist(`dname1991', "raj nandgaon")
    replace dcode_`dname1991' = "14" if `iso1991' == "MP" & inlist(`dname1991', "east nimar")
    replace dcode_`dname1991' = "15" if `iso1991' == "MP" & inlist(`dname1991', "guna")
    replace dcode_`dname1991' = "16" if `iso1991' == "MP" & inlist(`dname1991', "gwalior")
    replace dcode_`dname1991' = "17" if `iso1991' == "MP" & inlist(`dname1991', "hoshangabad")
    replace dcode_`dname1991' = "18" if `iso1991' == "MP" & inlist(`dname1991', "indore")
    replace dcode_`dname1991' = "19" if `iso1991' == "MP" & inlist(`dname1991', "jabalpur")
    replace dcode_`dname1991' = "20" if `iso1991' == "MP" & inlist(`dname1991', "jhabua")
    replace dcode_`dname1991' = "21" if `iso1991' == "MP" & inlist(`dname1991', "mandla")
    replace dcode_`dname1991' = "22" if `iso1991' == "MP" & inlist(`dname1991', "mandsaur")
    replace dcode_`dname1991' = "23" if `iso1991' == "MP" & inlist(`dname1991', "morena")
    replace dcode_`dname1991' = "24" if `iso1991' == "MP" & inlist(`dname1991', "narsimhapur")
    replace dcode_`dname1991' = "25" if `iso1991' == "MP" & inlist(`dname1991', "panna")
    replace dcode_`dname1991' = "26" if `iso1991' == "MP" & inlist(`dname1991', "raigarh")
    replace dcode_`dname1991' = "27" if `iso1991' == "MP" & inlist(`dname1991', "raipur")
    replace dcode_`dname1991' = "28" if `iso1991' == "MP" & inlist(`dname1991', "raisen")
    replace dcode_`dname1991' = "29" if `iso1991' == "MP" & inlist(`dname1991', "rajgarh")
    replace dcode_`dname1991' = "30" if `iso1991' == "MP" & inlist(`dname1991', "ratlam")
    replace dcode_`dname1991' = "31" if `iso1991' == "MP" & inlist(`dname1991', "rewa")
    replace dcode_`dname1991' = "32" if `iso1991' == "MP" & inlist(`dname1991', "sagar")
    replace dcode_`dname1991' = "33" if `iso1991' == "MP" & inlist(`dname1991', "satna")
    replace dcode_`dname1991' = "34" if `iso1991' == "MP" & inlist(`dname1991', "sehore")
    replace dcode_`dname1991' = "35" if `iso1991' == "MP" & inlist(`dname1991', "bhopal")
    replace dcode_`dname1991' = "36" if `iso1991' == "MP" & inlist(`dname1991', "seoni")
    replace dcode_`dname1991' = "37" if `iso1991' == "MP" & inlist(`dname1991', "shahdol")
    replace dcode_`dname1991' = "38" if `iso1991' == "MP" & inlist(`dname1991', "shajapur")
    replace dcode_`dname1991' = "39" if `iso1991' == "MP" & inlist(`dname1991', "shivpuri")
    replace dcode_`dname1991' = "40" if `iso1991' == "MP" & inlist(`dname1991', "sidhi")
    replace dcode_`dname1991' = "41" if `iso1991' == "MP" & inlist(`dname1991', "surguja")
    replace dcode_`dname1991' = "42" if `iso1991' == "MP" & inlist(`dname1991', "tikamgarh")
    replace dcode_`dname1991' = "43" if `iso1991' == "MP" & inlist(`dname1991', "ujjain")
    replace dcode_`dname1991' = "44" if `iso1991' == "MP" & inlist(`dname1991', "vidishabhilsa", "vidisha")
    replace dcode_`dname1991' = "45" if `iso1991' == "MP" & inlist(`dname1991', "west nimar")

*===============================================================================

    * tamil nadu
    replace dcode_`dname1991' = "01" if `iso1991' == "TN" & inlist(`dname1991', "chingleput")
    replace dcode_`dname1991' = "02" if `iso1991' == "TN" & inlist(`dname1991', "coimbatore")
    replace dcode_`dname1991' = "03" if `iso1991' == "TN" & inlist(`dname1991', "periyar")
    replace dcode_`dname1991' = "04" if `iso1991' == "TN" & inlist(`dname1991', "kanyakumari")
    replace dcode_`dname1991' = "05" if `iso1991' == "TN" & inlist(`dname1991', "madras")
    replace dcode_`dname1991' = "06" if `iso1991' == "TN" & inlist(`dname1991', "madurai")
    replace dcode_`dname1991' = "07" if `iso1991' == "TN" & inlist(`dname1991', "dindigul anna")
    replace dcode_`dname1991' = "08" if `iso1991' == "TN" & inlist(`dname1991', "nilgiri", "nilgiris")
    replace dcode_`dname1991' = "09" if `iso1991' == "TN" & inlist(`dname1991', "northarcot")
    replace dcode_`dname1991' = "10" if `iso1991' == "TN" & inlist(`dname1991', "ramanathapuram")
    replace dcode_`dname1991' = "11" if `iso1991' == "TN" & inlist(`dname1991', "pasumpon muthuramalinga thevar")
    replace dcode_`dname1991' = "12" if `iso1991' == "TN" & inlist(`dname1991', "kamarajar")
    replace dcode_`dname1991' = "13" if `iso1991' == "TN" & inlist(`dname1991', "salem")
    replace dcode_`dname1991' = "14" if `iso1991' == "TN" & inlist(`dname1991', "dharmapuri")
    replace dcode_`dname1991' = "15" if `iso1991' == "TN" & inlist(`dname1991', "southarcot")
    replace dcode_`dname1991' = "16" if `iso1991' == "TN" & inlist(`dname1991', "thanjavur")
    replace dcode_`dname1991' = "17" if `iso1991' == "TN" & inlist(`dname1991', "tiruchirapalli")
    replace dcode_`dname1991' = "18" if `iso1991' == "TN" & inlist(`dname1991', "pudukkottai")
    replace dcode_`dname1991' = "19" if `iso1991' == "TN" & inlist(`dname1991', "tirunelveli kattabomman")
    replace dcode_`dname1991' = "20" if `iso1991' == "TN" & inlist(`dname1991', "tiruvannamalai sambuvarayar")
    replace dcode_`dname1991' = "21" if `iso1991' == "TN" & inlist(`dname1991', "chidambaranar")

*===============================================================================

    * maharashtra
    replace dcode_`dname1991' = "01" if `iso1991' == "MH" & inlist(`dname1991', "ahmednagar")
    replace dcode_`dname1991' = "02" if `iso1991' == "MH" & inlist(`dname1991', "akola")
    replace dcode_`dname1991' = "03" if `iso1991' == "MH" & inlist(`dname1991', "amravati")
    replace dcode_`dname1991' = "04" if `iso1991' == "MH" & inlist(`dname1991', "aurangabad")
    replace dcode_`dname1991' = "05" if `iso1991' == "MH" & inlist(`dname1991', "jalna")
    replace dcode_`dname1991' = "06" if `iso1991' == "MH" & inlist(`dname1991', "bhandara")
    replace dcode_`dname1991' = "07" if `iso1991' == "MH" & inlist(`dname1991', "bid")
    replace dcode_`dname1991' = "08" if `iso1991' == "MH" & inlist(`dname1991', "buldana")
    replace dcode_`dname1991' = "09" if `iso1991' == "MH" & inlist(`dname1991', "chandrapur")
    replace dcode_`dname1991' = "10" if `iso1991' == "MH" & inlist(`dname1991', "gadchiroli")
    replace dcode_`dname1991' = "11" if `iso1991' == "MH" & inlist(`dname1991', "dhule")
    replace dcode_`dname1991' = "12" if `iso1991' == "MH" & inlist(`dname1991', "greaterbombay")
    replace dcode_`dname1991' = "13" if `iso1991' == "MH" & inlist(`dname1991', "jalgaon")
    replace dcode_`dname1991' = "14" if `iso1991' == "MH" & inlist(`dname1991', "raigarh")
    replace dcode_`dname1991' = "15" if `iso1991' == "MH" & inlist(`dname1991', "kolhapur")
    replace dcode_`dname1991' = "16" if `iso1991' == "MH" & inlist(`dname1991', "nagpur")
    replace dcode_`dname1991' = "17" if `iso1991' == "MH" & inlist(`dname1991', "nanded")
    replace dcode_`dname1991' = "18" if `iso1991' == "MH" & inlist(`dname1991', "nasik")
    replace dcode_`dname1991' = "19" if `iso1991' == "MH" & inlist(`dname1991', "osmanabad")
    replace dcode_`dname1991' = "20" if `iso1991' == "MH" & inlist(`dname1991', "latur")
    replace dcode_`dname1991' = "21" if `iso1991' == "MH" & inlist(`dname1991', "parbhani")
    replace dcode_`dname1991' = "22" if `iso1991' == "MH" & inlist(`dname1991', "pune")
    replace dcode_`dname1991' = "23" if `iso1991' == "MH" & inlist(`dname1991', "ratnagiri")
    replace dcode_`dname1991' = "24" if `iso1991' == "MH" & inlist(`dname1991', "sindhudurg")
    replace dcode_`dname1991' = "25" if `iso1991' == "MH" & inlist(`dname1991', "sangli")
    replace dcode_`dname1991' = "26" if `iso1991' == "MH" & inlist(`dname1991', "satara")
    replace dcode_`dname1991' = "27" if `iso1991' == "MH" & inlist(`dname1991', "solapur")
    replace dcode_`dname1991' = "28" if `iso1991' == "MH" & inlist(`dname1991', "thane")
    replace dcode_`dname1991' = "29" if `iso1991' == "MH" & inlist(`dname1991', "wardha")
    replace dcode_`dname1991' = "30" if `iso1991' == "MH" & inlist(`dname1991', "yavatmal")

*===============================================================================

    * manipur
    replace dcode_`dname1991' = "01" if `iso1991' == "MN" & inlist(`dname1991', "imphal")
    replace dcode_`dname1991' = "02" if `iso1991' == "MN" & inlist(`dname1991', "thoubal")
    replace dcode_`dname1991' = "03" if `iso1991' == "MN" & inlist(`dname1991', "bishnupur")
    replace dcode_`dname1991' = "04" if `iso1991' == "MN" & inlist(`dname1991', "chandel")
    replace dcode_`dname1991' = "05" if `iso1991' == "MN" & inlist(`dname1991', "ukhrul")
    replace dcode_`dname1991' = "06" if `iso1991' == "MN" & inlist(`dname1991', "senapati")
    replace dcode_`dname1991' = "07" if `iso1991' == "MN" & inlist(`dname1991', "churachandpur")
    replace dcode_`dname1991' = "08" if `iso1991' == "MN" & inlist(`dname1991', "tamenglong")

*===============================================================================

    * meghalaya
    replace dcode_`dname1991' = "01" if `iso1991' == "ML" & inlist(`dname1991', "east garo hills")
    replace dcode_`dname1991' = "02" if `iso1991' == "ML" & inlist(`dname1991', "west garo hills")
    replace dcode_`dname1991' = "03" if `iso1991' == "ML" & inlist(`dname1991', "jaintia hills")
    replace dcode_`dname1991' = "04" if `iso1991' == "ML" & inlist(`dname1991', "east khasi hills")
    replace dcode_`dname1991' = "05" if `iso1991' == "ML" & inlist(`dname1991', "west khasi hills")


*===============================================================================

    * mizoram
    replace dcode_`dname1991' = "01" if `iso1991' == "MZ" & inlist(`dname1991', "aizawl")
    replace dcode_`dname1991' = "02" if `iso1991' == "MZ" & inlist(`dname1991', "lunglei")
    replace dcode_`dname1991' = "03" if `iso1991' == "MZ" & inlist(`dname1991', "chhimtuipui")

*===============================================================================

    * karnataka
    replace dcode_`dname1991' = "01" if `iso1991' == "KA" & inlist(`dname1991', "bangalore")
    replace dcode_`dname1991' = "02" if `iso1991' == "KA" & inlist(`dname1991', "bangalore rural")
    replace dcode_`dname1991' = "03" if `iso1991' == "KA" & inlist(`dname1991', "belgaon", "belgaum")
    replace dcode_`dname1991' = "04" if `iso1991' == "KA" & inlist(`dname1991', "bellary")
    replace dcode_`dname1991' = "05" if `iso1991' == "KA" & inlist(`dname1991', "bidar")
    replace dcode_`dname1991' = "06" if `iso1991' == "KA" & inlist(`dname1991', "bijapur")
    replace dcode_`dname1991' = "07" if `iso1991' == "KA" & inlist(`dname1991', "chikmagalur")
    replace dcode_`dname1991' = "08" if `iso1991' == "KA" & inlist(`dname1991', "chitradurga")
    replace dcode_`dname1991' = "09" if `iso1991' == "KA" & inlist(`dname1991', "dharwad")
    replace dcode_`dname1991' = "10" if `iso1991' == "KA" & inlist(`dname1991', "gulbarga")
    replace dcode_`dname1991' = "11" if `iso1991' == "KA" & inlist(`dname1991', "hassan")
    replace dcode_`dname1991' = "12" if `iso1991' == "KA" & inlist(`dname1991', "kodagu")
    replace dcode_`dname1991' = "13" if `iso1991' == "KA" & inlist(`dname1991', "kolar")
    replace dcode_`dname1991' = "14" if `iso1991' == "KA" & inlist(`dname1991', "mandya")
    replace dcode_`dname1991' = "15" if `iso1991' == "KA" & inlist(`dname1991', "mysore")
    replace dcode_`dname1991' = "16" if `iso1991' == "KA" & inlist(`dname1991', "uttar kannada")
    replace dcode_`dname1991' = "17" if `iso1991' == "KA" & inlist(`dname1991', "raichur")
    replace dcode_`dname1991' = "18" if `iso1991' == "KA" & inlist(`dname1991', "shimoga")
    replace dcode_`dname1991' = "19" if `iso1991' == "KA" & inlist(`dname1991', "dakshin kannada")
    replace dcode_`dname1991' = "20" if `iso1991' == "KA" & inlist(`dname1991', "tumkur")

*===============================================================================

    * nagaland
    replace dcode_`dname1991' = "01" if `iso1991' == "NL" & inlist(`dname1991', "kohima")
    replace dcode_`dname1991' = "02" if `iso1991' == "NL" & inlist(`dname1991', "mokokchung")
    replace dcode_`dname1991' = "03" if `iso1991' == "NL" & inlist(`dname1991', "tuensang")
    replace dcode_`dname1991' = "04" if `iso1991' == "NL" & inlist(`dname1991', "mon")
    replace dcode_`dname1991' = "05" if `iso1991' == "NL" & inlist(`dname1991', "phek")
    replace dcode_`dname1991' = "06" if `iso1991' == "NL" & inlist(`dname1991', "zunheboto")
    replace dcode_`dname1991' = "07" if `iso1991' == "NL" & inlist(`dname1991', "wokha")

*===============================================================================

    * arunachal pradesh
    replace dcode_`dname1991' = "01" if `iso1991' == "AR" & inlist(`dname1991', "west kameng")
    replace dcode_`dname1991' = "02" if `iso1991' == "AR" & inlist(`dname1991', "tawang")
    replace dcode_`dname1991' = "03" if `iso1991' == "AR" & inlist(`dname1991', "east kameng")
    replace dcode_`dname1991' = "04" if `iso1991' == "AR" & inlist(`dname1991', "lohit")
    replace dcode_`dname1991' = "05" if `iso1991' == "AR" & inlist(`dname1991', "dibang valley")
    replace dcode_`dname1991' = "06" if `iso1991' == "AR" & inlist(`dname1991', "west siang")
    replace dcode_`dname1991' = "07" if `iso1991' == "AR" & inlist(`dname1991', "east siang")
    replace dcode_`dname1991' = "08" if `iso1991' == "AR" & inlist(`dname1991', "upper subansiri")
    replace dcode_`dname1991' = "09" if `iso1991' == "AR" & inlist(`dname1991', "lower subansiri")
    replace dcode_`dname1991' = "10" if `iso1991' == "AR" & inlist(`dname1991', "tirap")
    replace dcode_`dname1991' = "11" if `iso1991' == "AR" & inlist(`dname1991', "changlang")

*===============================================================================

    * orissa
    replace dcode_`dname1991' = "01" if `iso1991' == "OR" & inlist(`dname1991', "baleshwar")
    replace dcode_`dname1991' = "02" if `iso1991' == "OR" & inlist(`dname1991', "phulabani")
    replace dcode_`dname1991' = "03" if `iso1991' == "OR" & inlist(`dname1991', "bolangir")
    replace dcode_`dname1991' = "04" if `iso1991' == "OR" & inlist(`dname1991', "cuttack")
    replace dcode_`dname1991' = "05" if `iso1991' == "OR" & inlist(`dname1991', "dhenkanal")
    replace dcode_`dname1991' = "06" if `iso1991' == "OR" & inlist(`dname1991', "ganjam")
    replace dcode_`dname1991' = "07" if `iso1991' == "OR" & inlist(`dname1991', "kalahandi")
    replace dcode_`dname1991' = "08" if `iso1991' == "OR" & inlist(`dname1991', "keonjhar")
    replace dcode_`dname1991' = "09" if `iso1991' == "OR" & inlist(`dname1991', "koraput")
    replace dcode_`dname1991' = "10" if `iso1991' == "OR" & inlist(`dname1991', "mayurbhanj")
    replace dcode_`dname1991' = "11" if `iso1991' == "OR" & inlist(`dname1991', "puri", "purl")
    replace dcode_`dname1991' = "12" if `iso1991' == "OR" & inlist(`dname1991', "sambalpur")
    replace dcode_`dname1991' = "13" if `iso1991' == "OR" & inlist(`dname1991', "sundargarh")

*===============================================================================

    * pondicherry
    replace dcode_`dname1991' = "01" if `iso1991' == "PY" & inlist(`dname1991', "karaikal")
    replace dcode_`dname1991' = "02" if `iso1991' == "PY" & inlist(`dname1991', "mahe")
    replace dcode_`dname1991' = "03" if `iso1991' == "PY" & inlist(`dname1991', "pondicherry")
    replace dcode_`dname1991' = "04" if `iso1991' == "PY" & inlist(`dname1991', "yanam")

*===============================================================================

    * punjab
    replace dcode_`dname1991' = "01" if `iso1991' == "PB" & inlist(`dname1991', "amritsar")
    replace dcode_`dname1991' = "02" if `iso1991' == "PB" & inlist(`dname1991', "bathinda")
    replace dcode_`dname1991' = "03" if `iso1991' == "PB" & inlist(`dname1991', "firozpur")
    replace dcode_`dname1991' = "04" if `iso1991' == "PB" & inlist(`dname1991', "gurdaspur")
    replace dcode_`dname1991' = "05" if `iso1991' == "PB" & inlist(`dname1991', "hoshiarpur")
    replace dcode_`dname1991' = "06" if `iso1991' == "PB" & inlist(`dname1991', "jalandhar")
    replace dcode_`dname1991' = "07" if `iso1991' == "PB" & inlist(`dname1991', "faridkot")
    replace dcode_`dname1991' = "08" if `iso1991' == "PB" & inlist(`dname1991', "kapurthala")
    replace dcode_`dname1991' = "09" if `iso1991' == "PB" & inlist(`dname1991', "ludhiana")
    replace dcode_`dname1991' = "10" if `iso1991' == "PB" & inlist(`dname1991', "patiala")
    replace dcode_`dname1991' = "11" if `iso1991' == "PB" & inlist(`dname1991', "rupnagar")
    replace dcode_`dname1991' = "12" if `iso1991' == "PB" & inlist(`dname1991', "sangrur")

*===============================================================================

    * rajasthan
    replace dcode_`dname1991' = "01" if `iso1991' == "RJ" & inlist(`dname1991', "ajmer")
    replace dcode_`dname1991' = "02" if `iso1991' == "RJ" & inlist(`dname1991', "alwar")
    replace dcode_`dname1991' = "03" if `iso1991' == "RJ" & inlist(`dname1991', "banswara")
    replace dcode_`dname1991' = "04" if `iso1991' == "RJ" & inlist(`dname1991', "barmer")
    replace dcode_`dname1991' = "05" if `iso1991' == "RJ" & inlist(`dname1991', "bharatpur")
    replace dcode_`dname1991' = "06" if `iso1991' == "RJ" & inlist(`dname1991', "dhaulpur")
    replace dcode_`dname1991' = "07" if `iso1991' == "RJ" & inlist(`dname1991', "bhilwara", "bhilwar")
    replace dcode_`dname1991' = "08" if `iso1991' == "RJ" & inlist(`dname1991', "bikaner")
    replace dcode_`dname1991' = "09" if `iso1991' == "RJ" & inlist(`dname1991', "bundi")
    replace dcode_`dname1991' = "10" if `iso1991' == "RJ" & inlist(`dname1991', "chittaurgarh", "chitorgarh")
    replace dcode_`dname1991' = "11" if `iso1991' == "RJ" & inlist(`dname1991', "churu")
    replace dcode_`dname1991' = "12" if `iso1991' == "RJ" & inlist(`dname1991', "dungarpur")
    replace dcode_`dname1991' = "13" if `iso1991' == "RJ" & inlist(`dname1991', "ganganagar")
    replace dcode_`dname1991' = "14" if `iso1991' == "RJ" & inlist(`dname1991', "jaipur")
    replace dcode_`dname1991' = "15" if `iso1991' == "RJ" & inlist(`dname1991', "jaisalmer")
    replace dcode_`dname1991' = "16" if `iso1991' == "RJ" & inlist(`dname1991', "jalor")
    replace dcode_`dname1991' = "17" if `iso1991' == "RJ" & inlist(`dname1991', "jhalawar")
    replace dcode_`dname1991' = "18" if `iso1991' == "RJ" & inlist(`dname1991', "jhunjhunun", "jhunjhunu")
    replace dcode_`dname1991' = "19" if `iso1991' == "RJ" & inlist(`dname1991', "jodhpur")
    replace dcode_`dname1991' = "20" if `iso1991' == "RJ" & inlist(`dname1991', "kota")
    replace dcode_`dname1991' = "21" if `iso1991' == "RJ" & inlist(`dname1991', "nagaur")
    replace dcode_`dname1991' = "22" if `iso1991' == "RJ" & inlist(`dname1991', "pali", "pall")
    replace dcode_`dname1991' = "23" if `iso1991' == "RJ" & inlist(`dname1991', "sawaimadhopur")
    replace dcode_`dname1991' = "24" if `iso1991' == "RJ" & inlist(`dname1991', "sikar")
    replace dcode_`dname1991' = "25" if `iso1991' == "RJ" & inlist(`dname1991', "sirohi")
    replace dcode_`dname1991' = "26" if `iso1991' == "RJ" & inlist(`dname1991', "tonk")
    replace dcode_`dname1991' = "27" if `iso1991' == "RJ" & inlist(`dname1991', "udaipur")

*===============================================================================

    * sikkim
    replace dcode_`dname1991' = "01" if `iso1991' == "SK" & inlist(`dname1991', "north district")
    replace dcode_`dname1991' = "02" if `iso1991' == "SK" & inlist(`dname1991', "south district")
    replace dcode_`dname1991' = "03" if `iso1991' == "SK" & inlist(`dname1991', "east district")
    replace dcode_`dname1991' = "04" if `iso1991' == "SK" & inlist(`dname1991', "west district")

*===============================================================================

    * tripura
    replace dcode_`dname1991' = "01" if `iso1991' == "TR" & inlist(`dname1991', "north tripura")
    replace dcode_`dname1991' = "02" if `iso1991' == "TR" & inlist(`dname1991', "south tripura")
    replace dcode_`dname1991' = "03" if `iso1991' == "TR" & inlist(`dname1991', "west tripura")

*===============================================================================

    * uttar pradesh
    replace dcode_`dname1991' = "01" if `iso1991' == "UP" & inlist(`dname1991', "agra")
    replace dcode_`dname1991' = "02" if `iso1991' == "UP" & inlist(`dname1991', "aligarh")
    replace dcode_`dname1991' = "03" if `iso1991' == "UP" & inlist(`dname1991', "allahabad")
    replace dcode_`dname1991' = "04" if `iso1991' == "UP" & inlist(`dname1991', "almora")
    replace dcode_`dname1991' = "05" if `iso1991' == "UP" & inlist(`dname1991', "azamgarh")
    replace dcode_`dname1991' = "06" if `iso1991' == "UP" & inlist(`dname1991', "mau")
    replace dcode_`dname1991' = "07" if `iso1991' == "UP" & inlist(`dname1991', "bahraich")
    replace dcode_`dname1991' = "08" if `iso1991' == "UP" & inlist(`dname1991', "ballia")
    replace dcode_`dname1991' = "09" if `iso1991' == "UP" & inlist(`dname1991', "banda")
    replace dcode_`dname1991' = "10" if `iso1991' == "UP" & inlist(`dname1991', "barabanki")
    replace dcode_`dname1991' = "11" if `iso1991' == "UP" & inlist(`dname1991', "bareilly")
    replace dcode_`dname1991' = "12" if `iso1991' == "UP" & inlist(`dname1991', "basti")
    replace dcode_`dname1991' = "13" if `iso1991' == "UP" & inlist(`dname1991', "siddharthnagar")
    replace dcode_`dname1991' = "14" if `iso1991' == "UP" & inlist(`dname1991', "bijnor")
    replace dcode_`dname1991' = "15" if `iso1991' == "UP" & inlist(`dname1991', "moradabad")
    replace dcode_`dname1991' = "16" if `iso1991' == "UP" & inlist(`dname1991', "budaun")
    replace dcode_`dname1991' = "17" if `iso1991' == "UP" & inlist(`dname1991', "bulandshahr")
    replace dcode_`dname1991' = "18" if `iso1991' == "UP" & inlist(`dname1991', "chamoli")
    replace dcode_`dname1991' = "19" if `iso1991' == "UP" & inlist(`dname1991', "dehradun")
    replace dcode_`dname1991' = "20" if `iso1991' == "UP" & inlist(`dname1991', "deoria")
    replace dcode_`dname1991' = "21" if `iso1991' == "UP" & inlist(`dname1991', "etah")
    replace dcode_`dname1991' = "22" if `iso1991' == "UP" & inlist(`dname1991', "etawah")
    replace dcode_`dname1991' = "23" if `iso1991' == "UP" & inlist(`dname1991', "faizabad")
    replace dcode_`dname1991' = "24" if `iso1991' == "UP" & inlist(`dname1991', "farrukhabad")
    replace dcode_`dname1991' = "25" if `iso1991' == "UP" & inlist(`dname1991', "fatehpur")
    replace dcode_`dname1991' = "26" if `iso1991' == "UP" & inlist(`dname1991', "garhwal")
    replace dcode_`dname1991' = "27" if `iso1991' == "UP" & inlist(`dname1991', "ghazipur")
    replace dcode_`dname1991' = "28" if `iso1991' == "UP" & inlist(`dname1991', "gonda")
    replace dcode_`dname1991' = "29" if `iso1991' == "UP" & inlist(`dname1991', "gorakhpur")
    replace dcode_`dname1991' = "30" if `iso1991' == "UP" & inlist(`dname1991', "maharajganj")
    replace dcode_`dname1991' = "31" if `iso1991' == "UP" & inlist(`dname1991', "hamirpur")
    replace dcode_`dname1991' = "32" if `iso1991' == "UP" & inlist(`dname1991', "hardoi")
    replace dcode_`dname1991' = "33" if `iso1991' == "UP" & inlist(`dname1991', "jalaun")
    replace dcode_`dname1991' = "34" if `iso1991' == "UP" & inlist(`dname1991', "jaunpur")
    replace dcode_`dname1991' = "35" if `iso1991' == "UP" & inlist(`dname1991', "jhansi")
    replace dcode_`dname1991' = "36" if `iso1991' == "UP" & inlist(`dname1991', "lalitpur")
    replace dcode_`dname1991' = "37" if `iso1991' == "UP" & inlist(`dname1991', "kanpur nagar")
    replace dcode_`dname1991' = "38" if `iso1991' == "UP" & inlist(`dname1991', "kanpur dehat")
    replace dcode_`dname1991' = "39" if `iso1991' == "UP" & inlist(`dname1991', "kheri")
    replace dcode_`dname1991' = "40" if `iso1991' == "UP" & inlist(`dname1991', "lucknow")
    replace dcode_`dname1991' = "41" if `iso1991' == "UP" & inlist(`dname1991', "mainpuri")
    replace dcode_`dname1991' = "42" if `iso1991' == "UP" & inlist(`dname1991', "firozabad")
    replace dcode_`dname1991' = "43" if `iso1991' == "UP" & inlist(`dname1991', "mathura")
    replace dcode_`dname1991' = "44" if `iso1991' == "UP" & inlist(`dname1991', "meerut")
    replace dcode_`dname1991' = "45" if `iso1991' == "UP" & inlist(`dname1991', "ghaziabad")
    replace dcode_`dname1991' = "46" if `iso1991' == "UP" & inlist(`dname1991', "mirzapur")
    replace dcode_`dname1991' = "47" if `iso1991' == "UP" & inlist(`dname1991', "sonbhadra")
    replace dcode_`dname1991' = "48" if `iso1991' == "UP" & inlist(`dname1991', "muzaffarnagar")
    replace dcode_`dname1991' = "49" if `iso1991' == "UP" & inlist(`dname1991', "nainital")
    replace dcode_`dname1991' = "50" if `iso1991' == "UP" & inlist(`dname1991', "pilibhit")
    replace dcode_`dname1991' = "51" if `iso1991' == "UP" & inlist(`dname1991', "pithoragarh")
    replace dcode_`dname1991' = "52" if `iso1991' == "UP" & inlist(`dname1991', "pratapgarh")
    replace dcode_`dname1991' = "53" if `iso1991' == "UP" & inlist(`dname1991', "raebareli")
    replace dcode_`dname1991' = "54" if `iso1991' == "UP" & inlist(`dname1991', "rampur")
    replace dcode_`dname1991' = "55" if `iso1991' == "UP" & inlist(`dname1991', "saharanpur")
    replace dcode_`dname1991' = "56" if `iso1991' == "UP" & inlist(`dname1991', "hardwar")
    replace dcode_`dname1991' = "57" if `iso1991' == "UP" & inlist(`dname1991', "shahjahanpur")
    replace dcode_`dname1991' = "58" if `iso1991' == "UP" & inlist(`dname1991', "sitapur")
    replace dcode_`dname1991' = "59" if `iso1991' == "UP" & inlist(`dname1991', "sultanpur")
    replace dcode_`dname1991' = "60" if `iso1991' == "UP" & inlist(`dname1991', "tehrigarhwal")
    replace dcode_`dname1991' = "61" if `iso1991' == "UP" & inlist(`dname1991', "unnao")
    replace dcode_`dname1991' = "62" if `iso1991' == "UP" & inlist(`dname1991', "uttarkashi")
    replace dcode_`dname1991' = "63" if `iso1991' == "UP" & inlist(`dname1991', "varanasi")

*===============================================================================

    * west bengal
    replace dcode_`dname1991' = "01" if `iso1991' == "WB" & inlist(`dname1991', "bankura")
    replace dcode_`dname1991' = "02" if `iso1991' == "WB" & inlist(`dname1991', "birbhum")
    replace dcode_`dname1991' = "03" if `iso1991' == "WB" & inlist(`dname1991', "barddhaman")
    replace dcode_`dname1991' = "04" if `iso1991' == "WB" & inlist(`dname1991', "calcutta")
    replace dcode_`dname1991' = "05" if `iso1991' == "WB" & inlist(`dname1991', "koch bihar")
    replace dcode_`dname1991' = "06" if `iso1991' == "WB" & inlist(`dname1991', "darjiling")
    replace dcode_`dname1991' = "07" if `iso1991' == "WB" & inlist(`dname1991', "hugli")
    replace dcode_`dname1991' = "08" if `iso1991' == "WB" & inlist(`dname1991', "haora")
    replace dcode_`dname1991' = "09" if `iso1991' == "WB" & inlist(`dname1991', "jalpaiguri")
    replace dcode_`dname1991' = "10" if `iso1991' == "WB" & inlist(`dname1991', "maldah")
    replace dcode_`dname1991' = "11" if `iso1991' == "WB" & inlist(`dname1991', "medinipur")
    replace dcode_`dname1991' = "12" if `iso1991' == "WB" & inlist(`dname1991', "murshidabad")
    replace dcode_`dname1991' = "13" if `iso1991' == "WB" & inlist(`dname1991', "nadia")
    replace dcode_`dname1991' = "14" if `iso1991' == "WB" & inlist(`dname1991', "puruliya")
    replace dcode_`dname1991' = "15" if `iso1991' == "WB" & inlist(`dname1991', "north twenty four parganas")
    replace dcode_`dname1991' = "16" if `iso1991' == "WB" & inlist(`dname1991', "south twenty four parganas")
    replace dcode_`dname1991' = "17" if `iso1991' == "WB" & inlist(`dname1991', "westdinajpur")


*===============================================================================
end

*-------------------------------------------------------------------------------
* 2001
*-------------------------------------------------------------------------------
capture program drop dcode2001
program define dcode2001

* store input into macros
local dname2001 `1'
local iso2001 `2'

*===============================================================================

    * jammu and kashmir
    qui replace dcode_`dname2001' = "01" if `iso2001' == "JK" & inlist(`dname2001', "kupwara", "kupwara (muzaffarabad)", "muzaffarabad")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "JK" & inlist(`dname2001', "baramula", "baramulla", "baramula (kashmir north)", "kashmir north")
    qui replace dcode_`dname2001' = "03" if `iso2001' == "JK" & inlist(`dname2001', "srinagar")
    qui replace dcode_`dname2001' = "04" if `iso2001' == "JK" & inlist(`dname2001', "badgam", "budgam", "bagdam")
    qui replace dcode_`dname2001' = "05" if `iso2001' == "JK" & inlist(`dname2001', "pulwama")
    qui replace dcode_`dname2001' = "06" if `iso2001' == "JK" & inlist(`dname2001', "anantnag", "anantnag (kashmir south)", "kashmir south")
    qui replace dcode_`dname2001' = "07" if `iso2001' == "JK" & inlist(`dname2001', "leh(ladakh)", "leh", "ladakh (leh)", "ladakh", "leh_ladakh", "lehladakh")
    qui replace dcode_`dname2001' = "08" if `iso2001' == "JK" & inlist(`dname2001', "kargil")
    qui replace dcode_`dname2001' = "09" if `iso2001' == "JK" & inlist(`dname2001', "doda")
    qui replace dcode_`dname2001' = "10" if `iso2001' == "JK" & inlist(`dname2001', "udhampur")
    qui replace dcode_`dname2001' = "11" if `iso2001' == "JK" & inlist(`dname2001', "punch", "poonch")
    qui replace dcode_`dname2001' = "12" if `iso2001' == "JK" & inlist(`dname2001', "rajauri", "rajouri")
    qui replace dcode_`dname2001' = "13" if `iso2001' == "JK" & inlist(`dname2001', "jammu")
    qui replace dcode_`dname2001' = "14" if `iso2001' == "JK" & inlist(`dname2001', "kathua")

*===============================================================================

    * himachal pradesh
    qui replace dcode_`dname2001' = "01" if `iso2001' == "HP" & inlist(`dname2001', "chamba")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "HP" & inlist(`dname2001', "kangra")
    qui replace dcode_`dname2001' = "03" if `iso2001' == "HP" & inlist(`dname2001', "lahul&spiti", "lahaul & spiti", "lahulspiti")
    qui replace dcode_`dname2001' = "04" if `iso2001' == "HP" & inlist(`dname2001', "kullu")
    qui replace dcode_`dname2001' = "05" if `iso2001' == "HP" & inlist(`dname2001', "mandi")
    qui replace dcode_`dname2001' = "06" if `iso2001' == "HP" & inlist(`dname2001', "hamirpur", "hamirpur (hp)", "hamirpur_h", "hamirpur(himachal)")
    qui replace dcode_`dname2001' = "07" if `iso2001' == "HP" & inlist(`dname2001', "una")
    qui replace dcode_`dname2001' = "08" if `iso2001' == "HP" & inlist(`dname2001', "bilaspur", "bilaspur (hp)", "bilaspur_h", "bilaspur(himachal)")
    qui replace dcode_`dname2001' = "09" if `iso2001' == "HP" & inlist(`dname2001', "solan")
    qui replace dcode_`dname2001' = "10" if `iso2001' == "HP" & inlist(`dname2001', "sirmaur", "sirmur")
    qui replace dcode_`dname2001' = "11" if `iso2001' == "HP" & inlist(`dname2001', "shimla", "simla")
    qui replace dcode_`dname2001' = "12" if `iso2001' == "HP" & inlist(`dname2001', "kinnaur")

*===============================================================================

    * punjab
    qui replace dcode_`dname2001' = "01" if `iso2001' == "PB" & inlist(`dname2001', "gurdaspur")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "PB" & inlist(`dname2001', "amritsar")
    qui replace dcode_`dname2001' = "03" if `iso2001' == "PB" & inlist(`dname2001', "kapurthala")
    qui replace dcode_`dname2001' = "04" if `iso2001' == "PB" & inlist(`dname2001', "jalandhar", "jullundur")
    qui replace dcode_`dname2001' = "05" if `iso2001' == "PB" & inlist(`dname2001', "hoshiarpur")
    qui replace dcode_`dname2001' = "06" if `iso2001' == "PB" & inlist(`dname2001', "nawanshahr", "nawanshahar","nawashahar", "nawanshasher", "nawashasher", "shaheed bhagat singh nagar", "shahid bhagat singh nagar")
    qui replace dcode_`dname2001' = "07" if `iso2001' == "PB" & inlist(`dname2001', "rupnagar")
    qui replace dcode_`dname2001' = "08" if `iso2001' == "PB" & inlist(`dname2001', "fatehgarhsahib", "fatehabad_sah", "fatehgarh", "fatehgarh sahib", "fateh garh")
    qui replace dcode_`dname2001' = "09" if `iso2001' == "PB" & inlist(`dname2001', "ludhiana")
    qui replace dcode_`dname2001' = "10" if `iso2001' == "PB" & inlist(`dname2001', "moga")
    qui replace dcode_`dname2001' = "11" if `iso2001' == "PB" & inlist(`dname2001', "firozpur", "ferozepur", "firozepur", "ferozpur")
    qui replace dcode_`dname2001' = "12" if `iso2001' == "PB" & inlist(`dname2001', "muktsar", "sri muktsar sahib", "mukatsar", "muktasar")
    qui replace dcode_`dname2001' = "13" if `iso2001' == "PB" & inlist(`dname2001', "faridkot")
    qui replace dcode_`dname2001' = "14" if `iso2001' == "PB" & inlist(`dname2001', "bathinda", "bhatinda")
    qui replace dcode_`dname2001' = "15" if `iso2001' == "PB" & inlist(`dname2001', "mansa")
    qui replace dcode_`dname2001' = "16" if `iso2001' == "PB" & inlist(`dname2001', "sangrur", "sangroor")
    qui replace dcode_`dname2001' = "17" if `iso2001' == "PB" & inlist(`dname2001', "patiala")

*===============================================================================

    * chandigarh
    qui replace dcode_`dname2001' = "01" if `iso2001' == "CH" & inlist(`dname2001', "chandigarh")

*===============================================================================

    * uttarakhand
    qui replace dcode_`dname2001' = "01" if `iso2001' == "UT" & inlist(`dname2001', "uttarkashi", "uttrakashi")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "UT" & inlist(`dname2001', "chamoli")
    qui replace dcode_`dname2001' = "03" if `iso2001' == "UT" & inlist(`dname2001', "rudraprayag")
    qui replace dcode_`dname2001' = "04" if `iso2001' == "UT" & inlist(`dname2001', "tehrigarhwal", "tehri", "tehri_garhwal")
    qui replace dcode_`dname2001' = "05" if `iso2001' == "UT" & inlist(`dname2001', "dehradun", "dehra dun")
    qui replace dcode_`dname2001' = "06" if `iso2001' == "UT" & inlist(`dname2001', "garhwal", "pauri garhwal", "pauri")
    qui replace dcode_`dname2001' = "07" if `iso2001' == "UT" & inlist(`dname2001', "pithoragarh")
    qui replace dcode_`dname2001' = "08" if `iso2001' == "UT" & inlist(`dname2001', "bageshwar")
    qui replace dcode_`dname2001' = "09" if `iso2001' == "UT" & inlist(`dname2001', "almora")
    qui replace dcode_`dname2001' = "10" if `iso2001' == "UT" & inlist(`dname2001', "champawat", "champavat")
    qui replace dcode_`dname2001' = "11" if `iso2001' == "UT" & inlist(`dname2001', "nainital", "naintal")
    qui replace dcode_`dname2001' = "12" if `iso2001' == "UT" & inlist(`dname2001', "udhamsinghnagar", "u.s. nagar", "udham_singh_n")
    qui replace dcode_`dname2001' = "13" if `iso2001' == "UT" & inlist(`dname2001', "hardwar", "haridwar")

*===============================================================================

    * haryana
    qui replace dcode_`dname2001' = "01" if `iso2001' == "HR" & inlist(`dname2001', "panchkula")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "HR" & inlist(`dname2001', "ambala")
    qui replace dcode_`dname2001' = "03" if `iso2001' == "HR" & inlist(`dname2001', "yamunanagar")
    qui replace dcode_`dname2001' = "04" if `iso2001' == "HR" & inlist(`dname2001', "kurukshetra")
    qui replace dcode_`dname2001' = "05" if `iso2001' == "HR" & inlist(`dname2001', "kaithal")
    qui replace dcode_`dname2001' = "06" if `iso2001' == "HR" & inlist(`dname2001', "karnal")
    qui replace dcode_`dname2001' = "07" if `iso2001' == "HR" & inlist(`dname2001', "panipat")
    qui replace dcode_`dname2001' = "08" if `iso2001' == "HR" & inlist(`dname2001', "sonipat")
    qui replace dcode_`dname2001' = "09" if `iso2001' == "HR" & inlist(`dname2001', "jind")
    qui replace dcode_`dname2001' = "10" if `iso2001' == "HR" & inlist(`dname2001', "fatehabad")
    qui replace dcode_`dname2001' = "11" if `iso2001' == "HR" & inlist(`dname2001', "sirsa")
    qui replace dcode_`dname2001' = "12" if `iso2001' == "HR" & inlist(`dname2001', "hisar", "hissar")
    qui replace dcode_`dname2001' = "13" if `iso2001' == "HR" & inlist(`dname2001', "bhiwani")
    qui replace dcode_`dname2001' = "14" if `iso2001' == "HR" & inlist(`dname2001', "rohtak")
    qui replace dcode_`dname2001' = "15" if `iso2001' == "HR" & inlist(`dname2001', "jhajjar")
    qui replace dcode_`dname2001' = "16" if `iso2001' == "HR" & inlist(`dname2001', "mahendragarh")
    qui replace dcode_`dname2001' = "17" if `iso2001' == "HR" & inlist(`dname2001', "rewari")
    qui replace dcode_`dname2001' = "18" if `iso2001' == "HR" & inlist(`dname2001', "gurgaon")
    qui replace dcode_`dname2001' = "19" if `iso2001' == "HR" & inlist(`dname2001', "faridabad")

*===============================================================================

    * delhi & ncr
    qui replace dcode_`dname2001' = "01" if `iso2001' == "DL" & inlist(`dname2001', "north west", "northwest", "north west delhi", "northwest delhi", "northwestdelhi")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "DL" & inlist(`dname2001', "north", "north delhi", "northdelhi")
    qui replace dcode_`dname2001' = "03" if `iso2001' == "DL" & inlist(`dname2001', "north east", "northeast", "north east delhi", "northeast delhi", "northeastdelhi")
    qui replace dcode_`dname2001' = "04" if `iso2001' == "DL" & inlist(`dname2001', "east", "east delhi", "eastdelhi")
    qui replace dcode_`dname2001' = "05" if `iso2001' == "DL" & inlist(`dname2001', "new delhi", "newdelhi")
    qui replace dcode_`dname2001' = "06" if `iso2001' == "DL" & inlist(`dname2001', "central", "central delhi", "centraldelhi")
    qui replace dcode_`dname2001' = "07" if `iso2001' == "DL" & inlist(`dname2001', "west", "west delhi", "westdelhi")
    qui replace dcode_`dname2001' = "08" if `iso2001' == "DL" & inlist(`dname2001', "south west", "southwest", "south west delhi", "southwest delhi", "southwestdelhi")
    qui replace dcode_`dname2001' = "09" if `iso2001' == "DL" & inlist(`dname2001', "south", "south delhi", "southdelhi")

*===============================================================================

    * rajasthan
    qui replace dcode_`dname2001' = "01" if `iso2001' == "RJ" & inlist(`dname2001', "ganganagar", "sri ganganagar")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "RJ" & inlist(`dname2001', "hanumangarh", "hanumangar")
    qui replace dcode_`dname2001' = "03" if `iso2001' == "RJ" & inlist(`dname2001', "bikaner")
    qui replace dcode_`dname2001' = "04" if `iso2001' == "RJ" & inlist(`dname2001', "churu")
    qui replace dcode_`dname2001' = "05" if `iso2001' == "RJ" & inlist(`dname2001', "jhunjhunun", "jhunjhunu", "jhunjunu")
    qui replace dcode_`dname2001' = "06" if `iso2001' == "RJ" & inlist(`dname2001', "alwar")
    qui replace dcode_`dname2001' = "07" if `iso2001' == "RJ" & inlist(`dname2001', "bharatpur")
    qui replace dcode_`dname2001' = "08" if `iso2001' == "RJ" & inlist(`dname2001', "dhaulpur", "dholpur")
    qui replace dcode_`dname2001' = "09" if `iso2001' == "RJ" & inlist(`dname2001', "karauli")
    qui replace dcode_`dname2001' = "10" if `iso2001' == "RJ" & inlist(`dname2001', "sawaimadhopur", "sawal_madhopu")
    qui replace dcode_`dname2001' = "11" if `iso2001' == "RJ" & inlist(`dname2001', "dausa")
    qui replace dcode_`dname2001' = "12" if `iso2001' == "RJ" & inlist(`dname2001', "jaipur")
    qui replace dcode_`dname2001' = "13" if `iso2001' == "RJ" & inlist(`dname2001', "sikar")
    qui replace dcode_`dname2001' = "14" if `iso2001' == "RJ" & inlist(`dname2001', "nagaur")
    qui replace dcode_`dname2001' = "15" if `iso2001' == "RJ" & inlist(`dname2001', "jodhpur")
    qui replace dcode_`dname2001' = "16" if `iso2001' == "RJ" & inlist(`dname2001', "jaisalmer")
    qui replace dcode_`dname2001' = "17" if `iso2001' == "RJ" & inlist(`dname2001', "barmer")
    qui replace dcode_`dname2001' = "18" if `iso2001' == "RJ" & inlist(`dname2001', "jalor", "jalore")
    qui replace dcode_`dname2001' = "19" if `iso2001' == "RJ" & inlist(`dname2001', "sirohi")
    qui replace dcode_`dname2001' = "20" if `iso2001' == "RJ" & inlist(`dname2001', "pali")
    qui replace dcode_`dname2001' = "21" if `iso2001' == "RJ" & inlist(`dname2001', "ajmer")
    qui replace dcode_`dname2001' = "22" if `iso2001' == "RJ" & inlist(`dname2001', "tonk")
    qui replace dcode_`dname2001' = "23" if `iso2001' == "RJ" & inlist(`dname2001', "bundi")
    qui replace dcode_`dname2001' = "24" if `iso2001' == "RJ" & inlist(`dname2001', "bhilwara")
    qui replace dcode_`dname2001' = "25" if `iso2001' == "RJ" & inlist(`dname2001', "rajsamand")
    qui replace dcode_`dname2001' = "26" if `iso2001' == "RJ" & inlist(`dname2001', "udaipur")
    qui replace dcode_`dname2001' = "27" if `iso2001' == "RJ" & inlist(`dname2001', "dungarpur", "dungapur")
    qui replace dcode_`dname2001' = "28" if `iso2001' == "RJ" & inlist(`dname2001', "banswara")
    qui replace dcode_`dname2001' = "29" if `iso2001' == "RJ" & inlist(`dname2001', "chittaurgarh", "chittorgarh")
    qui replace dcode_`dname2001' = "30" if `iso2001' == "RJ" & inlist(`dname2001', "kota")
    qui replace dcode_`dname2001' = "31" if `iso2001' == "RJ" & inlist(`dname2001', "baran")
    qui replace dcode_`dname2001' = "32" if `iso2001' == "RJ" & inlist(`dname2001', "jhalawar")

*===============================================================================

    * uttar pradesh
    qui replace dcode_`dname2001' = "01" if `iso2001' == "UP" & inlist(`dname2001', "saharanpur", "sarahanpur")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "UP" & inlist(`dname2001', "muzaffarnagar")
    qui replace dcode_`dname2001' = "03" if `iso2001' == "UP" & inlist(`dname2001', "bijnor")
    qui replace dcode_`dname2001' = "04" if `iso2001' == "UP" & inlist(`dname2001', "moradabad")
    qui replace dcode_`dname2001' = "05" if `iso2001' == "UP" & inlist(`dname2001', "rampur")
    qui replace dcode_`dname2001' = "06" if `iso2001' == "UP" & inlist(`dname2001', "jyotibaphulenagar", "jyotiba_phule", "jphulenagar", "jyotibaphulenag")
    qui replace dcode_`dname2001' = "07" if `iso2001' == "UP" & inlist(`dname2001', "meerut")
    qui replace dcode_`dname2001' = "08" if `iso2001' == "UP" & inlist(`dname2001', "baghpat", "bagpat")
    qui replace dcode_`dname2001' = "09" if `iso2001' == "UP" & inlist(`dname2001', "ghaziabad")
    qui replace dcode_`dname2001' = "10" if `iso2001' == "UP" & inlist(`dname2001', "gautambuddhanagar", "gautam_buddha", "gbuddhanagar")
    qui replace dcode_`dname2001' = "11" if `iso2001' == "UP" & inlist(`dname2001', "bulandshahr", "bulandshahar")
    qui replace dcode_`dname2001' = "12" if `iso2001' == "UP" & inlist(`dname2001', "aligarh")
    qui replace dcode_`dname2001' = "13" if `iso2001' == "UP" & inlist(`dname2001', "hathras")
    qui replace dcode_`dname2001' = "14" if `iso2001' == "UP" & inlist(`dname2001', "mathura")
    qui replace dcode_`dname2001' = "15" if `iso2001' == "UP" & inlist(`dname2001', "agra")
    qui replace dcode_`dname2001' = "16" if `iso2001' == "UP" & inlist(`dname2001', "firozabad")
    qui replace dcode_`dname2001' = "17" if `iso2001' == "UP" & inlist(`dname2001', "etah")
    qui replace dcode_`dname2001' = "18" if `iso2001' == "UP" & inlist(`dname2001', "mainpuri")
    qui replace dcode_`dname2001' = "19" if `iso2001' == "UP" & inlist(`dname2001', "budaun")
    qui replace dcode_`dname2001' = "20" if `iso2001' == "UP" & inlist(`dname2001', "bareilly")
    qui replace dcode_`dname2001' = "21" if `iso2001' == "UP" & inlist(`dname2001', "pilibhit")
    qui replace dcode_`dname2001' = "22" if `iso2001' == "UP" & inlist(`dname2001', "shahjahanpur")
    qui replace dcode_`dname2001' = "23" if `iso2001' == "UP" & inlist(`dname2001', "kheri", "lakhimpur kheri", "lakhimpur-kheri", "lakhimpur", "luxmipur")
    qui replace dcode_`dname2001' = "24" if `iso2001' == "UP" & inlist(`dname2001', "sitapur")
    qui replace dcode_`dname2001' = "25" if `iso2001' == "UP" & inlist(`dname2001', "hardoi")
    qui replace dcode_`dname2001' = "26" if `iso2001' == "UP" & inlist(`dname2001', "unnao")
    qui replace dcode_`dname2001' = "27" if `iso2001' == "UP" & inlist(`dname2001', "lucknow")
    qui replace dcode_`dname2001' = "28" if `iso2001' == "UP" & inlist(`dname2001', "rae bareli", "raebareli", "rae_bareli", "raibareli")
    qui replace dcode_`dname2001' = "29" if `iso2001' == "UP" & inlist(`dname2001', "farrukhabad")
    qui replace dcode_`dname2001' = "30" if `iso2001' == "UP" & inlist(`dname2001', "kannauj")
    qui replace dcode_`dname2001' = "31" if `iso2001' == "UP" & inlist(`dname2001', "etawah")
    qui replace dcode_`dname2001' = "32" if `iso2001' == "UP" & inlist(`dname2001', "auraiya")
    qui replace dcode_`dname2001' = "33" if `iso2001' == "UP" & inlist(`dname2001', "kanpurdehat", "ramabai nagar", "kanpur_dehat")
    qui replace dcode_`dname2001' = "34" if `iso2001' == "UP" & inlist(`dname2001', "kanpurnagar", "kanpur_nagar")
    qui replace dcode_`dname2001' = "35" if `iso2001' == "UP" & inlist(`dname2001', "jalaun")
    qui replace dcode_`dname2001' = "36" if `iso2001' == "UP" & inlist(`dname2001', "jhansi")
    qui replace dcode_`dname2001' = "37" if `iso2001' == "UP" & inlist(`dname2001', "lalitpur")
    qui replace dcode_`dname2001' = "38" if `iso2001' == "UP" & inlist(`dname2001', "hamirpur", "hamirpur(up)", "hamirpur_u")
    qui replace dcode_`dname2001' = "39" if `iso2001' == "UP" & inlist(`dname2001', "mahoba")
    qui replace dcode_`dname2001' = "40" if `iso2001' == "UP" & inlist(`dname2001', "banda")
    qui replace dcode_`dname2001' = "41" if `iso2001' == "UP" & inlist(`dname2001', "chitrakoot")
    qui replace dcode_`dname2001' = "42" if `iso2001' == "UP" & inlist(`dname2001', "fatehpur")
    qui replace dcode_`dname2001' = "43" if `iso2001' == "UP" & inlist(`dname2001', "pratapgarh", "pratapgarh(up)")
    qui replace dcode_`dname2001' = "44" if `iso2001' == "UP" & inlist(`dname2001', "kaushambi")
    qui replace dcode_`dname2001' = "45" if `iso2001' == "UP" & inlist(`dname2001', "allahabad")
    qui replace dcode_`dname2001' = "46" if `iso2001' == "UP" & inlist(`dname2001', "barabanki", "bara banki")
    qui replace dcode_`dname2001' = "47" if `iso2001' == "UP" & inlist(`dname2001', "faizabad")
    qui replace dcode_`dname2001' = "48" if `iso2001' == "UP" & inlist(`dname2001', "ambedkar nagar", "ambedkarnagar", "ambedkarnag")
    qui replace dcode_`dname2001' = "49" if `iso2001' == "UP" & inlist(`dname2001', "sultanpur")
    qui replace dcode_`dname2001' = "50" if `iso2001' == "UP" & inlist(`dname2001', "bahraich")
    qui replace dcode_`dname2001' = "51" if `iso2001' == "UP" & inlist(`dname2001', "shrawasti", "shravasti")
    qui replace dcode_`dname2001' = "52" if `iso2001' == "UP" & inlist(`dname2001', "balrampur", "balrampur(up)")
    qui replace dcode_`dname2001' = "53" if `iso2001' == "UP" & inlist(`dname2001', "gonda")
    qui replace dcode_`dname2001' = "54" if `iso2001' == "UP" & inlist(`dname2001', "siddharthnagar", "siddharthnaga", "sidharthanagar")
    qui replace dcode_`dname2001' = "55" if `iso2001' == "UP" & inlist(`dname2001', "basti")
    qui replace dcode_`dname2001' = "56" if `iso2001' == "UP" & inlist(`dname2001', "santkabirnagar", "sant_kabir_na", "skabirnagar")
    qui replace dcode_`dname2001' = "57" if `iso2001' == "UP" & inlist(`dname2001', "mahrajganj", "maharajganj")
    qui replace dcode_`dname2001' = "58" if `iso2001' == "UP" & inlist(`dname2001', "gorakhpur")
    qui replace dcode_`dname2001' = "59" if `iso2001' == "UP" & inlist(`dname2001', "kushinagar")
    qui replace dcode_`dname2001' = "60" if `iso2001' == "UP" & inlist(`dname2001', "deoria")
    qui replace dcode_`dname2001' = "61" if `iso2001' == "UP" & inlist(`dname2001', "azamgarh")
    qui replace dcode_`dname2001' = "62" if `iso2001' == "UP" & inlist(`dname2001', "mau")
    qui replace dcode_`dname2001' = "63" if `iso2001' == "UP" & inlist(`dname2001', "ballia", "balia")
    qui replace dcode_`dname2001' = "64" if `iso2001' == "UP" & inlist(`dname2001', "jaunpur")
    qui replace dcode_`dname2001' = "65" if `iso2001' == "UP" & inlist(`dname2001', "ghazipur", "gazipur")
    qui replace dcode_`dname2001' = "66" if `iso2001' == "UP" & inlist(`dname2001', "chandauli")
    qui replace dcode_`dname2001' = "67" if `iso2001' == "UP" & inlist(`dname2001', "varanasi")
    qui replace dcode_`dname2001' = "68" if `iso2001' == "UP" & inlist(`dname2001', "sant ravidas nagar bhadohi", "sant ravidas nagar", "bhahodi", "sant_ravidas_", "santravidasnagar(bhadohi)", "stravidasnagar")
    qui replace dcode_`dname2001' = "69" if `iso2001' == "UP" & inlist(`dname2001', "mirzapur")
    qui replace dcode_`dname2001' = "70" if `iso2001' == "UP" & inlist(`dname2001', "sonbhadra", "sonebhadra", "shonbhadra")

*===============================================================================

    * bihar
    qui replace dcode_`dname2001' = "01" if `iso2001' == "BR" & inlist(`dname2001', "pashchim champaran", "west champaran", "pashchim_cham", "pashchimchamparan", "champaranw")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "BR" & inlist(`dname2001', "purba champaran", "east champaran", "purba_champar", "purbachamparan", "champarane")
    qui replace dcode_`dname2001' = "03" if `iso2001' == "BR" & inlist(`dname2001', "sheohar")
    qui replace dcode_`dname2001' = "04" if `iso2001' == "BR" & inlist(`dname2001', "sitamarhi")
    qui replace dcode_`dname2001' = "05" if `iso2001' == "BR" & inlist(`dname2001', "madhubani")
    qui replace dcode_`dname2001' = "06" if `iso2001' == "BR" & inlist(`dname2001', "supaul")
    qui replace dcode_`dname2001' = "07" if `iso2001' == "BR" & inlist(`dname2001', "araria")
    qui replace dcode_`dname2001' = "08" if `iso2001' == "BR" & inlist(`dname2001', "kishanganj")
    qui replace dcode_`dname2001' = "09" if `iso2001' == "BR" & inlist(`dname2001', "purnia", "purnea")
    qui replace dcode_`dname2001' = "10" if `iso2001' == "BR" & inlist(`dname2001', "katihar")
    qui replace dcode_`dname2001' = "11" if `iso2001' == "BR" & inlist(`dname2001', "madhepura")
    qui replace dcode_`dname2001' = "12" if `iso2001' == "BR" & inlist(`dname2001', "saharsa")
    qui replace dcode_`dname2001' = "13" if `iso2001' == "BR" & inlist(`dname2001', "darbhanga", "darbangha")
    qui replace dcode_`dname2001' = "14" if `iso2001' == "BR" & inlist(`dname2001', "muzaffarpur")
    qui replace dcode_`dname2001' = "15" if `iso2001' == "BR" & inlist(`dname2001', "gopalganj")
    qui replace dcode_`dname2001' = "16" if `iso2001' == "BR" & inlist(`dname2001', "siwan")
    qui replace dcode_`dname2001' = "17" if `iso2001' == "BR" & inlist(`dname2001', "saran")
    qui replace dcode_`dname2001' = "18" if `iso2001' == "BR" & inlist(`dname2001', "vaishali")
    qui replace dcode_`dname2001' = "19" if `iso2001' == "BR" & inlist(`dname2001', "samastipur")
    qui replace dcode_`dname2001' = "20" if `iso2001' == "BR" & inlist(`dname2001', "begusarai", "bugusarai")
    qui replace dcode_`dname2001' = "21" if `iso2001' == "BR" & inlist(`dname2001', "khagaria")
    qui replace dcode_`dname2001' = "22" if `iso2001' == "BR" & inlist(`dname2001', "bhagalpur")
    qui replace dcode_`dname2001' = "23" if `iso2001' == "BR" & inlist(`dname2001', "banka")
    qui replace dcode_`dname2001' = "24" if `iso2001' == "BR" & inlist(`dname2001', "munger")
    qui replace dcode_`dname2001' = "25" if `iso2001' == "BR" & inlist(`dname2001', "lakhisarai", "luckeesarai")
    qui replace dcode_`dname2001' = "26" if `iso2001' == "BR" & inlist(`dname2001', "sheikhpura", "seikhpura", "shekhpura")
    qui replace dcode_`dname2001' = "27" if `iso2001' == "BR" & inlist(`dname2001', "nalanda")
    qui replace dcode_`dname2001' = "28" if `iso2001' == "BR" & inlist(`dname2001', "patna")
    qui replace dcode_`dname2001' = "29" if `iso2001' == "BR" & inlist(`dname2001', "bhojpur")
    qui replace dcode_`dname2001' = "30" if `iso2001' == "BR" & inlist(`dname2001', "buxar", "baxur")
    qui replace dcode_`dname2001' = "31" if `iso2001' == "BR" & inlist(`dname2001', "kaimur (bhabua)", "kaimur", "bhabua", "kaimurbhabua", "kaimur(bhabua)", "kaimurbhabua", "bhabuakaimur")
    qui replace dcode_`dname2001' = "32" if `iso2001' == "BR" & inlist(`dname2001', "rohtas")
    qui replace dcode_`dname2001' = "33" if `iso2001' == "BR" & inlist(`dname2001', "jehanabad", "jehanabad (erstwhile 2001)", "jahanabad", "jehanbad")
    qui replace dcode_`dname2001' = "34" if `iso2001' == "BR" & inlist(`dname2001',"aurangabad", "aurangabad (bih)", "aurangabad bihar", "aurangabad(bihar)")
    qui replace dcode_`dname2001' = "35" if `iso2001' == "BR" & inlist(`dname2001', "gaya")
    qui replace dcode_`dname2001' = "36" if `iso2001' == "BR" & inlist(`dname2001', "nawada", "nawadih")
    qui replace dcode_`dname2001' = "37" if `iso2001' == "BR" & inlist(`dname2001', "jamui")

*===============================================================================

    * sikkim
    qui replace dcode_`dname2001' = "01" if `iso2001' == "SK" & inlist(`dname2001', "north", "northsikkim")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "SK" & inlist(`dname2001', "west", "westsikkim")
    qui replace dcode_`dname2001' = "03" if `iso2001' == "SK" & inlist(`dname2001', "south", "southsikkim")
    qui replace dcode_`dname2001' = "04" if `iso2001' == "SK" & inlist(`dname2001', "east", "eastsikkim")

*===============================================================================

    * arunachal pradesh
    qui replace dcode_`dname2001' = "01" if `iso2001' == "AR" & inlist(`dname2001', "tawang")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "AR" & inlist(`dname2001', "west kameng", "westkameng")
    qui replace dcode_`dname2001' = "03" if `iso2001' == "AR" & inlist(`dname2001', "east kameng", "eastkameng")
    qui replace dcode_`dname2001' = "04" if `iso2001' == "AR" & inlist(`dname2001', "papum pare", "papumpare")
    qui replace dcode_`dname2001' = "05" if `iso2001' == "AR" & inlist(`dname2001', "lower subansiri", "lowersubansiri")
    qui replace dcode_`dname2001' = "06" if `iso2001' == "AR" & inlist(`dname2001', "upper subansiri", "uppersubansiri")
    qui replace dcode_`dname2001' = "07" if `iso2001' == "AR" & inlist(`dname2001', "west siang", "westsiang")
    qui replace dcode_`dname2001' = "08" if `iso2001' == "AR" & inlist(`dname2001', "east siang", "eastsiang")
    qui replace dcode_`dname2001' = "09" if `iso2001' == "AR" & inlist(`dname2001', "upper siang", "uppersiang")
    qui replace dcode_`dname2001' = "10" if `iso2001' == "AR" & inlist(`dname2001', "dibang valley", "dibangvalley")
    qui replace dcode_`dname2001' = "11" if `iso2001' == "AR" & inlist(`dname2001', "lohit")
    qui replace dcode_`dname2001' = "12" if `iso2001' == "AR" & inlist(`dname2001', "changlang")
    qui replace dcode_`dname2001' = "13" if `iso2001' == "AR" & inlist(`dname2001', "tirap")

*===============================================================================

    * nagaland
    qui replace dcode_`dname2001' = "01" if `iso2001' == "NL" & inlist(`dname2001', "mon")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "NL" & inlist(`dname2001', "tuensang")
    qui replace dcode_`dname2001' = "03" if `iso2001' == "NL" & inlist(`dname2001', "mokokchung")
    qui replace dcode_`dname2001' = "04" if `iso2001' == "NL" & inlist(`dname2001', "zunheboto")
    qui replace dcode_`dname2001' = "05" if `iso2001' == "NL" & inlist(`dname2001', "wokha")
    qui replace dcode_`dname2001' = "06" if `iso2001' == "NL" & inlist(`dname2001', "dimapur")
    qui replace dcode_`dname2001' = "07" if `iso2001' == "NL" & inlist(`dname2001', "kohima")
    qui replace dcode_`dname2001' = "08" if `iso2001' == "NL" & inlist(`dname2001', "phek")

*===============================================================================

    * manipur
    qui replace dcode_`dname2001' = "01" if `iso2001' == "MN" & inlist(`dname2001', "senapati (excl. 3 sub-divisions)", "senapati")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "MN" & inlist(`dname2001', "tamenglong")
    qui replace dcode_`dname2001' = "03" if `iso2001' == "MN" & inlist(`dname2001', "churachandpur")
    qui replace dcode_`dname2001' = "04" if `iso2001' == "MN" & inlist(`dname2001', "bishnupur")
    qui replace dcode_`dname2001' = "05" if `iso2001' == "MN" & inlist(`dname2001', "thoubal")
    qui replace dcode_`dname2001' = "06" if `iso2001' == "MN" & inlist(`dname2001', "imphalwest", "imphat west")
    qui replace dcode_`dname2001' = "07" if `iso2001' == "MN" & inlist(`dname2001', "imphaleast")
    qui replace dcode_`dname2001' = "08" if `iso2001' == "MN" & inlist(`dname2001', "ukhrul")
    qui replace dcode_`dname2001' = "09" if `iso2001' == "MN" & inlist(`dname2001', "chandel")

*===============================================================================

    * mizoram
    qui replace dcode_`dname2001' = "01" if `iso2001' == "MZ" & inlist(`dname2001', "mamit")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "MZ" & inlist(`dname2001', "kolasib")
    qui replace dcode_`dname2001' = "03" if `iso2001' == "MZ" & inlist(`dname2001', "aizawl", "aizwal")
    qui replace dcode_`dname2001' = "04" if `iso2001' == "MZ" & inlist(`dname2001', "champhai")
    qui replace dcode_`dname2001' = "05" if `iso2001' == "MZ" & inlist(`dname2001', "serchhip")
    qui replace dcode_`dname2001' = "06" if `iso2001' == "MZ" & inlist(`dname2001', "lunglei")
    qui replace dcode_`dname2001' = "07" if `iso2001' == "MZ" & inlist(`dname2001', "lawngtlai")
    qui replace dcode_`dname2001' = "08" if `iso2001' == "MZ" & inlist(`dname2001', "saiha")

*===============================================================================

    * tripura
    qui replace dcode_`dname2001' = "01" if `iso2001' == "TR" & inlist(`dname2001', "westtripura")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "TR" & inlist(`dname2001', "southtripura", "tripura south")
    qui replace dcode_`dname2001' = "03" if `iso2001' == "TR" & inlist(`dname2001', "dhalai")
    qui replace dcode_`dname2001' = "04" if `iso2001' == "TR" & inlist(`dname2001', "northtripura", "tripura north")

*===============================================================================

    * meghalaya
    qui replace dcode_`dname2001' = "01" if `iso2001' == "ML" & inlist(`dname2001', "west garo hills", "westgarohills")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "ML" & inlist(`dname2001', "east garo hills", "eastgarohills")
    qui replace dcode_`dname2001' = "03" if `iso2001' == "ML" & inlist(`dname2001', "south garo hills", "southgarohills")
    qui replace dcode_`dname2001' = "04" if `iso2001' == "ML" & inlist(`dname2001', "west khasi hills", "westkhasihills")
    qui replace dcode_`dname2001' = "05" if `iso2001' == "ML" & inlist(`dname2001', "ri bhoi", "ribhoi")
    qui replace dcode_`dname2001' = "06" if `iso2001' == "ML" & inlist(`dname2001', "east khasi hills", "eastkhasihills", "east khasi hil")
    qui replace dcode_`dname2001' = "07" if `iso2001' == "ML" & inlist(`dname2001', "jaintia hills", "jaintiahills")

*===============================================================================

    * assam
    qui replace dcode_`dname2001' = "01" if `iso2001' == "AS" & inlist(`dname2001', "kokrajhar")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "AS" & inlist(`dname2001', "dhubri", "dhuburi")
    qui replace dcode_`dname2001' = "03" if `iso2001' == "AS" & inlist(`dname2001', "goalpara")
    qui replace dcode_`dname2001' = "04" if `iso2001' == "AS" & inlist(`dname2001', "bongaigaon")
    qui replace dcode_`dname2001' = "05" if `iso2001' == "AS" & inlist(`dname2001', "barpeta")
    qui replace dcode_`dname2001' = "06" if `iso2001' == "AS" & inlist(`dname2001', "kamrup")
    qui replace dcode_`dname2001' = "07" if `iso2001' == "AS" & inlist(`dname2001', "nalbari")
    qui replace dcode_`dname2001' = "08" if `iso2001' == "AS" & inlist(`dname2001', "darrang")
    qui replace dcode_`dname2001' = "09" if `iso2001' == "AS" & inlist(`dname2001', "marigaon", "morigaon")
    qui replace dcode_`dname2001' = "10" if `iso2001' == "AS" & inlist(`dname2001', "nagaon")
    qui replace dcode_`dname2001' = "11" if `iso2001' == "AS" & inlist(`dname2001', "sonitpur", "sonipur")
    qui replace dcode_`dname2001' = "12" if `iso2001' == "AS" & inlist(`dname2001', "lakhimpur")
    qui replace dcode_`dname2001' = "13" if `iso2001' == "AS" & inlist(`dname2001', "dhemaji")
    qui replace dcode_`dname2001' = "14" if `iso2001' == "AS" & inlist(`dname2001', "tinsukia")
    qui replace dcode_`dname2001' = "15" if `iso2001' == "AS" & inlist(`dname2001', "dibrugarh")
    qui replace dcode_`dname2001' = "16" if `iso2001' == "AS" & inlist(`dname2001', "sibsagar", "sivasagar", "shivsagar")
    qui replace dcode_`dname2001' = "17" if `iso2001' == "AS" & inlist(`dname2001', "jorhat", "jorehat")
    qui replace dcode_`dname2001' = "18" if `iso2001' == "AS" & inlist(`dname2001', "golaghat")
    qui replace dcode_`dname2001' = "19" if `iso2001' == "AS" & inlist(`dname2001', "karbi anglong", "karbi_anglong", "karbianglong")
    qui replace dcode_`dname2001' = "20" if `iso2001' == "AS" & inlist(`dname2001', "northcacharhills", "dimahasao", "north_cachar_", "northcachar") // flag check north_cachar_
    qui replace dcode_`dname2001' = "21" if `iso2001' == "AS" & inlist(`dname2001', "cachar", "cacher")
    qui replace dcode_`dname2001' = "22" if `iso2001' == "AS" & inlist(`dname2001', "karimganj")
    qui replace dcode_`dname2001' = "23" if `iso2001' == "AS" & inlist(`dname2001', "hailakandi")

*===============================================================================

    * west bengal
    qui replace dcode_`dname2001' = "01" if `iso2001' == "WB" & inlist(`dname2001', "darjiling", "darjeeling")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "WB" & inlist(`dname2001', "jalpaiguri", "jalpaipuri")
    qui replace dcode_`dname2001' = "03" if `iso2001' == "WB" & inlist(`dname2001', "kochbihar", "cooch bihar", "cooch behar", "koch_bihar")
    qui replace dcode_`dname2001' = "04" if `iso2001' == "WB" & inlist(`dname2001', "uttar dinajpur", "north dinajpur", "uttar_dinajpu", "uttardinajpur")
    qui replace dcode_`dname2001' = "05" if `iso2001' == "WB" & inlist(`dname2001', "dakshin dinajpur", "south dinajpur", "dakshina_dina", "dakshindinajpur")
    qui replace dcode_`dname2001' = "06" if `iso2001' == "WB" & inlist(`dname2001', "maldah", "malda")
    qui replace dcode_`dname2001' = "07" if `iso2001' == "WB" & inlist(`dname2001', "murshidabad")
    qui replace dcode_`dname2001' = "08" if `iso2001' == "WB" & inlist(`dname2001', "birbhum")
    qui replace dcode_`dname2001' = "09" if `iso2001' == "WB" & inlist(`dname2001', "barddhaman", "bardhaman", "burdwan")
    qui replace dcode_`dname2001' = "10" if `iso2001' == "WB" & inlist(`dname2001', "nadia", "nada") // flag confirm nada is same as nadia
    qui replace dcode_`dname2001' = "11" if `iso2001' == "WB" & inlist(`dname2001', "northtwentyfourparganas", "north24parganas", "north 24 parganas", "north_twenty_")
    qui replace dcode_`dname2001' = "12" if `iso2001' == "WB" & inlist(`dname2001', "hugli","hooghly", "hoogly")
    qui replace dcode_`dname2001' = "13" if `iso2001' == "WB" & inlist(`dname2001', "bankura")
    qui replace dcode_`dname2001' = "14" if `iso2001' == "WB" & inlist(`dname2001', "puruliya", "purulia")
    qui replace dcode_`dname2001' = "15" if `iso2001' == "WB" & inlist(`dname2001', "medinipur", "midnapore")
    qui replace dcode_`dname2001' = "16" if `iso2001' == "WB" & inlist(`dname2001', "haora", "howrah")
    qui replace dcode_`dname2001' = "17" if `iso2001' == "WB" & inlist(`dname2001', "kolkata", "calcutta")
    qui replace dcode_`dname2001' = "18" if `iso2001' == "WB" & inlist(`dname2001', "southtwentyfourparganas", "south24parganas", "south 24 parganas", "south_24")

*===============================================================================

    * jharkhand
    qui replace dcode_`dname2001' = "01" if `iso2001' == "JH" & inlist(`dname2001', "garhwa", "garwah")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "JH" & inlist(`dname2001', "palamu", "palamau", "palamu (2001-02)")
    qui replace dcode_`dname2001' = "03" if `iso2001' == "JH" & inlist(`dname2001', "chatra")
    qui replace dcode_`dname2001' = "04" if `iso2001' == "JH" & inlist(`dname2001', "hazaribagh", "hazaribag", "hazaribag region")
    qui replace dcode_`dname2001' = "05" if `iso2001' == "JH" & inlist(`dname2001', "kodarma", "koderma")
    qui replace dcode_`dname2001' = "06" if `iso2001' == "JH" & inlist(`dname2001', "giridih")
    qui replace dcode_`dname2001' = "07" if `iso2001' == "JH" & inlist(`dname2001', "deoghar", "deogarh")
    qui replace dcode_`dname2001' = "08" if `iso2001' == "JH" & inlist(`dname2001', "godda")
    qui replace dcode_`dname2001' = "09" if `iso2001' == "JH" & inlist(`dname2001', "sahibganj", "sahebganj")
    qui replace dcode_`dname2001' = "10" if `iso2001' == "JH" & inlist(`dname2001', "pakaur", "pakur")
    qui replace dcode_`dname2001' = "11" if `iso2001' == "JH" & inlist(`dname2001', "dumka", "dumka (1991-02)")
    qui replace dcode_`dname2001' = "12" if `iso2001' == "JH" & inlist(`dname2001', "dhanbad")
    qui replace dcode_`dname2001' = "13" if `iso2001' == "JH" & inlist(`dname2001', "bokaro")
    qui replace dcode_`dname2001' = "14" if `iso2001' == "JH" & inlist(`dname2001', "ranchi")
    qui replace dcode_`dname2001' = "15" if `iso2001' == "JH" & inlist(`dname2001', "lohardaga", "lohardagga")
    qui replace dcode_`dname2001' = "16" if `iso2001' == "JH" & inlist(`dname2001', "gumla")
    qui replace dcode_`dname2001' = "17" if `iso2001' == "JH" & inlist(`dname2001', "pashchimi singhbhum", "west singhbhum", "west singbhum", "west singhbum", "pashchimi_sin", "pashchimisinghbhum", "singhbhumw")
    qui replace dcode_`dname2001' = "18" if `iso2001' == "JH" & inlist(`dname2001', "purbi singhbhum", "east singhbhum", "east singbhum", "east singhbum", "purbi_singhbh", "purbisinghbhum", "singhbhume")

*===============================================================================

    * orissa
    qui replace dcode_`dname2001' = "01" if `iso2001' == "OR" & inlist(`dname2001', "bargarh", "baragarh", "bargarh (baragarh)")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "OR" & inlist(`dname2001', "jharsuguda")
    qui replace dcode_`dname2001' = "03" if `iso2001' == "OR" & inlist(`dname2001', "sambalpur", "sambhalpur")
    qui replace dcode_`dname2001' = "04" if `iso2001' == "OR" & inlist(`dname2001', "debagarh", "deogarh", "debagarh (deogarh)")
    qui replace dcode_`dname2001' = "05" if `iso2001' == "OR" & inlist(`dname2001', "sundargarh", "sundergarh", "sundargarh (sundergarh)")
    qui replace dcode_`dname2001' = "06" if `iso2001' == "OR" & inlist(`dname2001', "kendujhar", "keonjhar", "kendujhar (keonjhar)")
    qui replace dcode_`dname2001' = "07" if `iso2001' == "OR" & inlist(`dname2001', "mayurbhanj")
    qui replace dcode_`dname2001' = "08" if `iso2001' == "OR" & inlist(`dname2001', "baleshwar", "baleswar", "balasore")
    qui replace dcode_`dname2001' = "09" if `iso2001' == "OR" & inlist(`dname2001', "bhadrak")
    qui replace dcode_`dname2001' = "10" if `iso2001' == "OR" & inlist(`dname2001', "kendrapara")
    qui replace dcode_`dname2001' = "11" if `iso2001' == "OR" & inlist(`dname2001', "jagatsinghapur", "jagatsinghpur", "jagatsinghapu")
    qui replace dcode_`dname2001' = "12" if `iso2001' == "OR" & inlist(`dname2001', "cuttack")
    qui replace dcode_`dname2001' = "13" if `iso2001' == "OR" & inlist(`dname2001', "jajapur", "jajpur")
    qui replace dcode_`dname2001' = "14" if `iso2001' == "OR" & inlist(`dname2001', "dhenkanal")
    qui replace dcode_`dname2001' = "15" if `iso2001' == "OR" & inlist(`dname2001', "anugul", "angul")
    qui replace dcode_`dname2001' = "16" if `iso2001' == "OR" & inlist(`dname2001', "nayagarh")
    qui replace dcode_`dname2001' = "17" if `iso2001' == "OR" & inlist(`dname2001', "khordha", "khurda")
    qui replace dcode_`dname2001' = "18" if `iso2001' == "OR" & inlist(`dname2001', "puri")
    qui replace dcode_`dname2001' = "19" if `iso2001' == "OR" & inlist(`dname2001', "ganjam")
    qui replace dcode_`dname2001' = "20" if `iso2001' == "OR" & inlist(`dname2001', "gajapati")
    qui replace dcode_`dname2001' = "21" if `iso2001' == "OR" & inlist(`dname2001', "kandhamal", "kandhamal (phulabani till 2001)", "kandhamal (phulbani)", "kondhamal")
    qui replace dcode_`dname2001' = "22" if `iso2001' == "OR" & inlist(`dname2001', "baudh", "boudh", "baudha", "boudh (bauda)", "bauda")
    qui replace dcode_`dname2001' = "23" if `iso2001' == "OR" & inlist(`dname2001', "sonapur", "sonepur", "subarnapur", "subarnapur (sonepur)", "subaranapur")
    qui replace dcode_`dname2001' = "24" if `iso2001' == "OR" & inlist(`dname2001', "balangir", "bolangir")
    qui replace dcode_`dname2001' = "25" if `iso2001' == "OR" & inlist(`dname2001', "nuapada")
    qui replace dcode_`dname2001' = "26" if `iso2001' == "OR" & inlist(`dname2001', "kalahandi")
    qui replace dcode_`dname2001' = "27" if `iso2001' == "OR" & inlist(`dname2001', "rayagada")
    qui replace dcode_`dname2001' = "28" if `iso2001' == "OR" & inlist(`dname2001', "nabarangapur", "nabarangpur", "navrangpur", "nowrangpur", "nawarangpur")
    qui replace dcode_`dname2001' = "29" if `iso2001' == "OR" & inlist(`dname2001', "koraput")
    qui replace dcode_`dname2001' = "30" if `iso2001' == "OR" & inlist(`dname2001', "malkangiri")

*===============================================================================

    * chhattisgarh
    qui replace dcode_`dname2001' = "01" if `iso2001' == "CT" & inlist(`dname2001', "koriya", "korea", "korea (koriya)", "korea (baikunthpur)")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "CT" & inlist(`dname2001', "surguja", "sarguja")
    qui replace dcode_`dname2001' = "03" if `iso2001' == "CT" & inlist(`dname2001', "jashpur", "jashpurnagar")
    qui replace dcode_`dname2001' = "04" if `iso2001' == "CT" & inlist(`dname2001', "raigarh", "raigarh(chhattisgarh)", "raighar", "raigarh_c")
    qui replace dcode_`dname2001' = "05" if `iso2001' == "CT" & inlist(`dname2001', "korba")
    qui replace dcode_`dname2001' = "06" if `iso2001' == "CT" & inlist(`dname2001', "janjgir - champa", "janjgir-champa", "janjgir champa", "janjgirchampa")
    qui replace dcode_`dname2001' = "07" if `iso2001' == "CT" & inlist(`dname2001', "bilaspur", "bilaspur(chhattisgarh)", "bilaspur_c")
    qui replace dcode_`dname2001' = "08" if `iso2001' == "CT" & inlist(`dname2001', "kawardha", "kabirdham", "kabeerdham", "kabirdham-kawardha", "kabirdham (kawardha)", "kaeardha", "kawadha", "khawardha")
    qui replace dcode_`dname2001' = "09" if `iso2001' == "CT" & inlist(`dname2001', "rajnandgaon", "raj nandgaon", "rajnangaon")
    qui replace dcode_`dname2001' = "10" if `iso2001' == "CT" & inlist(`dname2001', "durg")
    qui replace dcode_`dname2001' = "11" if `iso2001' == "CT" & inlist(`dname2001', "raipur")
    qui replace dcode_`dname2001' = "12" if `iso2001' == "CT" & inlist(`dname2001', "mahasamund")
    qui replace dcode_`dname2001' = "13" if `iso2001' == "CT" & inlist(`dname2001', "dhamtari")
    qui replace dcode_`dname2001' = "14" if `iso2001' == "CT" & inlist(`dname2001', "kanker", "north bastar-kanker", "kanker (north bastar)", "uttar bastar", "kanke")
    qui replace dcode_`dname2001' = "15" if `iso2001' == "CT" & inlist(`dname2001', "bastar", "baster")
    qui replace dcode_`dname2001' = "16" if `iso2001' == "CT" & inlist(`dname2001', "dantewada", "south bastar-dantewada", "dantewada (south bastar)", "dantewara", "dakshin bastar")

*===============================================================================

    * madhya pradesh
    qui replace dcode_`dname2001' = "01" if `iso2001' == "MP" & inlist(`dname2001', "sheopur")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "MP" & inlist(`dname2001', "morena")
    qui replace dcode_`dname2001' = "03" if `iso2001' == "MP" & inlist(`dname2001', "bhind")
    qui replace dcode_`dname2001' = "04" if `iso2001' == "MP" & inlist(`dname2001', "gwalior")
    qui replace dcode_`dname2001' = "05" if `iso2001' == "MP" & inlist(`dname2001', "datia")
    qui replace dcode_`dname2001' = "06" if `iso2001' == "MP" & inlist(`dname2001', "shivpuri")
    qui replace dcode_`dname2001' = "07" if `iso2001' == "MP" & inlist(`dname2001', "guna")
    qui replace dcode_`dname2001' = "08" if `iso2001' == "MP" & inlist(`dname2001', "tikamgarh")
    qui replace dcode_`dname2001' = "09" if `iso2001' == "MP" & inlist(`dname2001', "chhatarpur")
    qui replace dcode_`dname2001' = "10" if `iso2001' == "MP" & inlist(`dname2001', "panna")
    qui replace dcode_`dname2001' = "11" if `iso2001' == "MP" & inlist(`dname2001', "sagar")
    qui replace dcode_`dname2001' = "12" if `iso2001' == "MP" & inlist(`dname2001', "damoh")
    qui replace dcode_`dname2001' = "13" if `iso2001' == "MP" & inlist(`dname2001', "satna")
    qui replace dcode_`dname2001' = "14" if `iso2001' == "MP" & inlist(`dname2001', "rewa")
    qui replace dcode_`dname2001' = "15" if `iso2001' == "MP" & inlist(`dname2001', "umaria", "umeria")
    qui replace dcode_`dname2001' = "16" if `iso2001' == "MP" & inlist(`dname2001', "shahdol")
    qui replace dcode_`dname2001' = "17" if `iso2001' == "MP" & inlist(`dname2001', "sidhi", "siddhi")
    qui replace dcode_`dname2001' = "18" if `iso2001' == "MP" & inlist(`dname2001', "neemuch")
    qui replace dcode_`dname2001' = "19" if `iso2001' == "MP" & inlist(`dname2001', "mandsaur")
    qui replace dcode_`dname2001' = "20" if `iso2001' == "MP" & inlist(`dname2001', "ratlam")
    qui replace dcode_`dname2001' = "21" if `iso2001' == "MP" & inlist(`dname2001', "ujjain", "ujjian")
    qui replace dcode_`dname2001' = "22" if `iso2001' == "MP" & inlist(`dname2001', "shajapur")
    qui replace dcode_`dname2001' = "23" if `iso2001' == "MP" & inlist(`dname2001', "dewas")
    qui replace dcode_`dname2001' = "24" if `iso2001' == "MP" & inlist(`dname2001', "jhabua")
    qui replace dcode_`dname2001' = "25" if `iso2001' == "MP" & inlist(`dname2001', "dhar")
    qui replace dcode_`dname2001' = "26" if `iso2001' == "MP" & inlist(`dname2001', "indore")
    qui replace dcode_`dname2001' = "27" if `iso2001' == "MP" & inlist(`dname2001', "west nimar", "khargone(westnimar)", "khargone", "west nimar (khargone)", "west_nimar", "westnimar", "khargoanwnimar")
    qui replace dcode_`dname2001' = "28" if `iso2001' == "MP" & inlist(`dname2001', "barwani", "badwani")
    qui replace dcode_`dname2001' = "29" if `iso2001' == "MP" & inlist(`dname2001', "east nimar", "khandwa(eastnimar)", "khandwa", "east nimar (khandwa)", "east_nimar", "eastnimar", "khandwaenimar")
    qui replace dcode_`dname2001' = "30" if `iso2001' == "MP" & inlist(`dname2001', "rajgarh")
    qui replace dcode_`dname2001' = "31" if `iso2001' == "MP" & inlist(`dname2001', "vidisha")
    qui replace dcode_`dname2001' = "32" if `iso2001' == "MP" & inlist(`dname2001', "bhopal")
    qui replace dcode_`dname2001' = "33" if `iso2001' == "MP" & inlist(`dname2001', "sehore")
    qui replace dcode_`dname2001' = "34" if `iso2001' == "MP" & inlist(`dname2001', "raisen")
    qui replace dcode_`dname2001' = "35" if `iso2001' == "MP" & inlist(`dname2001', "betul")
    qui replace dcode_`dname2001' = "36" if `iso2001' == "MP" & inlist(`dname2001', "harda")
    qui replace dcode_`dname2001' = "37" if `iso2001' == "MP" & inlist(`dname2001', "hoshangabad")
    qui replace dcode_`dname2001' = "38" if `iso2001' == "MP" & inlist(`dname2001', "katni")
    qui replace dcode_`dname2001' = "39" if `iso2001' == "MP" & inlist(`dname2001', "jabalpur")
    qui replace dcode_`dname2001' = "40" if `iso2001' == "MP" & inlist(`dname2001', "narsimhapur", "narsinghpur", "narshimhapur")
    qui replace dcode_`dname2001' = "41" if `iso2001' == "MP" & inlist(`dname2001', "dindori")
    qui replace dcode_`dname2001' = "42" if `iso2001' == "MP" & inlist(`dname2001', "mandla")
    qui replace dcode_`dname2001' = "43" if `iso2001' == "MP" & inlist(`dname2001', "chhindwara", "chhindwada")
    qui replace dcode_`dname2001' = "44" if `iso2001' == "MP" & inlist(`dname2001', "seoni")
    qui replace dcode_`dname2001' = "45" if `iso2001' == "MP" & inlist(`dname2001', "balaghat")

*===============================================================================

    * gujarat
    qui replace dcode_`dname2001' = "01" if `iso2001' == "GJ" & inlist(`dname2001', "kachchh", "kutch")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "GJ" & inlist(`dname2001', "banas kantha", "banaskantha", "banas_kantha", "banskantha")
    qui replace dcode_`dname2001' = "03" if `iso2001' == "GJ" & inlist(`dname2001', "patan")
    qui replace dcode_`dname2001' = "04" if `iso2001' == "GJ" & inlist(`dname2001', "mahesana", "mehsana")
    qui replace dcode_`dname2001' = "05" if `iso2001' == "GJ" & inlist(`dname2001', "sabar kantha", "sabarkantha", "saberkantha", "sabar_kantha")
    qui replace dcode_`dname2001' = "06" if `iso2001' == "GJ" & inlist(`dname2001', "gandhinagar")
    qui replace dcode_`dname2001' = "07" if `iso2001' == "GJ" & inlist(`dname2001', "ahmadabad", "ahmedabad", "ahmadab")
    qui replace dcode_`dname2001' = "08" if `iso2001' == "GJ" & inlist(`dname2001', "surendranagar")
    qui replace dcode_`dname2001' = "09" if `iso2001' == "GJ" & inlist(`dname2001', "rajkot")
    qui replace dcode_`dname2001' = "10" if `iso2001' == "GJ" & inlist(`dname2001', "jamnagar")
    qui replace dcode_`dname2001' = "11" if `iso2001' == "GJ" & inlist(`dname2001', "porbandar", "porbander")
    qui replace dcode_`dname2001' = "12" if `iso2001' == "GJ" & inlist(`dname2001', "junagadh")
    qui replace dcode_`dname2001' = "13" if `iso2001' == "GJ" & inlist(`dname2001', "amreli")
    qui replace dcode_`dname2001' = "14" if `iso2001' == "GJ" & inlist(`dname2001', "bhavnagar")
    qui replace dcode_`dname2001' = "15" if `iso2001' == "GJ" & inlist(`dname2001', "anand")
    qui replace dcode_`dname2001' = "16" if `iso2001' == "GJ" & inlist(`dname2001', "kheda")
    qui replace dcode_`dname2001' = "17" if `iso2001' == "GJ" & inlist(`dname2001', "panch mahals", "panchmahals", "panchmahal", "panchamahal", "panch_mahals")
    qui replace dcode_`dname2001' = "18" if `iso2001' == "GJ" & inlist(`dname2001', "dohad", "dahod")
    qui replace dcode_`dname2001' = "19" if `iso2001' == "GJ" & inlist(`dname2001', "vadodara")
    qui replace dcode_`dname2001' = "20" if `iso2001' == "GJ" & inlist(`dname2001', "narmada")
    qui replace dcode_`dname2001' = "21" if `iso2001' == "GJ" & inlist(`dname2001', "bharuch", "bharucha")
    qui replace dcode_`dname2001' = "22" if `iso2001' == "GJ" & inlist(`dname2001', "surat")
    qui replace dcode_`dname2001' = "23" if `iso2001' == "GJ" & inlist(`dname2001', "thedangs", "dang", "the_dangs")
    qui replace dcode_`dname2001' = "24" if `iso2001' == "GJ" & inlist(`dname2001', "navsari")
    qui replace dcode_`dname2001' = "25" if `iso2001' == "GJ" & inlist(`dname2001', "valsad")

*===============================================================================

    * daman and diu
    qui replace dcode_`dname2001' = "01" if `iso2001' == "DD" & inlist(`dname2001', "diu")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "DD" & inlist(`dname2001', "daman")

*===============================================================================

    * dadara and nagar haveli
    qui replace dcode_`dname2001' = "01" if `iso2001' == "DN" & inlist(`dname2001', "dadara and nagar haveli", "dadara & nagar haveli", "dadara and nagar havelli", "dadara & nagar havelli", "dadra and nagar haveli")
    qui replace dcode_`dname2001' = "01" if `iso2001' == "DN" & inlist(`dname2001', "dadra & nagar haveli", "dadranagarhaveli", "d&n haveli", "d and n haveli", "dadra/nagar haveli", "dadra&nagarhaveli")

*===============================================================================

    * maharashtra
    qui replace dcode_`dname2001' = "01" if `iso2001' == "MH" & inlist(`dname2001', "nandurbar")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "MH" & inlist(`dname2001', "dhule")
    qui replace dcode_`dname2001' = "03" if `iso2001' == "MH" & inlist(`dname2001', "jalgaon")
    qui replace dcode_`dname2001' = "04" if `iso2001' == "MH" & inlist(`dname2001', "buldana", "buldhana")
    qui replace dcode_`dname2001' = "05" if `iso2001' == "MH" & inlist(`dname2001', "akola")
    qui replace dcode_`dname2001' = "06" if `iso2001' == "MH" & inlist(`dname2001', "washim")
    qui replace dcode_`dname2001' = "07" if `iso2001' == "MH" & inlist(`dname2001', "amravati")
    qui replace dcode_`dname2001' = "08" if `iso2001' == "MH" & inlist(`dname2001', "wardha")
    qui replace dcode_`dname2001' = "09" if `iso2001' == "MH" & inlist(`dname2001', "nagpur")
    qui replace dcode_`dname2001' = "10" if `iso2001' == "MH" & inlist(`dname2001', "bhandara")
    qui replace dcode_`dname2001' = "11" if `iso2001' == "MH" & inlist(`dname2001', "gondiya", "gondia", "gondla")
    qui replace dcode_`dname2001' = "12" if `iso2001' == "MH" & inlist(`dname2001', "gadchiroli", "garhchiroli", "aheri")
    qui replace dcode_`dname2001' = "13" if `iso2001' == "MH" & inlist(`dname2001', "chandrapur")
    qui replace dcode_`dname2001' = "14" if `iso2001' == "MH" & inlist(`dname2001', "yavatmal")
    qui replace dcode_`dname2001' = "15" if `iso2001' == "MH" & inlist(`dname2001', "nanded")
    qui replace dcode_`dname2001' = "16" if `iso2001' == "MH" & inlist(`dname2001', "hingoli")
    qui replace dcode_`dname2001' = "17" if `iso2001' == "MH" & inlist(`dname2001', "parbhani")
    qui replace dcode_`dname2001' = "18" if `iso2001' == "MH" & inlist(`dname2001', "jalna")
    qui replace dcode_`dname2001' = "19" if `iso2001' == "MH" & inlist(`dname2001', "aurangabad", "aurangabad(maharashtra)", "aurangabad maharashtra", "aurangabad_m")
    qui replace dcode_`dname2001' = "20" if `iso2001' == "MH" & inlist(`dname2001', "nashik", "nasik")
    qui replace dcode_`dname2001' = "21" if `iso2001' == "MH" & inlist(`dname2001', "thane")
    qui replace dcode_`dname2001' = "22" if `iso2001' == "MH" & inlist(`dname2001', "mumbai (suburban)", "mumbai suburban", "mumbaisuburban", "mumbai(suburban)", "suburbanmumbai")
    qui replace dcode_`dname2001' = "23" if `iso2001' == "MH" & inlist(`dname2001', "mumbai", "mumbai city", "mumbai offshore")
    qui replace dcode_`dname2001' = "24" if `iso2001' == "MH" & inlist(`dname2001', "raigarh", "raigarh(maharashtra)", "raigad", "kolaba", "raigarh_m")
    qui replace dcode_`dname2001' = "25" if `iso2001' == "MH" & inlist(`dname2001', "pune")
    qui replace dcode_`dname2001' = "26" if `iso2001' == "MH" & inlist(`dname2001', "ahmadnagar", "ahmednagar")
    qui replace dcode_`dname2001' = "27" if `iso2001' == "MH" & inlist(`dname2001', "bid", "beed")
    qui replace dcode_`dname2001' = "28" if `iso2001' == "MH" & inlist(`dname2001', "latur")
    qui replace dcode_`dname2001' = "29" if `iso2001' == "MH" & inlist(`dname2001', "osmanabad")
    qui replace dcode_`dname2001' = "30" if `iso2001' == "MH" & inlist(`dname2001', "solapur")
    qui replace dcode_`dname2001' = "31" if `iso2001' == "MH" & inlist(`dname2001', "satara")
    qui replace dcode_`dname2001' = "32" if `iso2001' == "MH" & inlist(`dname2001', "ratnagiri")
    qui replace dcode_`dname2001' = "33" if `iso2001' == "MH" & inlist(`dname2001', "sindhudurg")
    qui replace dcode_`dname2001' = "34" if `iso2001' == "MH" & inlist(`dname2001', "kolhapur")
    qui replace dcode_`dname2001' = "35" if `iso2001' == "MH" & inlist(`dname2001', "sangli")

*===============================================================================

    * andhra pradesh
    qui replace dcode_`dname2001' = "01" if `iso2001' == "AP" & inlist(`dname2001', "adilabad")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "AP" & inlist(`dname2001', "nizamabad")
    qui replace dcode_`dname2001' = "03" if `iso2001' == "AP" & inlist(`dname2001', "karimnagar", "karimanagar")
    qui replace dcode_`dname2001' = "04" if `iso2001' == "AP" & inlist(`dname2001', "medak")
    qui replace dcode_`dname2001' = "05" if `iso2001' == "AP" & inlist(`dname2001', "hyderabad")
    qui replace dcode_`dname2001' = "06" if `iso2001' == "AP" & inlist(`dname2001', "rangareddi", "rangareddy", "ranga reddy")
    qui replace dcode_`dname2001' = "07" if `iso2001' == "AP" & inlist(`dname2001', "mahbubnagar", "mahabubnagar", "mahaboobnagar", "mahbabnagar", "mehboobnagar")
    qui replace dcode_`dname2001' = "08" if `iso2001' == "AP" & inlist(`dname2001', "nalgonda")
    qui replace dcode_`dname2001' = "09" if `iso2001' == "AP" & inlist(`dname2001', "warangal", "warnagal")
    qui replace dcode_`dname2001' = "10" if `iso2001' == "AP" & inlist(`dname2001', "khammam", "khammamm")
    qui replace dcode_`dname2001' = "11" if `iso2001' == "AP" & inlist(`dname2001', "srikakulam")
    qui replace dcode_`dname2001' = "12" if `iso2001' == "AP" & inlist(`dname2001', "vizianagaram", "vizianagarm", "vizianagram")
    qui replace dcode_`dname2001' = "13" if `iso2001' == "AP" & inlist(`dname2001', "visakhapatnam", "vishakhapatnam", "vishakapatnam", "vishakaptnam")
    qui replace dcode_`dname2001' = "14" if `iso2001' == "AP" & inlist(`dname2001', "east godavari", "eastgodavari")
    qui replace dcode_`dname2001' = "15" if `iso2001' == "AP" & inlist(`dname2001', "west godavari", "westgodavari")
    qui replace dcode_`dname2001' = "16" if `iso2001' == "AP" & inlist(`dname2001', "krishna")
    qui replace dcode_`dname2001' = "17" if `iso2001' == "AP" & inlist(`dname2001', "guntur")
    qui replace dcode_`dname2001' = "18" if `iso2001' == "AP" & inlist(`dname2001', "prakasam")
    qui replace dcode_`dname2001' = "19" if `iso2001' == "AP" & inlist(`dname2001', "nellore", "sri potti sriramulu nellore")
    qui replace dcode_`dname2001' = "20" if `iso2001' == "AP" & inlist(`dname2001', "cuddapah", "kadapa", "cuddapa", "y.s.r.", "ysr", "y.s.r. kadapa", "ysr kadapa")
    qui replace dcode_`dname2001' = "21" if `iso2001' == "AP" & inlist(`dname2001', "kurnool")
    qui replace dcode_`dname2001' = "22" if `iso2001' == "AP" & inlist(`dname2001', "anantapur", "anantpur")
    qui replace dcode_`dname2001' = "23" if `iso2001' == "AP" & inlist(`dname2001', "chittoor")

*===============================================================================

    * karnataka
    qui replace dcode_`dname2001' = "01" if `iso2001' == "KA" & inlist(`dname2001', "belgaum")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "KA" & inlist(`dname2001', "bagalkot")
    qui replace dcode_`dname2001' = "03" if `iso2001' == "KA" & inlist(`dname2001', "bijapur", "bijapur(karnataka)", "vijayapura")
    qui replace dcode_`dname2001' = "04" if `iso2001' == "KA" & inlist(`dname2001', "gulbarga")
    qui replace dcode_`dname2001' = "05" if `iso2001' == "KA" & inlist(`dname2001', "bidar")
    qui replace dcode_`dname2001' = "06" if `iso2001' == "KA" & inlist(`dname2001', "raichur")
    qui replace dcode_`dname2001' = "07" if `iso2001' == "KA" & inlist(`dname2001', "koppal", "kopal")
    qui replace dcode_`dname2001' = "08" if `iso2001' == "KA" & inlist(`dname2001', "gadag")
    qui replace dcode_`dname2001' = "09" if `iso2001' == "KA" & inlist(`dname2001', "dharwad")
    qui replace dcode_`dname2001' = "10" if `iso2001' == "KA" & inlist(`dname2001', "uttara kannada", "uttara_kannad", "uttarakannada", "uttarkannad")
    qui replace dcode_`dname2001' = "11" if `iso2001' == "KA" & inlist(`dname2001', "haveri")
    qui replace dcode_`dname2001' = "12" if `iso2001' == "KA" & inlist(`dname2001', "bellary")
    qui replace dcode_`dname2001' = "13" if `iso2001' == "KA" & inlist(`dname2001', "chitradurga")
    qui replace dcode_`dname2001' = "14" if `iso2001' == "KA" & inlist(`dname2001', "davanagere", "devangere", "davangere")
    qui replace dcode_`dname2001' = "15" if `iso2001' == "KA" & inlist(`dname2001', "shimoga")
    qui replace dcode_`dname2001' = "16" if `iso2001' == "KA" & inlist(`dname2001', "udupi", "udipi")
    qui replace dcode_`dname2001' = "17" if `iso2001' == "KA" & inlist(`dname2001', "chikmagalur", "chickmagalur", "chikamagalur", "chikmangalur", "chikmanglur")
    qui replace dcode_`dname2001' = "18" if `iso2001' == "KA" & inlist(`dname2001', "tumkur")
    qui replace dcode_`dname2001' = "19" if `iso2001' == "KA" & inlist(`dname2001', "kolar")
    qui replace dcode_`dname2001' = "20" if `iso2001' == "KA" & inlist(`dname2001', "bangalore", "bangalore urban", "bangaloreurban")
    qui replace dcode_`dname2001' = "21" if `iso2001' == "KA" & inlist(`dname2001', "bangalore rural", "bangalore_ru", "bangalorerural")
    qui replace dcode_`dname2001' = "22" if `iso2001' == "KA" & inlist(`dname2001', "mandya")
    qui replace dcode_`dname2001' = "23" if `iso2001' == "KA" & inlist(`dname2001', "hassan")
    qui replace dcode_`dname2001' = "24" if `iso2001' == "KA" & inlist(`dname2001', "dakshina kannada", "mangalore/dakshina kannada", "dakshin kannada", "dakshina_kann", "dakshinakannada", "dakshinkannada")
    qui replace dcode_`dname2001' = "25" if `iso2001' == "KA" & inlist(`dname2001', "kodagu", "mercera/kodagu")
    qui replace dcode_`dname2001' = "26" if `iso2001' == "KA" & inlist(`dname2001', "mysore")
    qui replace dcode_`dname2001' = "27" if `iso2001' == "KA" & inlist(`dname2001', "chamarajanagar", "chamrajanagar", "chamarajanaga", "chamarajnagar")

*===============================================================================

    * goa
    qui replace dcode_`dname2001' = "01" if `iso2001' == "GA" & inlist(`dname2001', "north goa", "northgoa")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "GA" & inlist(`dname2001', "south goa", "southgoa", "south goa")

*===============================================================================

    * lakshadweep
    qui replace dcode_`dname2001' = "01" if `iso2001' == "LD" & inlist(`dname2001', "lakshadweep")

*===============================================================================

    * kerala
    qui replace dcode_`dname2001' = "01" if `iso2001' == "KL" & inlist(`dname2001', "kasaragod", "kasargod")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "KL" & inlist(`dname2001', "kannur", "cannanore")
    qui replace dcode_`dname2001' = "03" if `iso2001' == "KL" & inlist(`dname2001', "wayanad")
    qui replace dcode_`dname2001' = "04" if `iso2001' == "KL" & inlist(`dname2001', "kozhikode")
    qui replace dcode_`dname2001' = "05" if `iso2001' == "KL" & inlist(`dname2001', "malappuram", "malapurram", "malapuram")
    qui replace dcode_`dname2001' = "06" if `iso2001' == "KL" & inlist(`dname2001', "palakkad", "palghat")
    qui replace dcode_`dname2001' = "07" if `iso2001' == "KL" & inlist(`dname2001', "thrissur", "trichur", "trissur")
    qui replace dcode_`dname2001' = "08" if `iso2001' == "KL" & inlist(`dname2001', "ernakulam", "ernarkulam")
    qui replace dcode_`dname2001' = "09" if `iso2001' == "KL" & inlist(`dname2001', "idukki", "idduki")
    qui replace dcode_`dname2001' = "10" if `iso2001' == "KL" & inlist(`dname2001', "kottayam")
    qui replace dcode_`dname2001' = "11" if `iso2001' == "KL" & inlist(`dname2001', "alappuzha", "allapuzha", "allappuzha", "allappuzha (till 1991)", "alleppey", "alappuzh")
    qui replace dcode_`dname2001' = "12" if `iso2001' == "KL" & inlist(`dname2001', "pathanamthitta", "patanamthitta", "pathanamthitt")
    qui replace dcode_`dname2001' = "13" if `iso2001' == "KL" & inlist(`dname2001', "kollam")
    qui replace dcode_`dname2001' = "14" if `iso2001' == "KL" & inlist(`dname2001', "thiruvananthapuram", "trivandrum", "thiruvanantha", "triruvananthapuram")

*===============================================================================

    * tamil nadu
    qui replace dcode_`dname2001' = "01" if `iso2001' == "TN" & inlist(`dname2001', "thiruvallur", "tiruvallur")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "TN" & inlist(`dname2001', "chennai")
    qui replace dcode_`dname2001' = "03" if `iso2001' == "TN" & inlist(`dname2001', "kancheepuram", "kanchipuram")
    qui replace dcode_`dname2001' = "04" if `iso2001' == "TN" & inlist(`dname2001', "vellore")
    qui replace dcode_`dname2001' = "05" if `iso2001' == "TN" & inlist(`dname2001', "dharmapuri", "dharamapuri")
    qui replace dcode_`dname2001' = "06" if `iso2001' == "TN" & inlist(`dname2001', "tiruvannamalai", "thiruvannaamalai", "tiruvannamala", "tiruvanamalai")
    qui replace dcode_`dname2001' = "07" if `iso2001' == "TN" & inlist(`dname2001', "viluppuram")
    qui replace dcode_`dname2001' = "08" if `iso2001' == "TN" & inlist(`dname2001', "salem")
    qui replace dcode_`dname2001' = "09" if `iso2001' == "TN" & inlist(`dname2001', "namakkal")
    qui replace dcode_`dname2001' = "10" if `iso2001' == "TN" & inlist(`dname2001', "erode")
    qui replace dcode_`dname2001' = "11" if `iso2001' == "TN" & inlist(`dname2001', "the nilgiris", "nilgiri", "thenilgiris")
    qui replace dcode_`dname2001' = "12" if `iso2001' == "TN" & inlist(`dname2001', "coimbatore")
    qui replace dcode_`dname2001' = "13" if `iso2001' == "TN" & inlist(`dname2001', "dindigul")
    qui replace dcode_`dname2001' = "14" if `iso2001' == "TN" & inlist(`dname2001', "karur")
    qui replace dcode_`dname2001' = "15" if `iso2001' == "TN" & inlist(`dname2001', "tiruchirapalli", "tiruchirappalli")
    qui replace dcode_`dname2001' = "16" if `iso2001' == "TN" & inlist(`dname2001', "perambalur")
    qui replace dcode_`dname2001' = "17" if `iso2001' == "TN" & inlist(`dname2001', "ariyalur")
    qui replace dcode_`dname2001' = "18" if `iso2001' == "TN" & inlist(`dname2001', "cuddalore")
    qui replace dcode_`dname2001' = "19" if `iso2001' == "TN" & inlist(`dname2001', "nagapattinam")
    qui replace dcode_`dname2001' = "20" if `iso2001' == "TN" & inlist(`dname2001', "thiruvarur", "tiruvarur")
    qui replace dcode_`dname2001' = "21" if `iso2001' == "TN" & inlist(`dname2001', "thanjavur")
    qui replace dcode_`dname2001' = "22" if `iso2001' == "TN" & inlist(`dname2001', "pudukkottai")
    qui replace dcode_`dname2001' = "23" if `iso2001' == "TN" & inlist(`dname2001', "sivaganga")
    qui replace dcode_`dname2001' = "24" if `iso2001' == "TN" & inlist(`dname2001', "madurai")
    qui replace dcode_`dname2001' = "25" if `iso2001' == "TN" & inlist(`dname2001', "theni")
    qui replace dcode_`dname2001' = "26" if `iso2001' == "TN" & inlist(`dname2001', "virudhunagar")
    qui replace dcode_`dname2001' = "27" if `iso2001' == "TN" & inlist(`dname2001', "ramanathapuram", "ramanathapura", "ramnathapuram")
    qui replace dcode_`dname2001' = "28" if `iso2001' == "TN" & inlist(`dname2001', "thoothukkudi", "thoothukudi", "tuticorin", "thoorhukkudi", "toothukudi")
    qui replace dcode_`dname2001' = "29" if `iso2001' == "TN" & inlist(`dname2001', "tirunelveli")
    qui replace dcode_`dname2001' = "30" if `iso2001' == "TN" & inlist(`dname2001', "kanniyakumari", "kanyakumari")

*===============================================================================

    * puducherry
    qui replace dcode_`dname2001' = "01" if `iso2001' == "PY" & inlist(`dname2001', "yanam")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "PY" & inlist(`dname2001', "pondicherry", "puducherry")
    qui replace dcode_`dname2001' = "03" if `iso2001' == "PY" & inlist(`dname2001', "mahe")
    qui replace dcode_`dname2001' = "04" if `iso2001' == "PY" & inlist(`dname2001', "karaikal")

*===============================================================================

    * andaman and nicobar islands
    qui replace dcode_`dname2001' = "01" if `iso2001' == "AN" & inlist(`dname2001', "andamans", "andaman")
    qui replace dcode_`dname2001' = "02" if `iso2001' == "AN" & inlist(`dname2001', "nicobars", "nicobar")

*===============================================================================
end

*-------------------------------------------------------------------------------
* 2011
*-------------------------------------------------------------------------------
capture program drop dcode2011
program define dcode2011

* store input into macros
local dname2011 `1'
local iso2011 `2'

*===============================================================================

  * jammu & kashmir
    qui replace dcode_`dname2011' = "001" if `iso2011' == "JK" & inlist(`dname2011', "kupwara")
    qui replace dcode_`dname2011' = "002" if `iso2011' == "JK" & inlist(`dname2011', "badgam")
    qui replace dcode_`dname2011' = "003" if `iso2011' == "JK" & inlist(`dname2011', "leh(ladakh)", "leh")
    qui replace dcode_`dname2011' = "004" if `iso2011' == "JK" & inlist(`dname2011', "kargil")
    qui replace dcode_`dname2011' = "005" if `iso2011' == "JK" & inlist(`dname2011', "punch")
    qui replace dcode_`dname2011' = "006" if `iso2011' == "JK" & inlist(`dname2011', "rajouri")
    qui replace dcode_`dname2011' = "007" if `iso2011' == "JK" & inlist(`dname2011', "kathua")
    qui replace dcode_`dname2011' = "008" if `iso2011' == "JK" & inlist(`dname2011', "baramula")
    qui replace dcode_`dname2011' = "009" if `iso2011' == "JK" & inlist(`dname2011', "bandipore")
    qui replace dcode_`dname2011' = "010" if `iso2011' == "JK" & inlist(`dname2011', "srinagar")
    qui replace dcode_`dname2011' = "011" if `iso2011' == "JK" & inlist(`dname2011', "ganderbal")
    qui replace dcode_`dname2011' = "012" if `iso2011' == "JK" & inlist(`dname2011', "pulwama")
    qui replace dcode_`dname2011' = "013" if `iso2011' == "JK" & inlist(`dname2011', "shupiyan")
    qui replace dcode_`dname2011' = "014" if `iso2011' == "JK" & inlist(`dname2011', "anantnag")
    qui replace dcode_`dname2011' = "015" if `iso2011' == "JK" & inlist(`dname2011', "kulgam")
    qui replace dcode_`dname2011' = "016" if `iso2011' == "JK" & inlist(`dname2011', "doda")
    qui replace dcode_`dname2011' = "017" if `iso2011' == "JK" & inlist(`dname2011', "ramban")
    qui replace dcode_`dname2011' = "018" if `iso2011' == "JK" & inlist(`dname2011', "kishtwar")
    qui replace dcode_`dname2011' = "019" if `iso2011' == "JK" & inlist(`dname2011', "udhampur")
    qui replace dcode_`dname2011' = "020" if `iso2011' == "JK" & inlist(`dname2011', "reasi")
    qui replace dcode_`dname2011' = "021" if `iso2011' == "JK" & inlist(`dname2011', "jammu")
    qui replace dcode_`dname2011' = "022" if `iso2011' == "JK" & inlist(`dname2011', "samba")

*===============================================================================

  * himachal pradesh
    qui replace dcode_`dname2011' = "023" if `iso2011' == "HP" & inlist(`dname2011', "chamba")
    qui replace dcode_`dname2011' = "024" if `iso2011' == "HP" & inlist(`dname2011', "kangra")
    qui replace dcode_`dname2011' = "025" if `iso2011' == "HP" & inlist(`dname2011', "lahul&spiti", "lahulandspiti", "lahul", "spiti")
    qui replace dcode_`dname2011' = "026" if `iso2011' == "HP" & inlist(`dname2011', "kullu")
    qui replace dcode_`dname2011' = "027" if `iso2011' == "HP" & inlist(`dname2011', "mandi")
    qui replace dcode_`dname2011' = "028" if `iso2011' == "HP" & inlist(`dname2011', "hamirpur(himachal)", "hamirpur")
    qui replace dcode_`dname2011' = "029" if `iso2011' == "HP" & inlist(`dname2011', "una")
    qui replace dcode_`dname2011' = "030" if `iso2011' == "HP" & inlist(`dname2011', "bilaspur(himachal)", "bilaspur")
    qui replace dcode_`dname2011' = "031" if `iso2011' == "HP" & inlist(`dname2011', "solan")
    qui replace dcode_`dname2011' = "032" if `iso2011' == "HP" & inlist(`dname2011', "sirmaur")
    qui replace dcode_`dname2011' = "033" if `iso2011' == "HP" & inlist(`dname2011', "shimla")
    qui replace dcode_`dname2011' = "034" if `iso2011' == "HP" & inlist(`dname2011', "kinnaur")

*===============================================================================

  * punjab
    qui replace dcode_`dname2011' = "035" if `iso2011' == "PB" & inlist(`dname2011', "gurdaspur")
    qui replace dcode_`dname2011' = "036" if `iso2011' == "PB" & inlist(`dname2011', "kapurthala")
    qui replace dcode_`dname2011' = "037" if `iso2011' == "PB" & inlist(`dname2011', "jalandhar")
    qui replace dcode_`dname2011' = "038" if `iso2011' == "PB" & inlist(`dname2011', "hoshiarpur")
    qui replace dcode_`dname2011' = "039" if `iso2011' == "PB" & inlist(`dname2011', "shahidbhagatsinghnagar")
    qui replace dcode_`dname2011' = "040" if `iso2011' == "PB" & inlist(`dname2011', "fatehgarhsahib")
    qui replace dcode_`dname2011' = "041" if `iso2011' == "PB" & inlist(`dname2011', "ludhiana")
    qui replace dcode_`dname2011' = "042" if `iso2011' == "PB" & inlist(`dname2011', "moga")
    qui replace dcode_`dname2011' = "043" if `iso2011' == "PB" & inlist(`dname2011', "firozpur")
    qui replace dcode_`dname2011' = "044" if `iso2011' == "PB" & inlist(`dname2011', "muktsar")
    qui replace dcode_`dname2011' = "045" if `iso2011' == "PB" & inlist(`dname2011', "faridkot")
    qui replace dcode_`dname2011' = "046" if `iso2011' == "PB" & inlist(`dname2011', "bathinda")
    qui replace dcode_`dname2011' = "047" if `iso2011' == "PB" & inlist(`dname2011', "mansa")
    qui replace dcode_`dname2011' = "048" if `iso2011' == "PB" & inlist(`dname2011', "patiala")
    qui replace dcode_`dname2011' = "049" if `iso2011' == "PB" & inlist(`dname2011', "amritsar")
    qui replace dcode_`dname2011' = "050" if `iso2011' == "PB" & inlist(`dname2011', "tarntaran")
    qui replace dcode_`dname2011' = "051" if `iso2011' == "PB" & inlist(`dname2011', "rupnagar")
    qui replace dcode_`dname2011' = "052" if `iso2011' == "PB" & inlist(`dname2011', "sahibzadaajitsinghnagar")
    qui replace dcode_`dname2011' = "053" if `iso2011' == "PB" & inlist(`dname2011', "sangrur")
    qui replace dcode_`dname2011' = "054" if `iso2011' == "PB" & inlist(`dname2011', "barnala")

*===============================================================================

  * chandigarh
    qui replace dcode_`dname2011' = "055" if `iso2011' == "CH" & inlist(`dname2011', "chandigarh")

*===============================================================================

  * uttarakhand
    qui replace dcode_`dname2011' = "056" if `iso2011' == "UT" & inlist(`dname2011', "uttarkashi")
    qui replace dcode_`dname2011' = "057" if `iso2011' == "UT" & inlist(`dname2011', "chamoli")
    qui replace dcode_`dname2011' = "058" if `iso2011' == "UT" & inlist(`dname2011', "rudraprayag")
    qui replace dcode_`dname2011' = "059" if `iso2011' == "UT" & inlist(`dname2011', "tehrigarhwal")
    qui replace dcode_`dname2011' = "060" if `iso2011' == "UT" & inlist(`dname2011', "dehradun")
    qui replace dcode_`dname2011' = "061" if `iso2011' == "UT" & inlist(`dname2011', "garhwal")
    qui replace dcode_`dname2011' = "062" if `iso2011' == "UT" & inlist(`dname2011', "pithoragarh")
    qui replace dcode_`dname2011' = "063" if `iso2011' == "UT" & inlist(`dname2011', "bageshwar")
    qui replace dcode_`dname2011' = "064" if `iso2011' == "UT" & inlist(`dname2011', "almora")
    qui replace dcode_`dname2011' = "065" if `iso2011' == "UT" & inlist(`dname2011', "champawat")
    qui replace dcode_`dname2011' = "066" if `iso2011' == "UT" & inlist(`dname2011', "nainital")
    qui replace dcode_`dname2011' = "067" if `iso2011' == "UT" & inlist(`dname2011', "udhamsinghnagar")
    qui replace dcode_`dname2011' = "068" if `iso2011' == "UT" & inlist(`dname2011', "hardwar")

*===============================================================================

  * haryana
    qui replace dcode_`dname2011' = "069" if `iso2011' == "HR" & inlist(`dname2011', "panchkula")
    qui replace dcode_`dname2011' = "070" if `iso2011' == "HR" & inlist(`dname2011', "ambala")
    qui replace dcode_`dname2011' = "071" if `iso2011' == "HR" & inlist(`dname2011', "yamunanagar")
    qui replace dcode_`dname2011' = "072" if `iso2011' == "HR" & inlist(`dname2011', "kurukshetra")
    qui replace dcode_`dname2011' = "073" if `iso2011' == "HR" & inlist(`dname2011', "kaithal")
    qui replace dcode_`dname2011' = "074" if `iso2011' == "HR" & inlist(`dname2011', "karnal")
    qui replace dcode_`dname2011' = "075" if `iso2011' == "HR" & inlist(`dname2011', "panipat")
    qui replace dcode_`dname2011' = "076" if `iso2011' == "HR" & inlist(`dname2011', "sonipat")
    qui replace dcode_`dname2011' = "077" if `iso2011' == "HR" & inlist(`dname2011', "jind")
    qui replace dcode_`dname2011' = "078" if `iso2011' == "HR" & inlist(`dname2011', "fatehabad")
    qui replace dcode_`dname2011' = "079" if `iso2011' == "HR" & inlist(`dname2011', "sirsa")
    qui replace dcode_`dname2011' = "080" if `iso2011' == "HR" & inlist(`dname2011', "hisar")
    qui replace dcode_`dname2011' = "081" if `iso2011' == "HR" & inlist(`dname2011', "bhiwani")
    qui replace dcode_`dname2011' = "082" if `iso2011' == "HR" & inlist(`dname2011', "rohtak")
    qui replace dcode_`dname2011' = "083" if `iso2011' == "HR" & inlist(`dname2011', "jhajjar")
    qui replace dcode_`dname2011' = "084" if `iso2011' == "HR" & inlist(`dname2011', "mahendragarh")
    qui replace dcode_`dname2011' = "085" if `iso2011' == "HR" & inlist(`dname2011', "rewari")
    qui replace dcode_`dname2011' = "086" if `iso2011' == "HR" & inlist(`dname2011', "gurgaon")
    qui replace dcode_`dname2011' = "087" if `iso2011' == "HR" & inlist(`dname2011', "mewat")
    qui replace dcode_`dname2011' = "088" if `iso2011' == "HR" & inlist(`dname2011', "faridabad")
    qui replace dcode_`dname2011' = "089" if `iso2011' == "HR" & inlist(`dname2011', "palwal")

*===============================================================================

  * delhi
    qui replace dcode_`dname2011' = "090" if `iso2011' == "DL" & inlist(`dname2011', "northwestdelhi")
    qui replace dcode_`dname2011' = "091" if `iso2011' == "DL" & inlist(`dname2011', "northdelhi")
    qui replace dcode_`dname2011' = "092" if `iso2011' == "DL" & inlist(`dname2011', "northeastdelhi")
    qui replace dcode_`dname2011' = "093" if `iso2011' == "DL" & inlist(`dname2011', "eastdelhi")
    qui replace dcode_`dname2011' = "094" if `iso2011' == "DL" & inlist(`dname2011', "newdelhi")
    qui replace dcode_`dname2011' = "095" if `iso2011' == "DL" & inlist(`dname2011', "centraldelhi")
    qui replace dcode_`dname2011' = "096" if `iso2011' == "DL" & inlist(`dname2011', "westdelhi")
    qui replace dcode_`dname2011' = "097" if `iso2011' == "DL" & inlist(`dname2011', "southwestdelhi")
    qui replace dcode_`dname2011' = "098" if `iso2011' == "DL" & inlist(`dname2011', "southdelhi")

*===============================================================================

  * rajasthan
    qui replace dcode_`dname2011' = "099" if `iso2011' == "RJ" & inlist(`dname2011', "ganganagar")
    qui replace dcode_`dname2011' = "100" if `iso2011' == "RJ" & inlist(`dname2011', "hanumangarh")
    qui replace dcode_`dname2011' = "101" if `iso2011' == "RJ" & inlist(`dname2011', "bikaner")
    qui replace dcode_`dname2011' = "102" if `iso2011' == "RJ" & inlist(`dname2011', "churu")
    qui replace dcode_`dname2011' = "103" if `iso2011' == "RJ" & inlist(`dname2011', "jhunjhunun")
    qui replace dcode_`dname2011' = "104" if `iso2011' == "RJ" & inlist(`dname2011', "alwar")
    qui replace dcode_`dname2011' = "105" if `iso2011' == "RJ" & inlist(`dname2011', "bharatpur")
    qui replace dcode_`dname2011' = "106" if `iso2011' == "RJ" & inlist(`dname2011', "dhaulpur")
    qui replace dcode_`dname2011' = "107" if `iso2011' == "RJ" & inlist(`dname2011', "karauli")
    qui replace dcode_`dname2011' = "108" if `iso2011' == "RJ" & inlist(`dname2011', "sawaimadhopur")
    qui replace dcode_`dname2011' = "109" if `iso2011' == "RJ" & inlist(`dname2011', "dausa")
    qui replace dcode_`dname2011' = "110" if `iso2011' == "RJ" & inlist(`dname2011', "jaipur")
    qui replace dcode_`dname2011' = "111" if `iso2011' == "RJ" & inlist(`dname2011', "sikar")
    qui replace dcode_`dname2011' = "112" if `iso2011' == "RJ" & inlist(`dname2011', "nagaur")
    qui replace dcode_`dname2011' = "113" if `iso2011' == "RJ" & inlist(`dname2011', "jodhpur")
    qui replace dcode_`dname2011' = "114" if `iso2011' == "RJ" & inlist(`dname2011', "jaisalmer")
    qui replace dcode_`dname2011' = "115" if `iso2011' == "RJ" & inlist(`dname2011', "barmer")
    qui replace dcode_`dname2011' = "116" if `iso2011' == "RJ" & inlist(`dname2011', "jalor")
    qui replace dcode_`dname2011' = "117" if `iso2011' == "RJ" & inlist(`dname2011', "sirohi")
    qui replace dcode_`dname2011' = "118" if `iso2011' == "RJ" & inlist(`dname2011', "pali")
    qui replace dcode_`dname2011' = "119" if `iso2011' == "RJ" & inlist(`dname2011', "ajmer")
    qui replace dcode_`dname2011' = "120" if `iso2011' == "RJ" & inlist(`dname2011', "tonk")
    qui replace dcode_`dname2011' = "121" if `iso2011' == "RJ" & inlist(`dname2011', "bundi")
    qui replace dcode_`dname2011' = "122" if `iso2011' == "RJ" & inlist(`dname2011', "bhilwara")
    qui replace dcode_`dname2011' = "123" if `iso2011' == "RJ" & inlist(`dname2011', "rajsamand")
    qui replace dcode_`dname2011' = "124" if `iso2011' == "RJ" & inlist(`dname2011', "dungarpur")
    qui replace dcode_`dname2011' = "125" if `iso2011' == "RJ" & inlist(`dname2011', "banswara")
    qui replace dcode_`dname2011' = "126" if `iso2011' == "RJ" & inlist(`dname2011', "chittaurgarh")
    qui replace dcode_`dname2011' = "127" if `iso2011' == "RJ" & inlist(`dname2011', "kota")
    qui replace dcode_`dname2011' = "128" if `iso2011' == "RJ" & inlist(`dname2011', "baran")
    qui replace dcode_`dname2011' = "129" if `iso2011' == "RJ" & inlist(`dname2011', "jhalawar")
    qui replace dcode_`dname2011' = "130" if `iso2011' == "RJ" & inlist(`dname2011', "udaipur")
    qui replace dcode_`dname2011' = "131" if `iso2011' == "RJ" & inlist(`dname2011', "pratapgarh(rajasthan)", "pratapgarh")

*===============================================================================

  * uttar pradesh
    qui replace dcode_`dname2011' = "132" if `iso2011' == "UP" & inlist(`dname2011', "saharanpur")
    qui replace dcode_`dname2011' = "133" if `iso2011' == "UP" & inlist(`dname2011', "muzaffarnagar")
    qui replace dcode_`dname2011' = "134" if `iso2011' == "UP" & inlist(`dname2011', "bijnor")
    qui replace dcode_`dname2011' = "135" if `iso2011' == "UP" & inlist(`dname2011', "moradabad")
    qui replace dcode_`dname2011' = "136" if `iso2011' == "UP" & inlist(`dname2011', "rampur")
    qui replace dcode_`dname2011' = "137" if `iso2011' == "UP" & inlist(`dname2011', "jyotibaphulenagar")
    qui replace dcode_`dname2011' = "138" if `iso2011' == "UP" & inlist(`dname2011', "meerut")
    qui replace dcode_`dname2011' = "139" if `iso2011' == "UP" & inlist(`dname2011', "baghpat")
    qui replace dcode_`dname2011' = "140" if `iso2011' == "UP" & inlist(`dname2011', "ghaziabad")
    qui replace dcode_`dname2011' = "141" if `iso2011' == "UP" & inlist(`dname2011', "gautambuddhanagar")
    qui replace dcode_`dname2011' = "142" if `iso2011' == "UP" & inlist(`dname2011', "bulandshahr")
    qui replace dcode_`dname2011' = "143" if `iso2011' == "UP" & inlist(`dname2011', "aligarh")
    qui replace dcode_`dname2011' = "144" if `iso2011' == "UP" & inlist(`dname2011', "mahamayanagar")
    qui replace dcode_`dname2011' = "145" if `iso2011' == "UP" & inlist(`dname2011', "mathura")
    qui replace dcode_`dname2011' = "146" if `iso2011' == "UP" & inlist(`dname2011', "agra")
    qui replace dcode_`dname2011' = "147" if `iso2011' == "UP" & inlist(`dname2011', "firozabad")
    qui replace dcode_`dname2011' = "148" if `iso2011' == "UP" & inlist(`dname2011', "mainpuri")
    qui replace dcode_`dname2011' = "149" if `iso2011' == "UP" & inlist(`dname2011', "budaun")
    qui replace dcode_`dname2011' = "150" if `iso2011' == "UP" & inlist(`dname2011', "bareilly")
    qui replace dcode_`dname2011' = "151" if `iso2011' == "UP" & inlist(`dname2011', "pilibhit")
    qui replace dcode_`dname2011' = "152" if `iso2011' == "UP" & inlist(`dname2011', "shahjahanpur")
    qui replace dcode_`dname2011' = "153" if `iso2011' == "UP" & inlist(`dname2011', "kheri")
    qui replace dcode_`dname2011' = "154" if `iso2011' == "UP" & inlist(`dname2011', "sitapur")
    qui replace dcode_`dname2011' = "155" if `iso2011' == "UP" & inlist(`dname2011', "hardoi")
    qui replace dcode_`dname2011' = "156" if `iso2011' == "UP" & inlist(`dname2011', "unnao")
    qui replace dcode_`dname2011' = "157" if `iso2011' == "UP" & inlist(`dname2011', "lucknow")
    qui replace dcode_`dname2011' = "158" if `iso2011' == "UP" & inlist(`dname2011', "raebareli")
    qui replace dcode_`dname2011' = "159" if `iso2011' == "UP" & inlist(`dname2011', "farrukhabad")
    qui replace dcode_`dname2011' = "160" if `iso2011' == "UP" & inlist(`dname2011', "kannauj")
    qui replace dcode_`dname2011' = "161" if `iso2011' == "UP" & inlist(`dname2011', "etawah")
    qui replace dcode_`dname2011' = "162" if `iso2011' == "UP" & inlist(`dname2011', "auraiya")
    qui replace dcode_`dname2011' = "163" if `iso2011' == "UP" & inlist(`dname2011', "kanpurdehat")
    qui replace dcode_`dname2011' = "164" if `iso2011' == "UP" & inlist(`dname2011', "kanpurnagar")
    qui replace dcode_`dname2011' = "165" if `iso2011' == "UP" & inlist(`dname2011', "jalaun")
    qui replace dcode_`dname2011' = "166" if `iso2011' == "UP" & inlist(`dname2011', "jhansi")
    qui replace dcode_`dname2011' = "167" if `iso2011' == "UP" & inlist(`dname2011', "lalitpur")
    qui replace dcode_`dname2011' = "168" if `iso2011' == "UP" & inlist(`dname2011', "hamirpur(up)", "hamirpur")
    qui replace dcode_`dname2011' = "169" if `iso2011' == "UP" & inlist(`dname2011', "mahoba")
    qui replace dcode_`dname2011' = "170" if `iso2011' == "UP" & inlist(`dname2011', "banda")
    qui replace dcode_`dname2011' = "171" if `iso2011' == "UP" & inlist(`dname2011', "chitrakoot")
    qui replace dcode_`dname2011' = "172" if `iso2011' == "UP" & inlist(`dname2011', "fatehpur")
    qui replace dcode_`dname2011' = "173" if `iso2011' == "UP" & inlist(`dname2011', "pratapgarh(up)", "pratapgarh")
    qui replace dcode_`dname2011' = "174" if `iso2011' == "UP" & inlist(`dname2011', "kaushambi")
    qui replace dcode_`dname2011' = "175" if `iso2011' == "UP" & inlist(`dname2011', "allahabad")
    qui replace dcode_`dname2011' = "176" if `iso2011' == "UP" & inlist(`dname2011', "barabanki")
    qui replace dcode_`dname2011' = "177" if `iso2011' == "UP" & inlist(`dname2011', "faizabad")
    qui replace dcode_`dname2011' = "178" if `iso2011' == "UP" & inlist(`dname2011', "ambedkarnagar")
    qui replace dcode_`dname2011' = "179" if `iso2011' == "UP" & inlist(`dname2011', "sultanpur")
    qui replace dcode_`dname2011' = "180" if `iso2011' == "UP" & inlist(`dname2011', "bahraich")
    qui replace dcode_`dname2011' = "181" if `iso2011' == "UP" & inlist(`dname2011', "shrawasti")
    qui replace dcode_`dname2011' = "182" if `iso2011' == "UP" & inlist(`dname2011', "balrampur(up)", "balrampur")
    qui replace dcode_`dname2011' = "183" if `iso2011' == "UP" & inlist(`dname2011', "gonda")
    qui replace dcode_`dname2011' = "184" if `iso2011' == "UP" & inlist(`dname2011', "siddharthnagar")
    qui replace dcode_`dname2011' = "185" if `iso2011' == "UP" & inlist(`dname2011', "basti")
    qui replace dcode_`dname2011' = "186" if `iso2011' == "UP" & inlist(`dname2011', "santkabirnagar")
    qui replace dcode_`dname2011' = "187" if `iso2011' == "UP" & inlist(`dname2011', "maharajganj", "mahrajganj")
    qui replace dcode_`dname2011' = "188" if `iso2011' == "UP" & inlist(`dname2011', "gorakhpur")
    qui replace dcode_`dname2011' = "189" if `iso2011' == "UP" & inlist(`dname2011', "kushinagar")
    qui replace dcode_`dname2011' = "190" if `iso2011' == "UP" & inlist(`dname2011', "deoria")
    qui replace dcode_`dname2011' = "191" if `iso2011' == "UP" & inlist(`dname2011', "azamgarh")
    qui replace dcode_`dname2011' = "192" if `iso2011' == "UP" & inlist(`dname2011', "mau")
    qui replace dcode_`dname2011' = "193" if `iso2011' == "UP" & inlist(`dname2011', "ballia")
    qui replace dcode_`dname2011' = "194" if `iso2011' == "UP" & inlist(`dname2011', "jaunpur")
    qui replace dcode_`dname2011' = "195" if `iso2011' == "UP" & inlist(`dname2011', "ghazipur")
    qui replace dcode_`dname2011' = "196" if `iso2011' == "UP" & inlist(`dname2011', "chandauli")
    qui replace dcode_`dname2011' = "197" if `iso2011' == "UP" & inlist(`dname2011', "varanasi")
    qui replace dcode_`dname2011' = "198" if `iso2011' == "UP" & inlist(`dname2011', "santravidasnagar(bhadohi)", "santravidasnagar")
    qui replace dcode_`dname2011' = "199" if `iso2011' == "UP" & inlist(`dname2011', "mirzapur")
    qui replace dcode_`dname2011' = "200" if `iso2011' == "UP" & inlist(`dname2011', "sonbhadra")
    qui replace dcode_`dname2011' = "201" if `iso2011' == "UP" & inlist(`dname2011', "etah")
    qui replace dcode_`dname2011' = "202" if `iso2011' == "UP" & inlist(`dname2011', "kanshiramnagar")

*===============================================================================

  * bihar
    qui replace dcode_`dname2011' = "203" if `iso2011' == "BR" & inlist(`dname2011', "pashchimchamparan")
    qui replace dcode_`dname2011' = "204" if `iso2011' == "BR" & inlist(`dname2011', "purbachamparan")
    qui replace dcode_`dname2011' = "205" if `iso2011' == "BR" & inlist(`dname2011', "sheohar")
    qui replace dcode_`dname2011' = "206" if `iso2011' == "BR" & inlist(`dname2011', "sitamarhi")
    qui replace dcode_`dname2011' = "207" if `iso2011' == "BR" & inlist(`dname2011', "madhubani")
    qui replace dcode_`dname2011' = "208" if `iso2011' == "BR" & inlist(`dname2011', "supaul")
    qui replace dcode_`dname2011' = "209" if `iso2011' == "BR" & inlist(`dname2011', "araria")
    qui replace dcode_`dname2011' = "210" if `iso2011' == "BR" & inlist(`dname2011', "kishanganj")
    qui replace dcode_`dname2011' = "211" if `iso2011' == "BR" & inlist(`dname2011', "purnia")
    qui replace dcode_`dname2011' = "212" if `iso2011' == "BR" & inlist(`dname2011', "katihar")
    qui replace dcode_`dname2011' = "213" if `iso2011' == "BR" & inlist(`dname2011', "madhepura")
    qui replace dcode_`dname2011' = "214" if `iso2011' == "BR" & inlist(`dname2011', "saharsa")
    qui replace dcode_`dname2011' = "215" if `iso2011' == "BR" & inlist(`dname2011', "darbhanga")
    qui replace dcode_`dname2011' = "216" if `iso2011' == "BR" & inlist(`dname2011', "muzaffarpur")
    qui replace dcode_`dname2011' = "217" if `iso2011' == "BR" & inlist(`dname2011', "gopalganj")
    qui replace dcode_`dname2011' = "218" if `iso2011' == "BR" & inlist(`dname2011', "siwan")
    qui replace dcode_`dname2011' = "219" if `iso2011' == "BR" & inlist(`dname2011', "saran")
    qui replace dcode_`dname2011' = "220" if `iso2011' == "BR" & inlist(`dname2011', "vaishali")
    qui replace dcode_`dname2011' = "221" if `iso2011' == "BR" & inlist(`dname2011', "samastipur")
    qui replace dcode_`dname2011' = "222" if `iso2011' == "BR" & inlist(`dname2011', "begusarai")
    qui replace dcode_`dname2011' = "223" if `iso2011' == "BR" & inlist(`dname2011', "khagaria")
    qui replace dcode_`dname2011' = "224" if `iso2011' == "BR" & inlist(`dname2011', "bhagalpur")
    qui replace dcode_`dname2011' = "225" if `iso2011' == "BR" & inlist(`dname2011', "banka")
    qui replace dcode_`dname2011' = "226" if `iso2011' == "BR" & inlist(`dname2011', "munger")
    qui replace dcode_`dname2011' = "227" if `iso2011' == "BR" & inlist(`dname2011', "lakhisarai")
    qui replace dcode_`dname2011' = "228" if `iso2011' == "BR" & inlist(`dname2011', "sheikhpura")
    qui replace dcode_`dname2011' = "229" if `iso2011' == "BR" & inlist(`dname2011', "nalanda")
    qui replace dcode_`dname2011' = "230" if `iso2011' == "BR" & inlist(`dname2011', "patna")
    qui replace dcode_`dname2011' = "231" if `iso2011' == "BR" & inlist(`dname2011', "bhojpur")
    qui replace dcode_`dname2011' = "232" if `iso2011' == "BR" & inlist(`dname2011', "buxar")
    qui replace dcode_`dname2011' = "233" if `iso2011' == "BR" & inlist(`dname2011', "kaimur(bhabua)", "kaimurbhabua")
    qui replace dcode_`dname2011' = "234" if `iso2011' == "BR" & inlist(`dname2011', "rohtas")
    qui replace dcode_`dname2011' = "235" if `iso2011' == "BR" & inlist(`dname2011', "aurangabad(bihar)", "aurangabad")
    qui replace dcode_`dname2011' = "236" if `iso2011' == "BR" & inlist(`dname2011', "gaya")
    qui replace dcode_`dname2011' = "237" if `iso2011' == "BR" & inlist(`dname2011', "nawada")
    qui replace dcode_`dname2011' = "238" if `iso2011' == "BR" & inlist(`dname2011', "jamui")
    qui replace dcode_`dname2011' = "239" if `iso2011' == "BR" & inlist(`dname2011', "jehanabad")
    qui replace dcode_`dname2011' = "240" if `iso2011' == "BR" & inlist(`dname2011', "arwal")

*===============================================================================

  * sikkim
    qui replace dcode_`dname2011' = "241" if `iso2011' == "SK" & inlist(`dname2011', "northsikkim", "northdistrict")
    qui replace dcode_`dname2011' = "242" if `iso2011' == "SK" & inlist(`dname2011', "westsikkim", "westdistrict")
    qui replace dcode_`dname2011' = "243" if `iso2011' == "SK" & inlist(`dname2011', "southsikkim", "southdistrict")
    qui replace dcode_`dname2011' = "244" if `iso2011' == "SK" & inlist(`dname2011', "eastsikkim", "eastdistrict")

*===============================================================================

  * arunachal pradesh
    qui replace dcode_`dname2011' = "245" if `iso2011' == "AR" & inlist(`dname2011', "tawang")
    qui replace dcode_`dname2011' = "246" if `iso2011' == "AR" & inlist(`dname2011', "westkameng")
    qui replace dcode_`dname2011' = "247" if `iso2011' == "AR" & inlist(`dname2011', "eastkameng")
    qui replace dcode_`dname2011' = "248" if `iso2011' == "AR" & inlist(`dname2011', "papumpare")
    qui replace dcode_`dname2011' = "249" if `iso2011' == "AR" & inlist(`dname2011', "uppersubansiri")
    qui replace dcode_`dname2011' = "250" if `iso2011' == "AR" & inlist(`dname2011', "westsiang")
    qui replace dcode_`dname2011' = "251" if `iso2011' == "AR" & inlist(`dname2011', "eastsiang")
    qui replace dcode_`dname2011' = "252" if `iso2011' == "AR" & inlist(`dname2011', "uppersiang")
    qui replace dcode_`dname2011' = "253" if `iso2011' == "AR" & inlist(`dname2011', "changlang")
    qui replace dcode_`dname2011' = "254" if `iso2011' == "AR" & inlist(`dname2011', "tirap")
    qui replace dcode_`dname2011' = "255" if `iso2011' == "AR" & inlist(`dname2011', "lowersubansiri")
    qui replace dcode_`dname2011' = "256" if `iso2011' == "AR" & inlist(`dname2011', "kurungkumey")
    qui replace dcode_`dname2011' = "257" if `iso2011' == "AR" & inlist(`dname2011', "dibangvalley")
    qui replace dcode_`dname2011' = "258" if `iso2011' == "AR" & inlist(`dname2011', "lowerdibangvalley")
    qui replace dcode_`dname2011' = "259" if `iso2011' == "AR" & inlist(`dname2011', "lohit")
    qui replace dcode_`dname2011' = "260" if `iso2011' == "AR" & inlist(`dname2011', "anjaw")

*===============================================================================

  * nagaland
    qui replace dcode_`dname2011' = "261" if `iso2011' == "NL" & inlist(`dname2011', "mon")
    qui replace dcode_`dname2011' = "262" if `iso2011' == "NL" & inlist(`dname2011', "mokokchung")
    qui replace dcode_`dname2011' = "263" if `iso2011' == "NL" & inlist(`dname2011', "zunheboto")
    qui replace dcode_`dname2011' = "264" if `iso2011' == "NL" & inlist(`dname2011', "wokha")
    qui replace dcode_`dname2011' = "265" if `iso2011' == "NL" & inlist(`dname2011', "dimapur")
    qui replace dcode_`dname2011' = "266" if `iso2011' == "NL" & inlist(`dname2011', "phek")
    qui replace dcode_`dname2011' = "267" if `iso2011' == "NL" & inlist(`dname2011', "tuensang")
    qui replace dcode_`dname2011' = "268" if `iso2011' == "NL" & inlist(`dname2011', "longleng")
    qui replace dcode_`dname2011' = "269" if `iso2011' == "NL" & inlist(`dname2011', "kiphire")
    qui replace dcode_`dname2011' = "270" if `iso2011' == "NL" & inlist(`dname2011', "kohima")
    qui replace dcode_`dname2011' = "271" if `iso2011' == "NL" & inlist(`dname2011', "peren")

*===============================================================================

  * manipur
    qui replace dcode_`dname2011' = "272" if `iso2011' == "MN" & inlist(`dname2011', "senapati")
    qui replace dcode_`dname2011' = "273" if `iso2011' == "MN" & inlist(`dname2011', "tamenglong")
    qui replace dcode_`dname2011' = "274" if `iso2011' == "MN" & inlist(`dname2011', "churachandpur")
    qui replace dcode_`dname2011' = "275" if `iso2011' == "MN" & inlist(`dname2011', "bishnupur")
    qui replace dcode_`dname2011' = "276" if `iso2011' == "MN" & inlist(`dname2011', "thoubal")
    qui replace dcode_`dname2011' = "277" if `iso2011' == "MN" & inlist(`dname2011', "imphalwest")
    qui replace dcode_`dname2011' = "278" if `iso2011' == "MN" & inlist(`dname2011', "imphaleast")
    qui replace dcode_`dname2011' = "279" if `iso2011' == "MN" & inlist(`dname2011', "ukhrul")
    qui replace dcode_`dname2011' = "280" if `iso2011' == "MN" & inlist(`dname2011', "chandel")

*===============================================================================

  * mizoram
    qui replace dcode_`dname2011' = "281" if `iso2011' == "MZ" & inlist(`dname2011', "mamit")
    qui replace dcode_`dname2011' = "282" if `iso2011' == "MZ" & inlist(`dname2011', "kolasib")
    qui replace dcode_`dname2011' = "283" if `iso2011' == "MZ" & inlist(`dname2011', "aizawl")
    qui replace dcode_`dname2011' = "284" if `iso2011' == "MZ" & inlist(`dname2011', "champhai")
    qui replace dcode_`dname2011' = "285" if `iso2011' == "MZ" & inlist(`dname2011', "serchhip")
    qui replace dcode_`dname2011' = "286" if `iso2011' == "MZ" & inlist(`dname2011', "lunglei")
    qui replace dcode_`dname2011' = "287" if `iso2011' == "MZ" & inlist(`dname2011', "lawngtlai")
    qui replace dcode_`dname2011' = "288" if `iso2011' == "MZ" & inlist(`dname2011', "saiha")

*===============================================================================

  * tripura
    qui replace dcode_`dname2011' = "289" if `iso2011' == "TR" & inlist(`dname2011', "westtripura")
    qui replace dcode_`dname2011' = "290" if `iso2011' == "TR" & inlist(`dname2011', "southtripura")
    qui replace dcode_`dname2011' = "291" if `iso2011' == "TR" & inlist(`dname2011', "dhalai")
    qui replace dcode_`dname2011' = "292" if `iso2011' == "TR" & inlist(`dname2011', "northtripura")

*===============================================================================

  * meghalaya
    qui replace dcode_`dname2011' = "293" if `iso2011' == "ML" & inlist(`dname2011', "westgarohills")
    qui replace dcode_`dname2011' = "294" if `iso2011' == "ML" & inlist(`dname2011', "eastgarohills")
    qui replace dcode_`dname2011' = "295" if `iso2011' == "ML" & inlist(`dname2011', "southgarohills")
    qui replace dcode_`dname2011' = "296" if `iso2011' == "ML" & inlist(`dname2011', "westkhasihills")
    qui replace dcode_`dname2011' = "297" if `iso2011' == "ML" & inlist(`dname2011', "ribhoi")
    qui replace dcode_`dname2011' = "298" if `iso2011' == "ML" & inlist(`dname2011', "eastkhasihills")
    qui replace dcode_`dname2011' = "299" if `iso2011' == "ML" & inlist(`dname2011', "jaintiahills")

*===============================================================================

  * assam
    qui replace dcode_`dname2011' = "300" if `iso2011' == "AS" & inlist(`dname2011', "kokrajhar")
    qui replace dcode_`dname2011' = "301" if `iso2011' == "AS" & inlist(`dname2011', "dhubri")
    qui replace dcode_`dname2011' = "302" if `iso2011' == "AS" & inlist(`dname2011', "goalpara")
    qui replace dcode_`dname2011' = "303" if `iso2011' == "AS" & inlist(`dname2011', "barpeta")
    qui replace dcode_`dname2011' = "304" if `iso2011' == "AS" & inlist(`dname2011', "morigaon")
    qui replace dcode_`dname2011' = "305" if `iso2011' == "AS" & inlist(`dname2011', "nagaon")
    qui replace dcode_`dname2011' = "306" if `iso2011' == "AS" & inlist(`dname2011', "sonitpur")
    qui replace dcode_`dname2011' = "307" if `iso2011' == "AS" & inlist(`dname2011', "lakhimpur")
    qui replace dcode_`dname2011' = "308" if `iso2011' == "AS" & inlist(`dname2011', "dhemaji")
    qui replace dcode_`dname2011' = "309" if `iso2011' == "AS" & inlist(`dname2011', "tinsukia")
    qui replace dcode_`dname2011' = "310" if `iso2011' == "AS" & inlist(`dname2011', "dibrugarh")
    qui replace dcode_`dname2011' = "311" if `iso2011' == "AS" & inlist(`dname2011', "sivasagar")
    qui replace dcode_`dname2011' = "312" if `iso2011' == "AS" & inlist(`dname2011', "jorhat")
    qui replace dcode_`dname2011' = "313" if `iso2011' == "AS" & inlist(`dname2011', "golaghat")
    qui replace dcode_`dname2011' = "314" if `iso2011' == "AS" & inlist(`dname2011', "karbianglong")
    qui replace dcode_`dname2011' = "315" if `iso2011' == "AS" & inlist(`dname2011', "dimahasao")
    qui replace dcode_`dname2011' = "316" if `iso2011' == "AS" & inlist(`dname2011', "cachar")
    qui replace dcode_`dname2011' = "317" if `iso2011' == "AS" & inlist(`dname2011', "karimganj")
    qui replace dcode_`dname2011' = "318" if `iso2011' == "AS" & inlist(`dname2011', "hailakandi")
    qui replace dcode_`dname2011' = "319" if `iso2011' == "AS" & inlist(`dname2011', "bongaigaon")
    qui replace dcode_`dname2011' = "320" if `iso2011' == "AS" & inlist(`dname2011', "chirang")
    qui replace dcode_`dname2011' = "321" if `iso2011' == "AS" & inlist(`dname2011', "kamrup")
    qui replace dcode_`dname2011' = "322" if `iso2011' == "AS" & inlist(`dname2011', "kamrupmetropolitan")
    qui replace dcode_`dname2011' = "323" if `iso2011' == "AS" & inlist(`dname2011', "nalbari")
    qui replace dcode_`dname2011' = "324" if `iso2011' == "AS" & inlist(`dname2011', "baksa")
    qui replace dcode_`dname2011' = "325" if `iso2011' == "AS" & inlist(`dname2011', "darrang")
    qui replace dcode_`dname2011' = "326" if `iso2011' == "AS" & inlist(`dname2011', "udalguri")

*===============================================================================

  * west bengal
    qui replace dcode_`dname2011' = "327" if `iso2011' == "WB" & inlist(`dname2011', "darjiling")
    qui replace dcode_`dname2011' = "328" if `iso2011' == "WB" & inlist(`dname2011', "jalpaiguri")
    qui replace dcode_`dname2011' = "329" if `iso2011' == "WB" & inlist(`dname2011', "kochbihar")
    qui replace dcode_`dname2011' = "330" if `iso2011' == "WB" & inlist(`dname2011', "uttardinajpur")
    qui replace dcode_`dname2011' = "331" if `iso2011' == "WB" & inlist(`dname2011', "dakshindinajpur")
    qui replace dcode_`dname2011' = "332" if `iso2011' == "WB" & inlist(`dname2011', "maldah")
    qui replace dcode_`dname2011' = "333" if `iso2011' == "WB" & inlist(`dname2011', "murshidabad")
    qui replace dcode_`dname2011' = "334" if `iso2011' == "WB" & inlist(`dname2011', "birbhum")
    qui replace dcode_`dname2011' = "335" if `iso2011' == "WB" & inlist(`dname2011', "barddhaman")
    qui replace dcode_`dname2011' = "336" if `iso2011' == "WB" & inlist(`dname2011', "nadia")
    qui replace dcode_`dname2011' = "337" if `iso2011' == "WB" & inlist(`dname2011', "northtwentyfourparganas")
    qui replace dcode_`dname2011' = "338" if `iso2011' == "WB" & inlist(`dname2011', "hugli")
    qui replace dcode_`dname2011' = "339" if `iso2011' == "WB" & inlist(`dname2011', "bankura")
    qui replace dcode_`dname2011' = "340" if `iso2011' == "WB" & inlist(`dname2011', "puruliya")
    qui replace dcode_`dname2011' = "341" if `iso2011' == "WB" & inlist(`dname2011', "haora")
    qui replace dcode_`dname2011' = "342" if `iso2011' == "WB" & inlist(`dname2011', "kolkata")
    qui replace dcode_`dname2011' = "343" if `iso2011' == "WB" & inlist(`dname2011', "southtwentyfourparganas")
    qui replace dcode_`dname2011' = "344" if `iso2011' == "WB" & inlist(`dname2011', "paschimmedinipur")
    qui replace dcode_`dname2011' = "345" if `iso2011' == "WB" & inlist(`dname2011', "purbamedinipur")

*===============================================================================

  * jharkhand
    qui replace dcode_`dname2011' = "346" if `iso2011' == "JH" & inlist(`dname2011', "garhwa")
    qui replace dcode_`dname2011' = "347" if `iso2011' == "JH" & inlist(`dname2011', "chatra")
    qui replace dcode_`dname2011' = "348" if `iso2011' == "JH" & inlist(`dname2011', "kodarma")
    qui replace dcode_`dname2011' = "349" if `iso2011' == "JH" & inlist(`dname2011', "giridih")
    qui replace dcode_`dname2011' = "350" if `iso2011' == "JH" & inlist(`dname2011', "deoghar")
    qui replace dcode_`dname2011' = "351" if `iso2011' == "JH" & inlist(`dname2011', "godda")
    qui replace dcode_`dname2011' = "352" if `iso2011' == "JH" & inlist(`dname2011', "sahibganj")
    qui replace dcode_`dname2011' = "353" if `iso2011' == "JH" & inlist(`dname2011', "pakur")
    qui replace dcode_`dname2011' = "354" if `iso2011' == "JH" & inlist(`dname2011', "dhanbad")
    qui replace dcode_`dname2011' = "355" if `iso2011' == "JH" & inlist(`dname2011', "bokaro")
    qui replace dcode_`dname2011' = "356" if `iso2011' == "JH" & inlist(`dname2011', "lohardaga")
    qui replace dcode_`dname2011' = "357" if `iso2011' == "JH" & inlist(`dname2011', "purbisinghbhum")
    qui replace dcode_`dname2011' = "358" if `iso2011' == "JH" & inlist(`dname2011', "palamu")
    qui replace dcode_`dname2011' = "359" if `iso2011' == "JH" & inlist(`dname2011', "latehar")
    qui replace dcode_`dname2011' = "360" if `iso2011' == "JH" & inlist(`dname2011', "hazaribagh")
    qui replace dcode_`dname2011' = "361" if `iso2011' == "JH" & inlist(`dname2011', "ramgarh")
    qui replace dcode_`dname2011' = "362" if `iso2011' == "JH" & inlist(`dname2011', "dumka")
    qui replace dcode_`dname2011' = "363" if `iso2011' == "JH" & inlist(`dname2011', "jamtara")
    qui replace dcode_`dname2011' = "364" if `iso2011' == "JH" & inlist(`dname2011', "ranchi")
    qui replace dcode_`dname2011' = "365" if `iso2011' == "JH" & inlist(`dname2011', "khunti")
    qui replace dcode_`dname2011' = "366" if `iso2011' == "JH" & inlist(`dname2011', "gumla")
    qui replace dcode_`dname2011' = "367" if `iso2011' == "JH" & inlist(`dname2011', "simdega")
    qui replace dcode_`dname2011' = "368" if `iso2011' == "JH" & inlist(`dname2011', "pashchimisinghbhum")
    qui replace dcode_`dname2011' = "369" if `iso2011' == "JH" & inlist(`dname2011', "saraikelakharsawan")

*===============================================================================

  * orissa
    qui replace dcode_`dname2011' = "370" if `iso2011' == "OR" & inlist(`dname2011', "bargarh")
    qui replace dcode_`dname2011' = "371" if `iso2011' == "OR" & inlist(`dname2011', "jharsuguda")
    qui replace dcode_`dname2011' = "372" if `iso2011' == "OR" & inlist(`dname2011', "sambalpur")
    qui replace dcode_`dname2011' = "373" if `iso2011' == "OR" & inlist(`dname2011', "debagarh")
    qui replace dcode_`dname2011' = "374" if `iso2011' == "OR" & inlist(`dname2011', "sundargarh")
    qui replace dcode_`dname2011' = "375" if `iso2011' == "OR" & inlist(`dname2011', "kendujhar")
    qui replace dcode_`dname2011' = "376" if `iso2011' == "OR" & inlist(`dname2011', "mayurbhanj")
    qui replace dcode_`dname2011' = "377" if `iso2011' == "OR" & inlist(`dname2011', "baleshwar")
    qui replace dcode_`dname2011' = "378" if `iso2011' == "OR" & inlist(`dname2011', "bhadrak")
    qui replace dcode_`dname2011' = "379" if `iso2011' == "OR" & inlist(`dname2011', "kendrapara")
    qui replace dcode_`dname2011' = "380" if `iso2011' == "OR" & inlist(`dname2011', "jagatsinghapur")
    qui replace dcode_`dname2011' = "381" if `iso2011' == "OR" & inlist(`dname2011', "cuttack")
    qui replace dcode_`dname2011' = "382" if `iso2011' == "OR" & inlist(`dname2011', "jajapur")
    qui replace dcode_`dname2011' = "383" if `iso2011' == "OR" & inlist(`dname2011', "dhenkanal")
    qui replace dcode_`dname2011' = "384" if `iso2011' == "OR" & inlist(`dname2011', "anugul")
    qui replace dcode_`dname2011' = "385" if `iso2011' == "OR" & inlist(`dname2011', "nayagarh")
    qui replace dcode_`dname2011' = "386" if `iso2011' == "OR" & inlist(`dname2011', "khordha")
    qui replace dcode_`dname2011' = "387" if `iso2011' == "OR" & inlist(`dname2011', "puri")
    qui replace dcode_`dname2011' = "388" if `iso2011' == "OR" & inlist(`dname2011', "ganjam")
    qui replace dcode_`dname2011' = "389" if `iso2011' == "OR" & inlist(`dname2011', "gajapati")
    qui replace dcode_`dname2011' = "390" if `iso2011' == "OR" & inlist(`dname2011', "kandhamal")
    qui replace dcode_`dname2011' = "391" if `iso2011' == "OR" & inlist(`dname2011', "baudh")
    qui replace dcode_`dname2011' = "392" if `iso2011' == "OR" & inlist(`dname2011', "subarnapur")
    qui replace dcode_`dname2011' = "393" if `iso2011' == "OR" & inlist(`dname2011', "balangir")
    qui replace dcode_`dname2011' = "394" if `iso2011' == "OR" & inlist(`dname2011', "nuapada")
    qui replace dcode_`dname2011' = "395" if `iso2011' == "OR" & inlist(`dname2011', "kalahandi")
    qui replace dcode_`dname2011' = "396" if `iso2011' == "OR" & inlist(`dname2011', "rayagada")
    qui replace dcode_`dname2011' = "397" if `iso2011' == "OR" & inlist(`dname2011', "nabarangapur")
    qui replace dcode_`dname2011' = "398" if `iso2011' == "OR" & inlist(`dname2011', "koraput")
    qui replace dcode_`dname2011' = "399" if `iso2011' == "OR" & inlist(`dname2011', "malkangiri")




*===============================================================================

  * chattisgarh
    qui replace dcode_`dname2011' = "400" if `iso2011' == "CT" & inlist(`dname2011', "koriya")
    qui replace dcode_`dname2011' = "401" if `iso2011' == "CT" & inlist(`dname2011', "surguja")
    qui replace dcode_`dname2011' = "402" if `iso2011' == "CT" & inlist(`dname2011', "jashpur")
    qui replace dcode_`dname2011' = "403" if `iso2011' == "CT" & inlist(`dname2011', "raigarh(chhattisgarh)", "raigarh")
    qui replace dcode_`dname2011' = "404" if `iso2011' == "CT" & inlist(`dname2011', "korba")
    qui replace dcode_`dname2011' = "405" if `iso2011' == "CT" & inlist(`dname2011', "janjgirchampa", "janjgir-champa")
    qui replace dcode_`dname2011' = "406" if `iso2011' == "CT" & inlist(`dname2011', "bilaspur(chhattisgarh)", "bilaspur")
    qui replace dcode_`dname2011' = "407" if `iso2011' == "CT" & inlist(`dname2011', "kabeerdham")
    qui replace dcode_`dname2011' = "408" if `iso2011' == "CT" & inlist(`dname2011', "rajnandgaon")
    qui replace dcode_`dname2011' = "409" if `iso2011' == "CT" & inlist(`dname2011', "durg")
    qui replace dcode_`dname2011' = "410" if `iso2011' == "CT" & inlist(`dname2011', "raipur")
    qui replace dcode_`dname2011' = "411" if `iso2011' == "CT" & inlist(`dname2011', "mahasamund")
    qui replace dcode_`dname2011' = "412" if `iso2011' == "CT" & inlist(`dname2011', "dhamtari")
    qui replace dcode_`dname2011' = "413" if `iso2011' == "CT" & inlist(`dname2011', "uttarbastarkanker")
    qui replace dcode_`dname2011' = "414" if `iso2011' == "CT" & inlist(`dname2011', "bastar")
    qui replace dcode_`dname2011' = "415" if `iso2011' == "CT" & inlist(`dname2011', "narayanpur")
    qui replace dcode_`dname2011' = "416" if `iso2011' == "CT" & inlist(`dname2011', "dakshinbastardantewada")
    qui replace dcode_`dname2011' = "417" if `iso2011' == "CT" & inlist(`dname2011', "bijapur(chhattisgarh)", "bijapur")

*===============================================================================

  * madhya pradesh
    qui replace dcode_`dname2011' = "418" if `iso2011' == "MP" & inlist(`dname2011', "sheopur")
    qui replace dcode_`dname2011' = "419" if `iso2011' == "MP" & inlist(`dname2011', "morena")
    qui replace dcode_`dname2011' = "420" if `iso2011' == "MP" & inlist(`dname2011', "bhind")
    qui replace dcode_`dname2011' = "421" if `iso2011' == "MP" & inlist(`dname2011', "gwalior")
    qui replace dcode_`dname2011' = "422" if `iso2011' == "MP" & inlist(`dname2011', "datia")
    qui replace dcode_`dname2011' = "423" if `iso2011' == "MP" & inlist(`dname2011', "shivpuri")
    qui replace dcode_`dname2011' = "424" if `iso2011' == "MP" & inlist(`dname2011', "tikamgarh")
    qui replace dcode_`dname2011' = "425" if `iso2011' == "MP" & inlist(`dname2011', "chhatarpur")
    qui replace dcode_`dname2011' = "426" if `iso2011' == "MP" & inlist(`dname2011', "panna")
    qui replace dcode_`dname2011' = "427" if `iso2011' == "MP" & inlist(`dname2011', "sagar")
    qui replace dcode_`dname2011' = "428" if `iso2011' == "MP" & inlist(`dname2011', "damoh")
    qui replace dcode_`dname2011' = "429" if `iso2011' == "MP" & inlist(`dname2011', "satna")
    qui replace dcode_`dname2011' = "430" if `iso2011' == "MP" & inlist(`dname2011', "rewa")
    qui replace dcode_`dname2011' = "431" if `iso2011' == "MP" & inlist(`dname2011', "umaria")
    qui replace dcode_`dname2011' = "432" if `iso2011' == "MP" & inlist(`dname2011', "neemuch")
    qui replace dcode_`dname2011' = "433" if `iso2011' == "MP" & inlist(`dname2011', "mandsaur")
    qui replace dcode_`dname2011' = "434" if `iso2011' == "MP" & inlist(`dname2011', "ratlam")
    qui replace dcode_`dname2011' = "435" if `iso2011' == "MP" & inlist(`dname2011', "ujjain")
    qui replace dcode_`dname2011' = "436" if `iso2011' == "MP" & inlist(`dname2011', "shajapur")
    qui replace dcode_`dname2011' = "437" if `iso2011' == "MP" & inlist(`dname2011', "dewas")
    qui replace dcode_`dname2011' = "438" if `iso2011' == "MP" & inlist(`dname2011', "dhar")
    qui replace dcode_`dname2011' = "439" if `iso2011' == "MP" & inlist(`dname2011', "indore")
    qui replace dcode_`dname2011' = "440" if `iso2011' == "MP" & inlist(`dname2011', "khargone(westnimar)", "westnimar")
    qui replace dcode_`dname2011' = "441" if `iso2011' == "MP" & inlist(`dname2011', "barwani")
    qui replace dcode_`dname2011' = "442" if `iso2011' == "MP" & inlist(`dname2011', "rajgarh")
    qui replace dcode_`dname2011' = "443" if `iso2011' == "MP" & inlist(`dname2011', "vidisha")
    qui replace dcode_`dname2011' = "444" if `iso2011' == "MP" & inlist(`dname2011', "bhopal")
    qui replace dcode_`dname2011' = "445" if `iso2011' == "MP" & inlist(`dname2011', "sehore")
    qui replace dcode_`dname2011' = "446" if `iso2011' == "MP" & inlist(`dname2011', "raisen")
    qui replace dcode_`dname2011' = "447" if `iso2011' == "MP" & inlist(`dname2011', "betul")
    qui replace dcode_`dname2011' = "448" if `iso2011' == "MP" & inlist(`dname2011', "harda")
    qui replace dcode_`dname2011' = "449" if `iso2011' == "MP" & inlist(`dname2011', "hoshangabad")
    qui replace dcode_`dname2011' = "450" if `iso2011' == "MP" & inlist(`dname2011', "katni")
    qui replace dcode_`dname2011' = "451" if `iso2011' == "MP" & inlist(`dname2011', "jabalpur")
    qui replace dcode_`dname2011' = "452" if `iso2011' == "MP" & inlist(`dname2011', "narsimhapur")
    qui replace dcode_`dname2011' = "453" if `iso2011' == "MP" & inlist(`dname2011', "dindori")
    qui replace dcode_`dname2011' = "454" if `iso2011' == "MP" & inlist(`dname2011', "mandla")
    qui replace dcode_`dname2011' = "455" if `iso2011' == "MP" & inlist(`dname2011', "chhindwara")
    qui replace dcode_`dname2011' = "456" if `iso2011' == "MP" & inlist(`dname2011', "seoni")
    qui replace dcode_`dname2011' = "457" if `iso2011' == "MP" & inlist(`dname2011', "balaghat")
    qui replace dcode_`dname2011' = "458" if `iso2011' == "MP" & inlist(`dname2011', "guna")
    qui replace dcode_`dname2011' = "459" if `iso2011' == "MP" & inlist(`dname2011', "ashoknagar")
    qui replace dcode_`dname2011' = "460" if `iso2011' == "MP" & inlist(`dname2011', "shahdol")
    qui replace dcode_`dname2011' = "461" if `iso2011' == "MP" & inlist(`dname2011', "anuppur")
    qui replace dcode_`dname2011' = "462" if `iso2011' == "MP" & inlist(`dname2011', "sidhi")
    qui replace dcode_`dname2011' = "463" if `iso2011' == "MP" & inlist(`dname2011', "singrauli")
    qui replace dcode_`dname2011' = "464" if `iso2011' == "MP" & inlist(`dname2011', "jhabua")
    qui replace dcode_`dname2011' = "465" if `iso2011' == "MP" & inlist(`dname2011', "alirajpur")
    qui replace dcode_`dname2011' = "466" if `iso2011' == "MP" & inlist(`dname2011', "khandwa(eastnimar)", "eastnimar")
    qui replace dcode_`dname2011' = "467" if `iso2011' == "MP" & inlist(`dname2011', "burhanpur")

*===============================================================================

  * gujarat
    qui replace dcode_`dname2011' = "468" if `iso2011' == "GJ" & inlist(`dname2011', "kachchh")
    qui replace dcode_`dname2011' = "469" if `iso2011' == "GJ" & inlist(`dname2011', "banaskantha")
    qui replace dcode_`dname2011' = "470" if `iso2011' == "GJ" & inlist(`dname2011', "patan")
    qui replace dcode_`dname2011' = "471" if `iso2011' == "GJ" & inlist(`dname2011', "mahesana")
    qui replace dcode_`dname2011' = "472" if `iso2011' == "GJ" & inlist(`dname2011', "sabarkantha")
    qui replace dcode_`dname2011' = "473" if `iso2011' == "GJ" & inlist(`dname2011', "gandhinagar")
    qui replace dcode_`dname2011' = "474" if `iso2011' == "GJ" & inlist(`dname2011', "ahmadabad", "ahmedabad")
    qui replace dcode_`dname2011' = "475" if `iso2011' == "GJ" & inlist(`dname2011', "surendranagar")
    qui replace dcode_`dname2011' = "476" if `iso2011' == "GJ" & inlist(`dname2011', "rajkot")
    qui replace dcode_`dname2011' = "477" if `iso2011' == "GJ" & inlist(`dname2011', "jamnagar")
    qui replace dcode_`dname2011' = "478" if `iso2011' == "GJ" & inlist(`dname2011', "porbandar")
    qui replace dcode_`dname2011' = "479" if `iso2011' == "GJ" & inlist(`dname2011', "junagadh")
    qui replace dcode_`dname2011' = "480" if `iso2011' == "GJ" & inlist(`dname2011', "amreli")
    qui replace dcode_`dname2011' = "481" if `iso2011' == "GJ" & inlist(`dname2011', "bhavnagar")
    qui replace dcode_`dname2011' = "482" if `iso2011' == "GJ" & inlist(`dname2011', "anand")
    qui replace dcode_`dname2011' = "483" if `iso2011' == "GJ" & inlist(`dname2011', "kheda")
    qui replace dcode_`dname2011' = "484" if `iso2011' == "GJ" & inlist(`dname2011', "panchmahals")
    qui replace dcode_`dname2011' = "485" if `iso2011' == "GJ" & inlist(`dname2011', "dohad")
    qui replace dcode_`dname2011' = "486" if `iso2011' == "GJ" & inlist(`dname2011', "vadodara")
    qui replace dcode_`dname2011' = "487" if `iso2011' == "GJ" & inlist(`dname2011', "narmada")
    qui replace dcode_`dname2011' = "488" if `iso2011' == "GJ" & inlist(`dname2011', "bharuch")
    qui replace dcode_`dname2011' = "489" if `iso2011' == "GJ" & inlist(`dname2011', "thedangs")
    qui replace dcode_`dname2011' = "490" if `iso2011' == "GJ" & inlist(`dname2011', "navsari")
    qui replace dcode_`dname2011' = "491" if `iso2011' == "GJ" & inlist(`dname2011', "valsad")
    qui replace dcode_`dname2011' = "492" if `iso2011' == "GJ" & inlist(`dname2011', "surat")
    qui replace dcode_`dname2011' = "493" if `iso2011' == "GJ" & inlist(`dname2011', "tapi")

*===============================================================================

  * daman & diu
    qui replace dcode_`dname2011' = "494" if `iso2011' == "DD" & inlist(`dname2011', "diu")
    qui replace dcode_`dname2011' = "495" if `iso2011' == "DD" & inlist(`dname2011', "daman")

*===============================================================================

  * dadra & nagar haveli
    qui replace dcode_`dname2011' = "496" if `iso2011' == "DN" & inlist(`dname2011', "dadra&nagarhaveli")

*===============================================================================

  * maharashtra
    qui replace dcode_`dname2011' = "497" if `iso2011' == "MH" & inlist(`dname2011', "nandurbar")
    qui replace dcode_`dname2011' = "498" if `iso2011' == "MH" & inlist(`dname2011', "dhule")
    qui replace dcode_`dname2011' = "499" if `iso2011' == "MH" & inlist(`dname2011', "jalgaon")
    qui replace dcode_`dname2011' = "500" if `iso2011' == "MH" & inlist(`dname2011', "buldana")
    qui replace dcode_`dname2011' = "501" if `iso2011' == "MH" & inlist(`dname2011', "akola")
    qui replace dcode_`dname2011' = "502" if `iso2011' == "MH" & inlist(`dname2011', "washim")
    qui replace dcode_`dname2011' = "503" if `iso2011' == "MH" & inlist(`dname2011', "amravati")
    qui replace dcode_`dname2011' = "504" if `iso2011' == "MH" & inlist(`dname2011', "wardha")
    qui replace dcode_`dname2011' = "505" if `iso2011' == "MH" & inlist(`dname2011', "nagpur")
    qui replace dcode_`dname2011' = "506" if `iso2011' == "MH" & inlist(`dname2011', "bhandara")
    qui replace dcode_`dname2011' = "507" if `iso2011' == "MH" & inlist(`dname2011', "gondiya")
    qui replace dcode_`dname2011' = "508" if `iso2011' == "MH" & inlist(`dname2011', "gadchiroli")
    qui replace dcode_`dname2011' = "509" if `iso2011' == "MH" & inlist(`dname2011', "chandrapur")
    qui replace dcode_`dname2011' = "510" if `iso2011' == "MH" & inlist(`dname2011', "yavatmal")
    qui replace dcode_`dname2011' = "511" if `iso2011' == "MH" & inlist(`dname2011', "nanded")
    qui replace dcode_`dname2011' = "512" if `iso2011' == "MH" & inlist(`dname2011', "hingoli")
    qui replace dcode_`dname2011' = "513" if `iso2011' == "MH" & inlist(`dname2011', "parbhani")
    qui replace dcode_`dname2011' = "514" if `iso2011' == "MH" & inlist(`dname2011', "jalna")
    qui replace dcode_`dname2011' = "515" if `iso2011' == "MH" & inlist(`dname2011', "aurangabad(maharashtra)", "aurangabad")
    qui replace dcode_`dname2011' = "516" if `iso2011' == "MH" & inlist(`dname2011', "nashik")
    qui replace dcode_`dname2011' = "517" if `iso2011' == "MH" & inlist(`dname2011', "thane")
    qui replace dcode_`dname2011' = "518" if `iso2011' == "MH" & inlist(`dname2011', "mumbaisuburban")
    qui replace dcode_`dname2011' = "519" if `iso2011' == "MH" & inlist(`dname2011', "mumbai")
    qui replace dcode_`dname2011' = "520" if `iso2011' == "MH" & inlist(`dname2011', "raigarh(maharashtra)", "raigarh")
    qui replace dcode_`dname2011' = "521" if `iso2011' == "MH" & inlist(`dname2011', "pune")
    qui replace dcode_`dname2011' = "522" if `iso2011' == "MH" & inlist(`dname2011', "ahmadnagar", "ahmednagar")
    qui replace dcode_`dname2011' = "523" if `iso2011' == "MH" & inlist(`dname2011', "bid")
    qui replace dcode_`dname2011' = "524" if `iso2011' == "MH" & inlist(`dname2011', "latur")
    qui replace dcode_`dname2011' = "525" if `iso2011' == "MH" & inlist(`dname2011', "osmanabad")
    qui replace dcode_`dname2011' = "526" if `iso2011' == "MH" & inlist(`dname2011', "solapur")
    qui replace dcode_`dname2011' = "527" if `iso2011' == "MH" & inlist(`dname2011', "satara")
    qui replace dcode_`dname2011' = "528" if `iso2011' == "MH" & inlist(`dname2011', "ratnagiri")
    qui replace dcode_`dname2011' = "529" if `iso2011' == "MH" & inlist(`dname2011', "sindhudurg")
    qui replace dcode_`dname2011' = "530" if `iso2011' == "MH" & inlist(`dname2011', "kolhapur")
    qui replace dcode_`dname2011' = "531" if `iso2011' == "MH" & inlist(`dname2011', "sangli")

*===============================================================================

  * andhra pradesh
    qui replace dcode_`dname2011' = "532" if `iso2011' == "AP" & inlist(`dname2011', "adilabad")
    qui replace dcode_`dname2011' = "533" if `iso2011' == "AP" & inlist(`dname2011', "nizamabad")
    qui replace dcode_`dname2011' = "534" if `iso2011' == "AP" & inlist(`dname2011', "karimnagar")
    qui replace dcode_`dname2011' = "535" if `iso2011' == "AP" & inlist(`dname2011', "medak")
    qui replace dcode_`dname2011' = "536" if `iso2011' == "AP" & inlist(`dname2011', "hyderabad")
    qui replace dcode_`dname2011' = "537" if `iso2011' == "AP" & inlist(`dname2011', "rangareddy")
    qui replace dcode_`dname2011' = "538" if `iso2011' == "AP" & inlist(`dname2011', "mahbubnagar")
    qui replace dcode_`dname2011' = "539" if `iso2011' == "AP" & inlist(`dname2011', "nalgonda")
    qui replace dcode_`dname2011' = "540" if `iso2011' == "AP" & inlist(`dname2011', "warangal")
    qui replace dcode_`dname2011' = "541" if `iso2011' == "AP" & inlist(`dname2011', "khammam")
    qui replace dcode_`dname2011' = "542" if `iso2011' == "AP" & inlist(`dname2011', "srikakulam")
    qui replace dcode_`dname2011' = "543" if `iso2011' == "AP" & inlist(`dname2011', "vizianagaram")
    qui replace dcode_`dname2011' = "544" if `iso2011' == "AP" & inlist(`dname2011', "visakhapatnam")
    qui replace dcode_`dname2011' = "545" if `iso2011' == "AP" & inlist(`dname2011', "eastgodavari")
    qui replace dcode_`dname2011' = "546" if `iso2011' == "AP" & inlist(`dname2011', "westgodavari")
    qui replace dcode_`dname2011' = "547" if `iso2011' == "AP" & inlist(`dname2011', "krishna")
    qui replace dcode_`dname2011' = "548" if `iso2011' == "AP" & inlist(`dname2011', "guntur")
    qui replace dcode_`dname2011' = "549" if `iso2011' == "AP" & inlist(`dname2011', "prakasam")
    qui replace dcode_`dname2011' = "550" if `iso2011' == "AP" & inlist(`dname2011', "nellore")
    qui replace dcode_`dname2011' = "551" if `iso2011' == "AP" & inlist(`dname2011', "ysr")
    qui replace dcode_`dname2011' = "552" if `iso2011' == "AP" & inlist(`dname2011', "kurnool")
    qui replace dcode_`dname2011' = "553" if `iso2011' == "AP" & inlist(`dname2011', "anantapur")
    qui replace dcode_`dname2011' = "554" if `iso2011' == "AP" & inlist(`dname2011', "chittoor")


*===============================================================================

  * karnataka
    qui replace dcode_`dname2011' = "555" if `iso2011' == "KA" & inlist(`dname2011', "belgaum")
    qui replace dcode_`dname2011' = "556" if `iso2011' == "KA" & inlist(`dname2011', "bagalkot")
    qui replace dcode_`dname2011' = "557" if `iso2011' == "KA" & inlist(`dname2011', "bijapur(karnataka)")
    qui replace dcode_`dname2011' = "558" if `iso2011' == "KA" & inlist(`dname2011', "bidar")
    qui replace dcode_`dname2011' = "559" if `iso2011' == "KA" & inlist(`dname2011', "raichur")
    qui replace dcode_`dname2011' = "560" if `iso2011' == "KA" & inlist(`dname2011', "koppal")
    qui replace dcode_`dname2011' = "561" if `iso2011' == "KA" & inlist(`dname2011', "gadag")
    qui replace dcode_`dname2011' = "562" if `iso2011' == "KA" & inlist(`dname2011', "dharwad")
    qui replace dcode_`dname2011' = "563" if `iso2011' == "KA" & inlist(`dname2011', "uttarakannada")
    qui replace dcode_`dname2011' = "564" if `iso2011' == "KA" & inlist(`dname2011', "haveri")
    qui replace dcode_`dname2011' = "565" if `iso2011' == "KA" & inlist(`dname2011', "bellary")
    qui replace dcode_`dname2011' = "566" if `iso2011' == "KA" & inlist(`dname2011', "chitradurga")
    qui replace dcode_`dname2011' = "567" if `iso2011' == "KA" & inlist(`dname2011', "davanagere")
    qui replace dcode_`dname2011' = "568" if `iso2011' == "KA" & inlist(`dname2011', "shimoga")
    qui replace dcode_`dname2011' = "569" if `iso2011' == "KA" & inlist(`dname2011', "udupi")
    qui replace dcode_`dname2011' = "570" if `iso2011' == "KA" & inlist(`dname2011', "chikmagalur")
    qui replace dcode_`dname2011' = "571" if `iso2011' == "KA" & inlist(`dname2011', "tumkur")
    qui replace dcode_`dname2011' = "572" if `iso2011' == "KA" & inlist(`dname2011', "bangalore")
    qui replace dcode_`dname2011' = "573" if `iso2011' == "KA" & inlist(`dname2011', "mandya")
    qui replace dcode_`dname2011' = "574" if `iso2011' == "KA" & inlist(`dname2011', "hassan")
    qui replace dcode_`dname2011' = "575" if `iso2011' == "KA" & inlist(`dname2011', "dakshinakannada")
    qui replace dcode_`dname2011' = "576" if `iso2011' == "KA" & inlist(`dname2011', "kodagu")
    qui replace dcode_`dname2011' = "577" if `iso2011' == "KA" & inlist(`dname2011', "mysore")
    qui replace dcode_`dname2011' = "578" if `iso2011' == "KA" & inlist(`dname2011', "chamarajanagar")
    qui replace dcode_`dname2011' = "579" if `iso2011' == "KA" & inlist(`dname2011', "gulbarga")
    qui replace dcode_`dname2011' = "580" if `iso2011' == "KA" & inlist(`dname2011', "yadgir")
    qui replace dcode_`dname2011' = "581" if `iso2011' == "KA" & inlist(`dname2011', "kolar")
    qui replace dcode_`dname2011' = "582" if `iso2011' == "KA" & inlist(`dname2011', "chikkaballapura")
    qui replace dcode_`dname2011' = "583" if `iso2011' == "KA" & inlist(`dname2011', "bangalorerural")
    qui replace dcode_`dname2011' = "584" if `iso2011' == "KA" & inlist(`dname2011', "ramanagara")

*===============================================================================

  * goa
    qui replace dcode_`dname2011' = "585" if `iso2011' == "GA" & inlist(`dname2011', "northgoa")
    qui replace dcode_`dname2011' = "586" if `iso2011' == "GA" & inlist(`dname2011', "southgoa")

*===============================================================================

  * lakshadweep
    qui replace dcode_`dname2011' = "587" if `iso2011' == "LD" & inlist(`dname2011', "lakshadweep")

*===============================================================================

  * kerala
    qui replace dcode_`dname2011' = "588" if `iso2011' == "KL" & inlist(`dname2011', "kasaragod")
    qui replace dcode_`dname2011' = "589" if `iso2011' == "KL" & inlist(`dname2011', "kannur")
    qui replace dcode_`dname2011' = "590" if `iso2011' == "KL" & inlist(`dname2011', "wayanad")
    qui replace dcode_`dname2011' = "591" if `iso2011' == "KL" & inlist(`dname2011', "kozhikode")
    qui replace dcode_`dname2011' = "592" if `iso2011' == "KL" & inlist(`dname2011', "malappuram")
    qui replace dcode_`dname2011' = "593" if `iso2011' == "KL" & inlist(`dname2011', "palakkad")
    qui replace dcode_`dname2011' = "594" if `iso2011' == "KL" & inlist(`dname2011', "thrissur")
    qui replace dcode_`dname2011' = "595" if `iso2011' == "KL" & inlist(`dname2011', "ernakulam")
    qui replace dcode_`dname2011' = "596" if `iso2011' == "KL" & inlist(`dname2011', "idukki")
    qui replace dcode_`dname2011' = "597" if `iso2011' == "KL" & inlist(`dname2011', "kottayam")
    qui replace dcode_`dname2011' = "598" if `iso2011' == "KL" & inlist(`dname2011', "alappuzha")
    qui replace dcode_`dname2011' = "599" if `iso2011' == "KL" & inlist(`dname2011', "pathanamthitta")
    qui replace dcode_`dname2011' = "600" if `iso2011' == "KL" & inlist(`dname2011', "kollam")
    qui replace dcode_`dname2011' = "601" if `iso2011' == "KL" & inlist(`dname2011', "thiruvananthapuram")

*===============================================================================

  * tamil nadu
    qui replace dcode_`dname2011' = "602" if `iso2011' == "TN" & inlist(`dname2011', "thiruvallur")
    qui replace dcode_`dname2011' = "603" if `iso2011' == "TN" & inlist(`dname2011', "chennai")
    qui replace dcode_`dname2011' = "604" if `iso2011' == "TN" & inlist(`dname2011', "kancheepuram")
    qui replace dcode_`dname2011' = "605" if `iso2011' == "TN" & inlist(`dname2011', "vellore")
    qui replace dcode_`dname2011' = "606" if `iso2011' == "TN" & inlist(`dname2011', "tiruvannamalai")
    qui replace dcode_`dname2011' = "607" if `iso2011' == "TN" & inlist(`dname2011', "viluppuram")
    qui replace dcode_`dname2011' = "608" if `iso2011' == "TN" & inlist(`dname2011', "salem")
    qui replace dcode_`dname2011' = "609" if `iso2011' == "TN" & inlist(`dname2011', "namakkal")
    qui replace dcode_`dname2011' = "610" if `iso2011' == "TN" & inlist(`dname2011', "erode")
    qui replace dcode_`dname2011' = "611" if `iso2011' == "TN" & inlist(`dname2011', "thenilgiris")
    qui replace dcode_`dname2011' = "612" if `iso2011' == "TN" & inlist(`dname2011', "dindigul")
    qui replace dcode_`dname2011' = "613" if `iso2011' == "TN" & inlist(`dname2011', "karur")
    qui replace dcode_`dname2011' = "614" if `iso2011' == "TN" & inlist(`dname2011', "tiruchirappalli")
    qui replace dcode_`dname2011' = "615" if `iso2011' == "TN" & inlist(`dname2011', "perambalur")
    qui replace dcode_`dname2011' = "616" if `iso2011' == "TN" & inlist(`dname2011', "ariyalur")
    qui replace dcode_`dname2011' = "617" if `iso2011' == "TN" & inlist(`dname2011', "cuddalore")
    qui replace dcode_`dname2011' = "618" if `iso2011' == "TN" & inlist(`dname2011', "nagapattinam")
    qui replace dcode_`dname2011' = "619" if `iso2011' == "TN" & inlist(`dname2011', "thiruvarur")
    qui replace dcode_`dname2011' = "620" if `iso2011' == "TN" & inlist(`dname2011', "thanjavur")
    qui replace dcode_`dname2011' = "621" if `iso2011' == "TN" & inlist(`dname2011', "pudukkottai")
    qui replace dcode_`dname2011' = "622" if `iso2011' == "TN" & inlist(`dname2011', "sivaganga")
    qui replace dcode_`dname2011' = "623" if `iso2011' == "TN" & inlist(`dname2011', "madurai")
    qui replace dcode_`dname2011' = "624" if `iso2011' == "TN" & inlist(`dname2011', "theni")
    qui replace dcode_`dname2011' = "625" if `iso2011' == "TN" & inlist(`dname2011', "virudhunagar")
    qui replace dcode_`dname2011' = "626" if `iso2011' == "TN" & inlist(`dname2011', "ramanathapuram")
    qui replace dcode_`dname2011' = "627" if `iso2011' == "TN" & inlist(`dname2011', "thoothukkudi")
    qui replace dcode_`dname2011' = "628" if `iso2011' == "TN" & inlist(`dname2011', "tirunelveli")
    qui replace dcode_`dname2011' = "629" if `iso2011' == "TN" & inlist(`dname2011', "kanniyakumari")
    qui replace dcode_`dname2011' = "630" if `iso2011' == "TN" & inlist(`dname2011', "dharmapuri")
    qui replace dcode_`dname2011' = "631" if `iso2011' == "TN" & inlist(`dname2011', "krishnagiri")
    qui replace dcode_`dname2011' = "632" if `iso2011' == "TN" & inlist(`dname2011', "coimbatore")
    qui replace dcode_`dname2011' = "633" if `iso2011' == "TN" & inlist(`dname2011', "tiruppur")

*===============================================================================

  * pondicherry
    qui replace dcode_`dname2011' = "634" if `iso2011' == "PY" & inlist(`dname2011', "yanam")
    qui replace dcode_`dname2011' = "635" if `iso2011' == "PY" & inlist(`dname2011', "puducherry")
    qui replace dcode_`dname2011' = "636" if `iso2011' == "PY" & inlist(`dname2011', "mahe")
    qui replace dcode_`dname2011' = "637" if `iso2011' == "PY" & inlist(`dname2011', "karaikal")

*===============================================================================

  * andaman & nicobar islands
    qui replace dcode_`dname2011' = "638" if `iso2011' == "AN" & inlist(`dname2011', "nicobars")
    qui replace dcode_`dname2011' = "639" if `iso2011' == "AN" & inlist(`dname2011', "northmiddleandaman")
    qui replace dcode_`dname2011' = "640" if `iso2011' == "AN" & inlist(`dname2011', "southandaman")

*===============================================================================
end
