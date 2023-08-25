*-------------------------------------------------------------------------------
* Objective: Standardise a list of districts with typos/variations
*-------------------------------------------------------------------------------

* define dclean
capture program drop dclean
program define dclean

  * read and store user input
	local distvar `1'
	local isocode `2'
	local year `3'

	* read year and run relevant clean
	dclean`year' `distvar' `isocode'

end

*-------------------------------------------------------------------------------
*-------------------------------------------------------------------------------
* Clean district names
* (search for `dnameYYYY')
*-------------------------------------------------------------------------------

*-------------------------------------------------------------------------------
* 1951
*-------------------------------------------------------------------------------
capture program drop dclean1951
program define dclean1951

* store input into macros
local dname1951 `1'
local iso1951 `2'

*===============================================================================

    * ajmer
    qui replace `dname1951' = "ajmer" if `iso1951' == "RJ" & inlist(`dname1951', "ajmer")
    qui replace `dname1951' = "ganganagar" if `iso1951' == "RJ" & inlist(`dname1951', "ganganagar")

*===============================================================================

    * andaman nicobar islands
    qui replace `dname1951' = "andamannicobarislands" if `iso1951' == "AN" & inlist(`dname1951', "andamannicobarislands")

*===============================================================================

    * assam
    qui replace `dname1951' = "goalpara" if `iso1951' == "AS" & inlist(`dname1951', "goalpara")
    qui replace `dname1951' = "kamrup" if `iso1951' == "AS" & inlist(`dname1951', "kamrup")
    qui replace `dname1951' = "darrang" if `iso1951' == "AS" & inlist(`dname1951', "darrang")
    qui replace `dname1951' = "lakhimpur" if `iso1951' == "AS" & inlist(`dname1951', "lakhimpur")
    qui replace `dname1951' = "nowgong" if `iso1951' == "AS" & inlist(`dname1951', "nowgong")
    qui replace `dname1951' = "sibsagar" if `iso1951' == "AS" & inlist(`dname1951', "sibsagar")
    qui replace `dname1951' = "cachar" if `iso1951' == "AS" & inlist(`dname1951', "cachar")
    qui replace `dname1951' = "garohills" if `iso1951' == "AS" & inlist(`dname1951', "garohills", "meghalayagarohills")
    qui replace `dname1951' = "unitedkhasijaintiahills" if `iso1951' == "AS" & inlist(`dname1951', "unitedkhasijaintiahills")
    qui replace `dname1951' = "unitedmikirnorthcacharhills" if `iso1951' == "AS" & inlist(`dname1951', "unitedmikirnorthcachar","unitedmikirnorthcacharhills","unitedmikirandnorthcacharhill")
    qui replace `dname1951' = "lushaihills" if `iso1951' == "AS" & inlist(`dname1951', "lushaihills", "looshaihills")

*===============================================================================

    * bihar
    qui replace `dname1951' = "patna" if `iso1951' == "BR" & inlist(`dname1951', "patna")
    qui replace `dname1951' = "gaya" if `iso1951' == "BR" & inlist(`dname1951', "gaya")
    qui replace `dname1951' = "shahabad" if `iso1951' == "BR" & inlist(`dname1951', "shahabad")
    qui replace `dname1951' = "saran" if `iso1951' == "BR" & inlist(`dname1951', "saran")
    qui replace `dname1951' = "champaran" if `iso1951' == "BR" & inlist(`dname1951', "champaran")
    qui replace `dname1951' = "muzaffarpur" if `iso1951' == "BR" & inlist(`dname1951', "muzaffarpur")
    qui replace `dname1951' = "darbhanga" if `iso1951' == "BR" & inlist(`dname1951', "darbhanga")
    qui replace `dname1951' = "monghyr" if `iso1951' == "BR" & inlist(`dname1951', "monghyar", "monghyr", "munger")
    qui replace `dname1951' = "bhagalpur" if `iso1951' == "BR" & inlist(`dname1951', "bhagalpur")
    qui replace `dname1951' = "saharsa" if `iso1951' == "BR" & inlist(`dname1951', "saharsa")
    qui replace `dname1951' = "purnea" if `iso1951' == "BR" & inlist(`dname1951', "purnia", "purnea")
    qui replace `dname1951' = "santhalparganas" if `iso1951' == "BR" & inlist(`dname1951', "santhalparganas", "santalparganas","12santalparganas", "12 santal parganas")
    qui replace `dname1951' = "palamau" if `iso1951' == "BR" & inlist(`dname1951', "palamau")
    qui replace `dname1951' = "hazaribag" if `iso1951' == "BR" & inlist(`dname1951', "hazaribag", "hazaribagh")
    qui replace `dname1951' = "ranchi" if `iso1951' == "BR" & inlist(`dname1951', "ranchi")
    qui replace `dname1951' = "dhanbad" if `iso1951' == "BR" & inlist(`dname1951', "dhanbad")
    qui replace `dname1951' = "purulia" if `iso1951' == "BR" & inlist(`dname1951', "purulia")
    qui replace `dname1951' = "singhbhum" if `iso1951' == "BR" & inlist(`dname1951', "singhbhum")

*===============================================================================

    * bilaspur
    qui replace `dname1951' = "bilaspur" if `iso1951' == "HP" & inlist(`dname1951', "bilaspur")

*===============================================================================

    * bhopal
    qui replace `dname1951' = "raisen" if `iso1951' == "MP" & inlist(`dname1951', "raisen")
    qui replace `dname1951' = "sehore" if `iso1951' == "MP" & inlist(`dname1951', "sehore")

*===============================================================================

    * bombay
    qui replace `dname1951' = "amreli" if `iso1951' == "MH" & inlist(`dname1951', "amreli")
    qui replace `dname1951' = "banaskantha" if `iso1951' == "MH" & inlist(`dname1951', "banaskantha")
    qui replace `dname1951' = "mehsana" if `iso1951' == "MH" & inlist(`dname1951', "mehsana")
    qui replace `dname1951' = "ahmedabad" if `iso1951' == "MH" & inlist(`dname1951', "ahmedabad")
    qui replace `dname1951' = "sabarkantha" if `iso1951' == "MH" & inlist(`dname1951', "sabarkantha")
    qui replace `dname1951' = "kaira" if `iso1951' == "MH" & inlist(`dname1951', "kaira")
    qui replace `dname1951' = "panchmahals" if `iso1951' == "MH" & inlist(`dname1951', "panchmahals")
    qui replace `dname1951' = "baroda" if `iso1951' == "MH" & inlist(`dname1951', "baroda")
    qui replace `dname1951' = "broach" if `iso1951' == "MH" & inlist(`dname1951', "broach")
    qui replace `dname1951' = "westkhandesh" if `iso1951' == "MH" & inlist(`dname1951', "westkhandesh")
    qui replace `dname1951' = "eastkhandesh" if `iso1951' == "MH" & inlist(`dname1951', "eastkhandesh")
    qui replace `dname1951' = "surat" if `iso1951' == "MH" & inlist(`dname1951', "surat")
    qui replace `dname1951' = "dangs" if `iso1951' == "MH" & inlist(`dname1951', "dangs")
    qui replace `dname1951' = "nasik" if `iso1951' == "MH" & inlist(`dname1951', "nasik")
    qui replace `dname1951' = "thana" if `iso1951' == "MH" & inlist(`dname1951', "thana")
    qui replace `dname1951' = "greaterbombay" if `iso1951' == "MH" & inlist(`dname1951', "greaterbombay")
    qui replace `dname1951' = "kolaba" if `iso1951' == "MH" & inlist(`dname1951', "kolaba")
    qui replace `dname1951' = "poona" if `iso1951' == "MH" & inlist(`dname1951', "poona")
    qui replace `dname1951' = "ahmadnagar" if `iso1951' == "MH" & inlist(`dname1951', "ahmednagar", "ahmadnagar")
    qui replace `dname1951' = "sholapur" if `iso1951' == "MH" & inlist(`dname1951', "sholapur")
    qui replace `dname1951' = "sataranorth" if `iso1951' == "MH" & inlist(`dname1951', "sataranorth", "northsatara")
    qui replace `dname1951' = "ratnagiri" if `iso1951' == "MH" & inlist(`dname1951', "ratnagiri")
    qui replace `dname1951' = "kolhapur" if `iso1951' == "MH" & inlist(`dname1951', "kolhapur")
    qui replace `dname1951' = "satarasouth" if `iso1951' == "MH" & inlist(`dname1951', "satarasouth")
    qui replace `dname1951' = "bijapur" if `iso1951' == "MH" & inlist(`dname1951', "bijapur", "bijpura")
    qui replace `dname1951' = "belgaum" if `iso1951' == "MH" & inlist(`dname1951', "belgaon", "belgaum")
    qui replace `dname1951' = "dharwar" if `iso1951' == "MH" & inlist(`dname1951', "dharwad", "dharwar")
    qui replace `dname1951' = "kanara" if `iso1951' == "MH" & inlist(`dname1951', "kanara")

*===============================================================================
    * coorg
    qui replace `dname1951' = "coorg" if `iso1951' == "KA" & inlist(`dname1951', "coorg", "goorgordodagu")

*===============================================================================
    * dadra nagar haveli
    qui replace `dname1951' = "dadranagarhaveli" if `iso1951' == "DN" & inlist(`dname1951', "dadranagarhaveli")

*===============================================================================

    * delhi
    qui replace `dname1951' = "delhi" if `iso1951' == "DL" & inlist(`dname1951', "delhi")

*===============================================================================

    * goa daman diu
    qui replace `dname1951' = "daman" if `iso1951' == "DG" & inlist(`dname1951', "daman")
    qui replace `dname1951' = "diu" if `iso1951' == "DG" & inlist(`dname1951', "diu")
    qui replace `dname1951' = "goa" if `iso1951' == "DG" & inlist(`dname1951', "goa")

*===============================================================================

    * hyderabad
    qui replace `dname1951' = "aurangabad" if `iso1951' == "TG" & inlist(`dname1951', "aurangabad")
    qui replace `dname1951' = "bhir" if `iso1951' == "TG" & inlist(`dname1951', "bhir")
    qui replace `dname1951' = "parbhani" if `iso1951' == "TG" & inlist(`dname1951', "parbhani")
    qui replace `dname1951' = "osmanabad" if `iso1951' == "TG" & inlist(`dname1951', "osmanabad")
    qui replace `dname1951' = "bidar" if `iso1951' == "TG" & inlist(`dname1951', "bidar")
    qui replace `dname1951' = "nanded" if `iso1951' == "TG" & inlist(`dname1951', "nanded")
    qui replace `dname1951' = "adilabad" if `iso1951' == "TG" & inlist(`dname1951', "adilabad")
    qui replace `dname1951' = "nizamabad" if `iso1951' == "TG" & inlist(`dname1951', "nizamabad")
    qui replace `dname1951' = "karimnagar" if `iso1951' == "TG" & inlist(`dname1951', "karimnagar")
    qui replace `dname1951' = "medak" if `iso1951' == "TG" & inlist(`dname1951', "medak")
    qui replace `dname1951' = "hyderabad" if `iso1951' == "TG" & inlist(`dname1951', "hyderabad")
    qui replace `dname1951' = "gulbarga" if `iso1951' == "TG" & inlist(`dname1951', "gulbarga")
    qui replace `dname1951' = "raichur" if `iso1951' == "TG" & inlist(`dname1951', "raichur")
    qui replace `dname1951' = "mahbubnagar" if `iso1951' == "TG" & inlist(`dname1951', "mahbubnagar")
    qui replace `dname1951' = "nalgonda" if `iso1951' == "TG" & inlist(`dname1951', "nalgonda")
    qui replace `dname1951' = "warangal" if `iso1951' == "TG" & inlist(`dname1951', "warangal")

*===============================================================================

    * himachal pradesh
    qui replace `dname1951' = "chamba" if `iso1951' == "HP" & inlist(`dname1951', "champa", "chamba")
    qui replace `dname1951' = "mandi" if `iso1951' == "HP" & inlist(`dname1951', "mandi")
    qui replace `dname1951' = "mahasu" if `iso1951' == "HP" & inlist(`dname1951', "mahasu")
    qui replace `dname1951' = "sirmoor" if `iso1951' == "HP" & inlist(`dname1951', "sirmur", "sirmoor")

*===============================================================================

    * jammu & kashmir
    qui replace `dname1951' = "jammukashmir" if `iso1951' == "JK" & inlist(`dname1951', "jammukashmir")

*===============================================================================

    * kutch
    qui replace `dname1951' = "kutch" if `iso1951' == "GJ" & inlist(`dname1951', "kutch")

*===============================================================================

    * travancore-cochin
    qui replace `dname1951' = "trichur" if `iso1951' == "KL" & inlist(`dname1951', "richur", "trichur")
    qui replace `dname1951' = "kottayam" if `iso1951' == "KL" & inlist(`dname1951', "kottayam")
    qui replace `dname1951' = "quilon" if `iso1951' == "KL" & inlist(`dname1951', "quilon")
    qui replace `dname1951' = "trivandrum" if `iso1951' == "KL" & inlist(`dname1951', "trivandrum")

*===============================================================================

    * lakshadweep
    qui replace `dname1951' = "laccadive" if `iso1951' == "LD" & inlist(`dname1951', "laccadive", "laccadiveminicoyamindiviislands")

*===============================================================================

    * madhya pradesh
    qui replace `dname1951' = "sagar" if `iso1951' == "MP" & inlist(`dname1951', "sagar")
    qui replace `dname1951' = "jabalpur" if `iso1951' == "MP" & inlist(`dname1951', "jabalpur")
    qui replace `dname1951' = "mandla" if `iso1951' == "MP" & inlist(`dname1951', "mandla")
    qui replace `dname1951' = "bilaspur" if `iso1951' == "MP" & inlist(`dname1951', "bilaspur")
    qui replace `dname1951' = "surguja" if `iso1951' == "MP" & inlist(`dname1951', "surguja")
    qui replace `dname1951' = "raigarh" if `iso1951' == "MP" & inlist(`dname1951', "raigarh")
    qui replace `dname1951' = "raipur" if `iso1951' == "MP" & inlist(`dname1951', "raipur")
    qui replace `dname1951' = "durg" if `iso1951' == "MP" & inlist(`dname1951', "durg")
    qui replace `dname1951' = "balaghat" if `iso1951' == "MP" & inlist(`dname1951', "balaghat")
    qui replace `dname1951' = "chhindwara" if `iso1951' == "MP" & inlist(`dname1951', "chhindwara")
    qui replace `dname1951' = "hoshangabad" if `iso1951' == "MP" & inlist(`dname1951', "hoshangabad")
    qui replace `dname1951' = "nimar" if `iso1951' == "MP" & inlist(`dname1951', "nimar", "khargonenimar")
    qui replace `dname1951' = "betul" if `iso1951' == "MP" & inlist(`dname1951', "betul")
    qui replace `dname1951' = "nagpur" if `iso1951' == "MP" & inlist(`dname1951', "nagpur")
    qui replace `dname1951' = "bhandara" if `iso1951' == "MP" & inlist(`dname1951', "bhandara")
    qui replace `dname1951' = "bastar" if `iso1951' == "MP" & inlist(`dname1951', "bastar")
    qui replace `dname1951' = "chanda" if `iso1951' == "MP" & inlist(`dname1951', "chandrapur", "chanda")
    qui replace `dname1951' = "wardha" if `iso1951' == "MP" & inlist(`dname1951', "wardha")
    qui replace `dname1951' = "yeotmal" if `iso1951' == "MP" & inlist(`dname1951', "yeotmal","yeotma")
    qui replace `dname1951' = "akola" if `iso1951' == "MP" & inlist(`dname1951', "akola")
    qui replace `dname1951' = "amravati" if `iso1951' == "MP" & inlist(`dname1951', "amravati")
    qui replace `dname1951' = "buldhana" if `iso1951' == "MP" & inlist(`dname1951', "buldhana", "buldana")

*===============================================================================

    * madhya bharat
    qui replace `dname1951' = "morena" if `iso1951' == "MP" & inlist(`dname1951', "morena")
    qui replace `dname1951' = "bhind" if `iso1951' == "MP" & inlist(`dname1951', "bhind")
    qui replace `dname1951' = "gird" if `iso1951' == "MP" & inlist(`dname1951', "gird")
    qui replace `dname1951' = "shivpuri" if `iso1951' == "MP" & inlist(`dname1951', "shivpuri")
    qui replace `dname1951' = "goona" if `iso1951' == "MP" & inlist(`dname1951', "guna", "goona")
    qui replace `dname1951' = "rajgarh" if `iso1951' == "MP" & inlist(`dname1951', "rajgarh")
    qui replace `dname1951' = "shajapur" if `iso1951' == "MP" & inlist(`dname1951', "shajapur")
    qui replace `dname1951' = "ujjain" if `iso1951' == "MP" & inlist(`dname1951', "ujjain")
    qui replace `dname1951' = "mandsaur" if `iso1951' == "MP" & inlist(`dname1951', "mandsaur")
    qui replace `dname1951' = "ratlam" if `iso1951' == "MP" & inlist(`dname1951', "ratlam")
    qui replace `dname1951' = "jhabua" if `iso1951' == "MP" & inlist(`dname1951', "jhabua")
    qui replace `dname1951' = "dhar" if `iso1951' == "MP" & inlist(`dname1951', "dhar")
    qui replace `dname1951' = "nimar" if `iso1951' == "MP" & inlist(`dname1951', "nimar", "khandwaeastnimar")
    qui replace `dname1951' = "indore" if `iso1951' == "MP" & inlist(`dname1951', "indore")
    qui replace `dname1951' = "dewas" if `iso1951' == "MP" & inlist(`dname1951', "dewas")
    qui replace `dname1951' = "bhilsa" if `iso1951' == "MP" & inlist(`dname1951', "bhilsa", "vidisha")

*===============================================================================

    * vindhya pradesh
    qui replace `dname1951' = "datia" if `iso1951' == "MP" & inlist(`dname1951', "datia")
    qui replace `dname1951' = "tikamgarh" if `iso1951' == "MP" & inlist(`dname1951', "tikamgarh")
    qui replace `dname1951' = "chhatarpur" if `iso1951' == "MP" & inlist(`dname1951', "chhatarpur", "chhtarpur")
    qui replace `dname1951' = "panna" if `iso1951' == "MP" & inlist(`dname1951', "panna")
    qui replace `dname1951' = "satna" if `iso1951' == "MP" & inlist(`dname1951', "satna")
    qui replace `dname1951' = "rewa" if `iso1951' == "MP" & inlist(`dname1951', "rewa")
    qui replace `dname1951' = "sidhi" if `iso1951' == "MP" & inlist(`dname1951', "sidhi")
    qui replace `dname1951' = "shahdol" if `iso1951' == "MP" & inlist(`dname1951', "shahdol")

*===============================================================================

    * madras
    qui replace `dname1951' = "srikakulam" if `iso1951' == "TN" & inlist(`dname1951', "srikakulam")
    qui replace `dname1951' = "vizagapatanam" if `iso1951' == "TN" & inlist(`dname1951', "visakhapatnam", "vizagapatanam")
    qui replace `dname1951' = "eastgodavari" if `iso1951' == "TN" & inlist(`dname1951', "eastgodavari")
    qui replace `dname1951' = "westgodavari" if `iso1951' == "TN" & inlist(`dname1951', "westgodavari")
    qui replace `dname1951' = "krishna" if `iso1951' == "TN" & inlist(`dname1951', "krishna")
    qui replace `dname1951' = "guntur" if `iso1951' == "TN" & inlist(`dname1951', "guntur")
    qui replace `dname1951' = "nellore" if `iso1951' == "TN" & inlist(`dname1951', "nellore", "nellohe")
    qui replace `dname1951' = "chittoor" if `iso1951' == "TN" & inlist(`dname1951', "chittoor")
    qui replace `dname1951' = "cuddapah" if `iso1951' == "TN" & inlist(`dname1951', "cuddapah")
    qui replace `dname1951' = "anantapur" if `iso1951' == "TN" & inlist(`dname1951', "anantapur")
    qui replace `dname1951' = "kurnool" if `iso1951' == "TN" & inlist(`dname1951', "kurnool","anantapurandkurnool")
    qui replace `dname1951' = "bellary" if `iso1951' == "TN" & inlist(`dname1951', "bellary")
    qui replace `dname1951' = "chingleput" if `iso1951' == "TN" & inlist(`dname1951', "chingleput")
    qui replace `dname1951' = "northarcot" if `iso1951' == "TN" & inlist(`dname1951', "northarcot")
    qui replace `dname1951' = "salem" if `iso1951' == "TN" & inlist(`dname1951', "salem")
    qui replace `dname1951' = "southarcot" if `iso1951' == "TN" & inlist(`dname1951', "southarcot")
    qui replace `dname1951' = "tanjore" if `iso1951' == "TN" & inlist(`dname1951', "thanjavur", "tanjore")
    qui replace `dname1951' = "tiruchirapalli" if `iso1951' == "TN" & inlist(`dname1951', "tiruchirapalli")
    qui replace `dname1951' = "ramanathapuram" if `iso1951' == "TN" & inlist(`dname1951', "ramanathapuram")
    qui replace `dname1951' = "tirunelveli" if `iso1951' == "TN" & inlist(`dname1951', "tirunelveli", "t")
    qui replace `dname1951' = "madurai" if `iso1951' == "TN" & inlist(`dname1951', "madurai")
    qui replace `dname1951' = "coimbatore" if `iso1951' == "TN" & inlist(`dname1951', "coimbatore")
    qui replace `dname1951' = "nilgiris" if `iso1951' == "TN" & inlist(`dname1951', "nilgiri", "nilgiris")
    qui replace `dname1951' = "malabar" if `iso1951' == "TN" & inlist(`dname1951', "malabar")
    qui replace `dname1951' = "southkanara" if `iso1951' == "TN" & inlist(`dname1951', "southkanara")
    qui replace `dname1951' = "madras" if `iso1951' == "TN" & inlist(`dname1951', "madras")

*===============================================================================

    * maharashtra

    qui replace `dname1951' = "dhulia" if `iso1951' == "MH" & inlist(`dname1951', "dhulia")
    qui replace `dname1951' = "jalgaon" if `iso1951' == "MH" & inlist(`dname1951', "jalgaon")
    qui replace `dname1951' = "sangli" if `iso1951' == "MH" & inlist(`dname1951', "sangli")

*===============================================================================

    * manipur
    qui replace `dname1951' = "manipur" if `iso1951' == "MN" & inlist(`dname1951', "manipur")

*===============================================================================

    * mysore
    qui replace `dname1951' = "shimoga" if `iso1951' == "KA" & inlist(`dname1951', "shimoga")
    qui replace `dname1951' = "chikmagalur" if `iso1951' == "KA" & inlist(`dname1951', "chikmagalur")
    qui replace `dname1951' = "chitaldurga" if `iso1951' == "KA" & inlist(`dname1951', "chitaldurga")
    qui replace `dname1951' = "tumkur" if `iso1951' == "KA" & inlist(`dname1951', "tumkur")
    qui replace `dname1951' = "hassan" if `iso1951' == "KA" & inlist(`dname1951', "hassan")
    qui replace `dname1951' = "mysore" if `iso1951' == "KA" & inlist(`dname1951', "mysore")
    qui replace `dname1951' = "mandya" if `iso1951' == "KA" & inlist(`dname1951', "mandya")
    qui replace `dname1951' = "bangalore" if `iso1951' == "KA" & inlist(`dname1951', "bangalore")
    qui replace `dname1951' = "kolar" if `iso1951' == "KA" & inlist(`dname1951', "kolar")


*===============================================================================

    * nagaland
    qui replace `dname1951' = "nagahills" if `iso1951' == "NL" & inlist(`dname1951', "kohima", "nagahills")
    qui replace `dname1951' = "tuensang" if `iso1951' == "NL" & inlist(`dname1951', "tuensang")

*===============================================================================

    * arunachal pradesh
    qui replace `dname1951' = "baliparafrontiertract" if `iso1951' == "AR" & inlist(`dname1951', "kameng", "baliparafrontiertract")
    qui replace `dname1951' = "mishmihills" if `iso1951' == "AR" & inlist(`dname1951', "lohit", "mishmihills")
    qui replace `dname1951' = "aborhills" if `iso1951' == "AR" & inlist(`dname1951', "siang", "aborhills")
    qui replace `dname1951' = "tirapfrontiertract" if `iso1951' == "AR" & inlist(`dname1951', "tirap", "tirapfrontiertract")

*===============================================================================

    * orissa
    qui replace `dname1951' = "kalahandi" if `iso1951' == "OR" & inlist(`dname1951', "kalahandi")
    qui replace `dname1951' = "koraput" if `iso1951' == "OR" & inlist(`dname1951', "koraput")
    qui replace `dname1951' = "sambalpur" if `iso1951' == "OR" & inlist(`dname1951', "sambalpur")
    qui replace `dname1951' = "bolangir" if `iso1951' == "OR" & inlist(`dname1951', "bolangir")
    qui replace `dname1951' = "phulbani" if `iso1951' == "OR" & inlist(`dname1951', "phulbani")
    qui replace `dname1951' = "ganjam" if `iso1951' == "OR" & inlist(`dname1951', "ganjam")
    qui replace `dname1951' = "sundargarh" if `iso1951' == "OR" & inlist(`dname1951', "sundargarh")
    qui replace `dname1951' = "dhenkanal" if `iso1951' == "OR" & inlist(`dname1951', "dhenkanal")
    qui replace `dname1951' = "puri" if `iso1951' == "OR" & inlist(`dname1951', "puri", "purl")
    qui replace `dname1951' = "keonjhar" if `iso1951' == "OR" & inlist(`dname1951', "keonjhar")
    qui replace `dname1951' = "cuttack" if `iso1951' == "OR" & inlist(`dname1951', "cuttack")
    qui replace `dname1951' = "mayurbhanj" if `iso1951' == "OR" & inlist(`dname1951', "mayurbhanj")
    qui replace `dname1951' = "balasore" if `iso1951' == "OR" & inlist(`dname1951', "balasore")

*===============================================================================

    * pondicherry
    qui replace `dname1951' = "karaikal" if `iso1951' == "PY" & inlist(`dname1951', "karaikal")
    qui replace `dname1951' = "mahe" if `iso1951' == "PY" & inlist(`dname1951', "mahe")
    qui replace `dname1951' = "pondicherry" if `iso1951' == "PY" & inlist(`dname1951', "pondicherry")
    qui replace `dname1951' = "yanam" if `iso1951' == "PY" & inlist(`dname1951', "yanam")

*===============================================================================

    * patiala and east punjab states union
    qui replace `dname1951' = "kapurthala" if `iso1951' == "PB" & inlist(`dname1951', "kapurthala")
    qui replace `dname1951' = "barnala" if `iso1951' == "PB" & inlist(`dname1951', "barnala")
    qui replace `dname1951' = "bhatinda" if `iso1951' == "PB" & inlist(`dname1951', "bhatinda")
    qui replace `dname1951' = "sangrur" if `iso1951' == "PB" & inlist(`dname1951', "sangrur")
    qui replace `dname1951' = "patiala" if `iso1951' == "PB" & inlist(`dname1951', "patiala")
    qui replace `dname1951' = "fatehgarhsahib" if `iso1951' == "PB" & inlist(`dname1951', "fatehgarhsahib")
    qui replace `dname1951' = "kohistan" if `iso1951' == "PB" & inlist(`dname1951', "kohistan")
    qui replace `dname1951' = "mohindergarh" if `iso1951' == "PB" & inlist(`dname1951', "mahendragarh", "mohindergarh")

*===============================================================================

    * punjab
    qui replace `dname1951' = "kangra" if `iso1951' == "PB" & inlist(`dname1951', "kangara", "kangra")
    qui replace `dname1951' = "gurdaspur" if `iso1951' == "PB" & inlist(`dname1951', "gurdaspur")
    qui replace `dname1951' = "hoshiarpur" if `iso1951' == "PB" & inlist(`dname1951', "hoshiarpur")
    qui replace `dname1951' = "amritsar" if `iso1951' == "PB" & inlist(`dname1951', "amritsar")
    qui replace `dname1951' = "ferozepur" if `iso1951' == "PB" & inlist(`dname1951', "ferozepur", "ferozepore")
    qui replace `dname1951' = "hissar" if `iso1951' == "PB" & inlist(`dname1951', "hissar")
    qui replace `dname1951' = "rohtak" if `iso1951' == "PB" & inlist(`dname1951', "rohtak")
    qui replace `dname1951' = "gurgaon" if `iso1951' == "PB" & inlist(`dname1951', "gurgaon")
    qui replace `dname1951' = "karnal" if `iso1951' == "PB" & inlist(`dname1951', "karnal")
    qui replace `dname1951' = "ambala" if `iso1951' == "PB" & inlist(`dname1951', "ambala")
    qui replace `dname1951' = "ludhiana" if `iso1951' == "PB" & inlist(`dname1951', "ludhiana")
    qui replace `dname1951' = "jullundur" if `iso1951' == "PB" & inlist(`dname1951', "jullundur")
    qui replace `dname1951' = "simla" if `iso1951' == "PB" & inlist(`dname1951', "simla")

*===============================================================================

    * rajasthan
    qui replace `dname1951' = "ganganagar" if `iso1951' == "RJ" & inlist(`dname1951', "ganganagar")
    qui replace `dname1951' = "bikaner" if `iso1951' == "RJ" & inlist(`dname1951', "bikaner")
    qui replace `dname1951' = "churu" if `iso1951' == "RJ" & inlist(`dname1951', "churu")
    qui replace `dname1951' = "jhunjhunu" if `iso1951' == "RJ" & inlist(`dname1951', "jhunjhunun", "jhunjhunu")
    qui replace `dname1951' = "alwar" if `iso1951' == "RJ" & inlist(`dname1951', "alwar")
    qui replace `dname1951' = "bharatpur" if `iso1951' == "RJ" & inlist(`dname1951', "bharatpur")
    qui replace `dname1951' = "sawaimadhopur" if `iso1951' == "RJ" & inlist(`dname1951', "sawaimadhopur")
    qui replace `dname1951' = "jaipur" if `iso1951' == "RJ" & inlist(`dname1951', "jaipur")
    qui replace `dname1951' = "sikar" if `iso1951' == "RJ" & inlist(`dname1951', "sikar")
    qui replace `dname1951' = "tonk" if `iso1951' == "RJ" & inlist(`dname1951', "tonk")
    qui replace `dname1951' = "jaisalmer" if `iso1951' == "RJ" & inlist(`dname1951', "jaisalmer")
    qui replace `dname1951' = "jodhpur" if `iso1951' == "RJ" & inlist(`dname1951', "jodhpur")
    qui replace `dname1951' = "nagaur" if `iso1951' == "RJ" & inlist(`dname1951', "nagaur")
    qui replace `dname1951' = "pali" if `iso1951' == "RJ" & inlist(`dname1951', "pali", "pall")
    qui replace `dname1951' = "barmer" if `iso1951' == "RJ" & inlist(`dname1951', "barmer")
    qui replace `dname1951' = "jalor" if `iso1951' == "RJ" & inlist(`dname1951', "jalor", "jalore")
    qui replace `dname1951' = "sirohi" if `iso1951' == "RJ" & inlist(`dname1951', "sirohi")
    qui replace `dname1951' = "bhilwara" if `iso1951' == "RJ" & inlist(`dname1951', "bhilwara", "bhilwar")
    qui replace `dname1951' = "udaipur" if `iso1951' == "RJ" & inlist(`dname1951', "udaipur")
    qui replace `dname1951' = "chittorgarh" if `iso1951' == "RJ" & inlist(`dname1951', "chittaurgarh", "chitorgarh", "chittorgarh")
    qui replace `dname1951' = "dungarpur" if `iso1951' == "RJ" & inlist(`dname1951', "dungarpur")
    qui replace `dname1951' = "banswara" if `iso1951' == "RJ" & inlist(`dname1951', "banswara")
    qui replace `dname1951' = "bundi" if `iso1951' == "RJ" & inlist(`dname1951', "bundi")
    qui replace `dname1951' = "kotah" if `iso1951' == "RJ" & inlist(`dname1951', "kota", "kotah")
    qui replace `dname1951' = "jhalawar" if `iso1951' == "RJ" & inlist(`dname1951', "jhalawar")

*===============================================================================

    * saurashtra
    qui replace `dname1951' = "gohilwad" if `iso1951' == "GJ" & inlist(`dname1951', "gohilwad")
    qui replace `dname1951' = "halar" if `iso1951' == "GJ" & inlist(`dname1951', "halar")
    qui replace `dname1951' = "sorath" if `iso1951' == "GJ" & inlist(`dname1951', "sorath")
    qui replace `dname1951' = "centralsaurashtra" if `iso1951' == "GJ" & inlist(`dname1951', "centralsaurashtra", "madhyasaurashtra")
    qui replace `dname1951' = "zalawad" if `iso1951' == "GJ" & inlist(`dname1951', "zalawad")

*===============================================================================

    * sikkim
    qui replace `dname1951' = "sikkim" if `iso1951' == "SK" & inlist(`dname1951', "sikkim")

*===============================================================================

    * tripura
    qui replace `dname1951' = "tripura" if `iso1951' == "TR" & inlist(`dname1951', "tripura")

*===============================================================================

    * uttar pradesh
    qui replace `dname1951' = "tehrigarhwal" if `iso1951' == "UP" & inlist(`dname1951', "tehrigarhwal")
    qui replace `dname1951' = "garhwal" if `iso1951' == "UP" & inlist(`dname1951', "garhwal", "gurhwal")
    qui replace `dname1951' = "almora" if `iso1951' == "UP" & inlist(`dname1951', "almora")
    qui replace `dname1951' = "nainital" if `iso1951' == "UP" & inlist(`dname1951', "nainital")
    qui replace `dname1951' = "dehra" if `iso1951' == "UP" & inlist(`dname1951', "dehradun", "dehr")
    qui replace `dname1951' = "saharanpur" if `iso1951' == "UP" & inlist(`dname1951', "saharanpur")
    qui replace `dname1951' = "muzaffarnagar" if `iso1951' == "UP" & inlist(`dname1951', "muzaffarnagar")
    qui replace `dname1951' = "bijnor" if `iso1951' == "UP" & inlist(`dname1951', "bijnor")
    qui replace `dname1951' = "moradabad" if `iso1951' == "UP" & inlist(`dname1951', "moradabad")
    qui replace `dname1951' = "budaun" if `iso1951' == "UP" & inlist(`dname1951', "budaun", "buduan", "badaun")
    qui replace `dname1951' = "rampur" if `iso1951' == "UP" & inlist(`dname1951', "rampur")
    qui replace `dname1951' = "bareilly" if `iso1951' == "UP" & inlist(`dname1951', "bareilly")
    qui replace `dname1951' = "pilibhit" if `iso1951' == "UP" & inlist(`dname1951', "pilibhit", "pilibhlt")
    qui replace `dname1951' = "shahjahanpur" if `iso1951' == "UP" & inlist(`dname1951', "shahjahanpur")
    qui replace `dname1951' = "meerut" if `iso1951' == "UP" & inlist(`dname1951', "meerut")
    qui replace `dname1951' = "bulandshahr" if `iso1951' == "UP" & inlist(`dname1951', "bulandshahr")
    qui replace `dname1951' = "aligarh" if `iso1951' == "UP" & inlist(`dname1951', "aligarh")
    qui replace `dname1951' = "mathura" if `iso1951' == "UP" & inlist(`dname1951', "mathura")
    qui replace `dname1951' = "agra" if `iso1951' == "UP" & inlist(`dname1951', "agra")
    qui replace `dname1951' = "etah" if `iso1951' == "UP" & inlist(`dname1951', "etah")
    qui replace `dname1951' = "mainpuri" if `iso1951' == "UP" & inlist(`dname1951', "mainpuri")
    qui replace `dname1951' = "farrukhabad" if `iso1951' == "UP" & inlist(`dname1951', "farrukhabad", "farukhabad")
    qui replace `dname1951' = "etawah" if `iso1951' == "UP" & inlist(`dname1951', "etawah")
    qui replace `dname1951' = "hardoi" if `iso1951' == "UP" & inlist(`dname1951', "hardoi")
    qui replace `dname1951' = "kheri" if `iso1951' == "UP" & inlist(`dname1951', "kheri", "kherl")
    qui replace `dname1951' = "sitapur" if `iso1951' == "UP" & inlist(`dname1951', "sitapur")
    qui replace `dname1951' = "kanpur" if `iso1951' == "UP" & inlist(`dname1951', "kanpur")
    qui replace `dname1951' = "fatehpur" if `iso1951' == "UP" & inlist(`dname1951', "fatehpur")
    qui replace `dname1951' = "allahabad" if `iso1951' == "UP" & inlist(`dname1951', "allahabad")
    qui replace `dname1951' = "jhansi" if `iso1951' == "UP" & inlist(`dname1951', "jhansi")
    qui replace `dname1951' = "jalaun" if `iso1951' == "UP" & inlist(`dname1951', "jalaun")
    qui replace `dname1951' = "hamirpur" if `iso1951' == "UP" & inlist(`dname1951', "hamirpur")
    qui replace `dname1951' = "banda" if `iso1951' == "UP" & inlist(`dname1951', "banda")
    qui replace `dname1951' = "bahraich" if `iso1951' == "UP" & inlist(`dname1951', "bahraich")
    qui replace `dname1951' = "barabanki" if `iso1951' == "UP" & inlist(`dname1951', "barabanki")
    qui replace `dname1951' = "lucknow" if `iso1951' == "UP" & inlist(`dname1951', "lucknow")
    qui replace `dname1951' = "unnao" if `iso1951' == "UP" & inlist(`dname1951', "unnao")
    qui replace `dname1951' = "gonda" if `iso1951' == "UP" & inlist(`dname1951', "gonda")
    qui replace `dname1951' = "raebareli" if `iso1951' == "UP" & inlist(`dname1951', "raebareli")
    qui replace `dname1951' = "sultanpur" if `iso1951' == "UP" & inlist(`dname1951', "sultanpur")
    qui replace `dname1951' = "faizabad" if `iso1951' == "UP" & inlist(`dname1951', "faizabad","fijzabad")
    qui replace `dname1951' = "basti" if `iso1951' == "UP" & inlist(`dname1951', "basti")
    qui replace `dname1951' = "gorakhpur" if `iso1951' == "UP" & inlist(`dname1951', "gorakhpur")
    qui replace `dname1951' = "deoria" if `iso1951' == "UP" & inlist(`dname1951', "deoria")
    qui replace `dname1951' = "pratapgarh" if `iso1951' == "UP" & inlist(`dname1951', "pratapgarh")
    qui replace `dname1951' = "jaunpur" if `iso1951' == "UP" & inlist(`dname1951', "jaunpur")
    qui replace `dname1951' = "azamgarh" if `iso1951' == "UP" & inlist(`dname1951', "azamgarh")
    qui replace `dname1951' = "ballia" if `iso1951' == "UP" & inlist(`dname1951', "ballia")
    qui replace `dname1951' = "ghazipur" if `iso1951' == "UP" & inlist(`dname1951', "ghazipur")
    qui replace `dname1951' = "banares" if `iso1951' == "UP" & inlist(`dname1951', "varanasi", "banares", "banaras")
    qui replace `dname1951' = "mirzapur" if `iso1951' == "UP" & inlist(`dname1951', "mirzapur")

*===============================================================================

    * west bengal
    qui replace `dname1951' = "darjeeling" if `iso1951' == "WB" & inlist(`dname1951', "darjeeling")
    qui replace `dname1951' = "jalpaiguri" if `iso1951' == "WB" & inlist(`dname1951', "jalpaiguri")
    qui replace `dname1951' = "coochbehar" if `iso1951' == "WB" & inlist(`dname1951', "coochbehar", "cooch")
    qui replace `dname1951' = "westdinajpur" if `iso1951' == "WB" & inlist(`dname1951', "westdinajpur")
    qui replace `dname1951' = "malda" if `iso1951' == "WB" & inlist(`dname1951', "malda")
    qui replace `dname1951' = "murshidabad" if `iso1951' == "WB" & inlist(`dname1951', "murshidabad")
    qui replace `dname1951' = "nadia" if `iso1951' == "WB" & inlist(`dname1951', "nadia")
    qui replace `dname1951' = "twentyfourparganas" if `iso1951' == "WB" & inlist(`dname1951', "twentyfourparganas", "parganas", "24parganas", "24-paraganas", "twetyfourparganas")
    qui replace `dname1951' = "twentyfourparganas" if `iso1951' == "WB" & regexm(`dname1951',"parganas")
    qui replace `dname1951' = "calcutta" if `iso1951' == "WB" & inlist(`dname1951', "calcutta")
    qui replace `dname1951' = "howrah" if `iso1951' == "WB" & inlist(`dname1951', "howrah")
    qui replace `dname1951' = "hooghly" if `iso1951' == "WB" & inlist(`dname1951', "hooghly")
    qui replace `dname1951' = "burdwan" if `iso1951' == "WB" & inlist(`dname1951', "burdwan")
    qui replace `dname1951' = "birbhum" if `iso1951' == "WB" & inlist(`dname1951', "birbhum")
    qui replace `dname1951' = "midnapur" if `iso1951' == "WB" & inlist(`dname1951', "midnapore", "midnapur")
    qui replace `dname1951' = "bankura" if `iso1951' == "WB" & inlist(`dname1951', "bankura")

*===============================================================================
end

*-------------------------------------------------------------------------------
* 1961
*-------------------------------------------------------------------------------
capture program drop dclean1961
program define dclean1961

* store input into macros
local dname1961 `1'
local iso1961 `2'

*===============================================================================

    * andaman nicobar islands
    qui replace `dname1961' = "andamannicobarislands" if `iso1961' == "AN" & inlist(`dname1961', "andamannicobarislands")

*===============================================================================

    * andhra pradesh
    qui replace `dname1961' = "adilabad" if `iso1961' == "AP" & inlist(`dname1961', "adilabad")
    qui replace `dname1961' = "anantapur" if `iso1961' == "AP" & inlist(`dname1961', "anantapur")
    qui replace `dname1961' = "chittoor" if `iso1961' == "AP" & inlist(`dname1961', "chittoor")
    qui replace `dname1961' = "cuddapah" if `iso1961' == "AP" & inlist(`dname1961', "cuddapah")
    qui replace `dname1961' = "eastgodavari" if `iso1961' == "AP" & inlist(`dname1961', "eastgodavari")
    qui replace `dname1961' = "guntur" if `iso1961' == "AP" & inlist(`dname1961', "guntur")
    qui replace `dname1961' = "hyderabad" if `iso1961' == "AP" & inlist(`dname1961', "hyderabad")
    qui replace `dname1961' = "karimnagar" if `iso1961' == "AP" & inlist(`dname1961', "karimnagar")
    qui replace `dname1961' = "khammam" if `iso1961' == "AP" & inlist(`dname1961', "khammam")
    qui replace `dname1961' = "krishna" if `iso1961' == "AP" & inlist(`dname1961', "krishna")
    qui replace `dname1961' = "kurnool" if `iso1961' == "AP" & inlist(`dname1961', "kurnool")
    qui replace `dname1961' = "mahbubnagar" if `iso1961' == "AP" & inlist(`dname1961', "mahbubnagar")
    qui replace `dname1961' = "medak" if `iso1961' == "AP" & inlist(`dname1961', "medak")
    qui replace `dname1961' = "nalgonda" if `iso1961' == "AP" & inlist(`dname1961', "nalgonda")
    qui replace `dname1961' = "nellore" if `iso1961' == "AP" & inlist(`dname1961', "nellore", "nellohe")
    qui replace `dname1961' = "nizamabad" if `iso1961' == "AP" & inlist(`dname1961', "nizamabad")
    qui replace `dname1961' = "srikakulam" if `iso1961' == "AP" & inlist(`dname1961', "srikakulam")
    qui replace `dname1961' = "visakhapatnam" if `iso1961' == "AP" & inlist(`dname1961', "visakhapatnam")
    qui replace `dname1961' = "warangal" if `iso1961' == "AP" & inlist(`dname1961', "warangal")
    qui replace `dname1961' = "westgodavari" if `iso1961' == "AP" & inlist(`dname1961', "westgodavari")

*===============================================================================

    * assam
    qui replace `dname1961' = "cachar" if `iso1961' == "AS" & inlist(`dname1961', "cachar")
    qui replace `dname1961' = "darrang" if `iso1961' == "AS" & inlist(`dname1961', "darrang")
    qui replace `dname1961' = "garohills" if `iso1961' == "AS" & inlist(`dname1961', "garohills", "meghalayagarohills")
    qui replace `dname1961' = "goalpara" if `iso1961' == "AS" & inlist(`dname1961', "goalpara")
    qui replace `dname1961' = "kamrup" if `iso1961' == "AS" & inlist(`dname1961', "kamrup")
    qui replace `dname1961' = "lakhimpur" if `iso1961' == "AS" & inlist(`dname1961', "lakhimpur")
    qui replace `dname1961' = "mizohills" if `iso1961' == "AS" & inlist(`dname1961', "mizohills")
    qui replace `dname1961' = "nowgong" if `iso1961' == "AS" & inlist(`dname1961', "nowgong")
    qui replace `dname1961' = "sibsagar" if `iso1961' == "AS" & inlist(`dname1961', "sibsagar")
    qui replace `dname1961' = "unitedkhasijaintiahills" if `iso1961' == "AS" & inlist(`dname1961', "unitedkhasijaintiahills")
    qui replace `dname1961' = "unitedmikirnorthcacharhills" if `iso1961' == "AS" & inlist(`dname1961', "unitedmikirnorthcachar","unitedmikirnorthcacharhills","unitedmikirandnorthcacharhill")

*===============================================================================

    * bihar
    qui replace `dname1961' = "bhagalpur" if `iso1961' == "BR" & inlist(`dname1961', "bhagalpur")
    qui replace `dname1961' = "champaran" if `iso1961' == "BR" & inlist(`dname1961', "champaran")
    qui replace `dname1961' = "darbhanga" if `iso1961' == "BR" & inlist(`dname1961', "darbhanga")
    qui replace `dname1961' = "dhanbad" if `iso1961' == "BR" & inlist(`dname1961', "dhanbad")
    qui replace `dname1961' = "gaya" if `iso1961' == "BR" & inlist(`dname1961', "gaya")
    qui replace `dname1961' = "hazaribag" if `iso1961' == "BR" & inlist(`dname1961', "hazaribag", "hazaribagh")
    qui replace `dname1961' = "munger" if `iso1961' == "BR" & inlist(`dname1961', "monghyar", "monghyr")
    qui replace `dname1961' = "muzaffarpur" if `iso1961' == "BR" & inlist(`dname1961', "muzaffarpur")
    qui replace `dname1961' = "palamau" if `iso1961' == "BR" & inlist(`dname1961', "palamau")
    qui replace `dname1961' = "patna" if `iso1961' == "BR" & inlist(`dname1961', "patna")
    qui replace `dname1961' = "purnia" if `iso1961' == "BR" & inlist(`dname1961', "purnia", "purnea")
    qui replace `dname1961' = "ranchi" if `iso1961' == "BR" & inlist(`dname1961', "ranchi")
    qui replace `dname1961' = "saharsa" if `iso1961' == "BR" & inlist(`dname1961', "saharsa")
    qui replace `dname1961' = "santhalparganas" if `iso1961' == "BR" & inlist(`dname1961', "santhalparganas", "santalparganas","12santalparganas", "12 santal parganas")
    qui replace `dname1961' = "saran" if `iso1961' == "BR" & inlist(`dname1961', "saran")
    qui replace `dname1961' = "shahabad" if `iso1961' == "BR" & inlist(`dname1961', "shahabad")
    qui replace `dname1961' = "singhbhum" if `iso1961' == "BR" & inlist(`dname1961', "singhbhum")

*===============================================================================

    * dadra nagar haveli
    qui replace `dname1961' = "dadranagarhaveli" if `iso1961' == "DN" & inlist(`dname1961', "dadranagarhaveli")

*===============================================================================

    * delhi
    qui replace `dname1961' = "delhi" if `iso1961' == "DL" & inlist(`dname1961', "delhi")

*===============================================================================

    * goa daman diu
    qui replace `dname1961' = "daman" if `iso1961' == "DG" & inlist(`dname1961', "daman")
    qui replace `dname1961' = "diu" if `iso1961' == "DG" & inlist(`dname1961', "diu")
    qui replace `dname1961' = "goa" if `iso1961' == "DG" & inlist(`dname1961', "goa")

*===============================================================================

    * gujarat
    qui replace `dname1961' = "ahmedabad" if `iso1961' == "GJ" & inlist(`dname1961', "ahmedabad")
    qui replace `dname1961' = "amreli" if `iso1961' == "GJ" & inlist(`dname1961', "amreli")
    qui replace `dname1961' = "banaskantha" if `iso1961' == "GJ" & inlist(`dname1961', "banaskantha")
    qui replace `dname1961' = "baroda" if `iso1961' == "GJ" & inlist(`dname1961', "baroda")
    qui replace `dname1961' = "bhavnagar" if `iso1961' == "GJ" & inlist(`dname1961', "bhavnagar")
    qui replace `dname1961' = "broach" if `iso1961' == "GJ" & inlist(`dname1961', "broach")
    qui replace `dname1961' = "dangs" if `iso1961' == "GJ" & inlist(`dname1961', "dangs")
    qui replace `dname1961' = "jamnagar" if `iso1961' == "GJ" & inlist(`dname1961', "jamnagar")
    qui replace `dname1961' = "junagadh" if `iso1961' == "GJ" & inlist(`dname1961', "junagadh")
    qui replace `dname1961' = "kaira" if `iso1961' == "GJ" & inlist(`dname1961', "kaira", "kheda")
    qui replace `dname1961' = "kutch" if `iso1961' == "GJ" & inlist(`dname1961', "kutch")
    qui replace `dname1961' = "mehsana" if `iso1961' == "GJ" & inlist(`dname1961', "mehsana")
    qui replace `dname1961' = "panchmahals" if `iso1961' == "GJ" & inlist(`dname1961', "panchmahals")
    qui replace `dname1961' = "rajkot" if `iso1961' == "GJ" & inlist(`dname1961', "rajkot")
    qui replace `dname1961' = "sabarkantha" if `iso1961' == "GJ" & inlist(`dname1961', "sabarkantha")
    qui replace `dname1961' = "surat" if `iso1961' == "GJ" & inlist(`dname1961', "surat")
    qui replace `dname1961' = "surendranagar" if `iso1961' == "GJ" & inlist(`dname1961', "surendranagar")

*===============================================================================

    * himachal pradesh
    qui replace `dname1961' = "bilaspur" if `iso1961' == "HP" & inlist(`dname1961', "bilaspur")
    qui replace `dname1961' = "chamba" if `iso1961' == "HP" & inlist(`dname1961', "champa", "chamba")
    qui replace `dname1961' = "kinnaur" if `iso1961' == "HP" & inlist(`dname1961', "kinnaur")
    qui replace `dname1961' = "mahasu" if `iso1961' == "HP" & inlist(`dname1961', "mahasu")
    qui replace `dname1961' = "mandi" if `iso1961' == "HP" & inlist(`dname1961', "mandi")
    qui replace `dname1961' = "sirmur" if `iso1961' == "HP" & inlist(`dname1961', "sirmur")

*===============================================================================

    * jammu & kashmir
    qui replace `dname1961' = "anantnag" if `iso1961' == "JK" & inlist(`dname1961', "anantnag")
    qui replace `dname1961' = "baramulla" if `iso1961' == "JK" & inlist(`dname1961', "baramulla", "baramula")
    qui replace `dname1961' = "doda" if `iso1961' == "JK" & inlist(`dname1961', "doda")
    qui replace `dname1961' = "jammu" if `iso1961' == "JK" & inlist(`dname1961', "jammu")
    qui replace `dname1961' = "kathua" if `iso1961' == "JK" & inlist(`dname1961', "kathua")
    qui replace `dname1961' = "ladakh" if `iso1961' == "JK" & inlist(`dname1961', "ladakh")
    qui replace `dname1961' = "poonch" if `iso1961' == "JK" & inlist(`dname1961', "punch", "poonch")
    qui replace `dname1961' = "srinagar" if `iso1961' == "JK" & inlist(`dname1961', "srinagar")
    qui replace `dname1961' = "udhampur" if `iso1961' == "JK" & inlist(`dname1961', "udhampur")

*===============================================================================

    * kerala
    qui replace `dname1961' = "alleppey" if `iso1961' == "KL" & inlist(`dname1961', "alleppey")
    qui replace `dname1961' = "cannanore" if `iso1961' == "KL" & inlist(`dname1961', "cannanore", "cannanorekozhikode")
    qui replace `dname1961' = "ernakulam" if `iso1961' == "KL" & inlist(`dname1961', "ernakulam", "ernakulamkottayam")
    qui replace `dname1961' = "kottayam" if `iso1961' == "KL" & inlist(`dname1961', "kottayam")
    qui replace `dname1961' = "kozhikode" if `iso1961' == "KL" & inlist(`dname1961', "kozhikode")
    qui replace `dname1961' = "palghat" if `iso1961' == "KL" & inlist(`dname1961', "palghat")
    qui replace `dname1961' = "quilon" if `iso1961' == "KL" & inlist(`dname1961', "quilon")
    qui replace `dname1961' = "trichur" if `iso1961' == "KL" & inlist(`dname1961', "richur", "trichur")
    qui replace `dname1961' = "trivandrum" if `iso1961' == "KL" & inlist(`dname1961', "trivandrum")

*===============================================================================

    * lakshadweep
    qui replace `dname1961' = "laccadive" if `iso1961' == "LD" & inlist(`dname1961', "laccadive", "laccadiveminicoyamindiviislands")

*===============================================================================

    * madhya pradesh
    qui replace `dname1961' = "balaghat" if `iso1961' == "MP" & inlist(`dname1961', "balaghat")
    qui replace `dname1961' = "bastar" if `iso1961' == "MP" & inlist(`dname1961', "bastar")
    qui replace `dname1961' = "betul" if `iso1961' == "MP" & inlist(`dname1961', "betul")
    qui replace `dname1961' = "bhind" if `iso1961' == "MP" & inlist(`dname1961', "bhind", "bind")
    qui replace `dname1961' = "bilaspur" if `iso1961' == "MP" & inlist(`dname1961', "bilaspur")
    qui replace `dname1961' = "chhatarpur" if `iso1961' == "MP" & inlist(`dname1961', "chhatarpur")
    qui replace `dname1961' = "chhindwara" if `iso1961' == "MP" & inlist(`dname1961', "chhindwara")
    qui replace `dname1961' = "damoh" if `iso1961' == "MP" & inlist(`dname1961', "damoh")
    qui replace `dname1961' = "datia" if `iso1961' == "MP" & inlist(`dname1961', "datia")
    qui replace `dname1961' = "dewas" if `iso1961' == "MP" & inlist(`dname1961', "dewas")
    qui replace `dname1961' = "dhar" if `iso1961' == "MP" & inlist(`dname1961', "dhar")
    qui replace `dname1961' = "durg" if `iso1961' == "MP" & inlist(`dname1961', "durg")
    qui replace `dname1961' = "eastnimar" if `iso1961' == "MP" & inlist(`dname1961', "eastnimar", "khandwaeastnimar")
    qui replace `dname1961' = "guna" if `iso1961' == "MP" & inlist(`dname1961', "guna")
    qui replace `dname1961' = "gwalior" if `iso1961' == "MP" & inlist(`dname1961', "gwalior")
    qui replace `dname1961' = "hoshangabad" if `iso1961' == "MP" & inlist(`dname1961', "hoshangabad")
    qui replace `dname1961' = "indore" if `iso1961' == "MP" & inlist(`dname1961', "indore")
    qui replace `dname1961' = "jabalpur" if `iso1961' == "MP" & inlist(`dname1961', "jabalpur")
    qui replace `dname1961' = "jhabua" if `iso1961' == "MP" & inlist(`dname1961', "jhabua")
    qui replace `dname1961' = "mandla" if `iso1961' == "MP" & inlist(`dname1961', "mandla")
    qui replace `dname1961' = "mandsaur" if `iso1961' == "MP" & inlist(`dname1961', "mandsaur")
    qui replace `dname1961' = "morena" if `iso1961' == "MP" & inlist(`dname1961', "morena")
    qui replace `dname1961' = "narsimhapur" if `iso1961' == "MP" & inlist(`dname1961', "narsimhapur")
    qui replace `dname1961' = "panna" if `iso1961' == "MP" & inlist(`dname1961', "panna")
    qui replace `dname1961' = "raigarh" if `iso1961' == "MP" & inlist(`dname1961', "raigarh")
    qui replace `dname1961' = "raipur" if `iso1961' == "MP" & inlist(`dname1961', "raipur")
    qui replace `dname1961' = "raisen" if `iso1961' == "MP" & inlist(`dname1961', "raisen")
    qui replace `dname1961' = "rajgarh" if `iso1961' == "MP" & inlist(`dname1961', "rajgarh")
    qui replace `dname1961' = "ratlam" if `iso1961' == "MP" & inlist(`dname1961', "ratlam")
    qui replace `dname1961' = "rewa" if `iso1961' == "MP" & inlist(`dname1961', "rewa")
    qui replace `dname1961' = "sagar" if `iso1961' == "MP" & inlist(`dname1961', "sagar")
    qui replace `dname1961' = "satna" if `iso1961' == "MP" & inlist(`dname1961', "satna")
    qui replace `dname1961' = "sehore" if `iso1961' == "MP" & inlist(`dname1961', "sehore")
    qui replace `dname1961' = "seoni" if `iso1961' == "MP" & inlist(`dname1961', "seoni")
    qui replace `dname1961' = "shahdol" if `iso1961' == "MP" & inlist(`dname1961', "shahdol", "shahdool")
    qui replace `dname1961' = "shajapur" if `iso1961' == "MP" & inlist(`dname1961', "shajapur")
    qui replace `dname1961' = "shivpuri" if `iso1961' == "MP" & inlist(`dname1961', "shivpuri")
    qui replace `dname1961' = "sidhi" if `iso1961' == "MP" & inlist(`dname1961', "sidhi")
    qui replace `dname1961' = "surguja" if `iso1961' == "MP" & inlist(`dname1961', "surguja")
    qui replace `dname1961' = "tikamgarh" if `iso1961' == "MP" & inlist(`dname1961', "tikamgarh")
    qui replace `dname1961' = "ujjain" if `iso1961' == "MP" & inlist(`dname1961', "ujjain")
    qui replace `dname1961' = "vidishabhilsa" if `iso1961' == "MP" & inlist(`dname1961', "vidishabhilsa", "vidisha")
    qui replace `dname1961' = "westnimar" if `iso1961' == "MP" & inlist(`dname1961', "westnimar", "khargonewestnimar")

*===============================================================================

    * madras
    qui replace `dname1961' = "chingleput" if `iso1961' == "TN" & inlist(`dname1961', "chingleput")
    qui replace `dname1961' = "coimbatore" if `iso1961' == "TN" & inlist(`dname1961', "coimbatore")
    qui replace `dname1961' = "kanyakumari" if `iso1961' == "TN" & inlist(`dname1961', "kanyakumari")
    qui replace `dname1961' = "madras" if `iso1961' == "TN" & inlist(`dname1961', "madras")
    qui replace `dname1961' = "madurai" if `iso1961' == "TN" & inlist(`dname1961', "madurai")
    qui replace `dname1961' = "nilgiri" if `iso1961' == "TN" & inlist(`dname1961', "nilgiri", "nilgiris")
    qui replace `dname1961' = "northarcot" if `iso1961' == "TN" & inlist(`dname1961', "northarcot")
    qui replace `dname1961' = "ramanathapuram" if `iso1961' == "TN" & inlist(`dname1961', "ramanathapuram")
    qui replace `dname1961' = "salem" if `iso1961' == "TN" & inlist(`dname1961', "salem")
    qui replace `dname1961' = "southarcot" if `iso1961' == "TN" & inlist(`dname1961', "southarcot")
    qui replace `dname1961' = "thanjavur" if `iso1961' == "TN" & inlist(`dname1961', "thanjavur")
    qui replace `dname1961' = "tiruchirapalli" if `iso1961' == "TN" & inlist(`dname1961', "tiruchirapalli")
    qui replace `dname1961' = "tirunelveli" if `iso1961' == "TN" & inlist(`dname1961', "tirunelveli", "t")

*===============================================================================

    * maharashtra
    qui replace `dname1961' = "ahmadnagar" if `iso1961' == "MH" & inlist(`dname1961', "ahmednagar", "ahmadnagar")
    qui replace `dname1961' = "akola" if `iso1961' == "MH" & inlist(`dname1961', "akola")
    qui replace `dname1961' = "amravati" if `iso1961' == "MH" & inlist(`dname1961', "amravati")
    qui replace `dname1961' = "aurangabad" if `iso1961' == "MH" & inlist(`dname1961', "aurangabad")
    qui replace `dname1961' = "bhandara" if `iso1961' == "MH" & inlist(`dname1961', "bhandara")
    qui replace `dname1961' = "bhir" if `iso1961' == "MH" & inlist(`dname1961', "bhir")
    qui replace `dname1961' = "buldhana" if `iso1961' == "MH" & inlist(`dname1961', "buldhana")
    qui replace `dname1961' = "chandrapur" if `iso1961' == "MH" & inlist(`dname1961', "chandrapur", "chanda")
    qui replace `dname1961' = "dhulia" if `iso1961' == "MH" & inlist(`dname1961', "dhulia")
    qui replace `dname1961' = "greaterbombay" if `iso1961' == "MH" & inlist(`dname1961', "greaterbombay")
    qui replace `dname1961' = "jalgaon" if `iso1961' == "MH" & inlist(`dname1961', "jalgaon")
    qui replace `dname1961' = "kolaba" if `iso1961' == "MH" & inlist(`dname1961', "kolaba")
    qui replace `dname1961' = "kolhapur" if `iso1961' == "MH" & inlist(`dname1961', "kolhapur")
    qui replace `dname1961' = "nagpur" if `iso1961' == "MH" & inlist(`dname1961', "nagpur")
    qui replace `dname1961' = "nanded" if `iso1961' == "MH" & inlist(`dname1961', "nanded")
    qui replace `dname1961' = "nasik" if `iso1961' == "MH" & inlist(`dname1961', "nasik")
    qui replace `dname1961' = "osmanabad" if `iso1961' == "MH" & inlist(`dname1961', "osmanabad")
    qui replace `dname1961' = "parbhani" if `iso1961' == "MH" & inlist(`dname1961', "parbhani")
    qui replace `dname1961' = "poona" if `iso1961' == "MH" & inlist(`dname1961', "poona")
    qui replace `dname1961' = "ratnagiri" if `iso1961' == "MH" & inlist(`dname1961', "ratnagiri")
    qui replace `dname1961' = "sangli" if `iso1961' == "MH" & inlist(`dname1961', "sangli")
    qui replace `dname1961' = "satara" if `iso1961' == "MH" & inlist(`dname1961', "satara")
    qui replace `dname1961' = "sholapur" if `iso1961' == "MH" & inlist(`dname1961', "sholapur")
    qui replace `dname1961' = "thana" if `iso1961' == "MH" & inlist(`dname1961', "thana")
    qui replace `dname1961' = "wardha" if `iso1961' == "MH" & inlist(`dname1961', "wardha")
    qui replace `dname1961' = "yeotmal" if `iso1961' == "MH" & inlist(`dname1961', "yeotmal","yeotma")

*===============================================================================

    * manipur
    qui replace `dname1961' = "manipur" if `iso1961' == "MN" & inlist(`dname1961', "manipur")

*===============================================================================

    * mysore
    qui replace `dname1961' = "bangalore" if `iso1961' == "KA" & inlist(`dname1961', "bangalore")
    qui replace `dname1961' = "belgaum" if `iso1961' == "KA" & inlist(`dname1961', "belgaon", "belgaum")
    qui replace `dname1961' = "bellary" if `iso1961' == "KA" & inlist(`dname1961', "bellary")
    qui replace `dname1961' = "bidar" if `iso1961' == "KA" & inlist(`dname1961', "bidar")
    qui replace `dname1961' = "bijapur" if `iso1961' == "KA" & inlist(`dname1961', "bijapur")
    qui replace `dname1961' = "chikmagalur" if `iso1961' == "KA" & inlist(`dname1961', "chikmagalur")
    qui replace `dname1961' = "chitradurga" if `iso1961' == "KA" & inlist(`dname1961', "chitradurga")
    qui replace `dname1961' = "coorg" if `iso1961' == "KA" & inlist(`dname1961', "coorg","goorgordodagu")
    qui replace `dname1961' = "dharwar" if `iso1961' == "KA" & inlist(`dname1961', "dharwad", "dharwar")
    qui replace `dname1961' = "gulbarga" if `iso1961' == "KA" & inlist(`dname1961', "gulbarga")
    qui replace `dname1961' = "hassan" if `iso1961' == "KA" & inlist(`dname1961', "hassan")
    qui replace `dname1961' = "kolar" if `iso1961' == "KA" & inlist(`dname1961', "kolar")
    qui replace `dname1961' = "mandya" if `iso1961' == "KA" & inlist(`dname1961', "mandya")
    qui replace `dname1961' = "mysore" if `iso1961' == "KA" & inlist(`dname1961', "mysore")
    qui replace `dname1961' = "northkanara" if `iso1961' == "KA" & inlist(`dname1961', "northkanara")
    qui replace `dname1961' = "raichur" if `iso1961' == "KA" & inlist(`dname1961', "raichur")
    qui replace `dname1961' = "shimoga" if `iso1961' == "KA" & inlist(`dname1961', "shimoga")
    qui replace `dname1961' = "southkanara" if `iso1961' == "KA" & inlist(`dname1961', "southkanara")
    qui replace `dname1961' = "tumkur" if `iso1961' == "KA" & inlist(`dname1961', "tumkur")

*===============================================================================

    * nagaland
    qui replace `dname1961' = "kohima" if `iso1961' == "NL" & inlist(`dname1961', "kohima")
    qui replace `dname1961' = "mokokchung" if `iso1961' == "NL" & inlist(`dname1961', "mokokchung")
    qui replace `dname1961' = "tuensang" if `iso1961' == "NL" & inlist(`dname1961', "tuensang")

*===============================================================================

    * arunachal pradesh
    qui replace `dname1961' = "kameng" if `iso1961' == "AR" & inlist(`dname1961', "kameng")
    qui replace `dname1961' = "lohit" if `iso1961' == "AR" & inlist(`dname1961', "lohit")
    qui replace `dname1961' = "siang" if `iso1961' == "AR" & inlist(`dname1961', "siang")
    qui replace `dname1961' = "subansiri" if `iso1961' == "AR" & inlist(`dname1961', "subansiri")
    qui replace `dname1961' = "tirap" if `iso1961' == "AR" & inlist(`dname1961', "tirap")

*===============================================================================

    * orissa
    qui replace `dname1961' = "balasore" if `iso1961' == "OR" & inlist(`dname1961', "balasore")
    qui replace `dname1961' = "baudhkhondmals" if `iso1961' == "OR" & inlist(`dname1961', "baudhkhondmals")
    qui replace `dname1961' = "bolangir" if `iso1961' == "OR" & inlist(`dname1961', "bolangir")
    qui replace `dname1961' = "cuttack" if `iso1961' == "OR" & inlist(`dname1961', "cuttack")
    qui replace `dname1961' = "dhenkanal" if `iso1961' == "OR" & inlist(`dname1961', "dhenkanal")
    qui replace `dname1961' = "ganjam" if `iso1961' == "OR" & inlist(`dname1961', "ganjam")
    qui replace `dname1961' = "kalahandi" if `iso1961' == "OR" & inlist(`dname1961', "kalahandi")
    qui replace `dname1961' = "keonjhar" if `iso1961' == "OR" & inlist(`dname1961', "keonjhar")
    qui replace `dname1961' = "koraput" if `iso1961' == "OR" & inlist(`dname1961', "koraput")
    qui replace `dname1961' = "mayurbhanj" if `iso1961' == "OR" & inlist(`dname1961', "mayurbhanj")
    qui replace `dname1961' = "puri" if `iso1961' == "OR" & inlist(`dname1961', "puri", "purl")
    qui replace `dname1961' = "sambalpur" if `iso1961' == "OR" & inlist(`dname1961', "sambalpur")
    qui replace `dname1961' = "sundargarh" if `iso1961' == "OR" & inlist(`dname1961', "sundargarh")

*===============================================================================

    * pondicherry
    qui replace `dname1961' = "karaikal" if `iso1961' == "PY" & inlist(`dname1961', "karaikal")
    qui replace `dname1961' = "mahe" if `iso1961' == "PY" & inlist(`dname1961', "mahe")
    qui replace `dname1961' = "pondicherry" if `iso1961' == "PY" & inlist(`dname1961', "pondicherry")
    qui replace `dname1961' = "yanam" if `iso1961' == "PY" & inlist(`dname1961', "yanam")

*===============================================================================

    * punjab
    qui replace `dname1961' = "ambala" if `iso1961' == "PB" & inlist(`dname1961', "ambala")
    qui replace `dname1961' = "amritsar" if `iso1961' == "PB" & inlist(`dname1961', "amritsar")
    qui replace `dname1961' = "bhatinda" if `iso1961' == "PB" & inlist(`dname1961', "bhatinda")
    qui replace `dname1961' = "ferozepur" if `iso1961' == "PB" & inlist(`dname1961', "ferozepur")
    qui replace `dname1961' = "gurdaspur" if `iso1961' == "PB" & inlist(`dname1961', "gurdaspur")
    qui replace `dname1961' = "gurgaon" if `iso1961' == "PB" & inlist(`dname1961', "gurgaon")
    qui replace `dname1961' = "hissar" if `iso1961' == "PB" & inlist(`dname1961', "hissar")
    qui replace `dname1961' = "hoshiarpur" if `iso1961' == "PB" & inlist(`dname1961', "hoshiarpur")
    qui replace `dname1961' = "jullundur" if `iso1961' == "PB" & inlist(`dname1961', "jullundur")
    qui replace `dname1961' = "kangra" if `iso1961' == "PB" & inlist(`dname1961', "kangara", "kangra")
    qui replace `dname1961' = "kapurthala" if `iso1961' == "PB" & inlist(`dname1961', "kapurthala")
    qui replace `dname1961' = "karnal" if `iso1961' == "PB" & inlist(`dname1961', "karnal")
    qui replace `dname1961' = "lahaul&spiti" if `iso1961' == "PB" & inlist(`dname1961', "lahaulspiti", "lahulspiti")
    qui replace `dname1961' = "ludhiana" if `iso1961' == "PB" & inlist(`dname1961', "ludhiana")
    qui replace `dname1961' = "mahendragarh" if `iso1961' == "PB" & inlist(`dname1961', "mahendragarh")
    qui replace `dname1961' = "patiala" if `iso1961' == "PB" & inlist(`dname1961', "patiala")
    qui replace `dname1961' = "rohtak" if `iso1961' == "PB" & inlist(`dname1961', "rohtak")
    qui replace `dname1961' = "sangrur" if `iso1961' == "PB" & inlist(`dname1961', "sangrur")
    qui replace `dname1961' = "simla" if `iso1961' == "PB" & inlist(`dname1961', "simla")

*===============================================================================

    * rajasthan
    qui replace `dname1961' = "ajmer" if `iso1961' == "RJ" & inlist(`dname1961', "ajmer")
    qui replace `dname1961' = "alwar" if `iso1961' == "RJ" & inlist(`dname1961', "alwar")
    qui replace `dname1961' = "banswara" if `iso1961' == "RJ" & inlist(`dname1961', "banswara")
    qui replace `dname1961' = "barmer" if `iso1961' == "RJ" & inlist(`dname1961', "barmer")
    qui replace `dname1961' = "bharatpur" if `iso1961' == "RJ" & inlist(`dname1961', "bharatpur")
    qui replace `dname1961' = "bhilwara" if `iso1961' == "RJ" & inlist(`dname1961', "bhilwara", "bhilwar")
    qui replace `dname1961' = "bikaner" if `iso1961' == "RJ" & inlist(`dname1961', "bikaner")
    qui replace `dname1961' = "bundi" if `iso1961' == "RJ" & inlist(`dname1961', "bundi")
    qui replace `dname1961' = "chitorgarh" if `iso1961' == "RJ" & inlist(`dname1961', "chittaurgarh", "chitorgarh")
    qui replace `dname1961' = "churu" if `iso1961' == "RJ" & inlist(`dname1961', "churu")
    qui replace `dname1961' = "dungarpur" if `iso1961' == "RJ" & inlist(`dname1961', "dungarpur")
    qui replace `dname1961' = "ganganagar" if `iso1961' == "RJ" & inlist(`dname1961', "ganganagar")
    qui replace `dname1961' = "jaipur" if `iso1961' == "RJ" & inlist(`dname1961', "jaipur")
    qui replace `dname1961' = "jaisalmer" if `iso1961' == "RJ" & inlist(`dname1961', "jaisalmer")
    qui replace `dname1961' = "jalor" if `iso1961' == "RJ" & inlist(`dname1961', "jalor")
    qui replace `dname1961' = "jhalawar" if `iso1961' == "RJ" & inlist(`dname1961', "jhalawar")
    qui replace `dname1961' = "jhunjhunu" if `iso1961' == "RJ" & inlist(`dname1961', "jhunjhunun", "jhunjhunu")
    qui replace `dname1961' = "jodhpur" if `iso1961' == "RJ" & inlist(`dname1961', "jodhpur")
    qui replace `dname1961' = "kota" if `iso1961' == "RJ" & inlist(`dname1961', "kota")
    qui replace `dname1961' = "nagaur" if `iso1961' == "RJ" & inlist(`dname1961', "nagaur")
    qui replace `dname1961' = "pali" if `iso1961' == "RJ" & inlist(`dname1961', "pali", "pall")
    qui replace `dname1961' = "sawaimadhopur" if `iso1961' == "RJ" & inlist(`dname1961', "sawaimadhopur")
    qui replace `dname1961' = "sikar" if `iso1961' == "RJ" & inlist(`dname1961', "sikar")
    qui replace `dname1961' = "sirohi" if `iso1961' == "RJ" & inlist(`dname1961', "sirohi")
    qui replace `dname1961' = "tonk" if `iso1961' == "RJ" & inlist(`dname1961', "tonk")
    qui replace `dname1961' = "udaipur" if `iso1961' == "RJ" & inlist(`dname1961', "udaipur")

*===============================================================================

    * sikkim
    qui replace `dname1961' = "sikkim" if `iso1961' == "SK" & inlist(`dname1961', "sikkim")

*===============================================================================

    * tripura
    qui replace `dname1961' = "tripura" if `iso1961' == "TR" & inlist(`dname1961', "tripura")

*===============================================================================

    * uttar pradesh
    qui replace `dname1961' = "agra" if `iso1961' == "UP" & inlist(`dname1961', "agra")
    qui replace `dname1961' = "aligarh" if `iso1961' == "UP" & inlist(`dname1961', "aligarh")
    qui replace `dname1961' = "allahabad" if `iso1961' == "UP" & inlist(`dname1961', "allahabad")
    qui replace `dname1961' = "almora" if `iso1961' == "UP" & inlist(`dname1961', "almora")
    qui replace `dname1961' = "azamgarh" if `iso1961' == "UP" & inlist(`dname1961', "azamgarh")
    qui replace `dname1961' = "bahraich" if `iso1961' == "UP" & inlist(`dname1961', "bahraich")
    qui replace `dname1961' = "ballia" if `iso1961' == "UP" & inlist(`dname1961', "ballia")
    qui replace `dname1961' = "banda" if `iso1961' == "UP" & inlist(`dname1961', "banda")
    qui replace `dname1961' = "barabanki" if `iso1961' == "UP" & inlist(`dname1961', "barabanki", "banki")
    qui replace `dname1961' = "bareilly" if `iso1961' == "UP" & inlist(`dname1961', "bareilly")
    qui replace `dname1961' = "basti" if `iso1961' == "UP" & inlist(`dname1961', "basti")
    qui replace `dname1961' = "bijnor" if `iso1961' == "UP" & inlist(`dname1961', "bijnor")
    qui replace `dname1961' = "budaun" if `iso1961' == "UP" & inlist(`dname1961', "budaun")
    qui replace `dname1961' = "bulandshahr" if `iso1961' == "UP" & inlist(`dname1961', "bulandshahr")
    qui replace `dname1961' = "chamoli" if `iso1961' == "UP" & inlist(`dname1961', "chamoli")
    qui replace `dname1961' = "dehradun" if `iso1961' == "UP" & inlist(`dname1961', "dehradun")
    qui replace `dname1961' = "deoria" if `iso1961' == "UP" & inlist(`dname1961', "deoria")
    qui replace `dname1961' = "etah" if `iso1961' == "UP" & inlist(`dname1961', "etah")
    qui replace `dname1961' = "etawah" if `iso1961' == "UP" & inlist(`dname1961', "etawah")
    qui replace `dname1961' = "faizabad" if `iso1961' == "UP" & inlist(`dname1961', "faizabad","fijzabad")
    qui replace `dname1961' = "farrukhabad" if `iso1961' == "UP" & inlist(`dname1961', "farrukhabad")
    qui replace `dname1961' = "fatehpur" if `iso1961' == "UP" & inlist(`dname1961', "fatehpur")
    qui replace `dname1961' = "garhwal" if `iso1961' == "UP" & inlist(`dname1961', "garhwal")
    qui replace `dname1961' = "ghazipur" if `iso1961' == "UP" & inlist(`dname1961', "ghazipur")
    qui replace `dname1961' = "gonda" if `iso1961' == "UP" & inlist(`dname1961', "gonda")
    qui replace `dname1961' = "gorakhpur" if `iso1961' == "UP" & inlist(`dname1961', "gorakhpur")
    qui replace `dname1961' = "hamirpur" if `iso1961' == "UP" & inlist(`dname1961', "hamirpur")
    qui replace `dname1961' = "hardoi" if `iso1961' == "UP" & inlist(`dname1961', "hardoi")
    qui replace `dname1961' = "jalaun" if `iso1961' == "UP" & inlist(`dname1961', "jalaun")
    qui replace `dname1961' = "jaunpur" if `iso1961' == "UP" & inlist(`dname1961', "jaunpur")
    qui replace `dname1961' = "jhansi" if `iso1961' == "UP" & inlist(`dname1961', "jhansi")
    qui replace `dname1961' = "kanpur" if `iso1961' == "UP" & inlist(`dname1961', "kanpur")
    qui replace `dname1961' = "kheri" if `iso1961' == "UP" & inlist(`dname1961', "kheri", "kherl")
    qui replace `dname1961' = "lucknow" if `iso1961' == "UP" & inlist(`dname1961', "lucknow")
    qui replace `dname1961' = "mainpuri" if `iso1961' == "UP" & inlist(`dname1961', "mainpuri")
    qui replace `dname1961' = "mathura" if `iso1961' == "UP" & inlist(`dname1961', "mathura")
    qui replace `dname1961' = "meerut" if `iso1961' == "UP" & inlist(`dname1961', "meerut")
    qui replace `dname1961' = "mirzapur" if `iso1961' == "UP" & inlist(`dname1961', "mirzapur")
    qui replace `dname1961' = "moradabad" if `iso1961' == "UP" & inlist(`dname1961', "moradabad")
    qui replace `dname1961' = "muzaffarnagar" if `iso1961' == "UP" & inlist(`dname1961', "muzaffarnagar")
    qui replace `dname1961' = "nainital" if `iso1961' == "UP" & inlist(`dname1961', "nainital")
    qui replace `dname1961' = "pilibhit" if `iso1961' == "UP" & inlist(`dname1961', "pilibhit")
    qui replace `dname1961' = "pithoragarh" if `iso1961' == "UP" & inlist(`dname1961', "pithoragarh")
    qui replace `dname1961' = "pratapgarh" if `iso1961' == "UP" & inlist(`dname1961', "pratapgarh")
    qui replace `dname1961' = "raebareli" if `iso1961' == "UP" & inlist(`dname1961', "raebareli")
    qui replace `dname1961' = "rampur" if `iso1961' == "UP" & inlist(`dname1961', "rampur")
    qui replace `dname1961' = "saharanpur" if `iso1961' == "UP" & inlist(`dname1961', "saharanpur")
    qui replace `dname1961' = "shahjahanpur" if `iso1961' == "UP" & inlist(`dname1961', "shahjahanpur")
    qui replace `dname1961' = "sitapur" if `iso1961' == "UP" & inlist(`dname1961', "sitapur")
    qui replace `dname1961' = "sultanpur" if `iso1961' == "UP" & inlist(`dname1961', "sultanpur")
    qui replace `dname1961' = "tehrigarhwal" if `iso1961' == "UP" & inlist(`dname1961', "tehrigarhwal")
    qui replace `dname1961' = "unnao" if `iso1961' == "UP" & inlist(`dname1961', "unnao")
    qui replace `dname1961' = "uttarkashi" if `iso1961' == "UP" & inlist(`dname1961', "uttarkashi")
    qui replace `dname1961' = "varanasi" if `iso1961' == "UP" & inlist(`dname1961', "varanasi")

*===============================================================================

    * west bengal
    qui replace `dname1961' = "bankura" if `iso1961' == "WB" & inlist(`dname1961', "bankura")
    qui replace `dname1961' = "birbhum" if `iso1961' == "WB" & inlist(`dname1961', "birbhum")
    qui replace `dname1961' = "burdwan" if `iso1961' == "WB" & inlist(`dname1961', "burdwan")
    qui replace `dname1961' = "calcutta" if `iso1961' == "WB" & inlist(`dname1961', "calcutta")
    qui replace `dname1961' = "coochbehar" if `iso1961' == "WB" & inlist(`dname1961', "coochbehar", "cooch")
    qui replace `dname1961' = "darjeeling" if `iso1961' == "WB" & inlist(`dname1961', "darjeeling")
    qui replace `dname1961' = "hooghly" if `iso1961' == "WB" & inlist(`dname1961', "hooghly")
    qui replace `dname1961' = "howrah" if `iso1961' == "WB" & inlist(`dname1961', "howrah")
    qui replace `dname1961' = "jalpaiguri" if `iso1961' == "WB" & inlist(`dname1961', "jalpaiguri")
    qui replace `dname1961' = "malda" if `iso1961' == "WB" & inlist(`dname1961', "malda")
    qui replace `dname1961' = "midnapore" if `iso1961' == "WB" & inlist(`dname1961', "midnapore")
    qui replace `dname1961' = "murshidabad" if `iso1961' == "WB" & inlist(`dname1961', "murshidabad")
    qui replace `dname1961' = "nadia" if `iso1961' == "WB" & inlist(`dname1961', "nadia")
    qui replace `dname1961' = "purulia" if `iso1961' == "WB" & inlist(`dname1961', "purulia")
    qui replace `dname1961' = "twentyfourparganas" if `iso1961' == "WB" & inlist(`dname1961', "twentyfourparganas", "parganas", "24parganas", "24-paraganas", "twetyfourparganas")
    qui replace `dname1961' = "twentyfourparganas" if `iso1961' == "WB" & regexm(`dname1961',"parganas")
    qui replace `dname1961' = "westdinajpur" if `iso1961' == "WB" & inlist(`dname1961', "westdinajpur")

*===============================================================================
end
*-------------------------------------------------------------------------------
* 1971
*-------------------------------------------------------------------------------
capture program drop dclean1971
program define dclean1971

* store input into macros
local dname1971 `1'
local iso1971 `2'

*===============================================================================

    * andaman nicobar islands
    qui replace `dname1971' = "andamannicobarislands" if `iso1971' == "AN" & inlist(`dname1971', "andamannicobarislands")

*===============================================================================

    * andhra pradesh
    qui replace `dname1971' = "adilabad" if `iso1971' == "AP" & inlist(`dname1971', "adilabad")
    qui replace `dname1971' = "anantapur" if `iso1971' == "AP" & inlist(`dname1971', "anantapur")
    qui replace `dname1971' = "chittoor" if `iso1971' == "AP" & inlist(`dname1971', "chittoor")
    qui replace `dname1971' = "cuddapah" if `iso1971' == "AP" & inlist(`dname1971', "cuddapah")
    qui replace `dname1971' = "east godavari" if `iso1971' == "AP" & inlist(`dname1971', "eastgodavari")
    qui replace `dname1971' = "guntur" if `iso1971' == "AP" & inlist(`dname1971', "guntur")
    qui replace `dname1971' = "hyderabad" if `iso1971' == "AP" & inlist(`dname1971', "hyderabad")
    qui replace `dname1971' = "karimnagar" if `iso1971' == "AP" & inlist(`dname1971', "karimnagar", "manthani")
    qui replace `dname1971' = "khammam" if `iso1971' == "AP" & inlist(`dname1971', "khammam")
    qui replace `dname1971' = "krishna" if `iso1971' == "AP" & inlist(`dname1971', "krishna")
    qui replace `dname1971' = "kurnool" if `iso1971' == "AP" & inlist(`dname1971', "kurnool")
    qui replace `dname1971' = "mahbubnagar" if `iso1971' == "AP" & inlist(`dname1971', "mahbubnagar")
    qui replace `dname1971' = "medak" if `iso1971' == "AP" & inlist(`dname1971', "medak")
    qui replace `dname1971' = "nalgonda" if `iso1971' == "AP" & inlist(`dname1971', "nalgonda", "bhongir")
    qui replace `dname1971' = "nellore" if `iso1971' == "AP" & inlist(`dname1971', "nellore", "nellohe")
    qui replace `dname1971' = "ongole" if `iso1971' == "AP" & inlist(`dname1971', "ongole", "ongoleprakasam")
    qui replace `dname1971' = "nizamabad" if `iso1971' == "AP" & inlist(`dname1971', "nizamabad")
    qui replace `dname1971' = "srikakulam" if `iso1971' == "AP" & inlist(`dname1971', "srikakulam")
    qui replace `dname1971' = "visakhapatnam" if `iso1971' == "AP" & inlist(`dname1971', "visakhapatnam")
    qui replace `dname1971' = "warangal" if `iso1971' == "AP" & inlist(`dname1971', "warangal")
    qui replace `dname1971' = "west godavari" if `iso1971' == "AP" & inlist(`dname1971', "westgodavari", "unagatla")

*===============================================================================

    * assam
    qui replace `dname1971' = "cachar" if `iso1971' == "AS" & inlist(`dname1971', "cachar")
    qui replace `dname1971' = "darrang" if `iso1971' == "AS" & inlist(`dname1971', "darrang")
    qui replace `dname1971' = "goalpara" if `iso1971' == "AS" & inlist(`dname1971', "goalpara")
    qui replace `dname1971' = "kamrup" if `iso1971' == "AS" & inlist(`dname1971', "kamrup")
    qui replace `dname1971' = "lakhimpur" if `iso1971' == "AS" & inlist(`dname1971', "lakhimpur", "laihkhimipur")
    qui replace `dname1971' = "nowgong" if `iso1971' == "AS" & inlist(`dname1971', "nowgong")
    qui replace `dname1971' = "sibsagar" if `iso1971' == "AS" & inlist(`dname1971', "sibsagar")
    qui replace `dname1971' = "mikir hills" if `iso1971' == "AS" & inlist(`dname1971', "mikirhills", "unitedmikirnorthcachar","unitedmikirnorthcacharhills","unitedmikirandnorthcacharhill")
    qui replace `dname1971' = "north cachar hills" if `iso1971' == "AS" & inlist(`dname1971', "northcacharhills", "unitedmikirnorthcachar","unitedmikirnorthcacharhills","unitedmikirandnorthcacharhill")

*===============================================================================

    * bihar
    qui replace `dname1971' = "bhagalpur" if `iso1971' == "BR" & inlist(`dname1971', "bhagalpur")
    qui replace `dname1971' = "champaran" if `iso1971' == "BR" & inlist(`dname1971', "champaran")
    qui replace `dname1971' = "darbhanga" if `iso1971' == "BR" & inlist(`dname1971', "darbhanga")
    qui replace `dname1971' = "dhanbad" if `iso1971' == "BR" & inlist(`dname1971', "dhanbad")
    qui replace `dname1971' = "gaya" if `iso1971' == "BR" & inlist(`dname1971', "gaya")
    qui replace `dname1971' = "hazaribag" if `iso1971' == "BR" & inlist(`dname1971', "hazaribag", "hazaribagh")
    qui replace `dname1971' = "monghyr" if `iso1971' == "BR" & inlist(`dname1971', "monghyar", "monghyr", "munger")
    qui replace `dname1971' = "muzaffarpur" if `iso1971' == "BR" & inlist(`dname1971', "muzaffarpur")
    qui replace `dname1971' = "palamau" if `iso1971' == "BR" & inlist(`dname1971', "palamau")
    qui replace `dname1971' = "patna" if `iso1971' == "BR" & inlist(`dname1971', "patna")
    qui replace `dname1971' = "purnea" if `iso1971' == "BR" & inlist(`dname1971', "purnia", "purnea")
    qui replace `dname1971' = "ranchi" if `iso1971' == "BR" & inlist(`dname1971', "ranchi")
    qui replace `dname1971' = "saharsa" if `iso1971' == "BR" & inlist(`dname1971', "saharsa")
    qui replace `dname1971' = "santalparganas" if `iso1971' == "BR" & inlist(`dname1971', "santhalparganas", "santalparganas")
    qui replace `dname1971' = "saran" if `iso1971' == "BR" & inlist(`dname1971', "saran")
    qui replace `dname1971' = "shahabad" if `iso1971' == "BR" & inlist(`dname1971', "shahabad")
    qui replace `dname1971' = "singhbhum" if `iso1971' == "BR" & inlist(`dname1971', "singhbhum")

*===============================================================================

    * chandigarh
    qui replace `dname1971' = "chandigarh" if `iso1971' == "CH" & inlist(`dname1971', "chandigarh")

*===============================================================================

    * dadra nagar haveli
    qui replace `dname1971' = "dadranagarhaveli" if `iso1971' == "DN" & inlist(`dname1971', "dadranagarhaveli")

*===============================================================================

    * delhi
    qui replace `dname1971' = "delhi" if `iso1971' == "DL" & inlist(`dname1971', "delhi")

*===============================================================================

    * goa daman diu
    qui replace `dname1971' = "daman" if `iso1971' == "GA" & inlist(`dname1971', "daman")
    qui replace `dname1971' = "diu" if `iso1971' == "GA" & inlist(`dname1971', "diu")
    qui replace `dname1971' = "goa" if `iso1971' == "GA" & inlist(`dname1971', "goa","goadamandiu")

*===============================================================================

    * gujarat
    qui replace `dname1971' = "ahmedabad" if `iso1971' == "GJ" & inlist(`dname1971', "ahmedabad", "ahmadabad")
    qui replace `dname1971' = "gandhinagar" if `iso1971' == "GJ" & inlist(`dname1971', "gandhinagar")
    qui replace `dname1971' = "amreli" if `iso1971' == "GJ" & inlist(`dname1971', "amreli")
    qui replace `dname1971' = "banaskantha" if `iso1971' == "GJ" & inlist(`dname1971', "banaskantha")
    qui replace `dname1971' = "baroda" if `iso1971' == "GJ" & inlist(`dname1971', "baroda", "vadodarabaroda","vadodara")
    qui replace `dname1971' = "bhavnagar" if `iso1971' == "GJ" & inlist(`dname1971', "bhavnagar")
    qui replace `dname1971' = "broach" if `iso1971' == "GJ" & inlist(`dname1971', "broach", "bharuchbroach", "bharuch")
    qui replace `dname1971' = "thedangs" if `iso1971' == "GJ" & inlist(`dname1971', "thedangs", "thedangsdangs")
    qui replace `dname1971' = "jamnagar" if `iso1971' == "GJ" & inlist(`dname1971', "jamnagar")
    qui replace `dname1971' = "junagadh" if `iso1971' == "GJ" & inlist(`dname1971', "junagadh")
    qui replace `dname1971' = "kheda" if `iso1971' == "GJ" & inlist(`dname1971', "kaira", "khedakaira")
    qui replace `dname1971' = "kutch" if `iso1971' == "GJ" & inlist(`dname1971', "kutch")
    qui replace `dname1971' = "mehsana" if `iso1971' == "GJ" & inlist(`dname1971', "mehsana", "mahesana")
    qui replace `dname1971' = "panchmahals" if `iso1971' == "GJ" & inlist(`dname1971', "panchmahals")
    qui replace `dname1971' = "rajkot" if `iso1971' == "GJ" & inlist(`dname1971', "rajkot")
    qui replace `dname1971' = "sabarkantha" if `iso1971' == "GJ" & inlist(`dname1971', "sabarkantha")
    qui replace `dname1971' = "surat" if `iso1971' == "GJ" & inlist(`dname1971', "surat")
    qui replace `dname1971' = "valsad" if `iso1971' == "GJ" & inlist(`dname1971', "valsad", "valsadbulsar", "valsad(bulsar)")
    qui replace `dname1971' = "surendranagar" if `iso1971' == "GJ" & inlist(`dname1971', "surendranagar")

*===============================================================================

    * haryana
    qui replace `dname1971' = "ambala" if `iso1971' == "HR" & inlist(`dname1971', "ambala")
    qui replace `dname1971' = "gurgaon" if `iso1971' == "HR" & inlist(`dname1971', "gurgaon")
    qui replace `dname1971' = "hisar" if `iso1971' == "HR" & inlist(`dname1971', "hissar", "hisar")
    qui replace `dname1971' = "karnal" if `iso1971' == "HR" & inlist(`dname1971', "karnal")
    qui replace `dname1971' = "mahendragarh" if `iso1971' == "HR" & inlist(`dname1971', "mahendragarh")
    qui replace `dname1971' = "rohtak" if `iso1971' == "HR" & inlist(`dname1971', "rohtak")
    qui replace `dname1971' = "jind" if `iso1971' == "HR" & inlist(`dname1971', "jind")

*===============================================================================

    * himachal pradesh
    qui replace `dname1971' = "bilaspur" if `iso1971' == "HP" & inlist(`dname1971', "bilaspur")
    qui replace `dname1971' = "chamba" if `iso1971' == "HP" & inlist(`dname1971', "champa", "chamba")
    qui replace `dname1971' = "kinnaur" if `iso1971' == "HP" & inlist(`dname1971', "kinnaur")
    qui replace `dname1971' = "mahasu" if `iso1971' == "HP" & inlist(`dname1971', "mahasu")
    qui replace `dname1971' = "mandi" if `iso1971' == "HP" & inlist(`dname1971', "mandi")
    qui replace `dname1971' = "sirmaur" if `iso1971' == "HP" & inlist(`dname1971', "sirmur", "sirmaur")
    qui replace `dname1971' = "kangra" if `iso1971' == "HP" & inlist(`dname1971', "kangara", "kangra")
    qui replace `dname1971' = "kulu" if `iso1971' == "HP" & inlist(`dname1971', "kullu", "kulu")
    qui replace `dname1971' = "una" if `iso1971' == "HP" & inlist(`dname1971', "una")
    qui replace `dname1971' = "lahul&spiti" if `iso1971' == "HP" & inlist(`dname1971', "lahaulspiti", "lahulspiti", "lahul&spiti", "lahaul&spiti")
    qui replace `dname1971' = "simla" if `iso1971' == "HP" & inlist(`dname1971', "simla")
    qui replace `dname1971' = "solan" if `iso1971' == "HP" & inlist(`dname1971', "solan")

*===============================================================================

    * jammu & kashmir
    qui replace `dname1971' = "anantnag" if `iso1971' == "JK" & inlist(`dname1971', "anantnag")
    qui replace `dname1971' = "baramula" if `iso1971' == "JK" & inlist(`dname1971', "baramulla", "baramula")
    qui replace `dname1971' = "doda" if `iso1971' == "JK" & inlist(`dname1971', "doda")
    qui replace `dname1971' = "jammu" if `iso1971' == "JK" & inlist(`dname1971', "jammu")
    qui replace `dname1971' = "kathua" if `iso1971' == "JK" & inlist(`dname1971', "kathua")
    qui replace `dname1971' = "ladakh" if `iso1971' == "JK" & inlist(`dname1971', "ladakh")
    qui replace `dname1971' = "punch" if `iso1971' == "JK" & inlist(`dname1971', "punch", "poonch")
    qui replace `dname1971' = "rajauri" if `iso1971' == "JK" & inlist(`dname1971', "rajauri")
    qui replace `dname1971' = "srinagar" if `iso1971' == "JK" & inlist(`dname1971', "srinagar")
    qui replace `dname1971' = "udhampur" if `iso1971' == "JK" & inlist(`dname1971', "udhampur")

*===============================================================================

    * kerala
    qui replace `dname1971' = "alleppey" if `iso1971' == "KL" & inlist(`dname1971', "alleppey")
    qui replace `dname1971' = "cannanore" if `iso1971' == "KL" & inlist(`dname1971', "cannanore")
    qui replace `dname1971' = "ernakulam" if `iso1971' == "KL" & inlist(`dname1971', "ernakulam")
    qui replace `dname1971' = "kottayam" if `iso1971' == "KL" & inlist(`dname1971', "kottayam","idikki")
    qui replace `dname1971' = "kozhikode" if `iso1971' == "KL" & inlist(`dname1971', "kozhikode")
    qui replace `dname1971' = "malappuram" if `iso1971' == "KL" & inlist(`dname1971', "malappuram", "mallapuram")
    qui replace `dname1971' = "palghat" if `iso1971' == "KL" & inlist(`dname1971', "palghat")
    qui replace `dname1971' = "quilon" if `iso1971' == "KL" & inlist(`dname1971', "quilon")
    qui replace `dname1971' = "trichur" if `iso1971' == "KL" & inlist(`dname1971', "richur", "trichur")
    qui replace `dname1971' = "trivandrum" if `iso1971' == "KL" & inlist(`dname1971', "trivandrum")

*===============================================================================

    * lakshadweep
    qui replace `dname1971' = "laccadive" if `iso1971' == "LD" & inlist(`dname1971', "laccadive", "laccadiveminicoyamindiviislands", "laccadiveminicoyamindiv")

*===============================================================================

    * madhya pradesh
    qui replace `dname1971' = "balaghat" if `iso1971' == "MP" & inlist(`dname1971', "balaghat")
    qui replace `dname1971' = "bastar" if `iso1971' == "MP" & inlist(`dname1971', "bastar")
    qui replace `dname1971' = "betul" if `iso1971' == "MP" & inlist(`dname1971', "betul", "baitul")
    qui replace `dname1971' = "bhind" if `iso1971' == "MP" & inlist(`dname1971', "bhind")
    qui replace `dname1971' = "bilaspur" if `iso1971' == "MP" & inlist(`dname1971', "bilaspur")
    qui replace `dname1971' = "chhatarpur" if `iso1971' == "MP" & inlist(`dname1971', "chhatarpur")
    qui replace `dname1971' = "chhindwara" if `iso1971' == "MP" & inlist(`dname1971', "chhindwara", "chindwara")
    qui replace `dname1971' = "damoh" if `iso1971' == "MP" & inlist(`dname1971', "damoh")
    qui replace `dname1971' = "datia" if `iso1971' == "MP" & inlist(`dname1971', "datia")
    qui replace `dname1971' = "dewas" if `iso1971' == "MP" & inlist(`dname1971', "dewas")
    qui replace `dname1971' = "dhar" if `iso1971' == "MP" & inlist(`dname1971', "dhar")
    qui replace `dname1971' = "durg" if `iso1971' == "MP" & inlist(`dname1971', "durg")
    qui replace `dname1971' = "khandwa" if `iso1971' == "MP" & inlist(`dname1971', "eastnimar", "khandwaeastnimar", "khandwa(eastnimar)", "sidh", "khandwapurvinimar")
    qui replace `dname1971' = "guna" if `iso1971' == "MP" & inlist(`dname1971', "guna")
    qui replace `dname1971' = "gwalior" if `iso1971' == "MP" & inlist(`dname1971', "gwalior", "gwallor")
    qui replace `dname1971' = "hoshangabad" if `iso1971' == "MP" & inlist(`dname1971', "hoshangabad", "hosangabad")
    qui replace `dname1971' = "indore" if `iso1971' == "MP" & inlist(`dname1971', "indore")
    qui replace `dname1971' = "jabalpur" if `iso1971' == "MP" & inlist(`dname1971', "jabalpur")
    qui replace `dname1971' = "jhabua" if `iso1971' == "MP" & inlist(`dname1971', "jhabua")
    qui replace `dname1971' = "mandla" if `iso1971' == "MP" & inlist(`dname1971', "mandla")
    qui replace `dname1971' = "mandsaur" if `iso1971' == "MP" & inlist(`dname1971', "mandsaur")
    qui replace `dname1971' = "morena" if `iso1971' == "MP" & inlist(`dname1971', "morena")
    qui replace `dname1971' = "narsimhapur" if `iso1971' == "MP" & inlist(`dname1971', "narsimhapur", "narshinpur")
    qui replace `dname1971' = "panna" if `iso1971' == "MP" & inlist(`dname1971', "panna")
    qui replace `dname1971' = "raigarh" if `iso1971' == "MP" & inlist(`dname1971', "raigarh")
    qui replace `dname1971' = "raipur" if `iso1971' == "MP" & inlist(`dname1971', "raipur")
    qui replace `dname1971' = "raisen" if `iso1971' == "MP" & inlist(`dname1971', "raisen", "raishen")
    qui replace `dname1971' = "rajgarh" if `iso1971' == "MP" & inlist(`dname1971', "rajgarh")
    qui replace `dname1971' = "ratlam" if `iso1971' == "MP" & inlist(`dname1971', "ratlam")
    qui replace `dname1971' = "rewa" if `iso1971' == "MP" & inlist(`dname1971', "rewa", "riwa")
    qui replace `dname1971' = "sagar" if `iso1971' == "MP" & inlist(`dname1971', "sagar")
    qui replace `dname1971' = "satna" if `iso1971' == "MP" & inlist(`dname1971', "satna")
    qui replace `dname1971' = "sehore" if `iso1971' == "MP" & inlist(`dname1971', "sehore", "sihor")
    qui replace `dname1971' = "seoni" if `iso1971' == "MP" & inlist(`dname1971', "seoni", "sivni")
    qui replace `dname1971' = "shahdol" if `iso1971' == "MP" & inlist(`dname1971', "shahdol")
    qui replace `dname1971' = "shajapur" if `iso1971' == "MP" & inlist(`dname1971', "shajapur")
    qui replace `dname1971' = "shivpuri" if `iso1971' == "MP" & inlist(`dname1971', "shivpuri")
    qui replace `dname1971' = "sidhi" if `iso1971' == "MP" & inlist(`dname1971', "sidhi", "sidh")
    qui replace `dname1971' = "surguja" if `iso1971' == "MP" & inlist(`dname1971', "surguja", "sarguja")
    qui replace `dname1971' = "tikamgarh" if `iso1971' == "MP" & inlist(`dname1971', "tikamgarh")
    qui replace `dname1971' = "ujjain" if `iso1971' == "MP" & inlist(`dname1971', "ujjain")
    qui replace `dname1971' = "vidisha" if `iso1971' == "MP" & inlist(`dname1971', "vidishabhilsa", "vidisha")
    qui replace `dname1971' = "khargone" if `iso1971' == "MP" & inlist(`dname1971', "westnimar", "khargonewestnimar", "khargone(westnimar)", "khargone(westnimar)", "khargon")

*===============================================================================

    * tamil nadu
    qui replace `dname1971' = "chingleput" if `iso1971' == "TN" & inlist(`dname1971', "chingleput")
    qui replace `dname1971' = "coimbatore" if `iso1971' == "TN" & inlist(`dname1971', "coimbatore")
    qui replace `dname1971' = "kanyakumari" if `iso1971' == "TN" & inlist(`dname1971', "kanyakumari")
    qui replace `dname1971' = "madras" if `iso1971' == "TN" & inlist(`dname1971', "madras")
    qui replace `dname1971' = "madurai" if `iso1971' == "TN" & inlist(`dname1971', "madurai")
    qui replace `dname1971' = "nilgiri" if `iso1971' == "TN" & inlist(`dname1971', "nilgiri", "nilgiris")
    qui replace `dname1971' = "northarcot" if `iso1971' == "TN" & inlist(`dname1971', "northarcot")
    qui replace `dname1971' = "ramanathapuram" if `iso1971' == "TN" & inlist(`dname1971', "ramanathapuram")
    qui replace `dname1971' = "salem" if `iso1971' == "TN" & inlist(`dname1971', "salem")
    qui replace `dname1971' = "dharmapuri" if `iso1971' == "TN" & inlist(`dname1971', "dharmapuri")
    qui replace `dname1971' = "southarcot" if `iso1971' == "TN" & inlist(`dname1971', "southarcot")
    qui replace `dname1971' = "thanjavur" if `iso1971' == "TN" & inlist(`dname1971', "thanjavur")
    qui replace `dname1971' = "tiruchirapalli" if `iso1971' == "TN" & inlist(`dname1971', "tiruchirapalli")
    qui replace `dname1971' = "tirunelveli" if `iso1971' == "TN" & inlist(`dname1971', "tirunelveli", "t")

*===============================================================================

    * maharashtra
    qui replace `dname1971' = "ahmadnagar" if `iso1971' == "MH" & inlist(`dname1971', "ahmednagar", "ahmadnagar")
    qui replace `dname1971' = "akola" if `iso1971' == "MH" & inlist(`dname1971', "akola")
    qui replace `dname1971' = "amravati" if `iso1971' == "MH" & inlist(`dname1971', "amravati")
    qui replace `dname1971' = "aurangabad" if `iso1971' == "MH" & inlist(`dname1971', "aurangabad")
    qui replace `dname1971' = "bhandara" if `iso1971' == "MH" & inlist(`dname1971', "bhandara")
    qui replace `dname1971' = "bhir" if `iso1971' == "MH" & inlist(`dname1971', "bhir")
    qui replace `dname1971' = "buldhana" if `iso1971' == "MH" & inlist(`dname1971', "buldhana")
    qui replace `dname1971' = "chandrapur" if `iso1971' == "MH" & inlist(`dname1971', "chandrapur", "chanda")
    qui replace `dname1971' = "dhulia" if `iso1971' == "MH" & inlist(`dname1971', "dhulia")
    qui replace `dname1971' = "greaterbombay" if `iso1971' == "MH" & inlist(`dname1971', "greaterbombay")
    qui replace `dname1971' = "jalgaon" if `iso1971' == "MH" & inlist(`dname1971', "jalgaon")
    qui replace `dname1971' = "kolaba" if `iso1971' == "MH" & inlist(`dname1971', "kolaba")
    qui replace `dname1971' = "kolhapur" if `iso1971' == "MH" & inlist(`dname1971', "kolhapur")
    qui replace `dname1971' = "nagpur" if `iso1971' == "MH" & inlist(`dname1971', "nagpur")
    qui replace `dname1971' = "nanded" if `iso1971' == "MH" & inlist(`dname1971', "nanded")
    qui replace `dname1971' = "nasik" if `iso1971' == "MH" & inlist(`dname1971', "nasik")
    qui replace `dname1971' = "osmanabad" if `iso1971' == "MH" & inlist(`dname1971', "osmanabad")
    qui replace `dname1971' = "parbhani" if `iso1971' == "MH" & inlist(`dname1971', "parbhani")
    qui replace `dname1971' = "poona" if `iso1971' == "MH" & inlist(`dname1971', "poona")
    qui replace `dname1971' = "ratnagiri" if `iso1971' == "MH" & inlist(`dname1971', "ratnagiri")
    qui replace `dname1971' = "sangli" if `iso1971' == "MH" & inlist(`dname1971', "sangli")
    qui replace `dname1971' = "satara" if `iso1971' == "MH" & inlist(`dname1971', "satara")
    qui replace `dname1971' = "sholapur" if `iso1971' == "MH" & inlist(`dname1971', "sholapur")
    qui replace `dname1971' = "thana" if `iso1971' == "MH" & inlist(`dname1971', "thana")
    qui replace `dname1971' = "wardha" if `iso1971' == "MH" & inlist(`dname1971', "wardha")
    qui replace `dname1971' = "yeotmal" if `iso1971' == "MH" & inlist(`dname1971', "yeotmal")

*===============================================================================

    * manipur
    qui replace `dname1971' = "manipur central" if `iso1971' == "MN" & inlist(`dname1971', "manipurcentral")
    qui replace `dname1971' = "manipur east" if `iso1971' == "MN" & inlist(`dname1971', "manipureast")
    qui replace `dname1971' = "manipur north" if `iso1971' == "MN" & inlist(`dname1971', "manipurnorth")
    qui replace `dname1971' = "manipur south" if `iso1971' == "MN" & inlist(`dname1971', "manipursouth")
    qui replace `dname1971' = "manipur west" if `iso1971' == "MN" & inlist(`dname1971', "manipurwest")

*===============================================================================

    * meghalaya
    qui replace `dname1971' = "garo hills" if `iso1971' == "ML" & inlist(`dname1971', "garohills", "meghalayagarohills")
    qui replace `dname1971' = "united khasi jaintia hills" if `iso1971' == "ML" & inlist(`dname1971', "unitedkhasijaintiahills")


*===============================================================================

    * mizoram
    qui replace `dname1971' = "mizoram" if `iso1971' == "MZ" & inlist(`dname1971', "mizohills", "mizoram", "mizo")

*===============================================================================
    * mysore
    qui replace `dname1971' = "bangalore" if `iso1971' == "KA" & inlist(`dname1971', "bangalore")
    qui replace `dname1971' = "belgaum" if `iso1971' == "KA" & inlist(`dname1971', "belgaon", "belgaum")
    qui replace `dname1971' = "bellary" if `iso1971' == "KA" & inlist(`dname1971', "bellary")
    qui replace `dname1971' = "bidar" if `iso1971' == "KA" & inlist(`dname1971', "bidar")
    qui replace `dname1971' = "bijapur" if `iso1971' == "KA" & inlist(`dname1971', "bijapur")
    qui replace `dname1971' = "chikmagalur" if `iso1971' == "KA" & inlist(`dname1971', "chikmagalur")
    qui replace `dname1971' = "chitradurga" if `iso1971' == "KA" & inlist(`dname1971', "chitradurga")
    qui replace `dname1971' = "coorg" if `iso1971' == "KA" & inlist(`dname1971', "coorg")
    qui replace `dname1971' = "dharwar" if `iso1971' == "KA" & inlist(`dname1971', "dharwad", "dharwar")
    qui replace `dname1971' = "gulbarga" if `iso1971' == "KA" & inlist(`dname1971', "gulbarga")
    qui replace `dname1971' = "hassan" if `iso1971' == "KA" & inlist(`dname1971', "hassan")
    qui replace `dname1971' = "kolar" if `iso1971' == "KA" & inlist(`dname1971', "kolar")
    qui replace `dname1971' = "mandya" if `iso1971' == "KA" & inlist(`dname1971', "mandya")
    qui replace `dname1971' = "mysore" if `iso1971' == "KA" & inlist(`dname1971', "mysore")
    qui replace `dname1971' = "northkanara" if `iso1971' == "KA" & inlist(`dname1971', "northkanara")
    qui replace `dname1971' = "raichur" if `iso1971' == "KA" & inlist(`dname1971', "raichur")
    qui replace `dname1971' = "shimoga" if `iso1971' == "KA" & inlist(`dname1971', "shimoga")
    qui replace `dname1971' = "southkanara" if `iso1971' == "KA" & inlist(`dname1971', "southkanara")
    qui replace `dname1971' = "tumkur" if `iso1971' == "KA" & inlist(`dname1971', "tumkur")

*===============================================================================

    * nagaland
    qui replace `dname1971' = "kohima" if `iso1971' == "NL" & inlist(`dname1971', "kohima")
    qui replace `dname1971' = "mokokchung" if `iso1971' == "NL" & inlist(`dname1971', "mokokchung")
    qui replace `dname1971' = "tuensang" if `iso1971' == "NL" & inlist(`dname1971', "tuensang")

*===============================================================================

    * arunachal pradesh
    qui replace `dname1971' = "kameng" if `iso1971' == "AR" & inlist(`dname1971', "kameng")
    qui replace `dname1971' = "lohit" if `iso1971' == "AR" & inlist(`dname1971', "lohit")
    qui replace `dname1971' = "siang" if `iso1971' == "AR" & inlist(`dname1971', "siang")
    qui replace `dname1971' = "subansiri" if `iso1971' == "AR" & inlist(`dname1971', "subansiri")
    qui replace `dname1971' = "tirap" if `iso1971' == "AR" & inlist(`dname1971', "tirap")

*===============================================================================

    * orissa
    qui replace `dname1971' = "balasore" if `iso1971' == "OR" & inlist(`dname1971', "balasore")
    qui replace `dname1971' = "baudhkhondmals" if `iso1971' == "OR" & inlist(`dname1971', "baudhkhondmals")
    qui replace `dname1971' = "bolangir" if `iso1971' == "OR" & inlist(`dname1971', "bolangir")
    qui replace `dname1971' = "cuttack" if `iso1971' == "OR" & inlist(`dname1971', "cuttack")
    qui replace `dname1971' = "dhenkanal" if `iso1971' == "OR" & inlist(`dname1971', "dhenkanal")
    qui replace `dname1971' = "ganjam" if `iso1971' == "OR" & inlist(`dname1971', "ganjam")
    qui replace `dname1971' = "kalahandi" if `iso1971' == "OR" & inlist(`dname1971', "kalahandi")
    qui replace `dname1971' = "keonjhar" if `iso1971' == "OR" & inlist(`dname1971', "keonjhar")
    qui replace `dname1971' = "koraput" if `iso1971' == "OR" & inlist(`dname1971', "koraput")
    qui replace `dname1971' = "mayurbhanj" if `iso1971' == "OR" & inlist(`dname1971', "mayurbhanj")
    qui replace `dname1971' = "puri" if `iso1971' == "OR" & inlist(`dname1971', "puri", "purl")
    qui replace `dname1971' = "sambalpur" if `iso1971' == "OR" & inlist(`dname1971', "sambalpur")
    qui replace `dname1971' = "sundargarh" if `iso1971' == "OR" & inlist(`dname1971', "sundargarh")

*===============================================================================

    * pondicherry
    qui replace `dname1971' = "karaikal" if `iso1971' == "PY" & inlist(`dname1971', "karaikal")
    qui replace `dname1971' = "mahe" if `iso1971' == "PY" & inlist(`dname1971', "mahe")
    qui replace `dname1971' = "pondicherry" if `iso1971' == "PY" & inlist(`dname1971', "pondicherry")
    qui replace `dname1971' = "yanam" if `iso1971' == "PY" & inlist(`dname1971', "yanam")

*===============================================================================

    * punjab
    qui replace `dname1971' = "amritsar" if `iso1971' == "PB" & inlist(`dname1971', "amritsar")
    qui replace `dname1971' = "bhatinda" if `iso1971' == "PB" & inlist(`dname1971', "bhatinda")
    qui replace `dname1971' = "firozpur" if `iso1971' == "PB" & inlist(`dname1971', "ferozepur", "firozpur")
    qui replace `dname1971' = "gurdaspur" if `iso1971' == "PB" & inlist(`dname1971', "gurdaspur")
    qui replace `dname1971' = "hoshiarpur" if `iso1971' == "PB" & inlist(`dname1971', "hoshiarpur")
    qui replace `dname1971' = "jullundur" if `iso1971' == "PB" & inlist(`dname1971', "jullundur")
    qui replace `dname1971' = "kapurthala" if `iso1971' == "PB" & inlist(`dname1971', "kapurthala", "kapurhala")
    qui replace `dname1971' = "ludhiana" if `iso1971' == "PB" & inlist(`dname1971', "ludhiana")
    qui replace `dname1971' = "patiala" if `iso1971' == "PB" & inlist(`dname1971', "patiala")
    qui replace `dname1971' = "ropar" if `iso1971' == "PB" & inlist(`dname1971', "ropar")
    qui replace `dname1971' = "sangrur" if `iso1971' == "PB" & inlist(`dname1971', "sangrur")

*===============================================================================

    * rajasthan
    qui replace `dname1971' = "ajmer" if `iso1971' == "RJ" & inlist(`dname1971', "ajmer")
    qui replace `dname1971' = "alwar" if `iso1971' == "RJ" & inlist(`dname1971', "alwar")
    qui replace `dname1971' = "banswara" if `iso1971' == "RJ" & inlist(`dname1971', "banswara")
    qui replace `dname1971' = "barmer" if `iso1971' == "RJ" & inlist(`dname1971', "barmer")
    qui replace `dname1971' = "bharatpur" if `iso1971' == "RJ" & inlist(`dname1971', "bharatpur")
    qui replace `dname1971' = "bhilwara" if `iso1971' == "RJ" & inlist(`dname1971', "bhilwara", "bhilwar")
    qui replace `dname1971' = "bikaner" if `iso1971' == "RJ" & inlist(`dname1971', "bikaner")
    qui replace `dname1971' = "bundi" if `iso1971' == "RJ" & inlist(`dname1971', "bundi")
    qui replace `dname1971' = "chitorgarh" if `iso1971' == "RJ" & inlist(`dname1971', "chittaurgarh", "chitorgarh")
    qui replace `dname1971' = "churu" if `iso1971' == "RJ" & inlist(`dname1971', "churu")
    qui replace `dname1971' = "dungarpur" if `iso1971' == "RJ" & inlist(`dname1971', "dungarpur")
    qui replace `dname1971' = "ganganagar" if `iso1971' == "RJ" & inlist(`dname1971', "ganganagar")
    qui replace `dname1971' = "jaipur" if `iso1971' == "RJ" & inlist(`dname1971', "jaipur")
    qui replace `dname1971' = "jaisalmer" if `iso1971' == "RJ" & inlist(`dname1971', "jaisalmer")
    qui replace `dname1971' = "jalor" if `iso1971' == "RJ" & inlist(`dname1971', "jalor")
    qui replace `dname1971' = "jhalawar" if `iso1971' == "RJ" & inlist(`dname1971', "jhalawar")
    qui replace `dname1971' = "jhunjhunu" if `iso1971' == "RJ" & inlist(`dname1971', "jhunjhunun", "jhunjhunu")
    qui replace `dname1971' = "jodhpur" if `iso1971' == "RJ" & inlist(`dname1971', "jodhpur")
    qui replace `dname1971' = "kota" if `iso1971' == "RJ" & inlist(`dname1971', "kota")
    qui replace `dname1971' = "nagaur" if `iso1971' == "RJ" & inlist(`dname1971', "nagaur")
    qui replace `dname1971' = "pali" if `iso1971' == "RJ" & inlist(`dname1971', "pali", "pall")
    qui replace `dname1971' = "sawaimadhopur" if `iso1971' == "RJ" & inlist(`dname1971', "sawaimadhopur")
    qui replace `dname1971' = "sikar" if `iso1971' == "RJ" & inlist(`dname1971', "sikar")
    qui replace `dname1971' = "sirohi" if `iso1971' == "RJ" & inlist(`dname1971', "sirohi")
    qui replace `dname1971' = "tonk" if `iso1971' == "RJ" & inlist(`dname1971', "tonk")
    qui replace `dname1971' = "udaipur" if `iso1971' == "RJ" & inlist(`dname1971', "udaipur")

*===============================================================================

    * sikkim
    qui replace `dname1971' = "sikkim" if `iso1971' == "SK" & inlist(`dname1971', "sikkim", "gangtok")

*===============================================================================

    * tripura
    qui replace `dname1971' = "north tripura" if `iso1971' == "TR" & inlist(`dname1971', "northtripura")
    qui replace `dname1971' = "south tripura" if `iso1971' == "TR" & inlist(`dname1971', "southtripura")
    qui replace `dname1971' = "west tripura" if `iso1971' == "TR" & inlist(`dname1971', "westtripura")

*===============================================================================

    * uttar pradesh
    qui replace `dname1971' = "agra" if `iso1971' == "UP" & inlist(`dname1971', "agra","agar")
    qui replace `dname1971' = "aligarh" if `iso1971' == "UP" & inlist(`dname1971', "aligarh")
    qui replace `dname1971' = "allahabad" if `iso1971' == "UP" & inlist(`dname1971', "allahabad")
    qui replace `dname1971' = "almora" if `iso1971' == "UP" & inlist(`dname1971', "almora")
    qui replace `dname1971' = "azamgarh" if `iso1971' == "UP" & inlist(`dname1971', "azamgarh")
    qui replace `dname1971' = "bahraich" if `iso1971' == "UP" & inlist(`dname1971', "bahraich")
    qui replace `dname1971' = "ballia" if `iso1971' == "UP" & inlist(`dname1971', "ballia", "balia")
    qui replace `dname1971' = "banda" if `iso1971' == "UP" & inlist(`dname1971', "banda")
    qui replace `dname1971' = "barabanki" if `iso1971' == "UP" & inlist(`dname1971', "barabanki")
    qui replace `dname1971' = "bareilly" if `iso1971' == "UP" & inlist(`dname1971', "bareilly", "bareili", "bareli")
    qui replace `dname1971' = "basti" if `iso1971' == "UP" & inlist(`dname1971', "basti")
    qui replace `dname1971' = "bijnor" if `iso1971' == "UP" & inlist(`dname1971', "bijnor")
    qui replace `dname1971' = "moradabad" if `iso1971' == "UP" & inlist(`dname1971', "moradabad")
    qui replace `dname1971' = "budaun" if `iso1971' == "UP" & inlist(`dname1971', "budaun")
    qui replace `dname1971' = "bulandshahr" if `iso1971' == "UP" & inlist(`dname1971', "bulandshahr","bulandshahar")
    qui replace `dname1971' = "chamoli" if `iso1971' == "UP" & inlist(`dname1971', "chamoli")
    qui replace `dname1971' = "dehradun" if `iso1971' == "UP" & inlist(`dname1971', "dehradun")
    qui replace `dname1971' = "deoria" if `iso1971' == "UP" & inlist(`dname1971', "deoria")
    qui replace `dname1971' = "etah" if `iso1971' == "UP" & inlist(`dname1971', "etah", "eata")
    qui replace `dname1971' = "etawah" if `iso1971' == "UP" & inlist(`dname1971', "etawah", "itawa")
    qui replace `dname1971' = "faizabad" if `iso1971' == "UP" & inlist(`dname1971', "faizabad")
    qui replace `dname1971' = "farrukhabad" if `iso1971' == "UP" & inlist(`dname1971', "farrukhabad", "farfukhabad", "farukhabad")
    qui replace `dname1971' = "fatehpur" if `iso1971' == "UP" & inlist(`dname1971', "fatehpur")
    qui replace `dname1971' = "garhwal" if `iso1971' == "UP" & inlist(`dname1971', "garhwal","gadhwal")
    qui replace `dname1971' = "ghazipur" if `iso1971' == "UP" & inlist(`dname1971', "ghazipur")
    qui replace `dname1971' = "gonda" if `iso1971' == "UP" & inlist(`dname1971', "gonda")
    qui replace `dname1971' = "gorakhpur" if `iso1971' == "UP" & inlist(`dname1971', "gorakhpur")
    qui replace `dname1971' = "hamirpur" if `iso1971' == "UP" & inlist(`dname1971', "hamirpur")
    qui replace `dname1971' = "hardoi" if `iso1971' == "UP" & inlist(`dname1971', "hardoi")
    qui replace `dname1971' = "jalaun" if `iso1971' == "UP" & inlist(`dname1971', "jalaun", "jaloon")
    qui replace `dname1971' = "jaunpur" if `iso1971' == "UP" & inlist(`dname1971', "jaunpur")
    qui replace `dname1971' = "jhansi" if `iso1971' == "UP" & inlist(`dname1971', "jhansi")
    qui replace `dname1971' = "kanpur" if `iso1971' == "UP" & inlist(`dname1971', "kanpur")
    qui replace `dname1971' = "kheri" if `iso1971' == "UP" & inlist(`dname1971', "kheri", "kherl", "khiri")
    qui replace `dname1971' = "lucknow" if `iso1971' == "UP" & inlist(`dname1971', "lucknow")
    qui replace `dname1971' = "mainpuri" if `iso1971' == "UP" & inlist(`dname1971', "mainpuri")
    qui replace `dname1971' = "mathura" if `iso1971' == "UP" & inlist(`dname1971', "mathura")
    qui replace `dname1971' = "meerut" if `iso1971' == "UP" & inlist(`dname1971', "meerut", "merath")
    qui replace `dname1971' = "mirzapur" if `iso1971' == "UP" & inlist(`dname1971', "mirzapur")
    qui replace `dname1971' = "moradabad" if `iso1971' == "UP" & inlist(`dname1971', "moradabad", "muradabad")
    qui replace `dname1971' = "muzaffarnagar" if `iso1971' == "UP" & inlist(`dname1971', "muzaffarnagar")
    qui replace `dname1971' = "nainital" if `iso1971' == "UP" & inlist(`dname1971', "nainital")
    qui replace `dname1971' = "pilibhit" if `iso1971' == "UP" & inlist(`dname1971', "pilibhit")
    qui replace `dname1971' = "pithoragarh" if `iso1971' == "UP" & inlist(`dname1971', "pithoragarh", "pithauragarh")
    qui replace `dname1971' = "pratapgarh" if `iso1971' == "UP" & inlist(`dname1971', "pratapgarh")
    qui replace `dname1971' = "raebareli" if `iso1971' == "UP" & inlist(`dname1971', "raebareli", "raibareli")
    qui replace `dname1971' = "rampur" if `iso1971' == "UP" & inlist(`dname1971', "rampur")
    qui replace `dname1971' = "saharanpur" if `iso1971' == "UP" & inlist(`dname1971', "saharanpur")
    qui replace `dname1971' = "shahjahanpur" if `iso1971' == "UP" & inlist(`dname1971', "shahjahanpur")
    qui replace `dname1971' = "sitapur" if `iso1971' == "UP" & inlist(`dname1971', "sitapur")
    qui replace `dname1971' = "sultanpur" if `iso1971' == "UP" & inlist(`dname1971', "sultanpur")
    qui replace `dname1971' = "tehrigarhwal" if `iso1971' == "UP" & inlist(`dname1971', "tehrigarhwal")
    qui replace `dname1971' = "unnao" if `iso1971' == "UP" & inlist(`dname1971', "unnao", "unnaw")
    qui replace `dname1971' = "uttarkashi" if `iso1971' == "UP" & inlist(`dname1971', "uttarkashi", "utarkashi")
    qui replace `dname1971' = "varanasi" if `iso1971' == "UP" & inlist(`dname1971', "varanasi")

*===============================================================================

    * west bengal
    qui replace `dname1971' = "bankura" if `iso1971' == "WB" & inlist(`dname1971', "bankura")
    qui replace `dname1971' = "birbhum" if `iso1971' == "WB" & inlist(`dname1971', "birbhum")
    qui replace `dname1971' = "burdwan" if `iso1971' == "WB" & inlist(`dname1971', "burdwan")
    qui replace `dname1971' = "calcutta" if `iso1971' == "WB" & inlist(`dname1971', "calcutta")
    qui replace `dname1971' = "coochbehar" if `iso1971' == "WB" & inlist(`dname1971', "coochbehar", "cooch", "coachbehar")
    qui replace `dname1971' = "darjeeling" if `iso1971' == "WB" & inlist(`dname1971', "darjeeling")
    qui replace `dname1971' = "hooghly" if `iso1971' == "WB" & inlist(`dname1971', "hooghly", "googhly")
    qui replace `dname1971' = "howrah" if `iso1971' == "WB" & inlist(`dname1971', "howrah")
    qui replace `dname1971' = "jalpaiguri" if `iso1971' == "WB" & inlist(`dname1971', "jalpaiguri")
    qui replace `dname1971' = "malda" if `iso1971' == "WB" & inlist(`dname1971', "malda")
    qui replace `dname1971' = "midnapore" if `iso1971' == "WB" & inlist(`dname1971', "midnapore")
    qui replace `dname1971' = "murshidabad" if `iso1971' == "WB" & inlist(`dname1971', "murshidabad")
    qui replace `dname1971' = "nadia" if `iso1971' == "WB" & inlist(`dname1971', "nadia")
    qui replace `dname1971' = "purulia" if `iso1971' == "WB" & inlist(`dname1971', "purulia")
    qui replace `dname1971' = "twentyfourparganas" if `iso1971' == "WB" & inlist(`dname1971', "twentyfourparganas", "parganas", "24parganas", "24-paraganas", "twetyfourparganas","twentyfourparganast")
    qui replace `dname1971' = "westdinajpur" if `iso1971' == "WB" & inlist(`dname1971', "westdinajpur")


*===============================================================================
end
*-------------------------------------------------------------------------------
* 1981
*-------------------------------------------------------------------------------
capture program drop dclean1981
program define dclean1981

* store input into macros
local dname1981 `1'
local iso1981 `2'

*===============================================================================

    * andaman nicobar islands
    qui replace `dname1981' = "andaman" if `iso1981' == "AN" & inlist(`dname1981', "andaman", "andamans", "andaman & nicobar islands", "andamannicobarislands")
    qui replace `dname1981' = "nicobar" if `iso1981' == "AN" & inlist(`dname1981', "nicobar", "nicobars")

*===============================================================================

    * andhra pradesh
    qui replace `dname1981' = "adilabad" if `iso1981' == "AP" & inlist(`dname1981', "adilabad")
    qui replace `dname1981' = "anantapur" if `iso1981' == "AP" & inlist(`dname1981', "anantapur")
    qui replace `dname1981' = "chittoor" if `iso1981' == "AP" & inlist(`dname1981', "chittoor")
    qui replace `dname1981' = "cuddapah" if `iso1981' == "AP" & inlist(`dname1981', "cuddapah")
    qui replace `dname1981' = "east godavari" if `iso1981' == "AP" & inlist(`dname1981', "eastgodavari")
    qui replace `dname1981' = "guntur" if `iso1981' == "AP" & inlist(`dname1981', "guntur")
    qui replace `dname1981' = "hyderabad" if `iso1981' == "AP" & inlist(`dname1981', "hyderabad")
    qui replace `dname1981' = "karimnagar" if `iso1981' == "AP" & inlist(`dname1981', "karimnagar")
    qui replace `dname1981' = "khammam" if `iso1981' == "AP" & inlist(`dname1981', "khammam")
    qui replace `dname1981' = "krishna" if `iso1981' == "AP" & inlist(`dname1981', "krishna")
    qui replace `dname1981' = "kurnool" if `iso1981' == "AP" & inlist(`dname1981', "kurnool")
    qui replace `dname1981' = "mahbubnagar" if `iso1981' == "AP" & inlist(`dname1981', "mahbubnagar")
    qui replace `dname1981' = "medak" if `iso1981' == "AP" & inlist(`dname1981', "medak")
    qui replace `dname1981' = "nalgonda" if `iso1981' == "AP" & inlist(`dname1981', "nalgonda")
    qui replace `dname1981' = "nellore" if `iso1981' == "AP" & inlist(`dname1981', "nellore", "nellohe")
    qui replace `dname1981' = "prakasam" if `iso1981' == "AP" & inlist(`dname1981', "ongole", "ongoleprakasam", "prakasam", "chirala")
    qui replace `dname1981' = "nizamabad" if `iso1981' == "AP" & inlist(`dname1981', "nizamabad")
    qui replace `dname1981' = "srikakulam" if `iso1981' == "AP" & inlist(`dname1981', "srikakulam")
    qui replace `dname1981' = "visakhapatnam" if `iso1981' == "AP" & inlist(`dname1981', "visakhapatnam")
    qui replace `dname1981' = "warangal" if `iso1981' == "AP" & inlist(`dname1981', "warangal")
    qui replace `dname1981' = "west godavari" if `iso1981' == "AP" & inlist(`dname1981', "westgodavari")
    qui replace `dname1981' = "vizianagaram" if `iso1981' == "AP" & inlist(`dname1981', "vizianagaram")
    qui replace `dname1981' = "rangareddi" if `iso1981' == "AP" & inlist(`dname1981', "rangareddi")

*===============================================================================

    * assam
    qui replace `dname1981' = "goalpara" if `iso1981' == "AS" & inlist(`dname1981', "goalpara")
    qui replace `dname1981' = "kamrup" if `iso1981' == "AS" & inlist(`dname1981', "kamrup")
    qui replace `dname1981' = "darrang" if `iso1981' == "AS" & inlist(`dname1981', "darrang")
    qui replace `dname1981' = "lakhimpur" if `iso1981' == "AS" & inlist(`dname1981', "lakhimpur")
    qui replace `dname1981' = "dibrugarh" if `iso1981' == "AS" & inlist(`dname1981', "dibrugarh")
    qui replace `dname1981' = "nowgong" if `iso1981' == "AS" & inlist(`dname1981', "nowgong", "nagaon")
    qui replace `dname1981' = "sibsagar" if `iso1981' == "AS" & inlist(`dname1981', "sibsagar")
    qui replace `dname1981' = "cachar" if `iso1981' == "AS" & inlist(`dname1981', "cachar")
    qui replace `dname1981' = "karbi anglong" if `iso1981' == "AS" & inlist(`dname1981', "mikirhills", "unitedmikirnorthcachar","unitedmikirnorthcacharhills","unitedmikirandnorthcacharhill", "karbianglong")
    qui replace `dname1981' = "north cachar hills" if `iso1981' == "AS" & inlist(`dname1981', "northcacharhills", "unitedmikirnorthcachar","unitedmikirnorthcacharhills","unitedmikirandnorthcacharhill")

*===============================================================================

    * bihar
    qui replace `dname1981' = "patna" if `iso1981' == "BR" & inlist(`dname1981', "patna")
    qui replace `dname1981' = "nalanda" if `iso1981' == "BR" & inlist(`dname1981', "nalanda")
    qui replace `dname1981' = "gaya" if `iso1981' == "BR" & inlist(`dname1981', "gaya")
    qui replace `dname1981' = "nawada" if `iso1981' == "BR" & inlist(`dname1981', "nawada")
    qui replace `dname1981' = "aurangabad" if `iso1981' == "BR" & inlist(`dname1981', "aurangabad")
    qui replace `dname1981' = "bhojpur" if `iso1981' == "BR" & inlist(`dname1981', "bhojpur")
    qui replace `dname1981' = "rohtas" if `iso1981' == "BR" & inlist(`dname1981', "rohtas")
    qui replace `dname1981' = "saran" if `iso1981' == "BR" & inlist(`dname1981', "saran")
    qui replace `dname1981' = "siwan" if `iso1981' == "BR" & inlist(`dname1981', "siwan")
    qui replace `dname1981' = "gopalganj" if `iso1981' == "BR" & inlist(`dname1981', "gopalganj")
    qui replace `dname1981' = "purba champaran" if `iso1981' == "BR" & inlist(`dname1981', "purbachamparan", "purbichamparan")
    qui replace `dname1981' = "pashchim champaran" if `iso1981' == "BR" & inlist(`dname1981', "pashchimchamparan", "paschimchamparan", "pashchim")
    qui replace `dname1981' = "muzaffarpur" if `iso1981' == "BR" & inlist(`dname1981', "muzaffarpur")
    qui replace `dname1981' = "sitamarhi" if `iso1981' == "BR" & inlist(`dname1981', "sitamarhi")
    qui replace `dname1981' = "vaishali" if `iso1981' == "BR" & inlist(`dname1981', "vaishali")
    qui replace `dname1981' = "darbhanga" if `iso1981' == "BR" & inlist(`dname1981', "darbhanga")
    qui replace `dname1981' = "samastipur" if `iso1981' == "BR" & inlist(`dname1981', "samastipur")
    qui replace `dname1981' = "madhubani" if `iso1981' == "BR" & inlist(`dname1981', "madhubani")
    qui replace `dname1981' = "munger" if `iso1981' == "BR" & inlist(`dname1981', "monghyar", "monghyr", "munger")
    qui replace `dname1981' = "begusarai" if `iso1981' == "BR" & inlist(`dname1981', "begusarai")
    qui replace `dname1981' = "bhagalpur" if `iso1981' == "BR" & inlist(`dname1981', "bhagalpur")
    qui replace `dname1981' = "saharsa" if `iso1981' == "BR" & inlist(`dname1981', "saharsa")
    qui replace `dname1981' = "purnia" if `iso1981' == "BR" & inlist(`dname1981', "purnia", "purnea")
    qui replace `dname1981' = "katihar" if `iso1981' == "BR" & inlist(`dname1981', "katihar")
    qui replace `dname1981' = "santhal pargana" if `iso1981' == "BR" & inlist(`dname1981', "santhalparganas", "santalparganas", "santhalpargana")
    qui replace `dname1981' = "palamu" if `iso1981' == "BR" & inlist(`dname1981', "palamau", "palamu")
    qui replace `dname1981' = "hazaribag" if `iso1981' == "BR" & inlist(`dname1981', "hazaribag", "hazaribagh")
    qui replace `dname1981' = "giridih" if `iso1981' == "BR" & inlist(`dname1981', "giridih")
    qui replace `dname1981' = "ranchi" if `iso1981' == "BR" & inlist(`dname1981', "ranchi")
    qui replace `dname1981' = "lohardarga" if `iso1981' == "BR" & inlist(`dname1981', "lohardarga")
    qui replace `dname1981' = "dhanbad" if `iso1981' == "BR" & inlist(`dname1981', "dhanbad")
    qui replace `dname1981' = "singhbhum" if `iso1981' == "BR" & inlist(`dname1981', "singhbhum", "purbisinghbhum")

*===============================================================================

    * chandigarh
    qui replace `dname1981' = "chandigarh" if `iso1981' == "CH" & inlist(`dname1981', "chandigarh")

*===============================================================================

    * dadra nagar haveli
    qui replace `dname1981' = "dadranagarhaveli" if `iso1981' == "DN" & inlist(`dname1981', "dadranagarhaveli")

*===============================================================================

    * delhi
    qui replace `dname1981' = "delhi" if `iso1981' == "DL" & inlist(`dname1981', "delhi", "newdelhi")

*===============================================================================

    * goa daman diu
    qui replace `dname1981' = "daman" if `iso1981' == "DG" & inlist(`dname1981', "daman")
    qui replace `dname1981' = "diu" if `iso1981' == "DG" & inlist(`dname1981', "diu")
    qui replace `dname1981' = "goa" if `iso1981' == "DG" & inlist(`dname1981', "goa", "northgoa", "goadamandiu")

*===============================================================================

    * gujarat
    qui replace `dname1981' = "ahmedabad" if `iso1981' == "GJ" & inlist(`dname1981', "ahmedabad", "ahmadabad")
    qui replace `dname1981' = "gandhinagar" if `iso1981' == "GJ" & inlist(`dname1981', "gandhinagar")
    qui replace `dname1981' = "amreli" if `iso1981' == "GJ" & inlist(`dname1981', "amreli")
    qui replace `dname1981' = "banaskantha" if `iso1981' == "GJ" & inlist(`dname1981', "banaskantha")
    qui replace `dname1981' = "vadodara" if `iso1981' == "GJ" & inlist(`dname1981', "baroda", "vadodarabaroda", "vadodara")
    qui replace `dname1981' = "bhavnagar" if `iso1981' == "GJ" & inlist(`dname1981', "bhavnagar")
    qui replace `dname1981' = "bharuch" if `iso1981' == "GJ" & inlist(`dname1981', "broach", "bharuchbroach", "bharuch")
    qui replace `dname1981' = "thedangs" if `iso1981' == "GJ" & inlist(`dname1981', "thedangs", "thedangsdangs")
    qui replace `dname1981' = "jamnagar" if `iso1981' == "GJ" & inlist(`dname1981', "jamnagar")
    qui replace `dname1981' = "junagarh" if `iso1981' == "GJ" & inlist(`dname1981', "junagadh", "junagarh")
    qui replace `dname1981' = "kheda" if `iso1981' == "GJ" & inlist(`dname1981', "kaira", "khedakaira")
    qui replace `dname1981' = "kachchh" if `iso1981' == "GJ" & inlist(`dname1981', "kutch", "kach", "kachh", "kachchh", "kachch")
    qui replace `dname1981' = "mehsana" if `iso1981' == "GJ" & inlist(`dname1981', "mehsana", "mahesana")
    qui replace `dname1981' = "panchmahals" if `iso1981' == "GJ" & inlist(`dname1981', "panchmahals")
    qui replace `dname1981' = "rajkot" if `iso1981' == "GJ" & inlist(`dname1981', "rajkot")
    qui replace `dname1981' = "sabarkantha" if `iso1981' == "GJ" & inlist(`dname1981', "sabarkantha")
    qui replace `dname1981' = "surat" if `iso1981' == "GJ" & inlist(`dname1981', "surat")
    qui replace `dname1981' = "valsad" if `iso1981' == "GJ" & inlist(`dname1981', "valsad", "valsadbulsar", "valsad(bulsar)")
    qui replace `dname1981' = "surendranagar" if `iso1981' == "GJ" & inlist(`dname1981', "surendranagar")

*===============================================================================

    * haryana
    qui replace `dname1981' = "ambala" if `iso1981' == "HR" & inlist(`dname1981', "ambala")
    qui replace `dname1981' = "gurgaon" if `iso1981' == "HR" & inlist(`dname1981', "gurgaon")
    qui replace `dname1981' = "faridabad" if `iso1981' == "HR" & inlist(`dname1981', "faridabad")
    qui replace `dname1981' = "hisar" if `iso1981' == "HR" & inlist(`dname1981', "hissar", "hisar")
    qui replace `dname1981' = "bhiwani" if `iso1981' == "HR" & inlist(`dname1981', "bhiwani")
    qui replace `dname1981' = "sirsa" if `iso1981' == "HR" & inlist(`dname1981', "sirsa")
    qui replace `dname1981' = "karnal" if `iso1981' == "HR" & inlist(`dname1981', "karnal")
    qui replace `dname1981' = "kurukshetra" if `iso1981' == "HR" & inlist(`dname1981', "kurukshetra")
    qui replace `dname1981' = "mahendragarh" if `iso1981' == "HR" & inlist(`dname1981', "mahendragarh")
    qui replace `dname1981' = "rohtak" if `iso1981' == "HR" & inlist(`dname1981', "rohtak")
    qui replace `dname1981' = "sonipat" if `iso1981' == "HR" & inlist(`dname1981', "sonipat")
    qui replace `dname1981' = "jind" if `iso1981' == "HR" & inlist(`dname1981', "jind")

*===============================================================================

    * himachal pradesh
    qui replace `dname1981' = "chamba" if `iso1981' == "HP" & inlist(`dname1981', "champa", "chamba")
    qui replace `dname1981' = "kangra" if `iso1981' == "HP" & inlist(`dname1981', "kangara", "kangra")
    qui replace `dname1981' = "hamirpur" if `iso1981' == "HP" & inlist(`dname1981', "hamirpur")
    qui replace `dname1981' = "una" if `iso1981' == "HP" & inlist(`dname1981', "una")
    qui replace `dname1981' = "bilaspur" if `iso1981' == "HP" & inlist(`dname1981', "bilaspur")
    qui replace `dname1981' = "mandi" if `iso1981' == "HP" & inlist(`dname1981', "mandi")
    qui replace `dname1981' = "kulu" if `iso1981' == "HP" & inlist(`dname1981', "kullu", "kulu")
    qui replace `dname1981' = "lahul and spiti" if `iso1981' == "HP" & inlist(`dname1981', "lahaulspiti", "lahulspiti", "lahul&spiti", "lahaul&spiti")
    qui replace `dname1981' = "shimla" if `iso1981' == "HP" & inlist(`dname1981', "shimla")
    qui replace `dname1981' = "solan" if `iso1981' == "HP" & inlist(`dname1981', "solan")
    qui replace `dname1981' = "sirmaur" if `iso1981' == "HP" & inlist(`dname1981', "sirmur", "sirmaur")
    qui replace `dname1981' = "kinnaur" if `iso1981' == "HP" & inlist(`dname1981', "kinnaur")

*===============================================================================

    * jammu & kashmir
    qui replace `dname1981' = "anantnag" if `iso1981' == "JK" & inlist(`dname1981', "anantnag")
    qui replace `dname1981' = "pulwama" if `iso1981' == "JK" & inlist(`dname1981', "pulwama")
    qui replace `dname1981' = "srinagar" if `iso1981' == "JK" & inlist(`dname1981', "srinagar")
    qui replace `dname1981' = "badgam" if `iso1981' == "JK" & inlist(`dname1981', "badgam")
    qui replace `dname1981' = "baramula" if `iso1981' == "JK" & inlist(`dname1981', "baramulla", "baramula")
    qui replace `dname1981' = "kupwara" if `iso1981' == "JK" & inlist(`dname1981', "kupwara")
    qui replace `dname1981' = "kargil" if `iso1981' == "JK" & inlist(`dname1981', "kargil")
    qui replace `dname1981' = "ladakh" if `iso1981' == "JK" & inlist(`dname1981', "ladakh", "lehladakh")
    qui replace `dname1981' = "doda" if `iso1981' == "JK" & inlist(`dname1981', "doda")
    qui replace `dname1981' = "udhampur" if `iso1981' == "JK" & inlist(`dname1981', "udhampur")
    qui replace `dname1981' = "kathua" if `iso1981' == "JK" & inlist(`dname1981', "kathua")
    qui replace `dname1981' = "jammu" if `iso1981' == "JK" & inlist(`dname1981', "jammu")
    qui replace `dname1981' = "rajauri" if `iso1981' == "JK" & inlist(`dname1981', "rajauri")
    qui replace `dname1981' = "punch" if `iso1981' == "JK" & inlist(`dname1981', "punch", "poonch")

*===============================================================================

    * kerala
    qui replace `dname1981' = "alleppey" if `iso1981' == "KL" & inlist(`dname1981', "alleppey", "alappuzha")
    qui replace `dname1981' = "cannanore" if `iso1981' == "KL" & inlist(`dname1981', "cannanore", "kannur", "kasaragod")
    qui replace `dname1981' = "wayanad" if `iso1981' == "KL" & inlist(`dname1981', "wayanad")
    qui replace `dname1981' = "ernakulam" if `iso1981' == "KL" & inlist(`dname1981', "ernakulam")
    qui replace `dname1981' = "kottayam" if `iso1981' == "KL" & inlist(`dname1981', "kottayam")
    qui replace `dname1981' = "idukki" if `iso1981' == "KL" & inlist(`dname1981', "idukki")
    qui replace `dname1981' = "kozhikode" if `iso1981' == "KL" & inlist(`dname1981', "kozhikode")
    qui replace `dname1981' = "malappuram" if `iso1981' == "KL" & inlist(`dname1981', "malappuram", "mallapuram")
    qui replace `dname1981' = "palghat" if `iso1981' == "KL" & inlist(`dname1981', "palghat", "palakkad")
    qui replace `dname1981' = "quilon" if `iso1981' == "KL" & inlist(`dname1981', "quilon", "kollam")
    qui replace `dname1981' = "trichur" if `iso1981' == "KL" & inlist(`dname1981', "richur", "trichur", "thrissur")
    qui replace `dname1981' = "trivandrum" if `iso1981' == "KL" & inlist(`dname1981', "trivandrum", "thiruvananthapuram")

*===============================================================================

    * lakshadweep
    qui replace `dname1981' = "lakshadweep" if `iso1981' == "LD" & inlist(`dname1981', "laccadive", "laccadiveminicoyamindiviislands", "laccadiveminicoyamindiv", "lakshadweep")

*===============================================================================

    * madhya pradesh
    qui replace `dname1981' = "balaghat" if `iso1981' == "MP" & inlist(`dname1981', "balaghat")
    qui replace `dname1981' = "bastar" if `iso1981' == "MP" & inlist(`dname1981', "bastar")
    qui replace `dname1981' = "betul" if `iso1981' == "MP" & inlist(`dname1981', "betul")
    qui replace `dname1981' = "bhind" if `iso1981' == "MP" & inlist(`dname1981', "bhind")
    qui replace `dname1981' = "bilaspur" if `iso1981' == "MP" & inlist(`dname1981', "bilaspur")
    qui replace `dname1981' = "chhatarpur" if `iso1981' == "MP" & inlist(`dname1981', "chhatarpur", "chhatapur")
    qui replace `dname1981' = "chhindwara" if `iso1981' == "MP" & inlist(`dname1981', "chhindwara")
    qui replace `dname1981' = "damoh" if `iso1981' == "MP" & inlist(`dname1981', "damoh")
    qui replace `dname1981' = "datia" if `iso1981' == "MP" & inlist(`dname1981', "datia", "datiya")
    qui replace `dname1981' = "dewas" if `iso1981' == "MP" & inlist(`dname1981', "dewas")
    qui replace `dname1981' = "dhar" if `iso1981' == "MP" & inlist(`dname1981', "dhar")
    qui replace `dname1981' = "durg" if `iso1981' == "MP" & inlist(`dname1981', "durg")
    qui replace `dname1981' = "raj nandgaon" if `iso1981' == "MP" & inlist(`dname1981', "rajnandgaon")
    qui replace `dname1981' = "east nimar" if `iso1981' == "MP" & inlist(`dname1981', "eastnimar", "khandwaeastnimar", "khandwa(eastnimar)", "sidh", "khandwa")
    qui replace `dname1981' = "guna" if `iso1981' == "MP" & inlist(`dname1981', "guna")
    qui replace `dname1981' = "gwalior" if `iso1981' == "MP" & inlist(`dname1981', "gwalior", "gavaliyar")
    qui replace `dname1981' = "hoshangabad" if `iso1981' == "MP" & inlist(`dname1981', "hoshangabad")
    qui replace `dname1981' = "indore" if `iso1981' == "MP" & inlist(`dname1981', "indore")
    qui replace `dname1981' = "jabalpur" if `iso1981' == "MP" & inlist(`dname1981', "jabalpur")
    qui replace `dname1981' = "jhabua" if `iso1981' == "MP" & inlist(`dname1981', "jhabua")
    qui replace `dname1981' = "mandla" if `iso1981' == "MP" & inlist(`dname1981', "mandla")
    qui replace `dname1981' = "mandsaur" if `iso1981' == "MP" & inlist(`dname1981', "mandsaur")
    qui replace `dname1981' = "morena" if `iso1981' == "MP" & inlist(`dname1981', "morena", "muraina", "murena")
    qui replace `dname1981' = "narsimhapur" if `iso1981' == "MP" & inlist(`dname1981', "narsimhapur", "narshinghpur", "narsinghpur")
    qui replace `dname1981' = "panna" if `iso1981' == "MP" & inlist(`dname1981', "panna")
    qui replace `dname1981' = "raigarh" if `iso1981' == "MP" & inlist(`dname1981', "raigarh")
    qui replace `dname1981' = "raipur" if `iso1981' == "MP" & inlist(`dname1981', "raipur")
    qui replace `dname1981' = "raisen" if `iso1981' == "MP" & inlist(`dname1981', "raisen", "raishen")
    qui replace `dname1981' = "rajgarh" if `iso1981' == "MP" & inlist(`dname1981', "rajgarh")
    qui replace `dname1981' = "ratlam" if `iso1981' == "MP" & inlist(`dname1981', "ratlam")
    qui replace `dname1981' = "rewa" if `iso1981' == "MP" & inlist(`dname1981', "rewa", "riwa")
    qui replace `dname1981' = "sagar" if `iso1981' == "MP" & inlist(`dname1981', "sagar")
    qui replace `dname1981' = "satna" if `iso1981' == "MP" & inlist(`dname1981', "satna")
    qui replace `dname1981' = "sehore" if `iso1981' == "MP" & inlist(`dname1981', "sehore", "sihor")
    qui replace `dname1981' = "bhopal" if `iso1981' == "MP" & inlist(`dname1981', "bhopal")
    qui replace `dname1981' = "seoni" if `iso1981' == "MP" & inlist(`dname1981', "seoni", "siwni")
    qui replace `dname1981' = "shahdol" if `iso1981' == "MP" & inlist(`dname1981', "shahdol")
    qui replace `dname1981' = "shajapur" if `iso1981' == "MP" & inlist(`dname1981', "shajapur")
    qui replace `dname1981' = "shivpuri" if `iso1981' == "MP" & inlist(`dname1981', "shivpuri")
    qui replace `dname1981' = "sidhi" if `iso1981' == "MP" & inlist(`dname1981', "sidhi", "sidh")
    qui replace `dname1981' = "surguja" if `iso1981' == "MP" & inlist(`dname1981', "surguja", "sarguja")
    qui replace `dname1981' = "tikamgarh" if `iso1981' == "MP" & inlist(`dname1981', "tikamgarh")
    qui replace `dname1981' = "ujjain" if `iso1981' == "MP" & inlist(`dname1981', "ujjain")
    qui replace `dname1981' = "vidisha" if `iso1981' == "MP" & inlist(`dname1981', "vidishabhilsa", "vidisha")
    qui replace `dname1981' = "west nimar" if `iso1981' == "MP" & inlist(`dname1981', "westnimar", "khargonewestnimar", "khargone(westnimar)", "khargone(westnimar)", "pashchiminimar")

*===============================================================================

    * tamil nadu
    qui replace `dname1981' = "chingleput" if `iso1981' == "TN" & inlist(`dname1981', "chingleput", "chengaianna", "chengalpattu")
    qui replace `dname1981' = "coimbatore" if `iso1981' == "TN" & inlist(`dname1981', "coimbatore", "cojmbatore")
    qui replace `dname1981' = "periyar" if `iso1981' == "TN" & inlist(`dname1981', "periyar")
    qui replace `dname1981' = "kanyakumari" if `iso1981' == "TN" & inlist(`dname1981', "kanyakumari", "kanniyakumari")
    qui replace `dname1981' = "madras" if `iso1981' == "TN" & inlist(`dname1981', "madras")
    qui replace `dname1981' = "madurai" if `iso1981' == "TN" & inlist(`dname1981', "madurai", "madural")
    qui replace `dname1981' = "nilgiri" if `iso1981' == "TN" & inlist(`dname1981', "nilgiri", "nilgiris")
    qui replace `dname1981' = "northarcot" if `iso1981' == "TN" & inlist(`dname1981', "northarcot", "northarcotambedkar")
    qui replace `dname1981' = "ramanathapuram" if `iso1981' == "TN" & inlist(`dname1981', "ramanathapuram")
    qui replace `dname1981' = "salem" if `iso1981' == "TN" & inlist(`dname1981', "salem")
    qui replace `dname1981' = "dharmapuri" if `iso1981' == "TN" & inlist(`dname1981', "dharmapuri")
    qui replace `dname1981' = "southarcot" if `iso1981' == "TN" & inlist(`dname1981', "southarcot")
    qui replace `dname1981' = "thanjavur" if `iso1981' == "TN" & inlist(`dname1981', "thanjavur")
    qui replace `dname1981' = "tiruchirapalli" if `iso1981' == "TN" & inlist(`dname1981', "tiruchirapalli", "tiruchchirappalli")
    qui replace `dname1981' = "pudukkottai" if `iso1981' == "TN" & inlist(`dname1981', "pudukkottai")
    qui replace `dname1981' = "tirunelveli" if `iso1981' == "TN" & inlist(`dname1981', "tirunelveli", "t", "tirunelvelikattabo")

*===============================================================================

    * maharashtra
    qui replace `dname1981' = "ahmadnagar" if `iso1981' == "MH" & inlist(`dname1981', "ahmednagar", "ahmadnagar")
    qui replace `dname1981' = "akola" if `iso1981' == "MH" & inlist(`dname1981', "akola")
    qui replace `dname1981' = "amravati" if `iso1981' == "MH" & inlist(`dname1981', "amravati")
    qui replace `dname1981' = "aurangabad" if `iso1981' == "MH" & inlist(`dname1981', "aurangabad")
    qui replace `dname1981' = "bhandara" if `iso1981' == "MH" & inlist(`dname1981', "bhandara")
    qui replace `dname1981' = "bhir" if `iso1981' == "MH" & inlist(`dname1981', "bhir", "bid")
    qui replace `dname1981' = "buldhana" if `iso1981' == "MH" & inlist(`dname1981', "buldhana", "buldana")
    qui replace `dname1981' = "chandrapur" if `iso1981' == "MH" & inlist(`dname1981', "chandrapur", "chanda")
    qui replace `dname1981' = "dhulia" if `iso1981' == "MH" & inlist(`dname1981', "dhulia", "dhule")
    qui replace `dname1981' = "greaterbombay" if `iso1981' == "MH" & inlist(`dname1981', "greaterbombay")
    qui replace `dname1981' = "jalgaon" if `iso1981' == "MH" & inlist(`dname1981', "jalgaon")
    qui replace `dname1981' = "raigarh" if `iso1981' == "MH" & inlist(`dname1981', "kolaba", "raigarh")
    qui replace `dname1981' = "kolhapur" if `iso1981' == "MH" & inlist(`dname1981', "kolhapur")
    qui replace `dname1981' = "nagpur" if `iso1981' == "MH" & inlist(`dname1981', "nagpur")
    qui replace `dname1981' = "nanded" if `iso1981' == "MH" & inlist(`dname1981', "nanded")
    qui replace `dname1981' = "nasik" if `iso1981' == "MH" & inlist(`dname1981', "nasik", "nashik")
    qui replace `dname1981' = "osmanabad" if `iso1981' == "MH" & inlist(`dname1981', "osmanabad")
    qui replace `dname1981' = "parbhani" if `iso1981' == "MH" & inlist(`dname1981', "parbhani")
    qui replace `dname1981' = "poona" if `iso1981' == "MH" & inlist(`dname1981', "poona", "pune")
    qui replace `dname1981' = "ratnagiri" if `iso1981' == "MH" & inlist(`dname1981', "ratnagiri")
    qui replace `dname1981' = "sangli" if `iso1981' == "MH" & inlist(`dname1981', "sangli")
    qui replace `dname1981' = "satara" if `iso1981' == "MH" & inlist(`dname1981', "satara")
    qui replace `dname1981' = "sholapur" if `iso1981' == "MH" & inlist(`dname1981', "sholapur", "solapur")
    qui replace `dname1981' = "thana" if `iso1981' == "MH" & inlist(`dname1981', "thana", "thane")
    qui replace `dname1981' = "wardha" if `iso1981' == "MH" & inlist(`dname1981', "wardha")
    qui replace `dname1981' = "yeotmal" if `iso1981' == "MH" & inlist(`dname1981', "yeotmal", "yavatmal")

*===============================================================================

    * manipur
    qui replace `dname1981' = "manipur central" if `iso1981' == "MN" & inlist(`dname1981', "manipurcentral", "imphal")
    qui replace `dname1981' = "tengnoupal" if `iso1981' == "MN" & inlist(`dname1981', "tengnoupal", "chandel")
    qui replace `dname1981' = "manipur east" if `iso1981' == "MN" & inlist(`dname1981', "manipureast", "ukhrul")
    qui replace `dname1981' = "manipur north" if `iso1981' == "MN" & inlist(`dname1981', "manipurnorth", "senapati")
    qui replace `dname1981' = "manipur south" if `iso1981' == "MN" & inlist(`dname1981', "manipursouth", "churachandpur")
    qui replace `dname1981' = "manipur west" if `iso1981' == "MN" & inlist(`dname1981', "manipurwest", "tamenglong")

*===============================================================================

    * meghalaya
    qui replace `dname1981' = "east garo hills" if `iso1981' == "ML" & inlist(`dname1981', "eastgarohills")
    qui replace `dname1981' = "west garo hills" if `iso1981' == "ML" & inlist(`dname1981', "westgarohills")
    qui replace `dname1981' = "jaintia hills" if `iso1981' == "ML" & inlist(`dname1981', "jaintiahills")
    qui replace `dname1981' = "east khasi hills" if `iso1981' == "ML" & inlist(`dname1981', "eastkhasihills")
    qui replace `dname1981' = "west khasi hills" if `iso1981' == "ML" & inlist(`dname1981', "westkhasihills")


*===============================================================================

    * mizoram
    qui replace `dname1981' = "aizawl" if `iso1981' == "MZ" & inlist(`dname1981', "aizawl")
    qui replace `dname1981' = "lunglei" if `iso1981' == "MZ" & inlist(`dname1981', "lunglei")
    qui replace `dname1981' = "chhimtuipui" if `iso1981' == "MZ" & inlist(`dname1981', "chhimtuipui")

*===============================================================================

    * karnataka
    qui replace `dname1981' = "bangalore" if `iso1981' == "KA" & inlist(`dname1981', "bangalore")
    qui replace `dname1981' = "belgaum" if `iso1981' == "KA" & inlist(`dname1981', "belgaon", "belgaum")
    qui replace `dname1981' = "bellary" if `iso1981' == "KA" & inlist(`dname1981', "bellary")
    qui replace `dname1981' = "bidar" if `iso1981' == "KA" & inlist(`dname1981', "bidar")
    qui replace `dname1981' = "bijapur" if `iso1981' == "KA" & inlist(`dname1981', "bijapur")
    qui replace `dname1981' = "chikmagalur" if `iso1981' == "KA" & inlist(`dname1981', "chikmagalur")
    qui replace `dname1981' = "chitradurga" if `iso1981' == "KA" & inlist(`dname1981', "chitradurga", "chitraduraga")
    qui replace `dname1981' = "kodagu" if `iso1981' == "KA" & inlist(`dname1981', "kodagu")
    qui replace `dname1981' = "dharwar" if `iso1981' == "KA" & inlist(`dname1981', "dharwad", "dharwar")
    qui replace `dname1981' = "gulbarga" if `iso1981' == "KA" & inlist(`dname1981', "gulbarga")
    qui replace `dname1981' = "hassan" if `iso1981' == "KA" & inlist(`dname1981', "hassan")
    qui replace `dname1981' = "kolar" if `iso1981' == "KA" & inlist(`dname1981', "kolar")
    qui replace `dname1981' = "mandya" if `iso1981' == "KA" & inlist(`dname1981', "mandya")
    qui replace `dname1981' = "mysore" if `iso1981' == "KA" & inlist(`dname1981', "mysore")
    qui replace `dname1981' = "uttar kannada" if `iso1981' == "KA" & inlist(`dname1981', "northkanara", "northkannada", "uttarkannada", "uttarkannad", "uttara kannada", "uttarakannada")
    qui replace `dname1981' = "raichur" if `iso1981' == "KA" & inlist(`dname1981', "raichur")
    qui replace `dname1981' = "shimoga" if `iso1981' == "KA" & inlist(`dname1981', "shimoga")
    qui replace `dname1981' = "dakshin kannada" if `iso1981' == "KA" & inlist(`dname1981', "southkanara", "dakshinkannada", "dakshinkannad")
    qui replace `dname1981' = "tumkur" if `iso1981' == "KA" & inlist(`dname1981', "tumkur")

*===============================================================================

    * nagaland
    qui replace `dname1981' = "kohima" if `iso1981' == "NL" & inlist(`dname1981', "kohima")
    qui replace `dname1981' = "phek" if `iso1981' == "NL" & inlist(`dname1981', "phek")
    qui replace `dname1981' = "mokokchung" if `iso1981' == "NL" & inlist(`dname1981', "mokokchung")
    qui replace `dname1981' = "wokha" if `iso1981' == "NL" & inlist(`dname1981', "wokha")
    qui replace `dname1981' = "zunheboto" if `iso1981' == "NL" & inlist(`dname1981', "zunheboto")
    qui replace `dname1981' = "tuensang" if `iso1981' == "NL" & inlist(`dname1981', "tuensang")
    qui replace `dname1981' = "mon" if `iso1981' == "NL" & inlist(`dname1981', "mon")

*===============================================================================

    * arunachal pradesh
    qui replace `dname1981' = "west kameng" if `iso1981' == "AR" & inlist(`dname1981', "westkameng")
    qui replace `dname1981' = "east kameng" if `iso1981' == "AR" & inlist(`dname1981', "eastkameng")
    qui replace `dname1981' = "lohit" if `iso1981' == "AR" & inlist(`dname1981', "lohit")
    qui replace `dname1981' = "dibang valley" if `iso1981' == "AR" & inlist(`dname1981', "dibangvalley")
    qui replace `dname1981' = "west siang" if `iso1981' == "AR" & inlist(`dname1981', "westsiang")
    qui replace `dname1981' = "east siang" if `iso1981' == "AR" & inlist(`dname1981', "eastsiang")
    qui replace `dname1981' = "upper subansiri" if `iso1981' == "AR" & inlist(`dname1981', "uppersubansiri")
    qui replace `dname1981' = "lower subansiri" if `iso1981' == "AR" & inlist(`dname1981', "lowersubansiri", "lower")
    qui replace `dname1981' = "tirap" if `iso1981' == "AR" & inlist(`dname1981', "tirap")

*===============================================================================

    * orissa
    qui replace `dname1981' = "baleshwar" if `iso1981' == "OR" & inlist(`dname1981', "balasore", "baleshwar")
    qui replace `dname1981' = "phulabani" if `iso1981' == "OR" & inlist(`dname1981', "baudhkhondmals", "phulabani")
    qui replace `dname1981' = "bolangir" if `iso1981' == "OR" & inlist(`dname1981', "bolangir", "balangir")
    qui replace `dname1981' = "cuttack" if `iso1981' == "OR" & inlist(`dname1981', "cuttack")
    qui replace `dname1981' = "dhenkanal" if `iso1981' == "OR" & inlist(`dname1981', "dhenkanal")
    qui replace `dname1981' = "ganjam" if `iso1981' == "OR" & inlist(`dname1981', "ganjam")
    qui replace `dname1981' = "kalahandi" if `iso1981' == "OR" & inlist(`dname1981', "kalahandi")
    qui replace `dname1981' = "keonjhar" if `iso1981' == "OR" & inlist(`dname1981', "keonjhar", "kendujhar")
    qui replace `dname1981' = "koraput" if `iso1981' == "OR" & inlist(`dname1981', "koraput")
    qui replace `dname1981' = "mayurbhanj" if `iso1981' == "OR" & inlist(`dname1981', "mayurbhanj")
    qui replace `dname1981' = "puri" if `iso1981' == "OR" & inlist(`dname1981', "puri", "purl")
    qui replace `dname1981' = "sambalpur" if `iso1981' == "OR" & inlist(`dname1981', "sambalpur")
    qui replace `dname1981' = "sundargarh" if `iso1981' == "OR" & inlist(`dname1981', "sundargarh")

*===============================================================================

    * pondicherry
    qui replace `dname1981' = "karaikal" if `iso1981' == "PY" & inlist(`dname1981', "karaikal")
    qui replace `dname1981' = "mahe" if `iso1981' == "PY" & inlist(`dname1981', "mahe")
    qui replace `dname1981' = "pondicherry" if `iso1981' == "PY" & inlist(`dname1981', "pondicherry")
    qui replace `dname1981' = "yanam" if `iso1981' == "PY" & inlist(`dname1981', "yanam")

*===============================================================================

    * punjab
    qui replace `dname1981' = "amritsar" if `iso1981' == "PB" & inlist(`dname1981', "amritsar")
    qui replace `dname1981' = "bathinda" if `iso1981' == "PB" & inlist(`dname1981', "bathinda", "bhatinda")
    qui replace `dname1981' = "firozpur" if `iso1981' == "PB" & inlist(`dname1981', "ferozepur", "firozpur")
    qui replace `dname1981' = "faridkot" if `iso1981' == "PB" & inlist(`dname1981', "faridkot")
    qui replace `dname1981' = "gurdaspur" if `iso1981' == "PB" & inlist(`dname1981', "gurdaspur", "gurdaspljr")
    qui replace `dname1981' = "hoshiarpur" if `iso1981' == "PB" & inlist(`dname1981', "hoshiarpur")
    qui replace `dname1981' = "jullundur" if `iso1981' == "PB" & inlist(`dname1981', "jullundur", "jalandhar")
    qui replace `dname1981' = "kapurthala" if `iso1981' == "PB" & inlist(`dname1981', "kapurthala", "kapurhala")
    qui replace `dname1981' = "ludhiana" if `iso1981' == "PB" & inlist(`dname1981', "ludhiana")
    qui replace `dname1981' = "patiala" if `iso1981' == "PB" & inlist(`dname1981', "patiala")
    qui replace `dname1981' = "rupnagar" if `iso1981' == "PB" & inlist(`dname1981', "rupnagar", "ropar")
    qui replace `dname1981' = "sangrur" if `iso1981' == "PB" & inlist(`dname1981', "sangrur")

*===============================================================================

    * rajasthan
    qui replace `dname1981' = "ajmer" if `iso1981' == "RJ" & inlist(`dname1981', "ajmer")
    qui replace `dname1981' = "alwar" if `iso1981' == "RJ" & inlist(`dname1981', "alwar")
    qui replace `dname1981' = "banswara" if `iso1981' == "RJ" & inlist(`dname1981', "banswara")
    qui replace `dname1981' = "barmer" if `iso1981' == "RJ" & inlist(`dname1981', "barmer", "badmer")
    qui replace `dname1981' = "bharatpur" if `iso1981' == "RJ" & inlist(`dname1981', "bharatpur", "dhaulpur")
    qui replace `dname1981' = "bhilwara" if `iso1981' == "RJ" & inlist(`dname1981', "bhilwara", "bhilwar")
    qui replace `dname1981' = "bikaner" if `iso1981' == "RJ" & inlist(`dname1981', "bikaner")
    qui replace `dname1981' = "bundi" if `iso1981' == "RJ" & inlist(`dname1981', "bundi")
    qui replace `dname1981' = "chitorgarh" if `iso1981' == "RJ" & inlist(`dname1981', "chittaurgarh", "chitorgarh", "chitaurgarh")
    qui replace `dname1981' = "churu" if `iso1981' == "RJ" & inlist(`dname1981', "churu")
    qui replace `dname1981' = "dungarpur" if `iso1981' == "RJ" & inlist(`dname1981', "dungarpur")
    qui replace `dname1981' = "ganganagar" if `iso1981' == "RJ" & inlist(`dname1981', "ganganagar", "gangannagar")
    qui replace `dname1981' = "jaipur" if `iso1981' == "RJ" & inlist(`dname1981', "jaipur")
    qui replace `dname1981' = "jaisalmer" if `iso1981' == "RJ" & inlist(`dname1981', "jaisalmer")
    qui replace `dname1981' = "jalor" if `iso1981' == "RJ" & inlist(`dname1981', "jalor")
    qui replace `dname1981' = "jhalawar" if `iso1981' == "RJ" & inlist(`dname1981', "jhalawar", "jhalwara")
    qui replace `dname1981' = "jhunjhunu" if `iso1981' == "RJ" & inlist(`dname1981', "jhunjhunun", "jhunjhunu", "jhunjhun")
    qui replace `dname1981' = "jodhpur" if `iso1981' == "RJ" & inlist(`dname1981', "jodhpur")
    qui replace `dname1981' = "kota" if `iso1981' == "RJ" & inlist(`dname1981', "kota", "cota")
    qui replace `dname1981' = "nagaur" if `iso1981' == "RJ" & inlist(`dname1981', "nagaur")
    qui replace `dname1981' = "pali" if `iso1981' == "RJ" & inlist(`dname1981', "pali", "pall")
    qui replace `dname1981' = "sawaimadhopur" if `iso1981' == "RJ" & inlist(`dname1981', "sawaimadhopur")
    qui replace `dname1981' = "sikar" if `iso1981' == "RJ" & inlist(`dname1981', "sikar", "sokar")
    qui replace `dname1981' = "sirohi" if `iso1981' == "RJ" & inlist(`dname1981', "sirohi")
    qui replace `dname1981' = "tonk" if `iso1981' == "RJ" & inlist(`dname1981', "tonk")
    qui replace `dname1981' = "udaipur" if `iso1981' == "RJ" & inlist(`dname1981', "udaipur")

*===============================================================================

    * sikkim
    qui replace `dname1981' = "north district" if `iso1981' == "SK" & inlist(`dname1981', "north district", "northdistrict", "northsikkim", "northeastsouthwest")
    qui replace `dname1981' = "south district" if `iso1981' == "SK" & inlist(`dname1981', "south district", "southdistrict", "southsikkim")
    qui replace `dname1981' = "east district" if `iso1981' == "SK" & inlist(`dname1981', "east district", "eastdistrict", "eastsikkim")
    qui replace `dname1981' = "west district" if `iso1981' == "SK" & inlist(`dname1981', "west district", "westdistrict", "westsikkim")

*===============================================================================

    * tripura
    qui replace `dname1981' = "north tripura" if `iso1981' == "TR" & inlist(`dname1981', "northtripura")
    qui replace `dname1981' = "south tripura" if `iso1981' == "TR" & inlist(`dname1981', "southtripura")
    qui replace `dname1981' = "west tripura" if `iso1981' == "TR" & inlist(`dname1981', "westtripura")

*===============================================================================

    * uttar pradesh
    qui replace `dname1981' = "agra" if `iso1981' == "UP" & inlist(`dname1981', "agra")
    qui replace `dname1981' = "aligarh" if `iso1981' == "UP" & inlist(`dname1981', "aligarh")
    qui replace `dname1981' = "allahabad" if `iso1981' == "UP" & inlist(`dname1981', "allahabad")
    qui replace `dname1981' = "almora" if `iso1981' == "UP" & inlist(`dname1981', "almora")
    qui replace `dname1981' = "azamgarh" if `iso1981' == "UP" & inlist(`dname1981', "azamgarh")
    qui replace `dname1981' = "bahraich" if `iso1981' == "UP" & inlist(`dname1981', "bahraich")
    qui replace `dname1981' = "ballia" if `iso1981' == "UP" & inlist(`dname1981', "ballia")
    qui replace `dname1981' = "banda" if `iso1981' == "UP" & inlist(`dname1981', "banda")
    qui replace `dname1981' = "barabanki" if `iso1981' == "UP" & inlist(`dname1981', "barabanki")
    qui replace `dname1981' = "bareilly" if `iso1981' == "UP" & inlist(`dname1981', "bareilly")
    qui replace `dname1981' = "basti" if `iso1981' == "UP" & inlist(`dname1981', "basti")
    qui replace `dname1981' = "bijnor" if `iso1981' == "UP" & inlist(`dname1981', "bijnor")
    qui replace `dname1981' = "moradabad" if `iso1981' == "UP" & inlist(`dname1981', "moradabad")
    qui replace `dname1981' = "budaun" if `iso1981' == "UP" & inlist(`dname1981', "budaun")
    qui replace `dname1981' = "bulandshahr" if `iso1981' == "UP" & inlist(`dname1981', "bulandshahr")
    qui replace `dname1981' = "chamoli" if `iso1981' == "UP" & inlist(`dname1981', "chamoli")
    qui replace `dname1981' = "dehradun" if `iso1981' == "UP" & inlist(`dname1981', "dehradun")
    qui replace `dname1981' = "deoria" if `iso1981' == "UP" & inlist(`dname1981', "deoria")
    qui replace `dname1981' = "etah" if `iso1981' == "UP" & inlist(`dname1981', "etah")
    qui replace `dname1981' = "etawah" if `iso1981' == "UP" & inlist(`dname1981', "etawah")
    qui replace `dname1981' = "faizabad" if `iso1981' == "UP" & inlist(`dname1981', "faizabad")
    qui replace `dname1981' = "farrukhabad" if `iso1981' == "UP" & inlist(`dname1981', "farrukhabad", "farfukhabad")
    qui replace `dname1981' = "fatehpur" if `iso1981' == "UP" & inlist(`dname1981', "fatehpur")
    qui replace `dname1981' = "garhwal" if `iso1981' == "UP" & inlist(`dname1981', "garhwal")
    qui replace `dname1981' = "ghazipur" if `iso1981' == "UP" & inlist(`dname1981', "ghazipur")
    qui replace `dname1981' = "gonda" if `iso1981' == "UP" & inlist(`dname1981', "gonda")
    qui replace `dname1981' = "gorakhpur" if `iso1981' == "UP" & inlist(`dname1981', "gorakhpur")
    qui replace `dname1981' = "hamirpur" if `iso1981' == "UP" & inlist(`dname1981', "hamirpur")
    qui replace `dname1981' = "hardoi" if `iso1981' == "UP" & inlist(`dname1981', "hardoi")
    qui replace `dname1981' = "jalaun" if `iso1981' == "UP" & inlist(`dname1981', "jalaun")
    qui replace `dname1981' = "jaunpur" if `iso1981' == "UP" & inlist(`dname1981', "jaunpur")
    qui replace `dname1981' = "jhansi" if `iso1981' == "UP" & inlist(`dname1981', "jhansi")
    qui replace `dname1981' = "lalitpur" if `iso1981' == "UP" & inlist(`dname1981', "lalitpur")
    qui replace `dname1981' = "kanpur" if `iso1981' == "UP" & inlist(`dname1981', "kanpur", "kanpurdehat")
    qui replace `dname1981' = "kheri" if `iso1981' == "UP" & inlist(`dname1981', "kheri", "kherl")
    qui replace `dname1981' = "lucknow" if `iso1981' == "UP" & inlist(`dname1981', "lucknow")
    qui replace `dname1981' = "mainpuri" if `iso1981' == "UP" & inlist(`dname1981', "mainpuri")
    qui replace `dname1981' = "mathura" if `iso1981' == "UP" & inlist(`dname1981', "mathura")
    qui replace `dname1981' = "meerut" if `iso1981' == "UP" & inlist(`dname1981', "meerut")
    qui replace `dname1981' = "ghaziabad" if `iso1981' == "UP" & inlist(`dname1981', "ghaziabad")
    qui replace `dname1981' = "mirzapur" if `iso1981' == "UP" & inlist(`dname1981', "mirzapur")
    qui replace `dname1981' = "moradabad" if `iso1981' == "UP" & inlist(`dname1981', "moradabad")
    qui replace `dname1981' = "muzaffarnagar" if `iso1981' == "UP" & inlist(`dname1981', "muzaffarnagar")
    qui replace `dname1981' = "nainital" if `iso1981' == "UP" & inlist(`dname1981', "nainital")
    qui replace `dname1981' = "pilibhit" if `iso1981' == "UP" & inlist(`dname1981', "pilibhit", "pilbhit")
    qui replace `dname1981' = "pithoragarh" if `iso1981' == "UP" & inlist(`dname1981', "pithoragarh")
    qui replace `dname1981' = "pratapgarh" if `iso1981' == "UP" & inlist(`dname1981', "pratapgarh")
    qui replace `dname1981' = "raebareli" if `iso1981' == "UP" & inlist(`dname1981', "raebareli")
    qui replace `dname1981' = "rampur" if `iso1981' == "UP" & inlist(`dname1981', "rampur")
    qui replace `dname1981' = "saharanpur" if `iso1981' == "UP" & inlist(`dname1981', "saharanpur")
    qui replace `dname1981' = "shahjahanpur" if `iso1981' == "UP" & inlist(`dname1981', "shahjahanpur")
    qui replace `dname1981' = "sitapur" if `iso1981' == "UP" & inlist(`dname1981', "sitapur")
    qui replace `dname1981' = "sultanpur" if `iso1981' == "UP" & inlist(`dname1981', "sultanpur")
    qui replace `dname1981' = "tehrigarhwal" if `iso1981' == "UP" & inlist(`dname1981', "tehrigarhwal")
    qui replace `dname1981' = "unnao" if `iso1981' == "UP" & inlist(`dname1981', "unnao")
    qui replace `dname1981' = "uttarkashi" if `iso1981' == "UP" & inlist(`dname1981', "uttarkashi")
    qui replace `dname1981' = "varanasi" if `iso1981' == "UP" & inlist(`dname1981', "varanasi", "varanasj")

*===============================================================================

    * west bengal
    qui replace `dname1981' = "bankura" if `iso1981' == "WB" & inlist(`dname1981', "bankura")
    qui replace `dname1981' = "birbhum" if `iso1981' == "WB" & inlist(`dname1981', "birbhum")
    qui replace `dname1981' = "barddhaman" if `iso1981' == "WB" & inlist(`dname1981', "burdwan", "barddhaman")
    qui replace `dname1981' = "calcutta" if `iso1981' == "WB" & inlist(`dname1981', "calcutta")
    qui replace `dname1981' = "koch bihar" if `iso1981' == "WB" & inlist(`dname1981', "coochbehar", "cooch", "kochbihar")
    qui replace `dname1981' = "darjiling" if `iso1981' == "WB" & inlist(`dname1981', "darjeeling", "darjiling")
    qui replace `dname1981' = "hugli" if `iso1981' == "WB" & inlist(`dname1981', "hooghly", "googhly", "hugli")
    qui replace `dname1981' = "haora" if `iso1981' == "WB" & inlist(`dname1981', "howrah", "haora")
    qui replace `dname1981' = "jalpaiguri" if `iso1981' == "WB" & inlist(`dname1981', "jalpaiguri")
    qui replace `dname1981' = "maldah" if `iso1981' == "WB" & inlist(`dname1981', "malda", "maldah")
    qui replace `dname1981' = "medinipur" if `iso1981' == "WB" & inlist(`dname1981', "midnapore", "medinipur", "mfeddnipur")
    qui replace `dname1981' = "murshidabad" if `iso1981' == "WB" & inlist(`dname1981', "murshidabad")
    qui replace `dname1981' = "nadia" if `iso1981' == "WB" & inlist(`dname1981', "nadia")
    qui replace `dname1981' = "puruliya" if `iso1981' == "WB" & inlist(`dname1981', "purulia", "puruliya")
    qui replace `dname1981' = "twentyfourparganas" if `iso1981' == "WB" & inlist(`dname1981', "twentyfourparganas", "parganas", "24parganas", "24-paraganas", "twetyfourparganas")
    qui replace `dname1981' = "westdinajpur" if `iso1981' == "WB" & inlist(`dname1981', "westdinajpur")


*===============================================================================
end
*-------------------------------------------------------------------------------
* 1991
*-------------------------------------------------------------------------------
capture program drop dclean1991
program define dclean1991

* store input into macros
local dname1991 `1'
local iso1991 `2'

*===============================================================================

    * andaman nicobar islands
    qui replace `dname1991' = "andaman" if `iso1991' == "AN" & inlist(`dname1991', "andaman", "andamans")
    qui replace `dname1991' = "nicobar" if `iso1991' == "AN" & inlist(`dname1991', "nicobar", "nicobars")

*===============================================================================

    * andhra pradesh
    qui replace `dname1991' = "adilabad" if `iso1991' == "AP" & inlist(`dname1991', "adilabad")
    qui replace `dname1991' = "anantapur" if `iso1991' == "AP" & inlist(`dname1991', "anantapur")
    qui replace `dname1991' = "chittoor" if `iso1991' == "AP" & inlist(`dname1991', "chittoor")
    qui replace `dname1991' = "cuddapah" if `iso1991' == "AP" & inlist(`dname1991', "cuddapah")
    qui replace `dname1991' = "east godavari" if `iso1991' == "AP" & inlist(`dname1991', "eastgodavari", "kakinada")
    qui replace `dname1991' = "guntur" if `iso1991' == "AP" & inlist(`dname1991', "guntur")
    qui replace `dname1991' = "hyderabad" if `iso1991' == "AP" & inlist(`dname1991', "hyderabad")
    qui replace `dname1991' = "karimnagar" if `iso1991' == "AP" & inlist(`dname1991', "karimnagar")
    qui replace `dname1991' = "khammam" if `iso1991' == "AP" & inlist(`dname1991', "khammam")
    qui replace `dname1991' = "krishna" if `iso1991' == "AP" & inlist(`dname1991', "krishna", "machilipatnam")
    qui replace `dname1991' = "kurnool" if `iso1991' == "AP" & inlist(`dname1991', "kurnool")
    qui replace `dname1991' = "mahbubnagar" if `iso1991' == "AP" & inlist(`dname1991', "mahbubnagar")
    qui replace `dname1991' = "medak" if `iso1991' == "AP" & inlist(`dname1991', "medak", "sangareddy", "sangareaddy")
    qui replace `dname1991' = "nalgonda" if `iso1991' == "AP" & inlist(`dname1991', "nalgonda")
    qui replace `dname1991' = "nellore" if `iso1991' == "AP" & inlist(`dname1991', "nellore", "nellohe")
    qui replace `dname1991' = "prakasam" if `iso1991' == "AP" & inlist(`dname1991', "ongole", "ongoleprakasam", "prakasam")
    qui replace `dname1991' = "nizamabad" if `iso1991' == "AP" & inlist(`dname1991', "nizamabad")
    qui replace `dname1991' = "srikakulam" if `iso1991' == "AP" & inlist(`dname1991', "srikakulam")
    qui replace `dname1991' = "visakhapatnam" if `iso1991' == "AP" & inlist(`dname1991', "visakhapatnam")
    qui replace `dname1991' = "warangal" if `iso1991' == "AP" & inlist(`dname1991', "warangal")
    qui replace `dname1991' = "west godavari" if `iso1991' == "AP" & inlist(`dname1991', "westgodavari", "eluru")
    qui replace `dname1991' = "vizianagaram" if `iso1991' == "AP" & inlist(`dname1991', "vizianagaram")
    qui replace `dname1991' = "rangareddi" if `iso1991' == "AP" & inlist(`dname1991', "rangareddi")

*===============================================================================

    * assam
    qui replace `dname1991' = "goalpara" if `iso1991' == "AS" & inlist(`dname1991', "goalpara")
    qui replace `dname1991' = "dhuburi" if `iso1991' == "AS" & inlist(`dname1991', "dhuburi", "dhubri")
    qui replace `dname1991' = "kokrajhar" if `iso1991' == "AS" & inlist(`dname1991', "kokrajhar")
    qui replace `dname1991' = "bongaigaon" if `iso1991' == "AS" & inlist(`dname1991', "bongaigaon")
    qui replace `dname1991' = "kamrup" if `iso1991' == "AS" & inlist(`dname1991', "kamrup")
    qui replace `dname1991' = "barpeta" if `iso1991' == "AS" & inlist(`dname1991', "barpeta")
    qui replace `dname1991' = "nalbari" if `iso1991' == "AS" & inlist(`dname1991', "nalbari")
    qui replace `dname1991' = "darrang" if `iso1991' == "AS" & inlist(`dname1991', "darrang")
    qui replace `dname1991' = "sonitpur" if `iso1991' == "AS" & inlist(`dname1991', "sonitpur")
    qui replace `dname1991' = "lakhimpur" if `iso1991' == "AS" & inlist(`dname1991', "lakhimpur")
    qui replace `dname1991' = "dhemaji" if `iso1991' == "AS" & inlist(`dname1991', "dhemaji")
    qui replace `dname1991' = "dibrugarh" if `iso1991' == "AS" & inlist(`dname1991', "dibrugarh")
    qui replace `dname1991' = "tinsukia" if `iso1991' == "AS" & inlist(`dname1991', "tinsukia")
    qui replace `dname1991' = "nagaon" if `iso1991' == "AS" & inlist(`dname1991', "nagaon")
    qui replace `dname1991' = "marigaon" if `iso1991' == "AS" & inlist(`dname1991', "marigaon")
    qui replace `dname1991' = "sibsagar" if `iso1991' == "AS" & inlist(`dname1991', "sibsagar")
    qui replace `dname1991' = "golaghat" if `iso1991' == "AS" & inlist(`dname1991', "golaghat")
    qui replace `dname1991' = "jorhat" if `iso1991' == "AS" & inlist(`dname1991', "jorhat")
    qui replace `dname1991' = "cachar" if `iso1991' == "AS" & inlist(`dname1991', "cachar")
    qui replace `dname1991' = "karimganj" if `iso1991' == "AS" & inlist(`dname1991', "karimganj")
    qui replace `dname1991' = "hailakandi" if `iso1991' == "AS" & inlist(`dname1991', "hailakandi")
    qui replace `dname1991' = "karbi anglong" if `iso1991' == "AS" & inlist(`dname1991', "mikirhills", "unitedmikirnorthcachar","unitedmikirnorthcacharhills","unitedmikirandnorthcacharhill", "karbianglong")
    qui replace `dname1991' = "north cachar hills" if `iso1991' == "AS" & inlist(`dname1991', "northcacharhills", "unitedmikirnorthcachar","unitedmikirnorthcacharhills","unitedmikirandnorthcacharhill")

*===============================================================================

    * bihar
    qui replace `dname1991' = "patna" if `iso1991' == "BR" & inlist(`dname1991', "patna")
    qui replace `dname1991' = "nalanda" if `iso1991' == "BR" & inlist(`dname1991', "nalanda", "bihar")
    qui replace `dname1991' = "gaya" if `iso1991' == "BR" & inlist(`dname1991', "gaya")
    qui replace `dname1991' = "jehanabad" if `iso1991' == "BR" & inlist(`dname1991', "jehanabad")
    qui replace `dname1991' = "nawada" if `iso1991' == "BR" & inlist(`dname1991', "nawada")
    qui replace `dname1991' = "aurangabad" if `iso1991' == "BR" & inlist(`dname1991', "aurangabad")
    qui replace `dname1991' = "bhojpur" if `iso1991' == "BR" & inlist(`dname1991', "bhojpur", "arrah")
    qui replace `dname1991' = "rohtas" if `iso1991' == "BR" & inlist(`dname1991', "rohtas", "sasaram")
    qui replace `dname1991' = "saran" if `iso1991' == "BR" & inlist(`dname1991', "saran", "chapra")
    qui replace `dname1991' = "siwan" if `iso1991' == "BR" & inlist(`dname1991', "siwan")
    qui replace `dname1991' = "gopalganj" if `iso1991' == "BR" & inlist(`dname1991', "gopalganj")
    qui replace `dname1991' = "purba champaran" if `iso1991' == "BR" & inlist(`dname1991', "purbachamparan", "purbichamparan", "motihari")
    qui replace `dname1991' = "pashchim champaran" if `iso1991' == "BR" & inlist(`dname1991', "pashchimchamparan", "bettiah", "betiah", "betia")
    qui replace `dname1991' = "muzaffarpur" if `iso1991' == "BR" & inlist(`dname1991', "muzaffarpur")
    qui replace `dname1991' = "sitamarhi" if `iso1991' == "BR" & inlist(`dname1991', "sitamarhi")
    qui replace `dname1991' = "vaishali" if `iso1991' == "BR" & inlist(`dname1991', "vaishali", "hajipur", "hazipur")
    qui replace `dname1991' = "darbhanga" if `iso1991' == "BR" & inlist(`dname1991', "darbhanga")
    qui replace `dname1991' = "samastipur" if `iso1991' == "BR" & inlist(`dname1991', "samastipur")
    qui replace `dname1991' = "madhubani" if `iso1991' == "BR" & inlist(`dname1991', "madhubani")
    qui replace `dname1991' = "munger" if `iso1991' == "BR" & inlist(`dname1991', "monghyar", "monghyr", "munger")
    qui replace `dname1991' = "khagaria" if `iso1991' == "BR" & inlist(`dname1991', "khagaria")
    qui replace `dname1991' = "begusarai" if `iso1991' == "BR" & inlist(`dname1991', "begusarai")
    qui replace `dname1991' = "bhagalpur" if `iso1991' == "BR" & inlist(`dname1991', "bhagalpur")
    qui replace `dname1991' = "saharsa" if `iso1991' == "BR" & inlist(`dname1991', "saharsa")
    qui replace `dname1991' = "madhepura" if `iso1991' == "BR" & inlist(`dname1991', "madhepura")
    qui replace `dname1991' = "purnia" if `iso1991' == "BR" & inlist(`dname1991', "purnia", "purnea")
    qui replace `dname1991' = "araria" if `iso1991' == "BR" & inlist(`dname1991', "araria")
    qui replace `dname1991' = "kishanganj" if `iso1991' == "BR" & inlist(`dname1991', "kishanganj")
    qui replace `dname1991' = "katihar" if `iso1991' == "BR" & inlist(`dname1991', "katihar")
    qui replace `dname1991' = "santalparganas" if `iso1991' == "BR" & inlist(`dname1991', "santhalparganas", "santalparganas")
    qui replace `dname1991' = "dumka" if `iso1991' == "BR" & inlist(`dname1991', "dumka")
    qui replace `dname1991' = "godda" if `iso1991' == "BR" & inlist(`dname1991', "godda")
    qui replace `dname1991' = "sahibganj" if `iso1991' == "BR" & inlist(`dname1991', "sahibganj")
    qui replace `dname1991' = "deoghar" if `iso1991' == "BR" & inlist(`dname1991', "deoghar")
    qui replace `dname1991' = "palamu" if `iso1991' == "BR" & inlist(`dname1991', "palamau", "palamu", "daltonganj")
    qui replace `dname1991' = "hazaribag" if `iso1991' == "BR" & inlist(`dname1991', "hazaribag", "hazaribagh")
    qui replace `dname1991' = "giridih" if `iso1991' == "BR" & inlist(`dname1991', "giridih")
    qui replace `dname1991' = "ranchi" if `iso1991' == "BR" & inlist(`dname1991', "ranchi")
    qui replace `dname1991' = "lohardaga" if `iso1991' == "BR" & inlist(`dname1991', "lohardarga", "lohardaga")
    qui replace `dname1991' = "gumla" if `iso1991' == "BR" & inlist(`dname1991', "gumla")
    qui replace `dname1991' = "dhanbad" if `iso1991' == "BR" & inlist(`dname1991', "dhanbad")
    qui replace `dname1991' = "pashchimi singhbhum" if `iso1991' == "BR" & inlist(`dname1991', "pashchimisinghbhum", "chaibasa", "jamshedpur")
    qui replace `dname1991' = "purbi singhbhum" if `iso1991' == "BR" & inlist(`dname1991', "purbisinghbhum")

*===============================================================================

    * chandigarh
    qui replace `dname1991' = "chandigarh" if `iso1991' == "CH" & inlist(`dname1991', "chandigarh")

*===============================================================================

    * dadra nagar haveli
    qui replace `dname1991' = "dadranagarhaveli" if `iso1991' == "DN" & inlist(`dname1991', "dadranagarhaveli")

*===============================================================================

    * delhi
    qui replace `dname1991' = "delhi" if `iso1991' == "DL" & inlist(`dname1991', "delhi", "tishazaridelhi")

*===============================================================================

    * daman diu
    qui replace `dname1991' = "daman" if `iso1991' == "DD" & inlist(`dname1991', "daman")
    qui replace `dname1991' = "diu" if `iso1991' == "DD" & inlist(`dname1991', "diu")

*===============================================================================

    * goa
    qui replace `dname1991' = "north goa" if `iso1991' == "GA" & inlist(`dname1991', "northgoa")
    qui replace `dname1991' = "south goa" if `iso1991' == "GA" & inlist(`dname1991', "southgoa")

*===============================================================================

    * gujarat
    qui replace `dname1991' = "ahmedabad" if `iso1991' == "GJ" & inlist(`dname1991', "ahmedabad", "ahmadabad")
    qui replace `dname1991' = "gandhinagar" if `iso1991' == "GJ" & inlist(`dname1991', "gandhinagar")
    qui replace `dname1991' = "amreli" if `iso1991' == "GJ" & inlist(`dname1991', "amreli")
    qui replace `dname1991' = "banaskantha" if `iso1991' == "GJ" & inlist(`dname1991', "banaskantha", "palanpur")
    qui replace `dname1991' = "vadodara" if `iso1991' == "GJ" & inlist(`dname1991', "baroda", "vadodarabaroda", "vadodara")
    qui replace `dname1991' = "bhavnagar" if `iso1991' == "GJ" & inlist(`dname1991', "bhavnagar")
    qui replace `dname1991' = "bharuch" if `iso1991' == "GJ" & inlist(`dname1991', "broach", "bharuchbroach", "bharuch")
    qui replace `dname1991' = "thedangs" if `iso1991' == "GJ" & inlist(`dname1991', "thedangs", "thedangsdangs", "ahwa", "dangs")
    qui replace `dname1991' = "jamnagar" if `iso1991' == "GJ" & inlist(`dname1991', "jamnagar")
    qui replace `dname1991' = "junagarh" if `iso1991' == "GJ" & inlist(`dname1991', "junagadh", "junagarh")
    qui replace `dname1991' = "kheda" if `iso1991' == "GJ" & inlist(`dname1991', "kaira", "khedakaira", "nadiad")
    qui replace `dname1991' = "kachchh" if `iso1991' == "GJ" & inlist(`dname1991', "kutch", "kach", "kachh", "kachchh", "bhuj")
    qui replace `dname1991' = "mehsana" if `iso1991' == "GJ" & inlist(`dname1991', "mehsana", "mahesana")
    qui replace `dname1991' = "panchmahals" if `iso1991' == "GJ" & inlist(`dname1991', "panchmahals", "godhra")
    qui replace `dname1991' = "rajkot" if `iso1991' == "GJ" & inlist(`dname1991', "rajkot")
    qui replace `dname1991' = "sabarkantha" if `iso1991' == "GJ" & inlist(`dname1991', "sabarkantha", "himatnagar")
    qui replace `dname1991' = "surat" if `iso1991' == "GJ" & inlist(`dname1991', "surat")
    qui replace `dname1991' = "valsad" if `iso1991' == "GJ" & inlist(`dname1991', "valsad", "valsadbulsar", "valsad(bulsar)")
    qui replace `dname1991' = "surendranagar" if `iso1991' == "GJ" & inlist(`dname1991', "surendranagar")

*===============================================================================

    * haryana
    qui replace `dname1991' = "ambala" if `iso1991' == "HR" & inlist(`dname1991', "ambala")
    qui replace `dname1991' = "yamunanagar" if `iso1991' == "HR" & inlist(`dname1991', "yamunanagar")
    qui replace `dname1991' = "gurgaon" if `iso1991' == "HR" & inlist(`dname1991', "gurgaon")
    qui replace `dname1991' = "faridabad" if `iso1991' == "HR" & inlist(`dname1991', "faridabad")
    qui replace `dname1991' = "hisar" if `iso1991' == "HR" & inlist(`dname1991', "hissar", "hisar")
    qui replace `dname1991' = "bhiwani" if `iso1991' == "HR" & inlist(`dname1991', "bhiwani")
    qui replace `dname1991' = "sirsa" if `iso1991' == "HR" & inlist(`dname1991', "sirsa")
    qui replace `dname1991' = "karnal" if `iso1991' == "HR" & inlist(`dname1991', "karnal")
    qui replace `dname1991' = "panipat" if `iso1991' == "HR" & inlist(`dname1991', "panipat")
    qui replace `dname1991' = "kurukshetra" if `iso1991' == "HR" & inlist(`dname1991', "kurukshetra")
    qui replace `dname1991' = "kaithal" if `iso1991' == "HR" & inlist(`dname1991', "kaithal")
    qui replace `dname1991' = "mahendragarh" if `iso1991' == "HR" & inlist(`dname1991', "mahendragarh", "narnaul")
    qui replace `dname1991' = "rewari" if `iso1991' == "HR" & inlist(`dname1991', "rewari")
    qui replace `dname1991' = "rohtak" if `iso1991' == "HR" & inlist(`dname1991', "rohtak")
    qui replace `dname1991' = "sonipat" if `iso1991' == "HR" & inlist(`dname1991', "sonipat")
    qui replace `dname1991' = "jind" if `iso1991' == "HR" & inlist(`dname1991', "jind")

*===============================================================================

    * himachal pradesh
    qui replace `dname1991' = "chamba" if `iso1991' == "HP" & inlist(`dname1991', "champa", "chamba")
    qui replace `dname1991' = "kangra" if `iso1991' == "HP" & inlist(`dname1991', "kangara", "kangra", "kangraatdharamsala")
    qui replace `dname1991' = "hamirpur" if `iso1991' == "HP" & inlist(`dname1991', "hamirpur")
    qui replace `dname1991' = "una" if `iso1991' == "HP" & inlist(`dname1991', "una")
    qui replace `dname1991' = "bilaspur" if `iso1991' == "HP" & inlist(`dname1991', "bilaspur")
    qui replace `dname1991' = "mandi" if `iso1991' == "HP" & inlist(`dname1991', "mandi")
    qui replace `dname1991' = "kulu" if `iso1991' == "HP" & inlist(`dname1991', "kullu", "kulu")
    qui replace `dname1991' = "lahul and spiti" if `iso1991' == "HP" & inlist(`dname1991', "lahaulspiti", "lahulspiti", "lahul&spiti", "lahaul&spiti")
    qui replace `dname1991' = "shimla" if `iso1991' == "HP" & inlist(`dname1991', "shimla")
    qui replace `dname1991' = "solan" if `iso1991' == "HP" & inlist(`dname1991', "solan")
    qui replace `dname1991' = "sirmaur" if `iso1991' == "HP" & inlist(`dname1991', "sirmur", "sirmaur", "nahan")
    qui replace `dname1991' = "kinnaur" if `iso1991' == "HP" & inlist(`dname1991', "kinnaur")

*===============================================================================

    * jammu & kashmir
    qui replace `dname1991' = "anantnag" if `iso1991' == "JK" & inlist(`dname1991', "anantnag")
    qui replace `dname1991' = "baramula" if `iso1991' == "JK" & inlist(`dname1991', "baramulla", "baramula")
    qui replace `dname1991' = "doda" if `iso1991' == "JK" & inlist(`dname1991', "doda")
    qui replace `dname1991' = "jammu" if `iso1991' == "JK" & inlist(`dname1991', "jammu")
    qui replace `dname1991' = "kathua" if `iso1991' == "JK" & inlist(`dname1991', "kathua")
    qui replace `dname1991' = "ladakh" if `iso1991' == "JK" & inlist(`dname1991', "ladakh", "lehladakh")
    qui replace `dname1991' = "punch" if `iso1991' == "JK" & inlist(`dname1991', "punch", "poonch")
    qui replace `dname1991' = "rajauri" if `iso1991' == "JK" & inlist(`dname1991', "rajauri")
    qui replace `dname1991' = "srinagar" if `iso1991' == "JK" & inlist(`dname1991', "srinagar")
    qui replace `dname1991' = "udhampur" if `iso1991' == "JK" & inlist(`dname1991', "udhampur")

*===============================================================================

    * kerala
    qui replace `dname1991' = "alleppey" if `iso1991' == "KL" & inlist(`dname1991', "alleppey", "alappuzha")
    qui replace `dname1991' = "kannur" if `iso1991' == "KL" & inlist(`dname1991', "cannanore", "kannur")
    qui replace `dname1991' = "kasaragod" if `iso1991' == "KL" & inlist(`dname1991', "kasaragod")
    qui replace `dname1991' = "wayanad" if `iso1991' == "KL" & inlist(`dname1991', "wayanad", "kalpetta")
    qui replace `dname1991' = "ernakulam" if `iso1991' == "KL" & inlist(`dname1991', "ernakulam", "kochi")
    qui replace `dname1991' = "kottayam" if `iso1991' == "KL" & inlist(`dname1991', "kottayam")
    qui replace `dname1991' = "idukki" if `iso1991' == "KL" & inlist(`dname1991', "idukki", "idukkipainavu", "idukkits")
    qui replace `dname1991' = "kozhikode" if `iso1991' == "KL" & inlist(`dname1991', "kozhikode")
    qui replace `dname1991' = "malappuram" if `iso1991' == "KL" & inlist(`dname1991', "malappuram", "mallapuram")
    qui replace `dname1991' = "palghat" if `iso1991' == "KL" & inlist(`dname1991', "palghat", "palakkad")
    qui replace `dname1991' = "kollam" if `iso1991' == "KL" & inlist(`dname1991', "kollam")
    qui replace `dname1991' = "patthanamthitta" if `iso1991' == "KL" & inlist(`dname1991', "patthanamthitta", "pathanamthitta")
    qui replace `dname1991' = "trichur" if `iso1991' == "KL" & inlist(`dname1991', "richur", "trichur", "thrissur")
    qui replace `dname1991' = "thiruvananthapuram" if `iso1991' == "KL" & inlist(`dname1991', "thiruvananthapuram", "trivandrum", "thiruvandrum")

*===============================================================================

    * lakshadweep
    qui replace `dname1991' = "lakshadweep" if `iso1991' == "LD" & inlist(`dname1991', "laccadive", "laccadiveminicoyamindiviislands", "laccadiveminicoyamindiv", "lakshadweep")

*===============================================================================

    * madhya pradesh
    qui replace `dname1991' = "balaghat" if `iso1991' == "MP" & inlist(`dname1991', "balaghat")
    qui replace `dname1991' = "bastar" if `iso1991' == "MP" & inlist(`dname1991', "bastar", "jagdalpur")
    qui replace `dname1991' = "betul" if `iso1991' == "MP" & inlist(`dname1991', "betul")
    qui replace `dname1991' = "bhind" if `iso1991' == "MP" & inlist(`dname1991', "bhind")
    qui replace `dname1991' = "bilaspur" if `iso1991' == "MP" & inlist(`dname1991', "bilaspur")
    qui replace `dname1991' = "chhatarpur" if `iso1991' == "MP" & inlist(`dname1991', "chhatarpur", "chhatapur")
    qui replace `dname1991' = "chhindwara" if `iso1991' == "MP" & inlist(`dname1991', "chhindwara")
    qui replace `dname1991' = "damoh" if `iso1991' == "MP" & inlist(`dname1991', "damoh")
    qui replace `dname1991' = "datia" if `iso1991' == "MP" & inlist(`dname1991', "datia")
    qui replace `dname1991' = "dewas" if `iso1991' == "MP" & inlist(`dname1991', "dewas")
    qui replace `dname1991' = "dhar" if `iso1991' == "MP" & inlist(`dname1991', "dhar")
    qui replace `dname1991' = "durg" if `iso1991' == "MP" & inlist(`dname1991', "durg")
    qui replace `dname1991' = "raj nandgaon" if `iso1991' == "MP" & inlist(`dname1991', "rajnandgaon")
    qui replace `dname1991' = "east nimar" if `iso1991' == "MP" & inlist(`dname1991', "eastnimar", "khandwaeastnimar", "khandwa(eastnimar)", "sidh", "khandwa", "eastnimarkhandwa")
    qui replace `dname1991' = "guna" if `iso1991' == "MP" & inlist(`dname1991', "guna")
    qui replace `dname1991' = "gwalior" if `iso1991' == "MP" & inlist(`dname1991', "gwalior")
    qui replace `dname1991' = "hoshangabad" if `iso1991' == "MP" & inlist(`dname1991', "hoshangabad")
    qui replace `dname1991' = "indore" if `iso1991' == "MP" & inlist(`dname1991', "indore")
    qui replace `dname1991' = "jabalpur" if `iso1991' == "MP" & inlist(`dname1991', "jabalpur")
    qui replace `dname1991' = "jhabua" if `iso1991' == "MP" & inlist(`dname1991', "jhabua")
    qui replace `dname1991' = "mandla" if `iso1991' == "MP" & inlist(`dname1991', "mandla")
    qui replace `dname1991' = "mandsaur" if `iso1991' == "MP" & inlist(`dname1991', "mandsaur")
    qui replace `dname1991' = "morena" if `iso1991' == "MP" & inlist(`dname1991', "morena")
    qui replace `dname1991' = "narsimhapur" if `iso1991' == "MP" & inlist(`dname1991', "narsimhapur")
    qui replace `dname1991' = "panna" if `iso1991' == "MP" & inlist(`dname1991', "panna")
    qui replace `dname1991' = "raigarh" if `iso1991' == "MP" & inlist(`dname1991', "raigarh")
    qui replace `dname1991' = "raipur" if `iso1991' == "MP" & inlist(`dname1991', "raipur")
    qui replace `dname1991' = "raisen" if `iso1991' == "MP" & inlist(`dname1991', "raisen")
    qui replace `dname1991' = "rajgarh" if `iso1991' == "MP" & inlist(`dname1991', "rajgarh")
    qui replace `dname1991' = "ratlam" if `iso1991' == "MP" & inlist(`dname1991', "ratlam")
    qui replace `dname1991' = "rewa" if `iso1991' == "MP" & inlist(`dname1991', "rewa")
    qui replace `dname1991' = "sagar" if `iso1991' == "MP" & inlist(`dname1991', "sagar")
    qui replace `dname1991' = "satna" if `iso1991' == "MP" & inlist(`dname1991', "satna")
    qui replace `dname1991' = "sehore" if `iso1991' == "MP" & inlist(`dname1991', "sehore")
    qui replace `dname1991' = "bhopal" if `iso1991' == "MP" & inlist(`dname1991', "bhopal")
    qui replace `dname1991' = "seoni" if `iso1991' == "MP" & inlist(`dname1991', "seoni")
    qui replace `dname1991' = "shahdol" if `iso1991' == "MP" & inlist(`dname1991', "shahdol")
    qui replace `dname1991' = "shajapur" if `iso1991' == "MP" & inlist(`dname1991', "shajapur")
    qui replace `dname1991' = "shivpuri" if `iso1991' == "MP" & inlist(`dname1991', "shivpuri")
    qui replace `dname1991' = "sidhi" if `iso1991' == "MP" & inlist(`dname1991', "sidhi", "sidh")
    qui replace `dname1991' = "surguja" if `iso1991' == "MP" & inlist(`dname1991', "surguja", "ambikapur")
    qui replace `dname1991' = "tikamgarh" if `iso1991' == "MP" & inlist(`dname1991', "tikamgarh")
    qui replace `dname1991' = "ujjain" if `iso1991' == "MP" & inlist(`dname1991', "ujjain")
    qui replace `dname1991' = "vidisha" if `iso1991' == "MP" & inlist(`dname1991', "vidishabhilsa", "vidisha")
    qui replace `dname1991' = "west nimar" if `iso1991' == "MP" & inlist(`dname1991', "westnimar", "khargonewestnimar", "khargone(westnimar)", "khargone(westnimar)", "khargone")

*===============================================================================

    * tamil nadu
    qui replace `dname1991' = "chingleput" if `iso1991' == "TN" & inlist(`dname1991', "chingleput", "chengaianna", "chengalpattu", "kanchipuram", "chengalpattumgr")
    qui replace `dname1991' = "coimbatore" if `iso1991' == "TN" & inlist(`dname1991', "coimbatore", "erode")
    qui replace `dname1991' = "periyar" if `iso1991' == "TN" & inlist(`dname1991', "periyar")
    qui replace `dname1991' = "kanyakumari" if `iso1991' == "TN" & inlist(`dname1991', "kanyakumari", "kanniyakumari", "nagercoil")
    qui replace `dname1991' = "madras" if `iso1991' == "TN" & inlist(`dname1991', "madras")
    qui replace `dname1991' = "madurai" if `iso1991' == "TN" & inlist(`dname1991', "madurai", "dindigul")
    qui replace `dname1991' = "dindigul anna" if `iso1991' == "TN" & inlist(`dname1991', "dindigulanna", "dindigulquidemilleth")
    qui replace `dname1991' = "nilgiri" if `iso1991' == "TN" & inlist(`dname1991', "nilgiri", "nilgiris", "udhagamandalam")
    qui replace `dname1991' = "northarcot" if `iso1991' == "TN" & inlist(`dname1991', "northarcot", "northarcotambedkar", "vellore", "northarcotambedker")
    qui replace `dname1991' = "tiruvannamalai sambuvarayar" if `iso1991' == "TN" & inlist(`dname1991', "tiruvannamalaisambu", "tiruvannamalaisambuvarayar", "tiruvannamalai")
    qui replace `dname1991' = "ramanathapuram" if `iso1991' == "TN" & inlist(`dname1991', "ramanathapuram", "sivaganga", "virudunagar")
    qui replace `dname1991' = "pasumpon muthuramalinga thevar" if `iso1991' == "TN" & inlist(`dname1991', "pasumponthevarthir", "pasumponmuthuramalingathevar", "pasumponthevarthirumagan")
    qui replace `dname1991' = "salem" if `iso1991' == "TN" & inlist(`dname1991', "salem", "salam")
    qui replace `dname1991' = "dharmapuri" if `iso1991' == "TN" & inlist(`dname1991', "dharmapuri")
    qui replace `dname1991' = "southarcot" if `iso1991' == "TN" & inlist(`dname1991', "southarcot", "cuddalore", "cuddolore")
    qui replace `dname1991' = "thanjavur" if `iso1991' == "TN" & inlist(`dname1991', "thanjavur")
    qui replace `dname1991' = "tiruchirapalli" if `iso1991' == "TN" & inlist(`dname1991', "tiruchirapalli", "tiruchchirappalli", "tiruchirappalli")
    qui replace `dname1991' = "pudukkottai" if `iso1991' == "TN" & inlist(`dname1991', "pudukkottai")
    qui replace `dname1991' = "tirunelveli kattabomman" if `iso1991' == "TN" & inlist(`dname1991', "tirunelveli", "t", "tirunelvelikattabo", "tirunelvelikattabomman", "tuticorin")
    qui replace `dname1991' = "chidambaranar" if `iso1991' == "TN" & inlist(`dname1991', "chidambaranar", "chidambaranagar")

*===============================================================================

    * maharashtra
    qui replace `dname1991' = "ahmednagar" if `iso1991' == "MH" & inlist(`dname1991', "ahmednagar", "ahmadnagar")
    qui replace `dname1991' = "akola" if `iso1991' == "MH" & inlist(`dname1991', "akola")
    qui replace `dname1991' = "amravati" if `iso1991' == "MH" & inlist(`dname1991', "amravati")
    qui replace `dname1991' = "aurangabad" if `iso1991' == "MH" & inlist(`dname1991', "aurangabad")
    qui replace `dname1991' = "jalna" if `iso1991' == "MH" & inlist(`dname1991', "jalna")
    qui replace `dname1991' = "bhandara" if `iso1991' == "MH" & inlist(`dname1991', "bhandara", "bandara")
    qui replace `dname1991' = "bid" if `iso1991' == "MH" & inlist(`dname1991', "bhir", "bid")
    qui replace `dname1991' = "buldana" if `iso1991' == "MH" & inlist(`dname1991', "buldhana", "buldana")
    qui replace `dname1991' = "chandrapur" if `iso1991' == "MH" & inlist(`dname1991', "chandrapur", "chanda")
    qui replace `dname1991' = "gadchiroli" if `iso1991' == "MH" & inlist(`dname1991', "gadchiroli")
    qui replace `dname1991' = "dhule" if `iso1991' == "MH" & inlist(`dname1991', "dhulia", "dhule")
    qui replace `dname1991' = "greaterbombay" if `iso1991' == "MH" & inlist(`dname1991', "greaterbombay", "grbombay")
    qui replace `dname1991' = "jalgaon" if `iso1991' == "MH" & inlist(`dname1991', "jalgaon")
    qui replace `dname1991' = "raigarh" if `iso1991' == "MH" & inlist(`dname1991', "kolaba", "raigarh", "alibag")
    qui replace `dname1991' = "kolhapur" if `iso1991' == "MH" & inlist(`dname1991', "kolhapur")
    qui replace `dname1991' = "nagpur" if `iso1991' == "MH" & inlist(`dname1991', "nagpur")
    qui replace `dname1991' = "nanded" if `iso1991' == "MH" & inlist(`dname1991', "nanded")
    qui replace `dname1991' = "nasik" if `iso1991' == "MH" & inlist(`dname1991', "nasik", "nashik")
    qui replace `dname1991' = "osmanabad" if `iso1991' == "MH" & inlist(`dname1991', "osmanabad")
    qui replace `dname1991' = "latur" if `iso1991' == "MH" & inlist(`dname1991', "latur")
    qui replace `dname1991' = "parbhani" if `iso1991' == "MH" & inlist(`dname1991', "parbhani")
    qui replace `dname1991' = "pune" if `iso1991' == "MH" & inlist(`dname1991', "poona", "pune")
    qui replace `dname1991' = "ratnagiri" if `iso1991' == "MH" & inlist(`dname1991', "ratnagiri")
    qui replace `dname1991' = "sindhudurg" if `iso1991' == "MH" & inlist(`dname1991', "sindhudurg", "kudal")
    qui replace `dname1991' = "sangli" if `iso1991' == "MH" & inlist(`dname1991', "sangli")
    qui replace `dname1991' = "satara" if `iso1991' == "MH" & inlist(`dname1991', "satara")
    qui replace `dname1991' = "solapur" if `iso1991' == "MH" & inlist(`dname1991', "sholapur", "solapur")
    qui replace `dname1991' = "thane" if `iso1991' == "MH" & inlist(`dname1991', "thana", "thane")
    qui replace `dname1991' = "wardha" if `iso1991' == "MH" & inlist(`dname1991', "wardha")
    qui replace `dname1991' = "yavatmal" if `iso1991' == "MH" & inlist(`dname1991', "yeotmal", "yavatmal")

*===============================================================================

    * manipur
    qui replace `dname1991' = "imphal" if `iso1991' == "MN" & inlist(`dname1991', "imphal")
    qui replace `dname1991' = "thoubal" if `iso1991' == "MN" & inlist(`dname1991', "thoubal")
    qui replace `dname1991' = "bishnupur" if `iso1991' == "MN" & inlist(`dname1991', "bishnupur")
    qui replace `dname1991' = "chandel" if `iso1991' == "MN" & inlist(`dname1991', "chandel")
    qui replace `dname1991' = "ukhrul" if `iso1991' == "MN" & inlist(`dname1991', "ukhrul")
    qui replace `dname1991' = "senapati" if `iso1991' == "MN" & inlist(`dname1991', "senapati")
    qui replace `dname1991' = "churachandpur" if `iso1991' == "MN" & inlist(`dname1991', "churachandpur", "churachanpur")
    qui replace `dname1991' = "tamenglong" if `iso1991' == "MN" & inlist(`dname1991', "tamenglong")

*===============================================================================

    * meghalaya
    qui replace `dname1991' = "east garo hills" if `iso1991' == "ML" & inlist(`dname1991', "eastgarohills", "eastgorahills")
    qui replace `dname1991' = "west garo hills" if `iso1991' == "ML" & inlist(`dname1991', "westgarohills")
    qui replace `dname1991' = "jaintia hills" if `iso1991' == "ML" & inlist(`dname1991', "jaintiahills")
    qui replace `dname1991' = "east khasi hills" if `iso1991' == "ML" & inlist(`dname1991', "eastkhasihills")
    qui replace `dname1991' = "west khasi hills" if `iso1991' == "ML" & inlist(`dname1991', "westkhasihills")


*===============================================================================

    * mizoram
    qui replace `dname1991' = "aizawl" if `iso1991' == "MZ" & inlist(`dname1991', "aizawl")
    qui replace `dname1991' = "lunglei" if `iso1991' == "MZ" & inlist(`dname1991', "lunglei")
    qui replace `dname1991' = "chhimtuipui" if `iso1991' == "MZ" & inlist(`dname1991', "chhimtuipui")

*===============================================================================

    * karnataka
    qui replace `dname1991' = "bangalore" if `iso1991' == "KA" & inlist(`dname1991', "bangalore")
    qui replace `dname1991' = "bangalore rural" if `iso1991' == "KA" & inlist(`dname1991', "bangalorerural")
    qui replace `dname1991' = "belgaum" if `iso1991' == "KA" & inlist(`dname1991', "belgaon", "belgaum")
    qui replace `dname1991' = "bellary" if `iso1991' == "KA" & inlist(`dname1991', "bellary")
    qui replace `dname1991' = "bidar" if `iso1991' == "KA" & inlist(`dname1991', "bidar")
    qui replace `dname1991' = "bijapur" if `iso1991' == "KA" & inlist(`dname1991', "bijapur")
    qui replace `dname1991' = "chikmagalur" if `iso1991' == "KA" & inlist(`dname1991', "chikmagalur")
    qui replace `dname1991' = "chitradurga" if `iso1991' == "KA" & inlist(`dname1991', "chitradurga")
    qui replace `dname1991' = "kodagu" if `iso1991' == "KA" & inlist(`dname1991', "kodagu", "coorg", "madikeri")
    qui replace `dname1991' = "dharwad" if `iso1991' == "KA" & inlist(`dname1991', "dharwad", "dharwar")
    qui replace `dname1991' = "gulbarga" if `iso1991' == "KA" & inlist(`dname1991', "gulbarga")
    qui replace `dname1991' = "hassan" if `iso1991' == "KA" & inlist(`dname1991', "hassan")
    qui replace `dname1991' = "kolar" if `iso1991' == "KA" & inlist(`dname1991', "kolar")
    qui replace `dname1991' = "mandya" if `iso1991' == "KA" & inlist(`dname1991', "mandya")
    qui replace `dname1991' = "mysore" if `iso1991' == "KA" & inlist(`dname1991', "mysore")
    qui replace `dname1991' = "uttar kannada" if `iso1991' == "KA" & inlist(`dname1991', "northkanara", "northkannada", "uttarkannada", "uttarkannad", "karwar", "uttarakannada")
    qui replace `dname1991' = "raichur" if `iso1991' == "KA" & inlist(`dname1991', "raichur")
    qui replace `dname1991' = "shimoga" if `iso1991' == "KA" & inlist(`dname1991', "shimoga", "moga")
    qui replace `dname1991' = "dakshin kannada" if `iso1991' == "KA" & inlist(`dname1991', "southkanara", "dakshinkannada", "dakshinkannad", "mangalore", "dakshinakannada")
    qui replace `dname1991' = "tumkur" if `iso1991' == "KA" & inlist(`dname1991', "tumkur")

*===============================================================================

    * nagaland
    qui replace `dname1991' = "kohima" if `iso1991' == "NL" & inlist(`dname1991', "kohima")
    qui replace `dname1991' = "phek" if `iso1991' == "NL" & inlist(`dname1991', "phek")
    qui replace `dname1991' = "mokokchung" if `iso1991' == "NL" & inlist(`dname1991', "mokokchung")
    qui replace `dname1991' = "wokha" if `iso1991' == "NL" & inlist(`dname1991', "wokha")
    qui replace `dname1991' = "zunheboto" if `iso1991' == "NL" & inlist(`dname1991', "zunheboto")
    qui replace `dname1991' = "tuensang" if `iso1991' == "NL" & inlist(`dname1991', "tuensang")
    qui replace `dname1991' = "mon" if `iso1991' == "NL" & inlist(`dname1991', "mon")

*===============================================================================

    * arunachal pradesh
    qui replace `dname1991' = "west kameng" if `iso1991' == "AR" & inlist(`dname1991', "westkameng")
    qui replace `dname1991' = "tawang" if `iso1991' == "AR" & inlist(`dname1991', "tawang")
    qui replace `dname1991' = "east kameng" if `iso1991' == "AR" & inlist(`dname1991', "eastkameng")
    qui replace `dname1991' = "lohit" if `iso1991' == "AR" & inlist(`dname1991', "lohit")
    qui replace `dname1991' = "dibang valley" if `iso1991' == "AR" & inlist(`dname1991', "dibangvalley")
    qui replace `dname1991' = "west siang" if `iso1991' == "AR" & inlist(`dname1991', "westsiang")
    qui replace `dname1991' = "east siang" if `iso1991' == "AR" & inlist(`dname1991', "eastsiang")
    qui replace `dname1991' = "upper subansiri" if `iso1991' == "AR" & inlist(`dname1991', "uppersubansiri")
    qui replace `dname1991' = "lower subansiri" if `iso1991' == "AR" & inlist(`dname1991', "lowersubansiri")
    qui replace `dname1991' = "tirap" if `iso1991' == "AR" & inlist(`dname1991', "tirap")
    qui replace `dname1991' = "changlang" if `iso1991' == "AR" & inlist(`dname1991', "changlang")

*===============================================================================

    * orissa
    qui replace `dname1991' = "baleshwar" if `iso1991' == "OR" & inlist(`dname1991', "balasore", "baleshwar")
    qui replace `dname1991' = "phulabani" if `iso1991' == "OR" & inlist(`dname1991', "baudhkhondmals", "phulabani", "phulbani")
    qui replace `dname1991' = "bolangir" if `iso1991' == "OR" & inlist(`dname1991', "bolangir", "balangir")
    qui replace `dname1991' = "cuttack" if `iso1991' == "OR" & inlist(`dname1991', "cuttack")
    qui replace `dname1991' = "dhenkanal" if `iso1991' == "OR" & inlist(`dname1991', "dhenkanal")
    qui replace `dname1991' = "ganjam" if `iso1991' == "OR" & inlist(`dname1991', "ganjam", "chhatrapur")
    qui replace `dname1991' = "kalahandi" if `iso1991' == "OR" & inlist(`dname1991', "kalahandi", "bhawanipatna")
    qui replace `dname1991' = "keonjhar" if `iso1991' == "OR" & inlist(`dname1991', "keonjhar", "kendujhar")
    qui replace `dname1991' = "koraput" if `iso1991' == "OR" & inlist(`dname1991', "koraput")
    qui replace `dname1991' = "mayurbhanj" if `iso1991' == "OR" & inlist(`dname1991', "mayurbhanj", "baripada")
    qui replace `dname1991' = "puri" if `iso1991' == "OR" & inlist(`dname1991', "puri", "purl")
    qui replace `dname1991' = "sambalpur" if `iso1991' == "OR" & inlist(`dname1991', "sambalpur")
    qui replace `dname1991' = "sundargarh" if `iso1991' == "OR" & inlist(`dname1991', "sundargarh")

*===============================================================================

    * pondicherry
    qui replace `dname1991' = "karaikal" if `iso1991' == "PY" & inlist(`dname1991', "karaikal")
    qui replace `dname1991' = "mahe" if `iso1991' == "PY" & inlist(`dname1991', "mahe")
    qui replace `dname1991' = "pondicherry" if `iso1991' == "PY" & inlist(`dname1991', "pondicherry", "puducherry")
    qui replace `dname1991' = "yanam" if `iso1991' == "PY" & inlist(`dname1991', "yanam")

*===============================================================================

    * punjab
    qui replace `dname1991' = "amritsar" if `iso1991' == "PB" & inlist(`dname1991', "amritsar")
    qui replace `dname1991' = "bathinda" if `iso1991' == "PB" & inlist(`dname1991', "bathinda", "bhatinda")
    qui replace `dname1991' = "firozpur" if `iso1991' == "PB" & inlist(`dname1991', "ferozepur", "firozpur", "firojpur")
    qui replace `dname1991' = "faridkot" if `iso1991' == "PB" & inlist(`dname1991', "faridkot")
    qui replace `dname1991' = "gurdaspur" if `iso1991' == "PB" & inlist(`dname1991', "gurdaspur")
    qui replace `dname1991' = "hoshiarpur" if `iso1991' == "PB" & inlist(`dname1991', "hoshiarpur")
    qui replace `dname1991' = "jalandhar" if `iso1991' == "PB" & inlist(`dname1991', "jullundur", "jalandhar")
    qui replace `dname1991' = "kapurthala" if `iso1991' == "PB" & inlist(`dname1991', "kapurthala", "kapurhala")
    qui replace `dname1991' = "ludhiana" if `iso1991' == "PB" & inlist(`dname1991', "ludhiana")
    qui replace `dname1991' = "patiala" if `iso1991' == "PB" & inlist(`dname1991', "patiala")
    qui replace `dname1991' = "rupnagar" if `iso1991' == "PB" & inlist(`dname1991', "rupnagar", "ropar")
    qui replace `dname1991' = "sangrur" if `iso1991' == "PB" & inlist(`dname1991', "sangrur")

*===============================================================================

    * rajasthan
    qui replace `dname1991' = "ajmer" if `iso1991' == "RJ" & inlist(`dname1991', "ajmer")
    qui replace `dname1991' = "alwar" if `iso1991' == "RJ" & inlist(`dname1991', "alwar")
    qui replace `dname1991' = "banswara" if `iso1991' == "RJ" & inlist(`dname1991', "banswara")
    qui replace `dname1991' = "barmer" if `iso1991' == "RJ" & inlist(`dname1991', "barmer")
    qui replace `dname1991' = "bharatpur" if `iso1991' == "RJ" & inlist(`dname1991', "bharatpur")
    qui replace `dname1991' = "dhaulpur" if `iso1991' == "RJ" & inlist(`dname1991', "dhaulpur", "dholpur")
    qui replace `dname1991' = "bhilwara" if `iso1991' == "RJ" & inlist(`dname1991', "bhilwara", "bhilwar")
    qui replace `dname1991' = "bikaner" if `iso1991' == "RJ" & inlist(`dname1991', "bikaner")
    qui replace `dname1991' = "bundi" if `iso1991' == "RJ" & inlist(`dname1991', "bundi")
    qui replace `dname1991' = "chitorgarh" if `iso1991' == "RJ" & inlist(`dname1991', "chittaurgarh", "chitorgarh")
    qui replace `dname1991' = "churu" if `iso1991' == "RJ" & inlist(`dname1991', "churu")
    qui replace `dname1991' = "dungarpur" if `iso1991' == "RJ" & inlist(`dname1991', "dungarpur")
    qui replace `dname1991' = "ganganagar" if `iso1991' == "RJ" & inlist(`dname1991', "ganganagar")
    qui replace `dname1991' = "jaipur" if `iso1991' == "RJ" & inlist(`dname1991', "jaipur")
    qui replace `dname1991' = "jaisalmer" if `iso1991' == "RJ" & inlist(`dname1991', "jaisalmer")
    qui replace `dname1991' = "jalor" if `iso1991' == "RJ" & inlist(`dname1991', "jalor")
    qui replace `dname1991' = "jhalawar" if `iso1991' == "RJ" & inlist(`dname1991', "jhalawar")
    qui replace `dname1991' = "jhunjhunu" if `iso1991' == "RJ" & inlist(`dname1991', "jhunjhunun", "jhunjhunu")
    qui replace `dname1991' = "jodhpur" if `iso1991' == "RJ" & inlist(`dname1991', "jodhpur")
    qui replace `dname1991' = "kota" if `iso1991' == "RJ" & inlist(`dname1991', "kota")
    qui replace `dname1991' = "nagaur" if `iso1991' == "RJ" & inlist(`dname1991', "nagaur")
    qui replace `dname1991' = "pali" if `iso1991' == "RJ" & inlist(`dname1991', "pali", "pall")
    qui replace `dname1991' = "sawaimadhopur" if `iso1991' == "RJ" & inlist(`dname1991', "sawaimadhopur")
    qui replace `dname1991' = "sikar" if `iso1991' == "RJ" & inlist(`dname1991', "sikar")
    qui replace `dname1991' = "sirohi" if `iso1991' == "RJ" & inlist(`dname1991', "sirohi")
    qui replace `dname1991' = "tonk" if `iso1991' == "RJ" & inlist(`dname1991', "tonk")
    qui replace `dname1991' = "udaipur" if `iso1991' == "RJ" & inlist(`dname1991', "udaipur")

*===============================================================================

    * sikkim, ""
    qui replace `dname1991' = "north district" if `iso1991' == "SK" & inlist(`dname1991', "north district", "northdistrict", "northsikkim", "north")
    qui replace `dname1991' = "south district" if `iso1991' == "SK" & inlist(`dname1991', "south district", "southdistrict", "southsikkim", "south")
    qui replace `dname1991' = "east district" if `iso1991' == "SK" & inlist(`dname1991', "east district", "eastdistrict", "eastsikkim", "east")
    qui replace `dname1991' = "west district" if `iso1991' == "SK" & inlist(`dname1991', "west district", "westdistrict", "westsikkim", "west")

*===============================================================================

    * tripura
    qui replace `dname1991' = "north tripura" if `iso1991' == "TR" & inlist(`dname1991', "northtripura")
    qui replace `dname1991' = "south tripura" if `iso1991' == "TR" & inlist(`dname1991', "southtripura")
    qui replace `dname1991' = "west tripura" if `iso1991' == "TR" & inlist(`dname1991', "westtripura")

*===============================================================================

    * uttar pradesh
    qui replace `dname1991' = "agra" if `iso1991' == "UP" & inlist(`dname1991', "agra")
    qui replace `dname1991' = "aligarh" if `iso1991' == "UP" & inlist(`dname1991', "aligarh")
    qui replace `dname1991' = "allahabad" if `iso1991' == "UP" & inlist(`dname1991', "allahabad")
    qui replace `dname1991' = "almora" if `iso1991' == "UP" & inlist(`dname1991', "almora")
    qui replace `dname1991' = "azamgarh" if `iso1991' == "UP" & inlist(`dname1991', "azamgarh", "maunathbhanjan")
    qui replace `dname1991' = "mau" if `iso1991' == "UP" & inlist(`dname1991', "mau")
    qui replace `dname1991' = "bahraich" if `iso1991' == "UP" & inlist(`dname1991', "bahraich")
    qui replace `dname1991' = "ballia" if `iso1991' == "UP" & inlist(`dname1991', "ballia")
    qui replace `dname1991' = "banda" if `iso1991' == "UP" & inlist(`dname1991', "banda")
    qui replace `dname1991' = "barabanki" if `iso1991' == "UP" & inlist(`dname1991', "barabanki")
    qui replace `dname1991' = "bareilly" if `iso1991' == "UP" & inlist(`dname1991', "bareilly")
    qui replace `dname1991' = "basti" if `iso1991' == "UP" & inlist(`dname1991', "basti")
    qui replace `dname1991' = "sidhharthnagar" if `iso1991' == "UP" & inlist(`dname1991', "sidhharthnagar")
    qui replace `dname1991' = "bijnor" if `iso1991' == "UP" & inlist(`dname1991', "bijnor")
    qui replace `dname1991' = "moradabad" if `iso1991' == "UP" & inlist(`dname1991', "moradabad")
    qui replace `dname1991' = "budaun" if `iso1991' == "UP" & inlist(`dname1991', "budaun", "buaun")
    qui replace `dname1991' = "bulandshahr" if `iso1991' == "UP" & inlist(`dname1991', "bulandshahr", "bulandshahar")
    qui replace `dname1991' = "chamoli" if `iso1991' == "UP" & inlist(`dname1991', "chamoli", "chamoligopeshwar")
    qui replace `dname1991' = "dehradun" if `iso1991' == "UP" & inlist(`dname1991', "dehradun")
    qui replace `dname1991' = "deoria" if `iso1991' == "UP" & inlist(`dname1991', "deoria")
    qui replace `dname1991' = "etah" if `iso1991' == "UP" & inlist(`dname1991', "etah")
    qui replace `dname1991' = "etawah" if `iso1991' == "UP" & inlist(`dname1991', "etawah")
    qui replace `dname1991' = "faizabad" if `iso1991' == "UP" & inlist(`dname1991', "faizabad")
    qui replace `dname1991' = "farrukhabad" if `iso1991' == "UP" & inlist(`dname1991', "farrukhabad", "farfukhabad", "fatehgarh")
    qui replace `dname1991' = "fatehpur" if `iso1991' == "UP" & inlist(`dname1991', "fatehpur")
    qui replace `dname1991' = "garhwal" if `iso1991' == "UP" & inlist(`dname1991', "garhwal", "pauri")
    qui replace `dname1991' = "ghazipur" if `iso1991' == "UP" & inlist(`dname1991', "ghazipur")
    qui replace `dname1991' = "gonda" if `iso1991' == "UP" & inlist(`dname1991', "gonda")
    qui replace `dname1991' = "gorakhpur" if `iso1991' == "UP" & inlist(`dname1991', "gorakhpur")
    qui replace `dname1991' = "maharajganj" if `iso1991' == "UP" & inlist(`dname1991', "maharajganj", "mahrajganj")
    qui replace `dname1991' = "hamirpur" if `iso1991' == "UP" & inlist(`dname1991', "hamirpur")
    qui replace `dname1991' = "hardoi" if `iso1991' == "UP" & inlist(`dname1991', "hardoi")
    qui replace `dname1991' = "jalaun" if `iso1991' == "UP" & inlist(`dname1991', "jalaun", "orai")
    qui replace `dname1991' = "jaunpur" if `iso1991' == "UP" & inlist(`dname1991', "jaunpur")
    qui replace `dname1991' = "jhansi" if `iso1991' == "UP" & inlist(`dname1991', "jhansi")
    qui replace `dname1991' = "lalitpur" if `iso1991' == "UP" & inlist(`dname1991', "lalitpur")
    qui replace `dname1991' = "kanpur nagar" if `iso1991' == "UP" & inlist(`dname1991', "kanpurnagar")
    qui replace `dname1991' = "kanpur dehat" if `iso1991' == "UP" & inlist(`dname1991', "kanpurdehat")
    qui replace `dname1991' = "kheri" if `iso1991' == "UP" & inlist(`dname1991', "kheri", "kherl", "lakhimpur")
    qui replace `dname1991' = "lucknow" if `iso1991' == "UP" & inlist(`dname1991', "lucknow")
    qui replace `dname1991' = "mainpuri" if `iso1991' == "UP" & inlist(`dname1991', "mainpuri")
    qui replace `dname1991' = "firozabad" if `iso1991' == "UP" & inlist(`dname1991', "firozabad")
    qui replace `dname1991' = "mathura" if `iso1991' == "UP" & inlist(`dname1991', "mathura")
    qui replace `dname1991' = "meerut" if `iso1991' == "UP" & inlist(`dname1991', "meerut")
    qui replace `dname1991' = "ghaziabad" if `iso1991' == "UP" & inlist(`dname1991', "ghaziabad")
    qui replace `dname1991' = "mirzapur" if `iso1991' == "UP" & inlist(`dname1991', "mirzapur")
    qui replace `dname1991' = "sonbhadra" if `iso1991' == "UP" & inlist(`dname1991', "sonbhadra")
    qui replace `dname1991' = "moradabad" if `iso1991' == "UP" & inlist(`dname1991', "moradabad")
    qui replace `dname1991' = "muzaffarnagar" if `iso1991' == "UP" & inlist(`dname1991', "muzaffarnagar")
    qui replace `dname1991' = "nainital" if `iso1991' == "UP" & inlist(`dname1991', "nainital")
    qui replace `dname1991' = "pilibhit" if `iso1991' == "UP" & inlist(`dname1991', "pilibhit")
    qui replace `dname1991' = "pithoragarh" if `iso1991' == "UP" & inlist(`dname1991', "pithoragarh")
    qui replace `dname1991' = "pratapgarh" if `iso1991' == "UP" & inlist(`dname1991', "pratapgarh")
    qui replace `dname1991' = "raebareli" if `iso1991' == "UP" & inlist(`dname1991', "raebareli")
    qui replace `dname1991' = "rampur" if `iso1991' == "UP" & inlist(`dname1991', "rampur")
    qui replace `dname1991' = "saharanpur" if `iso1991' == "UP" & inlist(`dname1991', "saharanpur")
    qui replace `dname1991' = "hardwar" if `iso1991' == "UP" & inlist(`dname1991', "hardwar")
    qui replace `dname1991' = "shahjahanpur" if `iso1991' == "UP" & inlist(`dname1991', "shahjahanpur")
    qui replace `dname1991' = "sitapur" if `iso1991' == "UP" & inlist(`dname1991', "sitapur")
    qui replace `dname1991' = "sultanpur" if `iso1991' == "UP" & inlist(`dname1991', "sultanpur")
    qui replace `dname1991' = "tehrigarhwal" if `iso1991' == "UP" & inlist(`dname1991', "tehrigarhwal", "newtehri")
    qui replace `dname1991' = "unnao" if `iso1991' == "UP" & inlist(`dname1991', "unnao")
    qui replace `dname1991' = "uttarkashi" if `iso1991' == "UP" & inlist(`dname1991', "uttarkashi")
    qui replace `dname1991' = "varanasi" if `iso1991' == "UP" & inlist(`dname1991', "varanasi")

*===============================================================================

    * west bengal
    qui replace `dname1991' = "bankura" if `iso1991' == "WB" & inlist(`dname1991', "bankura")
    qui replace `dname1991' = "birbhum" if `iso1991' == "WB" & inlist(`dname1991', "birbhum", "suri")
    qui replace `dname1991' = "barddhaman" if `iso1991' == "WB" & inlist(`dname1991', "burdwan", "barddhaman")
    qui replace `dname1991' = "calcutta" if `iso1991' == "WB" & inlist(`dname1991', "calcutta")
    qui replace `dname1991' = "koch bihar" if `iso1991' == "WB" & inlist(`dname1991', "coochbehar", "cooch", "kochbihar")
    qui replace `dname1991' = "darjiling" if `iso1991' == "WB" & inlist(`dname1991', "darjeeling", "darjiling")
    qui replace `dname1991' = "hugli" if `iso1991' == "WB" & inlist(`dname1991', "hooghly", "googhly", "hugli", "chinsurah")
    qui replace `dname1991' = "haora" if `iso1991' == "WB" & inlist(`dname1991', "howrah", "haora")
    qui replace `dname1991' = "jalpaiguri" if `iso1991' == "WB" & inlist(`dname1991', "jalpaiguri")
    qui replace `dname1991' = "maldah" if `iso1991' == "WB" & inlist(`dname1991', "malda", "maldah", "englishbazar")
    qui replace `dname1991' = "medinipur" if `iso1991' == "WB" & inlist(`dname1991', "midnapore", "medinipur")
    qui replace `dname1991' = "murshidabad" if `iso1991' == "WB" & inlist(`dname1991', "murshidabad", "baharampur", "berhampur")
    qui replace `dname1991' = "nadia" if `iso1991' == "WB" & inlist(`dname1991', "nadia", "krishnanagar")
    qui replace `dname1991' = "puruliya" if `iso1991' == "WB" & inlist(`dname1991', "purulia", "puruliya")
    qui replace `dname1991' = "north twenty four parganas" if `iso1991' == "WB" & inlist(`dname1991', "north", "north24parganas", "barasat", "northparganas", "northtwentyfourparganas")
    qui replace `dname1991' = "south twenty four parganas" if `iso1991' == "WB" & inlist(`dname1991', "south", "south24parganas", "alipore", "southparganas", "southtwentyfourparganas")
    qui replace `dname1991' = "westdinajpur" if `iso1991' == "WB" & inlist(`dname1991', "westdinajpur", "balurghat")


*===============================================================================
end
*-------------------------------------------------------------------------------
* 2001
*-------------------------------------------------------------------------------
capture program drop dclean2001
program define dclean2001

* store input into macros
local dname2001 `1'
local iso2001 `2'

*===============================================================================

    * jammu and kashmir

    qui replace `dname2001' = "kupwara" if `iso2001' == "JK" & inlist(`dname2001', "kupwara")
    qui replace `dname2001' = "badgam" if `iso2001' == "JK" & inlist(`dname2001', "badgam")
    qui replace `dname2001' = "leh(ladakh)" if `iso2001' == "JK" & inlist(`dname2001', "leh(ladakh)", "lehladakh")
    qui replace `dname2001' = "kargil" if `iso2001' == "JK" & inlist(`dname2001', "kargil")
    qui replace `dname2001' = "punch" if `iso2001' == "JK" & inlist(`dname2001', "punch")
    qui replace `dname2001' = "rajouri" if `iso2001' == "JK" & inlist(`dname2001', "rajouri")
    qui replace `dname2001' = "kathua" if `iso2001' == "JK" & inlist(`dname2001', "kathua")
    qui replace `dname2001' = "baramula" if `iso2001' == "JK" & inlist(`dname2001', "baramula")
    qui replace `dname2001' = "srinagar" if `iso2001' == "JK" & inlist(`dname2001', "srinagar")
    qui replace `dname2001' = "pulwama" if `iso2001' == "JK" & inlist(`dname2001', "pulwama")
    qui replace `dname2001' = "anantnag" if `iso2001' == "JK" & inlist(`dname2001', "anantnag")
    qui replace `dname2001' = "doda" if `iso2001' == "JK" & inlist(`dname2001', "doda")
    qui replace `dname2001' = "udhampur" if `iso2001' == "JK" & inlist(`dname2001', "udhampur")
    qui replace `dname2001' = "jammu" if `iso2001' == "JK" & inlist(`dname2001', "jammu")

*===============================================================================

    * himachal pradesh

    qui replace `dname2001' = "chamba" if `iso2001' == "HP" & inlist(`dname2001', "chamba")
    qui replace `dname2001' = "kangra" if `iso2001' == "HP" & inlist(`dname2001', "kangra", "kangraatdharmsala")
    qui replace `dname2001' = "lahul&spiti" if `iso2001' == "HP" & inlist(`dname2001', "lahul&spiti","lahulspiti")
    qui replace `dname2001' = "kullu" if `iso2001' == "HP" & inlist(`dname2001', "kullu")
    qui replace `dname2001' = "mandi" if `iso2001' == "HP" & inlist(`dname2001', "mandi")
    qui replace `dname2001' = "hamirpur(himachal)" if `iso2001' == "HP" & inlist(`dname2001', "hamirpur(himachal)", "hamirpurhimachal")
    qui replace `dname2001' = "una" if `iso2001' == "HP" & inlist(`dname2001', "una")
    qui replace `dname2001' = "bilaspur(himachal)" if `iso2001' == "HP" & inlist(`dname2001', "bilaspur(himachal)", "bilaspurhimachal")
    qui replace `dname2001' = "solan" if `iso2001' == "HP" & inlist(`dname2001', "solan")
    qui replace `dname2001' = "sirmaur" if `iso2001' == "HP" & inlist(`dname2001', "sirmaur", "nahan")
    qui replace `dname2001' = "shimla" if `iso2001' == "HP" & inlist(`dname2001', "shimla", "simla")
    qui replace `dname2001' = "kinnaur" if `iso2001' == "HP" & inlist(`dname2001', "kinnaur")

*===============================================================================

    * punjab

    qui replace `dname2001' = "gurdaspur" if `iso2001' == "PB" & inlist(`dname2001', "gurdaspur")
    qui replace `dname2001' = "amritsar" if `iso2001' == "PB" & inlist(`dname2001', "amritsar")
    qui replace `dname2001' = "kapurthala" if `iso2001' == "PB" & inlist(`dname2001', "kapurthala")
    qui replace `dname2001' = "jalandhar" if `iso2001' == "PB" & inlist(`dname2001', "jalandhar")
    qui replace `dname2001' = "hoshiarpur" if `iso2001' == "PB" & inlist(`dname2001', "hoshiarpur")
    qui replace `dname2001' = "shahidbhagatsinghnagar" if `iso2001' == "PB" & inlist(`dname2001', "shahidbhagatsinghnagar")
    qui replace `dname2001' = "rupnagar" if `iso2001' == "PB" & inlist(`dname2001', "rupnagar")
    qui replace `dname2001' = "fatehgarhsahib" if `iso2001' == "PB" & inlist(`dname2001', "fatehgarhsahib", "fatehgarh")
    qui replace `dname2001' = "ludhiana" if `iso2001' == "PB" & inlist(`dname2001', "ludhiana")
    qui replace `dname2001' = "moga" if `iso2001' == "PB" & inlist(`dname2001', "moga")
    qui replace `dname2001' = "firozpur" if `iso2001' == "PB" & inlist(`dname2001', "firozpur")
    qui replace `dname2001' = "muktsar" if `iso2001' == "PB" & inlist(`dname2001', "muktsar")
    qui replace `dname2001' = "faridkot" if `iso2001' == "PB" & inlist(`dname2001', "faridkot")
    qui replace `dname2001' = "bathinda" if `iso2001' == "PB" & inlist(`dname2001', "bathinda")
    qui replace `dname2001' = "mansa" if `iso2001' == "PB" & inlist(`dname2001', "mansa")
    qui replace `dname2001' = "patiala" if `iso2001' == "PB" & inlist(`dname2001', "patiala")
    qui replace `dname2001' = "sangrur" if `iso2001' == "PB" & inlist(`dname2001', "sangrur")

*===============================================================================

    * chandigarh
    qui replace `dname2001' = "chandigarh" if `iso2001' == "CH" & inlist(`dname2001', "chandigarh")

*===============================================================================

    * uttarakhand
    qui replace `dname2001' = "uttarkashi" if `iso2001' == "UT" & inlist(`dname2001', "uttarkashi")
    qui replace `dname2001' = "chamoli" if `iso2001' == "UT" & inlist(`dname2001', "chamoli", "gopeshwar")
    qui replace `dname2001' = "rudraprayag" if `iso2001' == "UT" & inlist(`dname2001', "rudraprayag")
    qui replace `dname2001' = "tehrigarhwal" if `iso2001' == "UT" & inlist(`dname2001', "tehrigarhwal")
    qui replace `dname2001' = "dehradun" if `iso2001' == "UT" & inlist(`dname2001', "dehradun")
    qui replace `dname2001' = "garhwal" if `iso2001' == "UT" & inlist(`dname2001', "garhwal")
    qui replace `dname2001' = "pithoragarh" if `iso2001' == "UT" & inlist(`dname2001', "pithoragarh")
    qui replace `dname2001' = "bageshwar" if `iso2001' == "UT" & inlist(`dname2001', "bageshwar")
    qui replace `dname2001' = "almora" if `iso2001' == "UT" & inlist(`dname2001', "almora")
    qui replace `dname2001' = "champawat" if `iso2001' == "UT" & inlist(`dname2001', "champawat")
    qui replace `dname2001' = "nainital" if `iso2001' == "UT" & inlist(`dname2001', "nainital")
    qui replace `dname2001' = "udhamsinghnagar" if `iso2001' == "UT" & inlist(`dname2001', "udhamsinghnagar")
    qui replace `dname2001' = "hardwar" if `iso2001' == "UT" & inlist(`dname2001', "hardwar")

*===============================================================================

    * haryana
    qui replace `dname2001' = "panchkula" if `iso2001' == "HR" & inlist(`dname2001', "panchkula")
    qui replace `dname2001' = "ambala" if `iso2001' == "HR" & inlist(`dname2001', "ambala")
    qui replace `dname2001' = "yamunanagar" if `iso2001' == "HR" & inlist(`dname2001', "yamunanagar")
    qui replace `dname2001' = "kurukshetra" if `iso2001' == "HR" & inlist(`dname2001', "kurukshetra", "kurukshetraatthanesar")
    qui replace `dname2001' = "kaithal" if `iso2001' == "HR" & inlist(`dname2001', "kaithal")
    qui replace `dname2001' = "karnal" if `iso2001' == "HR" & inlist(`dname2001', "karnal")
    qui replace `dname2001' = "panipat" if `iso2001' == "HR" & inlist(`dname2001', "panipat")
    qui replace `dname2001' = "sonipat" if `iso2001' == "HR" & inlist(`dname2001', "sonipat")
    qui replace `dname2001' = "jind" if `iso2001' == "HR" & inlist(`dname2001', "jind")
    qui replace `dname2001' = "fatehabad" if `iso2001' == "HR" & inlist(`dname2001', "fatehabad")
    qui replace `dname2001' = "sirsa" if `iso2001' == "HR" & inlist(`dname2001', "sirsa")
    qui replace `dname2001' = "hisar" if `iso2001' == "HR" & inlist(`dname2001', "hisar")
    qui replace `dname2001' = "bhiwani" if `iso2001' == "HR" & inlist(`dname2001', "bhiwani")
    qui replace `dname2001' = "rohtak" if `iso2001' == "HR" & inlist(`dname2001', "rohtak")
    qui replace `dname2001' = "jhajjar" if `iso2001' == "HR" & inlist(`dname2001', "jhajjar")
    qui replace `dname2001' = "mahendragarh" if `iso2001' == "HR" & inlist(`dname2001', "mahendragarh")
    qui replace `dname2001' = "rewari" if `iso2001' == "HR" & inlist(`dname2001', "rewari")
    qui replace `dname2001' = "gurgaon" if `iso2001' == "HR" & inlist(`dname2001', "gurgaon")
    qui replace `dname2001' = "faridabad" if `iso2001' == "HR" & inlist(`dname2001', "faridabad")

*===============================================================================

    * delhi & ncr
    qui replace `dname2001' = "northwestdelhi" if `iso2001' == "DL" & inlist(`dname2001', "northwestdelhi", "kanjhawala")
    qui replace `dname2001' = "northdelhi" if `iso2001' == "DL" & inlist(`dname2001', "northdelhi", "kripanarainmarg")
    qui replace `dname2001' = "northeastdelhi" if `iso2001' == "DL" & inlist(`dname2001', "northeastdelhi", "nandnagri")
    qui replace `dname2001' = "eastdelhi" if `iso2001' == "DL" & inlist(`dname2001', "eastdelhi", "geetacolony")
    qui replace `dname2001' = "newdelhi" if `iso2001' == "DL" & inlist(`dname2001', "newdelhi", "jamnagarhouse")
    qui replace `dname2001' = "centraldelhi" if `iso2001' == "DL" & inlist(`dname2001', "centraldelhi", "daryaganj")
    qui replace `dname2001' = "westdelhi" if `iso2001' == "DL" & inlist(`dname2001', "westdelhi", "rampura")
    qui replace `dname2001' = "southwestdelhi" if `iso2001' == "DL" & inlist(`dname2001', "southwestdelhi", "kapashera")
    qui replace `dname2001' = "southdelhi" if `iso2001' == "DL" & inlist(`dname2001', "southdelhi", "saket")

*===============================================================================

    * rajasthan

    qui replace `dname2001' = "ganganagar" if `iso2001' == "RJ" & inlist(`dname2001', "ganganagar")
    qui replace `dname2001' = "hanumangarh" if `iso2001' == "RJ" & inlist(`dname2001', "hanumangarh")
    qui replace `dname2001' = "bikaner" if `iso2001' == "RJ" & inlist(`dname2001', "bikaner")
    qui replace `dname2001' = "churu" if `iso2001' == "RJ" & inlist(`dname2001', "churu")
    qui replace `dname2001' = "jhunjhunun" if `iso2001' == "RJ" & inlist(`dname2001', "jhunjhunun")
    qui replace `dname2001' = "alwar" if `iso2001' == "RJ" & inlist(`dname2001', "alwar")
    qui replace `dname2001' = "bharatpur" if `iso2001' == "RJ" & inlist(`dname2001', "bharatpur")
    qui replace `dname2001' = "dhaulpur" if `iso2001' == "RJ" & inlist(`dname2001', "dhaulpur")
    qui replace `dname2001' = "karauli" if `iso2001' == "RJ" & inlist(`dname2001', "karauli")
    qui replace `dname2001' = "sawaimadhopur" if `iso2001' == "RJ" & inlist(`dname2001', "sawaimadhopur")
    qui replace `dname2001' = "dausa" if `iso2001' == "RJ" & inlist(`dname2001', "dausa")
    qui replace `dname2001' = "jaipur" if `iso2001' == "RJ" & inlist(`dname2001', "jaipur")
    qui replace `dname2001' = "sikar" if `iso2001' == "RJ" & inlist(`dname2001', "sikar")
    qui replace `dname2001' = "nagaur" if `iso2001' == "RJ" & inlist(`dname2001', "nagaur", "magaur")
    qui replace `dname2001' = "jodhpur" if `iso2001' == "RJ" & inlist(`dname2001', "jodhpur")
    qui replace `dname2001' = "jaisalmer" if `iso2001' == "RJ" & inlist(`dname2001', "jaisalmer")
    qui replace `dname2001' = "barmer" if `iso2001' == "RJ" & inlist(`dname2001', "barmer")
    qui replace `dname2001' = "jalor" if `iso2001' == "RJ" & inlist(`dname2001', "jalor")
    qui replace `dname2001' = "sirohi" if `iso2001' == "RJ" & inlist(`dname2001', "sirohi")
    qui replace `dname2001' = "pali" if `iso2001' == "RJ" & inlist(`dname2001', "pali")
    qui replace `dname2001' = "ajmer" if `iso2001' == "RJ" & inlist(`dname2001', "ajmer")
    qui replace `dname2001' = "tonk" if `iso2001' == "RJ" & inlist(`dname2001', "tonk")
    qui replace `dname2001' = "bundi" if `iso2001' == "RJ" & inlist(`dname2001', "bundi")
    qui replace `dname2001' = "bhilwara" if `iso2001' == "RJ" & inlist(`dname2001', "bhilwara", "bhilwar")
    qui replace `dname2001' = "rajsamand" if `iso2001' == "RJ" & inlist(`dname2001', "rajsamand")
    qui replace `dname2001' = "udaipur" if `iso2001' == "RJ" & inlist(`dname2001', "udaipur")
    qui replace `dname2001' = "dungarpur" if `iso2001' == "RJ" & inlist(`dname2001', "dungarpur")
    qui replace `dname2001' = "banswara" if `iso2001' == "RJ" & inlist(`dname2001', "banswara")
    qui replace `dname2001' = "chittaurgarh" if `iso2001' == "RJ" & inlist(`dname2001', "chittaurgarh", "chitorgarh")
    qui replace `dname2001' = "kota" if `iso2001' == "RJ" & inlist(`dname2001', "kota")
    qui replace `dname2001' = "baran" if `iso2001' == "RJ" & inlist(`dname2001', "baran")
    qui replace `dname2001' = "jhalawar" if `iso2001' == "RJ" & inlist(`dname2001', "jhalawar")

*===============================================================================

  * uttar pradesh

    qui replace `dname2001' = "saharanpur" if `iso2001' == "UP" & inlist(`dname2001', "saharanpur")
    qui replace `dname2001' = "muzaffarnagar" if `iso2001' == "UP" & inlist(`dname2001', "muzaffarnagar", "muzafarnagar")
    qui replace `dname2001' = "bijnor" if `iso2001' == "UP" & inlist(`dname2001', "bijnor")
    qui replace `dname2001' = "moradabad" if `iso2001' == "UP" & inlist(`dname2001', "moradabad", "amroha")
    qui replace `dname2001' = "rampur" if `iso2001' == "UP" & inlist(`dname2001', "rampur")
    qui replace `dname2001' = "jyotibaphulenagar" if `iso2001' == "UP" & inlist(`dname2001', "jyotibaphulenagar")
    qui replace `dname2001' = "meerut" if `iso2001' == "UP" & inlist(`dname2001', "meerut")
    qui replace `dname2001' = "baghpat" if `iso2001' == "UP" & inlist(`dname2001', "baghpat")
    qui replace `dname2001' = "ghaziabad" if `iso2001' == "UP" & inlist(`dname2001', "ghaziabad")
    qui replace `dname2001' = "gautambuddhanagar" if `iso2001' == "UP" & inlist(`dname2001', "gautambuddhanagar", "noida")
    qui replace `dname2001' = "bulandshahr" if `iso2001' == "UP" & inlist(`dname2001', "bulandshahr")
    qui replace `dname2001' = "aligarh" if `iso2001' == "UP" & inlist(`dname2001', "aligarh")
    qui replace `dname2001' = "mahamayanagar" if `iso2001' == "UP" & inlist(`dname2001', "mahamayanagar")
    qui replace `dname2001' = "mathura" if `iso2001' == "UP" & inlist(`dname2001', "mathura")
    qui replace `dname2001' = "agra" if `iso2001' == "UP" & inlist(`dname2001', "agra")
    qui replace `dname2001' = "firozabad" if `iso2001' == "UP" & inlist(`dname2001', "firozabad")
    qui replace `dname2001' = "mainpuri" if `iso2001' == "UP" & inlist(`dname2001', "mainpuri")
    qui replace `dname2001' = "budaun" if `iso2001' == "UP" & inlist(`dname2001', "budaun")
    qui replace `dname2001' = "bareilly" if `iso2001' == "UP" & inlist(`dname2001', "bareilly")
    qui replace `dname2001' = "pilibhit" if `iso2001' == "UP" & inlist(`dname2001', "pilibhit")
    qui replace `dname2001' = "shahjahanpur" if `iso2001' == "UP" & inlist(`dname2001', "shahjahanpur")
    qui replace `dname2001' = "kheri" if `iso2001' == "UP" & inlist(`dname2001', "kheri")
    qui replace `dname2001' = "sitapur" if `iso2001' == "UP" & inlist(`dname2001', "sitapur")
    qui replace `dname2001' = "hardoi" if `iso2001' == "UP" & inlist(`dname2001', "hardoi")
    qui replace `dname2001' = "unnao" if `iso2001' == "UP" & inlist(`dname2001', "unnao")
    qui replace `dname2001' = "lucknow" if `iso2001' == "UP" & inlist(`dname2001', "lucknow")
    qui replace `dname2001' = "raebareli" if `iso2001' == "UP" & inlist(`dname2001', "raebareli")
    qui replace `dname2001' = "farrukhabad" if `iso2001' == "UP" & inlist(`dname2001', "farrukhabad", "fatehgarh")
    qui replace `dname2001' = "kannauj" if `iso2001' == "UP" & inlist(`dname2001', "kannauj")
    qui replace `dname2001' = "etawah" if `iso2001' == "UP" & inlist(`dname2001', "etawah")
    qui replace `dname2001' = "auraiya" if `iso2001' == "UP" & inlist(`dname2001', "auraiya", "auriya")
    qui replace `dname2001' = "kanpurdehat" if `iso2001' == "UP" & inlist(`dname2001', "kanpurdehat")
    qui replace `dname2001' = "kanpurnagar" if `iso2001' == "UP" & inlist(`dname2001', "kanpurnagar")
    qui replace `dname2001' = "jalaun" if `iso2001' == "UP" & inlist(`dname2001', "jalaun", "orai")
    qui replace `dname2001' = "jhansi" if `iso2001' == "UP" & inlist(`dname2001', "jhansi")
    qui replace `dname2001' = "lalitpur" if `iso2001' == "UP" & inlist(`dname2001', "lalitpur")
    qui replace `dname2001' = "hamirpur(up)" if `iso2001' == "UP" & inlist(`dname2001', "hamirpur(up)", "hamirpurup")
    qui replace `dname2001' = "mahoba" if `iso2001' == "UP" & inlist(`dname2001', "mahoba")
    qui replace `dname2001' = "banda" if `iso2001' == "UP" & inlist(`dname2001', "banda")
    qui replace `dname2001' = "chitrakoot" if `iso2001' == "UP" & inlist(`dname2001', "chitrakoot")
    qui replace `dname2001' = "fatehpur" if `iso2001' == "UP" & inlist(`dname2001', "fatehpur")
    qui replace `dname2001' = "pratapgarh(up)" if `iso2001' == "UP" & inlist(`dname2001', "pratapgarh(up)", "pratapgarhup")
    qui replace `dname2001' = "kaushambi" if `iso2001' == "UP" & inlist(`dname2001', "kaushambi", "manjhanpur")
    qui replace `dname2001' = "allahabad" if `iso2001' == "UP" & inlist(`dname2001', "allahabad")
    qui replace `dname2001' = "barabanki" if `iso2001' == "UP" & inlist(`dname2001', "barabanki", "nawabganjbarabanki")
    qui replace `dname2001' = "faizabad" if `iso2001' == "UP" & inlist(`dname2001', "faizabad")
    qui replace `dname2001' = "ambedkarnagar" if `iso2001' == "UP" & inlist(`dname2001', "ambedkarnagar", "akbarpur")
    qui replace `dname2001' = "sultanpur" if `iso2001' == "UP" & inlist(`dname2001', "sultanpur")
    qui replace `dname2001' = "bahraich" if `iso2001' == "UP" & inlist(`dname2001', "bahraich")
    qui replace `dname2001' = "shrawasti" if `iso2001' == "UP" & inlist(`dname2001', "shrawasti", "bhinga")
    qui replace `dname2001' = "balrampur(up)" if `iso2001' == "UP" & inlist(`dname2001', "balrampur(up)", "balrampurup")
    qui replace `dname2001' = "gonda" if `iso2001' == "UP" & inlist(`dname2001', "gonda")
    qui replace `dname2001' = "siddharthnagar" if `iso2001' == "UP" & inlist(`dname2001', "siddharthnagar", "naugarh")
    qui replace `dname2001' = "basti" if `iso2001' == "UP" & inlist(`dname2001', "basti")
    qui replace `dname2001' = "santkabirnagar" if `iso2001' == "UP" & inlist(`dname2001', "santkabirnagar", "khalilabad")
    qui replace `dname2001' = "mahrajganj" if `iso2001' == "UP" & inlist(`dname2001', "mahrajganj")
    qui replace `dname2001' = "gorakhpur" if `iso2001' == "UP" & inlist(`dname2001', "gorakhpur")
    qui replace `dname2001' = "kushinagar" if `iso2001' == "UP" & inlist(`dname2001', "kushinagar")
    qui replace `dname2001' = "deoria" if `iso2001' == "UP" & inlist(`dname2001', "deoria")
    qui replace `dname2001' = "azamgarh" if `iso2001' == "UP" & inlist(`dname2001', "azamgarh")
    qui replace `dname2001' = "mau" if `iso2001' == "UP" & inlist(`dname2001', "mau")
    qui replace `dname2001' = "ballia" if `iso2001' == "UP" & inlist(`dname2001', "ballia")
    qui replace `dname2001' = "jaunpur" if `iso2001' == "UP" & inlist(`dname2001', "jaunpur")
    qui replace `dname2001' = "ghazipur" if `iso2001' == "UP" & inlist(`dname2001', "ghazipur")
    qui replace `dname2001' = "chandauli" if `iso2001' == "UP" & inlist(`dname2001', "chandauli")
    qui replace `dname2001' = "varanasi" if `iso2001' == "UP" & inlist(`dname2001', "varanasi")
    qui replace `dname2001' = "santravidasnagar(bhadohi)" if `iso2001' == "UP" & inlist(`dname2001', "santravidasnagar(bhadohi)", "santravidasnagarbhadohi", "santravidasnagar")
    qui replace `dname2001' = "mirzapur" if `iso2001' == "UP" & inlist(`dname2001', "mirzapur")
    qui replace `dname2001' = "sonbhadra" if `iso2001' == "UP" & inlist(`dname2001', "sonbhadra", "robertsganj")
    qui replace `dname2001' = "etah" if `iso2001' == "UP" & inlist(`dname2001', "etah")
    qui replace `dname2001' = "kanshiramnagar" if `iso2001' == "UP" & inlist(`dname2001', "kanshiramnagar")
*===============================================================================

  * bihar

    qui replace `dname2001' = "pashchimchamparan" if `iso2001' == "BR" & inlist(`dname2001', "pashchimchamparan", "bettiah")
    qui replace `dname2001' = "purbachamparan" if `iso2001' == "BR" & inlist(`dname2001', "purbachamparan", "motihari")
    qui replace `dname2001' = "sheohar" if `iso2001' == "BR" & inlist(`dname2001', "sheohar")
    qui replace `dname2001' = "sitamarhi" if `iso2001' == "BR" & inlist(`dname2001', "sitamarhi")
    qui replace `dname2001' = "madhubani" if `iso2001' == "BR" & inlist(`dname2001', "madhubani")
    qui replace `dname2001' = "supaul" if `iso2001' == "BR" & inlist(`dname2001', "supaul")
    qui replace `dname2001' = "araria" if `iso2001' == "BR" & inlist(`dname2001', "araria")
    qui replace `dname2001' = "kishanganj" if `iso2001' == "BR" & inlist(`dname2001', "kishanganj")
    qui replace `dname2001' = "purnia" if `iso2001' == "BR" & inlist(`dname2001', "purnia")
    qui replace `dname2001' = "katihar" if `iso2001' == "BR" & inlist(`dname2001', "katihar")
    qui replace `dname2001' = "madhepura" if `iso2001' == "BR" & inlist(`dname2001', "madhepura")
    qui replace `dname2001' = "saharsa" if `iso2001' == "BR" & inlist(`dname2001', "saharsa")
    qui replace `dname2001' = "darbhanga" if `iso2001' == "BR" & inlist(`dname2001', "darbhanga")
    qui replace `dname2001' = "muzaffarpur" if `iso2001' == "BR" & inlist(`dname2001', "muzaffarpur")
    qui replace `dname2001' = "gopalganj" if `iso2001' == "BR" & inlist(`dname2001', "gopalganj")
    qui replace `dname2001' = "siwan" if `iso2001' == "BR" & inlist(`dname2001', "siwan")
    qui replace `dname2001' = "saran" if `iso2001' == "BR" & inlist(`dname2001', "saran", "chapra")
    qui replace `dname2001' = "vaishali" if `iso2001' == "BR" & inlist(`dname2001', "vaishali", "hajipur")
    qui replace `dname2001' = "samastipur" if `iso2001' == "BR" & inlist(`dname2001', "samastipur")
    qui replace `dname2001' = "begusarai" if `iso2001' == "BR" & inlist(`dname2001', "begusarai")
    qui replace `dname2001' = "khagaria" if `iso2001' == "BR" & inlist(`dname2001', "khagaria")
    qui replace `dname2001' = "bhagalpur" if `iso2001' == "BR" & inlist(`dname2001', "bhagalpur")
    qui replace `dname2001' = "banka" if `iso2001' == "BR" & inlist(`dname2001', "banka")
    qui replace `dname2001' = "munger" if `iso2001' == "BR" & inlist(`dname2001', "munger", "monghyar")
    qui replace `dname2001' = "lakhisarai" if `iso2001' == "BR" & inlist(`dname2001', "lakhisarai")
    qui replace `dname2001' = "sheikhpura" if `iso2001' == "BR" & inlist(`dname2001', "sheikhpura")
    qui replace `dname2001' = "nalanda" if `iso2001' == "BR" & inlist(`dname2001', "nalanda", "biharsharif")
    qui replace `dname2001' = "patna" if `iso2001' == "BR" & inlist(`dname2001', "patna")
    qui replace `dname2001' = "bhojpur" if `iso2001' == "BR" & inlist(`dname2001', "bhojpur", "arrah")
    qui replace `dname2001' = "buxar" if `iso2001' == "BR" & inlist(`dname2001', "buxar")
    qui replace `dname2001' = "kaimur(bhabua)" if `iso2001' == "BR" & inlist(`dname2001', "kaimur(bhabua)", "kaimurbhabua")
    qui replace `dname2001' = "rohtas" if `iso2001' == "BR" & inlist(`dname2001', "rohtas", "sasaram")
    qui replace `dname2001' = "aurangabad(bihar)" if `iso2001' == "BR" & inlist(`dname2001', "aurangabad(bihar)", "aurangabadbihar")
    qui replace `dname2001' = "gaya" if `iso2001' == "BR" & inlist(`dname2001', "gaya")
    qui replace `dname2001' = "nawada" if `iso2001' == "BR" & inlist(`dname2001', "nawada")
    qui replace `dname2001' = "jamui" if `iso2001' == "BR" & inlist(`dname2001', "jamui")
    qui replace `dname2001' = "jehanabad" if `iso2001' == "BR" & inlist(`dname2001', "jehanabad")
    qui replace `dname2001' = "arwal" if `iso2001' == "BR" & inlist(`dname2001', "arwal")

*===============================================================================

  * sikkim

    qui replace `dname2001' = "northsikkim" if `iso2001' == "SK" & inlist(`dname2001', "northsikkim", "mangan")
    qui replace `dname2001' = "westsikkim" if `iso2001' == "SK" & inlist(`dname2001', "westsikkim", "gyalshing")
    qui replace `dname2001' = "southsikkim" if `iso2001' == "SK" & inlist(`dname2001', "southsikkim", "namchi")
    qui replace `dname2001' = "eastsikkim" if `iso2001' == "SK" & inlist(`dname2001', "eastsikkim", "gangtok")

*===============================================================================

  * arunachal pradesh

    qui replace `dname2001' = "tawang" if `iso2001' == "AR" & inlist(`dname2001', "tawang")
    qui replace `dname2001' = "westkameng" if `iso2001' == "AR" & inlist(`dname2001', "westkameng", "bomdila")
    qui replace `dname2001' = "eastkameng" if `iso2001' == "AR" & inlist(`dname2001', "eastkameng", "seppa")
    qui replace `dname2001' = "papumpare" if `iso2001' == "AR" & inlist(`dname2001', "papumpare", "yupia")
    qui replace `dname2001' = "uppersubansiri" if `iso2001' == "AR" & inlist(`dname2001', "uppersubansiri", "daporijo")
    qui replace `dname2001' = "westsiang" if `iso2001' == "AR" & inlist(`dname2001', "westsiang", "along")
    qui replace `dname2001' = "eastsiang" if `iso2001' == "AR" & inlist(`dname2001', "eastsiang", "pasighat")
    qui replace `dname2001' = "uppersiang" if `iso2001' == "AR" & inlist(`dname2001', "uppersiang")
    qui replace `dname2001' = "changlang" if `iso2001' == "AR" & inlist(`dname2001', "changlang")
    qui replace `dname2001' = "tirap" if `iso2001' == "AR" & inlist(`dname2001', "tirap", "khonsa")
    qui replace `dname2001' = "lowersubansiri" if `iso2001' == "AR" & inlist(`dname2001', "lowersubansiri", "ziro")
    qui replace `dname2001' = "kurungkumey" if `iso2001' == "AR" & inlist(`dname2001', "kurungkumey")
    qui replace `dname2001' = "dibangvalley" if `iso2001' == "AR" & inlist(`dname2001', "dibangvalley", "lowerdibangvalley", "roing")
    qui replace `dname2001' = "lohit" if `iso2001' == "AR" & inlist(`dname2001', "lohit", "tezu")
    qui replace `dname2001' = "anjaw" if `iso2001' == "AR" & inlist(`dname2001', "anjaw")

*===============================================================================

  * nagaland

    qui replace `dname2001' = "mon" if `iso2001' == "NL" & inlist(`dname2001', "mon")
    qui replace `dname2001' = "mokokchung" if `iso2001' == "NL" & inlist(`dname2001', "mokokchung")
    qui replace `dname2001' = "zunheboto" if `iso2001' == "NL" & inlist(`dname2001', "zunheboto")
    qui replace `dname2001' = "wokha" if `iso2001' == "NL" & inlist(`dname2001', "wokha")
    qui replace `dname2001' = "dimapur" if `iso2001' == "NL" & inlist(`dname2001', "dimapur")
    qui replace `dname2001' = "phek" if `iso2001' == "NL" & inlist(`dname2001', "phek")
    qui replace `dname2001' = "tuensang" if `iso2001' == "NL" & inlist(`dname2001', "tuensang")
    qui replace `dname2001' = "longleng" if `iso2001' == "NL" & inlist(`dname2001', "longleng")
    qui replace `dname2001' = "kiphire" if `iso2001' == "NL" & inlist(`dname2001', "kiphire")
    qui replace `dname2001' = "kohima" if `iso2001' == "NL" & inlist(`dname2001', "kohima")
    qui replace `dname2001' = "peren" if `iso2001' == "NL" & inlist(`dname2001', "peren")

*===============================================================================

  * manipur

    qui replace `dname2001' = "senapati" if `iso2001' == "MN" & inlist(`dname2001', "senapati", "senapatiexclsubdivisions")
    qui replace `dname2001' = "tamenglong" if `iso2001' == "MN" & inlist(`dname2001', "tamenglong")
    qui replace `dname2001' = "churachandpur" if `iso2001' == "MN" & inlist(`dname2001', "churachandpur")
    qui replace `dname2001' = "bishnupur" if `iso2001' == "MN" & inlist(`dname2001', "bishnupur")
    qui replace `dname2001' = "thoubal" if `iso2001' == "MN" & inlist(`dname2001', "thoubal")
    qui replace `dname2001' = "imphalwest" if `iso2001' == "MN" & inlist(`dname2001', "imphalwest", "lamphelpat")
    qui replace `dname2001' = "imphaleast" if `iso2001' == "MN" & inlist(`dname2001', "imphaleast", "porompat")
    qui replace `dname2001' = "ukhrul" if `iso2001' == "MN" & inlist(`dname2001', "ukhrul")
    qui replace `dname2001' = "chandel" if `iso2001' == "MN" & inlist(`dname2001', "chandel")

*===============================================================================

  * mizoram
    qui replace `dname2001' = "mamit" if `iso2001' == "MZ" & inlist(`dname2001', "mamit")
    qui replace `dname2001' = "kolasib" if `iso2001' == "MZ" & inlist(`dname2001', "kolasib")
    qui replace `dname2001' = "aizawl" if `iso2001' == "MZ" & inlist(`dname2001', "aizawl")
    qui replace `dname2001' = "champhai" if `iso2001' == "MZ" & inlist(`dname2001', "champhai")
    qui replace `dname2001' = "serchhip" if `iso2001' == "MZ" & inlist(`dname2001', "serchhip")
    qui replace `dname2001' = "lunglei" if `iso2001' == "MZ" & inlist(`dname2001', "lunglei")
    qui replace `dname2001' = "lawngtlai" if `iso2001' == "MZ" & inlist(`dname2001', "lawngtlai")
    qui replace `dname2001' = "saiha" if `iso2001' == "MZ" & inlist(`dname2001', "saiha")

*===============================================================================

  * tripura

    qui replace `dname2001' = "westtripura" if `iso2001' == "TR" & inlist(`dname2001', "westtripura", "agartala")
    qui replace `dname2001' = "southtripura" if `iso2001' == "TR" & inlist(`dname2001', "southtripura", "udaipur")
    qui replace `dname2001' = "dhalai" if `iso2001' == "TR" & inlist(`dname2001', "dhalai", "ambassa")
    qui replace `dname2001' = "northtripura" if `iso2001' == "TR" & inlist(`dname2001', "northtripura", "kailashahar")

*===============================================================================

  * meghalaya

    qui replace `dname2001' = "westgarohills" if `iso2001' == "ML" & inlist(`dname2001', "westgarohills")
    qui replace `dname2001' = "eastgarohills" if `iso2001' == "ML" & inlist(`dname2001', "eastgarohills")
    qui replace `dname2001' = "southgarohills" if `iso2001' == "ML" & inlist(`dname2001', "southgarohills")
    qui replace `dname2001' = "westkhasihills" if `iso2001' == "ML" & inlist(`dname2001', "westkhasihills")
    qui replace `dname2001' = "ribhoi" if `iso2001' == "ML" & inlist(`dname2001', "ribhoi")
    qui replace `dname2001' = "eastkhasihills" if `iso2001' == "ML" & inlist(`dname2001', "eastkhasihills")
    qui replace `dname2001' = "jaintiahills" if `iso2001' == "ML" & inlist(`dname2001', "jaintiahills")

*===============================================================================

  * assam

    qui replace `dname2001' = "kokrajhar" if `iso2001' == "AS" & inlist(`dname2001', "kokrajhar")
    qui replace `dname2001' = "dhubri" if `iso2001' == "AS" & inlist(`dname2001', "dhubri")
    qui replace `dname2001' = "goalpara" if `iso2001' == "AS" & inlist(`dname2001', "goalpara")
    qui replace `dname2001' = "barpeta" if `iso2001' == "AS" & inlist(`dname2001', "barpeta")
    qui replace `dname2001' = "morigaon" if `iso2001' == "AS" & inlist(`dname2001', "morigaon")
    qui replace `dname2001' = "nagaon" if `iso2001' == "AS" & inlist(`dname2001', "nagaon", "nowgong")
    qui replace `dname2001' = "sonitpur" if `iso2001' == "AS" & inlist(`dname2001', "sonitpur", "tezpur")
    qui replace `dname2001' = "lakhimpur" if `iso2001' == "AS" & inlist(`dname2001', "lakhimpur", "northlakhimpur")
    qui replace `dname2001' = "dhemaji" if `iso2001' == "AS" & inlist(`dname2001', "dhemaji")
    qui replace `dname2001' = "tinsukia" if `iso2001' == "AS" & inlist(`dname2001', "tinsukia")
    qui replace `dname2001' = "dibrugarh" if `iso2001' == "AS" & inlist(`dname2001', "dibrugarh")
    qui replace `dname2001' = "sivasagar" if `iso2001' == "AS" & inlist(`dname2001', "sivasagar")
    qui replace `dname2001' = "jorhat" if `iso2001' == "AS" & inlist(`dname2001', "jorhat")
    qui replace `dname2001' = "golaghat" if `iso2001' == "AS" & inlist(`dname2001', "golaghat")
    qui replace `dname2001' = "karbianglong" if `iso2001' == "AS" & inlist(`dname2001', "karbianglong", "diphu")
    qui replace `dname2001' = "dimahasao" if `iso2001' == "AS" & inlist(`dname2001', "dimahasao", "haflong")
    qui replace `dname2001' = "cachar" if `iso2001' == "AS" & inlist(`dname2001', "cachar", "silchar")
    qui replace `dname2001' = "karimganj" if `iso2001' == "AS" & inlist(`dname2001', "karimganj")
    qui replace `dname2001' = "hailakandi" if `iso2001' == "AS" & inlist(`dname2001', "hailakandi")
    qui replace `dname2001' = "bongaigaon" if `iso2001' == "AS" & inlist(`dname2001', "bongaigaon")
    qui replace `dname2001' = "chirang" if `iso2001' == "AS" & inlist(`dname2001', "chirang")
    qui replace `dname2001' = "kamrup" if `iso2001' == "AS" & inlist(`dname2001', "kamrup", "guwahati")
    qui replace `dname2001' = "kamrupmetropolitan" if `iso2001' == "AS" & inlist(`dname2001', "kamrupmetropolitan")
    qui replace `dname2001' = "nalbari" if `iso2001' == "AS" & inlist(`dname2001', "nalbari")
    qui replace `dname2001' = "baksa" if `iso2001' == "AS" & inlist(`dname2001', "baksa")
    qui replace `dname2001' = "darrang" if `iso2001' == "AS" & inlist(`dname2001', "darrang", "mangaldoi")
    qui replace `dname2001' = "udalguri" if `iso2001' == "AS" & inlist(`dname2001', "udalguri")

*===============================================================================

  * west bengal

    qui replace `dname2001' = "darjiling" if `iso2001' == "WB" & inlist(`dname2001', "darjiling")
    qui replace `dname2001' = "jalpaiguri" if `iso2001' == "WB" & inlist(`dname2001', "jalpaiguri", "alipur")
    qui replace `dname2001' = "kochbihar" if `iso2001' == "WB" & inlist(`dname2001', "kochbihar", "coochbehar")
    qui replace `dname2001' = "uttardinajpur" if `iso2001' == "WB" & inlist(`dname2001', "uttardinajpur", "karnajora", "raiganj")
    qui replace `dname2001' = "dakshindinajpur" if `iso2001' == "WB" & inlist(`dname2001', "dakshindinajpur", "balurghat")
    qui replace `dname2001' = "maldah" if `iso2001' == "WB" & inlist(`dname2001', "maldah", "englishbazar")
    qui replace `dname2001' = "murshidabad" if `iso2001' == "WB" & inlist(`dname2001', "murshidabad", "baharampur")
    qui replace `dname2001' = "birbhum" if `iso2001' == "WB" & inlist(`dname2001', "birbhum", "suri")
    qui replace `dname2001' = "barddhaman" if `iso2001' == "WB" & inlist(`dname2001', "barddhaman")
    qui replace `dname2001' = "nadia" if `iso2001' == "WB" & inlist(`dname2001', "nadia", "krishnanagar")
    qui replace `dname2001' = "northtwentyfourparganas" if `iso2001' == "WB" & inlist(`dname2001', "northtwentyfourparganas", "north", "barasat", "northparganas")
    qui replace `dname2001' = "hugli" if `iso2001' == "WB" & inlist(`dname2001', "hugli", "chinsurah", "chinsurah-sadar", "chunchura", "chinsurahsadar")
    qui replace `dname2001' = "bankura" if `iso2001' == "WB" & inlist(`dname2001', "bankura")
    qui replace `dname2001' = "puruliya" if `iso2001' == "WB" & inlist(`dname2001', "puruliya")
    qui replace `dname2001' = "haora" if `iso2001' == "WB" & inlist(`dname2001', "haora", "paniara", "haroa")
    qui replace `dname2001' = "kolkata" if `iso2001' == "WB" & inlist(`dname2001', "kolkata", "alipore")
    qui replace `dname2001' = "southtwentyfourparganas" if `iso2001' == "WB" & inlist(`dname2001', "southtwentyfourparganas", "south", "aliporesadar", "southparganas")
    qui replace `dname2001' = "paschimmedinipur" if `iso2001' == "WB" & inlist(`dname2001', "paschimmedinipur")
    qui replace `dname2001' = "purbamedinipur" if `iso2001' == "WB" & inlist(`dname2001', "purbamedinipur")

*===============================================================================

  * jharkhand

    qui replace `dname2001' = "garhwa" if `iso2001' == "JH" & inlist(`dname2001', "garhwa")
    qui replace `dname2001' = "chatra" if `iso2001' == "JH" & inlist(`dname2001', "chatra")
    qui replace `dname2001' = "kodarma" if `iso2001' == "JH" & inlist(`dname2001', "kodarma")
    qui replace `dname2001' = "giridih" if `iso2001' == "JH" & inlist(`dname2001', "giridih")
    qui replace `dname2001' = "deoghar" if `iso2001' == "JH" & inlist(`dname2001', "deoghar")
    qui replace `dname2001' = "godda" if `iso2001' == "JH" & inlist(`dname2001', "godda")
    qui replace `dname2001' = "sahibganj" if `iso2001' == "JH" & inlist(`dname2001', "sahibganj")
    qui replace `dname2001' = "pakur" if `iso2001' == "JH" & inlist(`dname2001', "pakur")
    qui replace `dname2001' = "dhanbad" if `iso2001' == "JH" & inlist(`dname2001', "dhanbad")
    qui replace `dname2001' = "bokaro" if `iso2001' == "JH" & inlist(`dname2001', "bokaro")
    qui replace `dname2001' = "lohardaga" if `iso2001' == "JH" & inlist(`dname2001', "lohardaga")
    qui replace `dname2001' = "purbisinghbhum" if `iso2001' == "JH" & inlist(`dname2001', "purbisinghbhum")
    qui replace `dname2001' = "palamu" if `iso2001' == "JH" & inlist(`dname2001', "palamu")
    qui replace `dname2001' = "latehar" if `iso2001' == "JH" & inlist(`dname2001', "latehar")
    qui replace `dname2001' = "hazaribagh" if `iso2001' == "JH" & inlist(`dname2001', "hazaribagh")
    qui replace `dname2001' = "ramgarh" if `iso2001' == "JH" & inlist(`dname2001', "ramgarh")
    qui replace `dname2001' = "dumka" if `iso2001' == "JH" & inlist(`dname2001', "dumka")
    qui replace `dname2001' = "jamtara" if `iso2001' == "JH" & inlist(`dname2001', "jamtara")
    qui replace `dname2001' = "ranchi" if `iso2001' == "JH" & inlist(`dname2001', "ranchi")
    qui replace `dname2001' = "khunti" if `iso2001' == "JH" & inlist(`dname2001', "khunti")
    qui replace `dname2001' = "gumla" if `iso2001' == "JH" & inlist(`dname2001', "gumla")
    qui replace `dname2001' = "simdega" if `iso2001' == "JH" & inlist(`dname2001', "simdega")
    qui replace `dname2001' = "pashchimisinghbhum" if `iso2001' == "JH" & inlist(`dname2001', "pashchimisinghbhum")
    qui replace `dname2001' = "saraikelakharsawan" if `iso2001' == "JH" & inlist(`dname2001', "saraikelakharsawan")

*===============================================================================

  * orissa

    qui replace `dname2001' = "bargarh" if `iso2001' == "OR" & inlist(`dname2001', "bargarh")
    qui replace `dname2001' = "jharsuguda" if `iso2001' == "OR" & inlist(`dname2001', "jharsuguda")
    qui replace `dname2001' = "sambalpur" if `iso2001' == "OR" & inlist(`dname2001', "sambalpur", "bagarh")
    qui replace `dname2001' = "debagarh" if `iso2001' == "OR" & inlist(`dname2001', "debagarh", "deagarh")
    qui replace `dname2001' = "sundargarh" if `iso2001' == "OR" & inlist(`dname2001', "sundargarh")
    qui replace `dname2001' = "kendujhar" if `iso2001' == "OR" & inlist(`dname2001', "kendujhar")
    qui replace `dname2001' = "mayurbhanj" if `iso2001' == "OR" & inlist(`dname2001', "mayurbhanj", "baripada")
    qui replace `dname2001' = "baleshwar" if `iso2001' == "OR" & inlist(`dname2001', "baleshwar")
    qui replace `dname2001' = "bhadrak" if `iso2001' == "OR" & inlist(`dname2001', "bhadrak")
    qui replace `dname2001' = "kendrapara" if `iso2001' == "OR" & inlist(`dname2001', "kendrapara")
    qui replace `dname2001' = "jagatsinghapur" if `iso2001' == "OR" & inlist(`dname2001', "jagatsinghapur")
    qui replace `dname2001' = "cuttack" if `iso2001' == "OR" & inlist(`dname2001', "cuttack")
    qui replace `dname2001' = "jajapur" if `iso2001' == "OR" & inlist(`dname2001', "jajapur")
    qui replace `dname2001' = "dhenkanal" if `iso2001' == "OR" & inlist(`dname2001', "dhenkanal")
    qui replace `dname2001' = "anugul" if `iso2001' == "OR" & inlist(`dname2001', "anugul")
    qui replace `dname2001' = "nayagarh" if `iso2001' == "OR" & inlist(`dname2001', "nayagarh")
    qui replace `dname2001' = "khordha" if `iso2001' == "OR" & inlist(`dname2001', "khordha")
    qui replace `dname2001' = "puri" if `iso2001' == "OR" & inlist(`dname2001', "puri")
    qui replace `dname2001' = "ganjam" if `iso2001' == "OR" & inlist(`dname2001', "ganjam", "chhatrapur")
    qui replace `dname2001' = "gajapati" if `iso2001' == "OR" & inlist(`dname2001', "gajapati", "parlakhemundi")
    qui replace `dname2001' = "kandhamal" if `iso2001' == "OR" & inlist(`dname2001', "kandhamal", "phulbani")
    qui replace `dname2001' = "baudh" if `iso2001' == "OR" & inlist(`dname2001', "baudh")
    qui replace `dname2001' = "subarnapur" if `iso2001' == "OR" & inlist(`dname2001', "subarnapur")
    qui replace `dname2001' = "balangir" if `iso2001' == "OR" & inlist(`dname2001', "balangir")
    qui replace `dname2001' = "nuapada" if `iso2001' == "OR" & inlist(`dname2001', "nuapada")
    qui replace `dname2001' = "kalahandi" if `iso2001' == "OR" & inlist(`dname2001', "kalahandi", "bhawanipatna")
    qui replace `dname2001' = "rayagada" if `iso2001' == "OR" & inlist(`dname2001', "rayagada")
    qui replace `dname2001' = "nabarangapur" if `iso2001' == "OR" & inlist(`dname2001', "nabarangapur")
    qui replace `dname2001' = "koraput" if `iso2001' == "OR" & inlist(`dname2001', "koraput")
    qui replace `dname2001' = "malkangiri" if `iso2001' == "OR" & inlist(`dname2001', "malkangiri")

*===============================================================================

  * chattisgarh

    qui replace `dname2001' = "koriya" if `iso2001' == "CT" & inlist(`dname2001', "koriya", "baikunthpur")
    qui replace `dname2001' = "surguja" if `iso2001' == "CT" & inlist(`dname2001', "surguja", "ambikapur")
    qui replace `dname2001' = "jashpur" if `iso2001' == "CT" & inlist(`dname2001', "jashpur")
    qui replace `dname2001' = "raigarh(chhattisgarh)" if `iso2001' == "CT" & inlist(`dname2001', "raigarh(chhattisgarh)", "raigarhchhattisgarh")
    qui replace `dname2001' = "korba" if `iso2001' == "CT" & inlist(`dname2001', "korba")
    qui replace `dname2001' = "janjgirchampa" if `iso2001' == "CT" & inlist(`dname2001', "janjgirchampa")
    qui replace `dname2001' = "bilaspur(chhattisgarh)" if `iso2001' == "CT" & inlist(`dname2001', "bilaspur(chhattisgarh)", "bilaspurchhattisgarh")
    qui replace `dname2001' = "kabeerdham" if `iso2001' == "CT" & inlist(`dname2001', "kabeerdham")
    qui replace `dname2001' = "rajnandgaon" if `iso2001' == "CT" & inlist(`dname2001', "rajnandgaon")
    qui replace `dname2001' = "durg" if `iso2001' == "CT" & inlist(`dname2001', "durg")
    qui replace `dname2001' = "raipur" if `iso2001' == "CT" & inlist(`dname2001', "raipur")
    qui replace `dname2001' = "mahasamund" if `iso2001' == "CT" & inlist(`dname2001', "mahasamund")
    qui replace `dname2001' = "dhamtari" if `iso2001' == "CT" & inlist(`dname2001', "dhamtari")
    qui replace `dname2001' = "uttarbastarkanker" if `iso2001' == "CT" & inlist(`dname2001', "uttarbastarkanker")
    qui replace `dname2001' = "bastar" if `iso2001' == "CT" & inlist(`dname2001', "bastar", "jagdalpur")
    qui replace `dname2001' = "narayanpur" if `iso2001' == "CT" & inlist(`dname2001', "narayanpur")
    qui replace `dname2001' = "dakshinbastardantewada" if `iso2001' == "CT" & inlist(`dname2001', "dakshinbastardantewada")
    qui replace `dname2001' = "bijapur(chhattisgarh)" if `iso2001' == "CT" & inlist(`dname2001', "bijapur(chhattisgarh)", "bijapurchhattisgarh")

*===============================================================================

  * madhya pradesh

    qui replace `dname2001' = "sheopur" if `iso2001' == "MP" & inlist(`dname2001', "sheopur")
    qui replace `dname2001' = "morena" if `iso2001' == "MP" & inlist(`dname2001', "morena")
    qui replace `dname2001' = "bhind" if `iso2001' == "MP" & inlist(`dname2001', "bhind")
    qui replace `dname2001' = "gwalior" if `iso2001' == "MP" & inlist(`dname2001', "gwalior")
    qui replace `dname2001' = "datia" if `iso2001' == "MP" & inlist(`dname2001', "datia")
    qui replace `dname2001' = "shivpuri" if `iso2001' == "MP" & inlist(`dname2001', "shivpuri")
    qui replace `dname2001' = "tikamgarh" if `iso2001' == "MP" & inlist(`dname2001', "tikamgarh")
    qui replace `dname2001' = "chhatarpur" if `iso2001' == "MP" & inlist(`dname2001', "chhatarpur")
    qui replace `dname2001' = "panna" if `iso2001' == "MP" & inlist(`dname2001', "panna")
    qui replace `dname2001' = "sagar" if `iso2001' == "MP" & inlist(`dname2001', "sagar")
    qui replace `dname2001' = "damoh" if `iso2001' == "MP" & inlist(`dname2001', "damoh")
    qui replace `dname2001' = "satna" if `iso2001' == "MP" & inlist(`dname2001', "satna")
    qui replace `dname2001' = "rewa" if `iso2001' == "MP" & inlist(`dname2001', "rewa")
    qui replace `dname2001' = "umaria" if `iso2001' == "MP" & inlist(`dname2001', "umaria")
    qui replace `dname2001' = "neemuch" if `iso2001' == "MP" & inlist(`dname2001', "neemuch")
    qui replace `dname2001' = "mandsaur" if `iso2001' == "MP" & inlist(`dname2001', "mandsaur")
    qui replace `dname2001' = "ratlam" if `iso2001' == "MP" & inlist(`dname2001', "ratlam")
    qui replace `dname2001' = "ujjain" if `iso2001' == "MP" & inlist(`dname2001', "ujjain")
    qui replace `dname2001' = "shajapur" if `iso2001' == "MP" & inlist(`dname2001', "shajapur")
    qui replace `dname2001' = "dewas" if `iso2001' == "MP" & inlist(`dname2001', "dewas")
    qui replace `dname2001' = "dhar" if `iso2001' == "MP" & inlist(`dname2001', "dhar")
    qui replace `dname2001' = "indore" if `iso2001' == "MP" & inlist(`dname2001', "indore")
    qui replace `dname2001' = "khargone(westnimar)" if `iso2001' == "MP" & inlist(`dname2001', "khargone(westnimar)", "khargonewestnimar")
    qui replace `dname2001' = "barwani" if `iso2001' == "MP" & inlist(`dname2001', "barwani")
    qui replace `dname2001' = "rajgarh" if `iso2001' == "MP" & inlist(`dname2001', "rajgarh")
    qui replace `dname2001' = "vidisha" if `iso2001' == "MP" & inlist(`dname2001', "vidisha")
    qui replace `dname2001' = "bhopal" if `iso2001' == "MP" & inlist(`dname2001', "bhopal")
    qui replace `dname2001' = "sehore" if `iso2001' == "MP" & inlist(`dname2001', "sehore")
    qui replace `dname2001' = "raisen" if `iso2001' == "MP" & inlist(`dname2001', "raisen")
    qui replace `dname2001' = "betul" if `iso2001' == "MP" & inlist(`dname2001', "betul")
    qui replace `dname2001' = "harda" if `iso2001' == "MP" & inlist(`dname2001', "harda")
    qui replace `dname2001' = "hoshangabad" if `iso2001' == "MP" & inlist(`dname2001', "hoshangabad")
    qui replace `dname2001' = "katni" if `iso2001' == "MP" & inlist(`dname2001', "katni")
    qui replace `dname2001' = "jabalpur" if `iso2001' == "MP" & inlist(`dname2001', "jabalpur")
    qui replace `dname2001' = "narsimhapur" if `iso2001' == "MP" & inlist(`dname2001', "narsimhapur")
    qui replace `dname2001' = "dindori" if `iso2001' == "MP" & inlist(`dname2001', "dindori")
    qui replace `dname2001' = "mandla" if `iso2001' == "MP" & inlist(`dname2001', "mandla")
    qui replace `dname2001' = "chhindwara" if `iso2001' == "MP" & inlist(`dname2001', "chhindwara")
    qui replace `dname2001' = "seoni" if `iso2001' == "MP" & inlist(`dname2001', "seoni")
    qui replace `dname2001' = "balaghat" if `iso2001' == "MP" & inlist(`dname2001', "balaghat")
    qui replace `dname2001' = "guna" if `iso2001' == "MP" & inlist(`dname2001', "guna")
    qui replace `dname2001' = "ashoknagar" if `iso2001' == "MP" & inlist(`dname2001', "ashoknagar")
    qui replace `dname2001' = "shahdol" if `iso2001' == "MP" & inlist(`dname2001', "shahdol")
    qui replace `dname2001' = "anuppur" if `iso2001' == "MP" & inlist(`dname2001', "anuppur")
    qui replace `dname2001' = "sidhi" if `iso2001' == "MP" & inlist(`dname2001', "sidhi")
    qui replace `dname2001' = "singrauli" if `iso2001' == "MP" & inlist(`dname2001', "singrauli")
    qui replace `dname2001' = "jhabua" if `iso2001' == "MP" & inlist(`dname2001', "jhabua")
    qui replace `dname2001' = "alirajpur" if `iso2001' == "MP" & inlist(`dname2001', "alirajpur")
    qui replace `dname2001' = "khandwa(eastnimar)" if `iso2001' == "MP" & inlist(`dname2001', "khandwa(eastnimar)", "khandwaeastnimar", "eastnimarkhandwa")
    qui replace `dname2001' = "burhanpur" if `iso2001' == "MP" & inlist(`dname2001', "burhanpur")

*===============================================================================

  * gujarat

    qui replace `dname2001' = "kachchh" if `iso2001' == "GJ" & inlist(`dname2001', "kachchh", "bhuj")
    qui replace `dname2001' = "banaskantha" if `iso2001' == "GJ" & inlist(`dname2001', "banaskantha", "palanpur")
    qui replace `dname2001' = "patan" if `iso2001' == "GJ" & inlist(`dname2001', "patan")
    qui replace `dname2001' = "mahesana" if `iso2001' == "GJ" & inlist(`dname2001', "mahesana")
    qui replace `dname2001' = "sabarkantha" if `iso2001' == "GJ" & inlist(`dname2001', "sabarkantha", "himatnagar")
    qui replace `dname2001' = "gandhinagar" if `iso2001' == "GJ" & inlist(`dname2001', "gandhinagar")
    qui replace `dname2001' = "ahmedabad" if `iso2001' == "GJ" & inlist(`dname2001', "ahmadabad")
    qui replace `dname2001' = "surendranagar" if `iso2001' == "GJ" & inlist(`dname2001', "surendranagar")
    qui replace `dname2001' = "rajkot" if `iso2001' == "GJ" & inlist(`dname2001', "rajkot")
    qui replace `dname2001' = "jamnagar" if `iso2001' == "GJ" & inlist(`dname2001', "jamnagar")
    qui replace `dname2001' = "porbandar" if `iso2001' == "GJ" & inlist(`dname2001', "porbandar")
    qui replace `dname2001' = "junagadh" if `iso2001' == "GJ" & inlist(`dname2001', "junagadh")
    qui replace `dname2001' = "amreli" if `iso2001' == "GJ" & inlist(`dname2001', "amreli")
    qui replace `dname2001' = "bhavnagar" if `iso2001' == "GJ" & inlist(`dname2001', "bhavnagar")
    qui replace `dname2001' = "anand" if `iso2001' == "GJ" & inlist(`dname2001', "anand")
    qui replace `dname2001' = "kheda" if `iso2001' == "GJ" & inlist(`dname2001', "kheda", "nadiad")
    qui replace `dname2001' = "panchmahals" if `iso2001' == "GJ" & inlist(`dname2001', "panchmahals", "godhra")
    qui replace `dname2001' = "dohad" if `iso2001' == "GJ" & inlist(`dname2001', "dohad")
    qui replace `dname2001' = "vadodara" if `iso2001' == "GJ" & inlist(`dname2001', "vadodara")
    qui replace `dname2001' = "narmada" if `iso2001' == "GJ" & inlist(`dname2001', "narmada", "rajpipla")
    qui replace `dname2001' = "bharuch" if `iso2001' == "GJ" & inlist(`dname2001', "bharuch")
    qui replace `dname2001' = "thedangs" if `iso2001' == "GJ" & inlist(`dname2001', "thedangs", "dangs")
    qui replace `dname2001' = "navsari" if `iso2001' == "GJ" & inlist(`dname2001', "navsari")
    qui replace `dname2001' = "valsad" if `iso2001' == "GJ" & inlist(`dname2001', "valsad")
    qui replace `dname2001' = "surat" if `iso2001' == "GJ" & inlist(`dname2001', "surat")
    qui replace `dname2001' = "tapi" if `iso2001' == "GJ" & inlist(`dname2001', "tapi")

*===============================================================================

  * daman & diu

    qui replace `dname2001' = "diu" if `iso2001' == "DD" & inlist(`dname2001', "diu")
    qui replace `dname2001' = "daman" if `iso2001' == "DD" & inlist(`dname2001', "daman")

*===============================================================================

  * dadra & nagar haveli

    qui replace `dname2001' = "dadra&nagarhaveli" if `iso2001' == "DN" & inlist(`dname2001', "dadra&nagarhaveli", "dadranagarhaveli", "silvassa")

*===============================================================================

  * maharashtra

    qui replace `dname2001' = "nandurbar" if `iso2001' == "MH" & inlist(`dname2001', "nandurbar")
    qui replace `dname2001' = "dhule" if `iso2001' == "MH" & inlist(`dname2001', "dhule")
    qui replace `dname2001' = "jalgaon" if `iso2001' == "MH" & inlist(`dname2001', "jalgaon")
    qui replace `dname2001' = "buldana" if `iso2001' == "MH" & inlist(`dname2001', "buldana")
    qui replace `dname2001' = "akola" if `iso2001' == "MH" & inlist(`dname2001', "akola")
    qui replace `dname2001' = "washim" if `iso2001' == "MH" & inlist(`dname2001', "washim")
    qui replace `dname2001' = "amravati" if `iso2001' == "MH" & inlist(`dname2001', "amravati")
    qui replace `dname2001' = "wardha" if `iso2001' == "MH" & inlist(`dname2001', "wardha")
    qui replace `dname2001' = "nagpur" if `iso2001' == "MH" & inlist(`dname2001', "nagpur")
    qui replace `dname2001' = "bhandara" if `iso2001' == "MH" & inlist(`dname2001', "bhandara")
    qui replace `dname2001' = "gondiya" if `iso2001' == "MH" & inlist(`dname2001', "gondiya")
    qui replace `dname2001' = "gadchiroli" if `iso2001' == "MH" & inlist(`dname2001', "gadchiroli")
    qui replace `dname2001' = "chandrapur" if `iso2001' == "MH" & inlist(`dname2001', "chandrapur")
    qui replace `dname2001' = "yavatmal" if `iso2001' == "MH" & inlist(`dname2001', "yavatmal", "yeotmal")
    qui replace `dname2001' = "nanded" if `iso2001' == "MH" & inlist(`dname2001', "nanded")
    qui replace `dname2001' = "hingoli" if `iso2001' == "MH" & inlist(`dname2001', "hingoli")
    qui replace `dname2001' = "parbhani" if `iso2001' == "MH" & inlist(`dname2001', "parbhani")
    qui replace `dname2001' = "jalna" if `iso2001' == "MH" & inlist(`dname2001', "jalna")
    qui replace `dname2001' = "aurangabad(maharashtra)" if `iso2001' == "MH" & inlist(`dname2001', "aurangabad(maharashtra)", "aurangabadmaharashtra")
    qui replace `dname2001' = "nashik" if `iso2001' == "MH" & inlist(`dname2001', "nashik")
    qui replace `dname2001' = "thane" if `iso2001' == "MH" & inlist(`dname2001', "thane", "thana")
    qui replace `dname2001' = "mumbaisuburban" if `iso2001' == "MH" & inlist(`dname2001', "mumbaisuburban", "grmumbai")
    qui replace `dname2001' = "mumbai" if `iso2001' == "MH" & inlist(`dname2001', "mumbai")
    qui replace `dname2001' = "raigarh(maharashtra)" if `iso2001' == "MH" & inlist(`dname2001', "raigarh(maharashtra)", "raigarhmaharashtra", "alibag")
    qui replace `dname2001' = "pune" if `iso2001' == "MH" & inlist(`dname2001', "pune", "poona")
    qui replace `dname2001' = "ahmednagar" if `iso2001' == "MH" & inlist(`dname2001', "ahmadnagar", "ahmednagar")
    qui replace `dname2001' = "bid" if `iso2001' == "MH" & inlist(`dname2001', "bid")
    qui replace `dname2001' = "latur" if `iso2001' == "MH" & inlist(`dname2001', "latur")
    qui replace `dname2001' = "osmanabad" if `iso2001' == "MH" & inlist(`dname2001', "osmanabad")
    qui replace `dname2001' = "solapur" if `iso2001' == "MH" & inlist(`dname2001', "solapur", "sholapur")
    qui replace `dname2001' = "satara" if `iso2001' == "MH" & inlist(`dname2001', "satara")
    qui replace `dname2001' = "ratnagiri" if `iso2001' == "MH" & inlist(`dname2001', "ratnagiri")
    qui replace `dname2001' = "sindhudurg" if `iso2001' == "MH" & inlist(`dname2001', "sindhudurg", "orasbudruk")
    qui replace `dname2001' = "kolhapur" if `iso2001' == "MH" & inlist(`dname2001', "kolhapur")
    qui replace `dname2001' = "sangli" if `iso2001' == "MH" & inlist(`dname2001', "sangli")

*===============================================================================

  * andhra pradesh

    qui replace `dname2001' = "adilabad" if `iso2001' == "AP" & inlist(`dname2001', "adilabad")
    qui replace `dname2001' = "nizamabad" if `iso2001' == "AP" & inlist(`dname2001', "nizamabad")
    qui replace `dname2001' = "karimnagar" if `iso2001' == "AP" & inlist(`dname2001', "karimnagar")
    qui replace `dname2001' = "medak" if `iso2001' == "AP" & inlist(`dname2001', "medak", "sangareddy")
    qui replace `dname2001' = "hyderabad" if `iso2001' == "AP" & inlist(`dname2001', "hyderabad")
    qui replace `dname2001' = "rangareddy" if `iso2001' == "AP" & inlist(`dname2001', "rangareddy")
    qui replace `dname2001' = "mahbubnagar" if `iso2001' == "AP" & inlist(`dname2001', "mahbubnagar")
    qui replace `dname2001' = "nalgonda" if `iso2001' == "AP" & inlist(`dname2001', "nalgonda")
    qui replace `dname2001' = "warangal" if `iso2001' == "AP" & inlist(`dname2001', "warangal")
    qui replace `dname2001' = "khammam" if `iso2001' == "AP" & inlist(`dname2001', "khammam")
    qui replace `dname2001' = "srikakulam" if `iso2001' == "AP" & inlist(`dname2001', "srikakulam")
    qui replace `dname2001' = "vizianagaram" if `iso2001' == "AP" & inlist(`dname2001', "vizianagaram")
    qui replace `dname2001' = "visakhapatnam" if `iso2001' == "AP" & inlist(`dname2001', "visakhapatnam")
    qui replace `dname2001' = "eastgodavari" if `iso2001' == "AP" & inlist(`dname2001', "eastgodavari", "kakinada")
    qui replace `dname2001' = "westgodavari" if `iso2001' == "AP" & inlist(`dname2001', "westgodavari", "eluru")
    qui replace `dname2001' = "krishna" if `iso2001' == "AP" & inlist(`dname2001', "krishna", "machilipatnam")
    qui replace `dname2001' = "guntur" if `iso2001' == "AP" & inlist(`dname2001', "guntur")
    qui replace `dname2001' = "prakasam" if `iso2001' == "AP" & inlist(`dname2001', "prakasam", "ongole")
    qui replace `dname2001' = "nellore" if `iso2001' == "AP" & inlist(`dname2001', "nellore")
    qui replace `dname2001' = "ysr" if `iso2001' == "AP" & inlist(`dname2001', "ysr")
    qui replace `dname2001' = "kurnool" if `iso2001' == "AP" & inlist(`dname2001', "kurnool")
    qui replace `dname2001' = "anantapur" if `iso2001' == "AP" & inlist(`dname2001', "anantapur")
    qui replace `dname2001' = "chittoor" if `iso2001' == "AP" & inlist(`dname2001', "chittoor")

*===============================================================================

  * karnataka

    qui replace `dname2001' = "belgaum" if `iso2001' == "KA" & inlist(`dname2001', "belgaum")
    qui replace `dname2001' = "bagalkot" if `iso2001' == "KA" & inlist(`dname2001', "bagalkot")
    qui replace `dname2001' = "bijapur(karnataka)" if `iso2001' == "KA" & inlist(`dname2001', "bijapur(karnataka)", "bijapurkarnataka")
    qui replace `dname2001' = "bidar" if `iso2001' == "KA" & inlist(`dname2001', "bidar")
    qui replace `dname2001' = "raichur" if `iso2001' == "KA" & inlist(`dname2001', "raichur")
    qui replace `dname2001' = "koppal" if `iso2001' == "KA" & inlist(`dname2001', "koppal")
    qui replace `dname2001' = "gadag" if `iso2001' == "KA" & inlist(`dname2001', "gadag")
    qui replace `dname2001' = "dharwad" if `iso2001' == "KA" & inlist(`dname2001', "dharwad")
    qui replace `dname2001' = "uttarakannada" if `iso2001' == "KA" & inlist(`dname2001', "uttarakannada", "karwar")
    qui replace `dname2001' = "haveri" if `iso2001' == "KA" & inlist(`dname2001', "haveri")
    qui replace `dname2001' = "bellary" if `iso2001' == "KA" & inlist(`dname2001', "bellary")
    qui replace `dname2001' = "chitradurga" if `iso2001' == "KA" & inlist(`dname2001', "chitradurga")
    qui replace `dname2001' = "davanagere" if `iso2001' == "KA" & inlist(`dname2001', "davanagere")
    qui replace `dname2001' = "shimoga" if `iso2001' == "KA" & inlist(`dname2001', "shimoga")
    qui replace `dname2001' = "udupi" if `iso2001' == "KA" & inlist(`dname2001', "udupi")
    qui replace `dname2001' = "chikmagalur" if `iso2001' == "KA" & inlist(`dname2001', "chikmagalur")
    qui replace `dname2001' = "tumkur" if `iso2001' == "KA" & inlist(`dname2001', "tumkur")
    qui replace `dname2001' = "bangalore" if `iso2001' == "KA" & inlist(`dname2001', "bangalore")
    qui replace `dname2001' = "mandya" if `iso2001' == "KA" & inlist(`dname2001', "mandya")
    qui replace `dname2001' = "hassan" if `iso2001' == "KA" & inlist(`dname2001', "hassan")
    qui replace `dname2001' = "dakshinakannada" if `iso2001' == "KA" & inlist(`dname2001', "dakshinakannada", "mangalore")
    qui replace `dname2001' = "kodagu" if `iso2001' == "KA" & inlist(`dname2001', "kodagu", "madikeri")
    qui replace `dname2001' = "mysore" if `iso2001' == "KA" & inlist(`dname2001', "mysore")
    qui replace `dname2001' = "chamarajanagar" if `iso2001' == "KA" & inlist(`dname2001', "chamarajanagar")
    qui replace `dname2001' = "gulbarga" if `iso2001' == "KA" & inlist(`dname2001', "gulbarga")
    qui replace `dname2001' = "yadgir" if `iso2001' == "KA" & inlist(`dname2001', "yadgir")
    qui replace `dname2001' = "kolar" if `iso2001' == "KA" & inlist(`dname2001', "kolar")
    qui replace `dname2001' = "chikkaballapura" if `iso2001' == "KA" & inlist(`dname2001', "chikkaballapura")
    qui replace `dname2001' = "bangalorerural" if `iso2001' == "KA" & inlist(`dname2001', "bangalorerural")
    qui replace `dname2001' = "ramanagara" if `iso2001' == "KA" & inlist(`dname2001', "ramanagara")

*===============================================================================

  * goa

    qui replace `dname2001' = "northgoa" if `iso2001' == "GA" & inlist(`dname2001', "northgoa")
    qui replace `dname2001' = "southgoa" if `iso2001' == "GA" & inlist(`dname2001', "southgoa")

*===============================================================================

  * lakshadweep

    qui replace `dname2001' = "lakshadweep" if `iso2001' == "LD" & inlist(`dname2001', "lakshadweep")

*===============================================================================

  * kerala

    qui replace `dname2001' = "kasaragod" if `iso2001' == "KL" & inlist(`dname2001', "kasaragod")
    qui replace `dname2001' = "kannur" if `iso2001' == "KL" & inlist(`dname2001', "kannur")
    qui replace `dname2001' = "wayanad" if `iso2001' == "KL" & inlist(`dname2001', "wayanad", "kalpetta")
    qui replace `dname2001' = "kozhikode" if `iso2001' == "KL" & inlist(`dname2001', "kozhikode")
    qui replace `dname2001' = "malappuram" if `iso2001' == "KL" & inlist(`dname2001', "malappuram", "mallapuram")
    qui replace `dname2001' = "palakkad" if `iso2001' == "KL" & inlist(`dname2001', "palakkad")
    qui replace `dname2001' = "thrissur" if `iso2001' == "KL" & inlist(`dname2001', "thrissur")
    qui replace `dname2001' = "ernakulam" if `iso2001' == "KL" & inlist(`dname2001', "ernakulam", "kakkanad", "kochi")
    qui replace `dname2001' = "idukki" if `iso2001' == "KL" & inlist(`dname2001', "idukki", "idukkipainavu")
    qui replace `dname2001' = "kottayam" if `iso2001' == "KL" & inlist(`dname2001', "kottayam")
    qui replace `dname2001' = "alappuzha" if `iso2001' == "KL" & inlist(`dname2001', "alappuzha")
    qui replace `dname2001' = "pathanamthitta" if `iso2001' == "KL" & inlist(`dname2001', "pathanamthitta", "patthanamthitta")
    qui replace `dname2001' = "kollam" if `iso2001' == "KL" & inlist(`dname2001', "kollam")
    qui replace `dname2001' = "thiruvananthapuram" if `iso2001' == "KL" & inlist(`dname2001', "thiruvananthapuram")

*===============================================================================

  * tamil nadu

    qui replace `dname2001' = "thiruvallur" if `iso2001' == "TN" & inlist(`dname2001', "thiruvallur")
    qui replace `dname2001' = "chennai" if `iso2001' == "TN" & inlist(`dname2001', "chennai")
    qui replace `dname2001' = "kancheepuram" if `iso2001' == "TN" & inlist(`dname2001', "kancheepuram")
    qui replace `dname2001' = "vellore" if `iso2001' == "TN" & inlist(`dname2001', "vellore")
    qui replace `dname2001' = "tiruvannamalai" if `iso2001' == "TN" & inlist(`dname2001', "tiruvannamalai", "tvmalai")
    qui replace `dname2001' = "viluppuram" if `iso2001' == "TN" & inlist(`dname2001', "viluppuram")
    qui replace `dname2001' = "salem" if `iso2001' == "TN" & inlist(`dname2001', "salem")
    qui replace `dname2001' = "namakkal" if `iso2001' == "TN" & inlist(`dname2001', "namakkal")
    qui replace `dname2001' = "erode" if `iso2001' == "TN" & inlist(`dname2001', "erode")
    qui replace `dname2001' = "thenilgiris" if `iso2001' == "TN" & inlist(`dname2001', "thenilgiris", "uthagamandalam")
    qui replace `dname2001' = "dindigul" if `iso2001' == "TN" & inlist(`dname2001', "dindigul")
    qui replace `dname2001' = "karur" if `iso2001' == "TN" & inlist(`dname2001', "karur")
    qui replace `dname2001' = "tiruchirapalli" if `iso2001' == "TN" & inlist(`dname2001', "tiruchirappalli", "tiruchirapalli", "tiruchirappallli", "trichirappalli")
    qui replace `dname2001' = "perambalur" if `iso2001' == "TN" & inlist(`dname2001', "perambalur")
    qui replace `dname2001' = "ariyalur" if `iso2001' == "TN" & inlist(`dname2001', "ariyalur")
    qui replace `dname2001' = "cuddalore" if `iso2001' == "TN" & inlist(`dname2001', "cuddalore", "villupuram")
    qui replace `dname2001' = "nagapattinam" if `iso2001' == "TN" & inlist(`dname2001', "nagapattinam", "nagappattinam")
    qui replace `dname2001' = "thiruvarur" if `iso2001' == "TN" & inlist(`dname2001', "thiruvarur")
    qui replace `dname2001' = "thanjavur" if `iso2001' == "TN" & inlist(`dname2001', "thanjavur")
    qui replace `dname2001' = "pudukkottai" if `iso2001' == "TN" & inlist(`dname2001', "pudukkottai", "pudukottai")
    qui replace `dname2001' = "sivaganga" if `iso2001' == "TN" & inlist(`dname2001', "sivaganga", "sivagangai")
    qui replace `dname2001' = "madurai" if `iso2001' == "TN" & inlist(`dname2001', "madurai")
    qui replace `dname2001' = "theni" if `iso2001' == "TN" & inlist(`dname2001', "theni")
    qui replace `dname2001' = "virudhunagar" if `iso2001' == "TN" & inlist(`dname2001', "virudhunagar")
    qui replace `dname2001' = "ramanathapuram" if `iso2001' == "TN" & inlist(`dname2001', "ramanathapuram", "ramanadhapuram")
    qui replace `dname2001' = "thoothukkudi" if `iso2001' == "TN" & inlist(`dname2001', "thoothukkudi", "toothukkudi")
    qui replace `dname2001' = "tirunelveli" if `iso2001' == "TN" & inlist(`dname2001', "tirunelveli", "palayankottai")
    qui replace `dname2001' = "kanniyakumari" if `iso2001' == "TN" & inlist(`dname2001', "kanniyakumari", "nagercoil", "nagarcoil")
    qui replace `dname2001' = "dharmapuri" if `iso2001' == "TN" & inlist(`dname2001', "dharmapuri")
    qui replace `dname2001' = "krishnagiri" if `iso2001' == "TN" & inlist(`dname2001', "krishnagiri")
    qui replace `dname2001' = "coimbatore" if `iso2001' == "TN" & inlist(`dname2001', "coimbatore", "coimbaotre")
    qui replace `dname2001' = "tiruppur" if `iso2001' == "TN" & inlist(`dname2001', "tiruppur")

*===============================================================================

  * pondicherry
    qui replace `dname2001' = "yanam" if `iso2001' == "PY" & inlist(`dname2001', "yanam")
    qui replace `dname2001' = "puducherry" if `iso2001' == "PY" & inlist(`dname2001', "puducherry")
    qui replace `dname2001' = "mahe" if `iso2001' == "PY" & inlist(`dname2001', "mahe")
    qui replace `dname2001' = "karaikal" if `iso2001' == "PY" & inlist(`dname2001', "karaikal")

*===============================================================================

  * andaman & nicobar islands
    qui replace `dname2001' = "nicobars" if `iso2001' == "AN" & inlist(`dname2001', "nicobars")
    qui replace `dname2001' = "north&middleandaman" if `iso2001' == "AN" & inlist(`dname2001', "north&middleandaman", "northmiddleandaman")
    qui replace `dname2001' = "andamans" if `iso2001' == "AN" & inlist(`dname2001', "southandaman", "portblair", "andamans")

*===============================================================================
end
*-------------------------------------------------------------------------------
* 2011
*-------------------------------------------------------------------------------
capture program drop dclean2011
program define dclean2011

* store input into macros
local dname2011 `1'
local iso2011 `2'

*===============================================================================

  * jammu & kashmir

    qui replace `dname2011' = "kupwara" if `iso2011' == "JK" & inlist(`dname2011', "kupwara")
    qui replace `dname2011' = "badgam" if `iso2011' == "JK" & inlist(`dname2011', "badgam", "budgam")
    qui replace `dname2011' = "leh(ladakh)" if `iso2011' == "JK" & inlist(`dname2011', "leh(ladakh)", "lehladakh")
    qui replace `dname2011' = "kargil" if `iso2011' == "JK" & inlist(`dname2011', "kargil")
    qui replace `dname2011' = "punch" if `iso2011' == "JK" & inlist(`dname2011', "punch")
    qui replace `dname2011' = "rajouri" if `iso2011' == "JK" & inlist(`dname2011', "rajouri", "rajauri")
    qui replace `dname2011' = "kathua" if `iso2011' == "JK" & inlist(`dname2011', "kathua")
    qui replace `dname2011' = "baramula" if `iso2011' == "JK" & inlist(`dname2011', "baramula", "baramulla")
    qui replace `dname2011' = "bandipore" if `iso2011' == "JK" & inlist(`dname2011', "bandipore")
    qui replace `dname2011' = "srinagar" if `iso2011' == "JK" & inlist(`dname2011', "srinagar")
    qui replace `dname2011' = "ganderbal" if `iso2011' == "JK" & inlist(`dname2011', "ganderbal")
    qui replace `dname2011' = "pulwama" if `iso2011' == "JK" & inlist(`dname2011', "pulwama", "pulwana")
    qui replace `dname2011' = "shupiyan" if `iso2011' == "JK" & inlist(`dname2011', "shupiyan")
    qui replace `dname2011' = "anantnag" if `iso2011' == "JK" & inlist(`dname2011', "anantnag")
    qui replace `dname2011' = "kulgam" if `iso2011' == "JK" & inlist(`dname2011', "kulgam")
    qui replace `dname2011' = "doda" if `iso2011' == "JK" & inlist(`dname2011', "doda")
    qui replace `dname2011' = "ramban" if `iso2011' == "JK" & inlist(`dname2011', "ramban")
    qui replace `dname2011' = "kishtwar" if `iso2011' == "JK" & inlist(`dname2011', "kishtwar")
    qui replace `dname2011' = "udhampur" if `iso2011' == "JK" & inlist(`dname2011', "udhampur")
    qui replace `dname2011' = "reasi" if `iso2011' == "JK" & inlist(`dname2011', "reasi")
    qui replace `dname2011' = "jammu" if `iso2011' == "JK" & inlist(`dname2011', "jammu")
    qui replace `dname2011' = "samba" if `iso2011' == "JK" & inlist(`dname2011', "samba")

*===============================================================================

  * himachal pradesh

    qui replace `dname2011' = "chamba" if `iso2011' == "HP" & inlist(`dname2011', "chamba")
    qui replace `dname2011' = "kangra" if `iso2011' == "HP" & inlist(`dname2011', "kangra")
    qui replace `dname2011' = "lahul&spiti" if `iso2011' == "HP" & inlist(`dname2011', "lahul&spiti","lahulspiti")
    qui replace `dname2011' = "kullu" if `iso2011' == "HP" & inlist(`dname2011', "kullu")
    qui replace `dname2011' = "mandi" if `iso2011' == "HP" & inlist(`dname2011', "mandi")
    qui replace `dname2011' = "hamirpur(himachal)" if `iso2011' == "HP" & inlist(`dname2011', "hamirpur(himachal)", "hamirpurhimachal", "hamirpur")
    qui replace `dname2011' = "una" if `iso2011' == "HP" & inlist(`dname2011', "una")
    qui replace `dname2011' = "bilaspur(himachal)" if `iso2011' == "HP" & inlist(`dname2011', "bilaspur(himachal)", "bilaspurhimachal", "bilaspur")
    qui replace `dname2011' = "solan" if `iso2011' == "HP" & inlist(`dname2011', "solan")
    qui replace `dname2011' = "sirmaur" if `iso2011' == "HP" & inlist(`dname2011', "sirmaur")
    qui replace `dname2011' = "shimla" if `iso2011' == "HP" & inlist(`dname2011', "shimla")
    qui replace `dname2011' = "kinnaur" if `iso2011' == "HP" & inlist(`dname2011', "kinnaur")

*===============================================================================

  * punjab

    qui replace `dname2011' = "gurdaspur" if `iso2011' == "PB" & inlist(`dname2011', "gurdaspur")
    qui replace `dname2011' = "kapurthala" if `iso2011' == "PB" & inlist(`dname2011', "kapurthala")
    qui replace `dname2011' = "jalandhar" if `iso2011' == "PB" & inlist(`dname2011', "jalandhar")
    qui replace `dname2011' = "hoshiarpur" if `iso2011' == "PB" & inlist(`dname2011', "hoshiarpur")
    qui replace `dname2011' = "shahidbhagatsinghnagar" if `iso2011' == "PB" & inlist(`dname2011', "shahidbhagatsinghnagar", "nawashahar")
    qui replace `dname2011' = "fatehgarhsahib" if `iso2011' == "PB" & inlist(`dname2011', "fatehgarhsahib")
    qui replace `dname2011' = "ludhiana" if `iso2011' == "PB" & inlist(`dname2011', "ludhiana")
    qui replace `dname2011' = "moga" if `iso2011' == "PB" & inlist(`dname2011', "moga")
    qui replace `dname2011' = "firozpur" if `iso2011' == "PB" & inlist(`dname2011', "firozpur", "ferozepur")
    qui replace `dname2011' = "muktsar" if `iso2011' == "PB" & inlist(`dname2011', "muktsar", "mukatsar")
    qui replace `dname2011' = "faridkot" if `iso2011' == "PB" & inlist(`dname2011', "faridkot")
    qui replace `dname2011' = "bathinda" if `iso2011' == "PB" & inlist(`dname2011', "bathinda")
    qui replace `dname2011' = "mansa" if `iso2011' == "PB" & inlist(`dname2011', "mansa")
    qui replace `dname2011' = "patiala" if `iso2011' == "PB" & inlist(`dname2011', "patiala")
    qui replace `dname2011' = "amritsar" if `iso2011' == "PB" & inlist(`dname2011', "amritsar")
    qui replace `dname2011' = "tarntaran" if `iso2011' == "PB" & inlist(`dname2011', "tarntaran")
    qui replace `dname2011' = "rupnagar" if `iso2011' == "PB" & inlist(`dname2011', "rupnagar", "ropar")
    qui replace `dname2011' = "sahibzadaajitsinghnagar" if `iso2011' == "PB" & inlist(`dname2011', "sahibzadaajitsinghnagar", "sasnagar")
    qui replace `dname2011' = "sangrur" if `iso2011' == "PB" & inlist(`dname2011', "sangrur")
    qui replace `dname2011' = "barnala" if `iso2011' == "PB" & inlist(`dname2011', "barnala")

*===============================================================================

  * chandigarh

    qui replace `dname2011' = "chandigarh" if `iso2011' == "CH" & inlist(`dname2011', "chandigarh")

*===============================================================================

  * uttarakhand

    qui replace `dname2011' = "uttarkashi" if `iso2011' == "UT" & inlist(`dname2011', "uttarkashi")
    qui replace `dname2011' = "chamoli" if `iso2011' == "UT" & inlist(`dname2011', "chamoli")
    qui replace `dname2011' = "rudraprayag" if `iso2011' == "UT" & inlist(`dname2011', "rudraprayag")
    qui replace `dname2011' = "tehrigarhwal" if `iso2011' == "UT" & inlist(`dname2011', "tehrigarhwal")
    qui replace `dname2011' = "dehradun" if `iso2011' == "UT" & inlist(`dname2011', "dehradun")
    qui replace `dname2011' = "garhwal" if `iso2011' == "UT" & inlist(`dname2011', "garhwal", "pauri")
    qui replace `dname2011' = "pithoragarh" if `iso2011' == "UT" & inlist(`dname2011', "pithoragarh")
    qui replace `dname2011' = "bageshwar" if `iso2011' == "UT" & inlist(`dname2011', "bageshwar")
    qui replace `dname2011' = "almora" if `iso2011' == "UT" & inlist(`dname2011', "almora")
    qui replace `dname2011' = "champawat" if `iso2011' == "UT" & inlist(`dname2011', "champawat")
    qui replace `dname2011' = "nainital" if `iso2011' == "UT" & inlist(`dname2011', "nainital")
    qui replace `dname2011' = "udhamsinghnagar" if `iso2011' == "UT" & inlist(`dname2011', "udhamsinghnagar")
    qui replace `dname2011' = "hardwar" if `iso2011' == "UT" & inlist(`dname2011', "hardwar", "haridwar")

*===============================================================================

  * haryana

    qui replace `dname2011' = "panchkula" if `iso2011' == "HR" & inlist(`dname2011', "panchkula")
    qui replace `dname2011' = "ambala" if `iso2011' == "HR" & inlist(`dname2011', "ambala")
    qui replace `dname2011' = "yamunanagar" if `iso2011' == "HR" & inlist(`dname2011', "yamunanagar")
    qui replace `dname2011' = "kurukshetra" if `iso2011' == "HR" & inlist(`dname2011', "kurukshetra")
    qui replace `dname2011' = "kaithal" if `iso2011' == "HR" & inlist(`dname2011', "kaithal")
    qui replace `dname2011' = "karnal" if `iso2011' == "HR" & inlist(`dname2011', "karnal")
    qui replace `dname2011' = "panipat" if `iso2011' == "HR" & inlist(`dname2011', "panipat")
    qui replace `dname2011' = "sonipat" if `iso2011' == "HR" & inlist(`dname2011', "sonipat", "sonepat")
    qui replace `dname2011' = "jind" if `iso2011' == "HR" & inlist(`dname2011', "jind")
    qui replace `dname2011' = "fatehabad" if `iso2011' == "HR" & inlist(`dname2011', "fatehabad")
    qui replace `dname2011' = "sirsa" if `iso2011' == "HR" & inlist(`dname2011', "sirsa")
    qui replace `dname2011' = "hisar" if `iso2011' == "HR" & inlist(`dname2011', "hisar")
    qui replace `dname2011' = "bhiwani" if `iso2011' == "HR" & inlist(`dname2011', "bhiwani")
    qui replace `dname2011' = "rohtak" if `iso2011' == "HR" & inlist(`dname2011', "rohtak")
    qui replace `dname2011' = "jhajjar" if `iso2011' == "HR" & inlist(`dname2011', "jhajjar")
    qui replace `dname2011' = "mahendragarh" if `iso2011' == "HR" & inlist(`dname2011', "mahendragarh", "mohindergarh")
    qui replace `dname2011' = "rewari" if `iso2011' == "HR" & inlist(`dname2011', "rewari")
    qui replace `dname2011' = "gurgaon" if `iso2011' == "HR" & inlist(`dname2011', "gurgaon")
    qui replace `dname2011' = "mewat" if `iso2011' == "HR" & inlist(`dname2011', "mewat")
    qui replace `dname2011' = "faridabad" if `iso2011' == "HR" & inlist(`dname2011', "faridabad")
    qui replace `dname2011' = "palwal" if `iso2011' == "HR" & inlist(`dname2011', "palwal")

*===============================================================================

  * delhi

    qui replace `dname2011' = "northwestdelhi" if `iso2011' == "DL" & inlist(`dname2011', "northwestdelhi", "northwest")
    qui replace `dname2011' = "northdelhi" if `iso2011' == "DL" & inlist(`dname2011', "northdelhi", "north")
    qui replace `dname2011' = "northeastdelhi" if `iso2011' == "DL" & inlist(`dname2011', "northeastdelhi", "northeast")
    qui replace `dname2011' = "eastdelhi" if `iso2011' == "DL" & inlist(`dname2011', "eastdelhi", "east")
    qui replace `dname2011' = "newdelhi" if `iso2011' == "DL" & inlist(`dname2011', "newdelhi")
    qui replace `dname2011' = "centraldelhi" if `iso2011' == "DL" & inlist(`dname2011', "centraldelhi", "central")
    qui replace `dname2011' = "westdelhi" if `iso2011' == "DL" & inlist(`dname2011', "westdelhi", "west")
    qui replace `dname2011' = "southwestdelhi" if `iso2011' == "DL" & inlist(`dname2011', "southwestdelhi", "southwest")
    qui replace `dname2011' = "southdelhi" if `iso2011' == "DL" & inlist(`dname2011', "southdelhi", "south")

*===============================================================================

  * rajasthan

    qui replace `dname2011' = "ganganagar" if `iso2011' == "RJ" & inlist(`dname2011', "ganganagar", "sriganganagar")
    qui replace `dname2011' = "hanumangarh" if `iso2011' == "RJ" & inlist(`dname2011', "hanumangarh")
    qui replace `dname2011' = "bikaner" if `iso2011' == "RJ" & inlist(`dname2011', "bikaner")
    qui replace `dname2011' = "churu" if `iso2011' == "RJ" & inlist(`dname2011', "churu")
    qui replace `dname2011' = "jhunjhunun" if `iso2011' == "RJ" & inlist(`dname2011', "jhunjhunun")
    qui replace `dname2011' = "alwar" if `iso2011' == "RJ" & inlist(`dname2011', "alwar")
    qui replace `dname2011' = "bharatpur" if `iso2011' == "RJ" & inlist(`dname2011', "bharatpur")
    qui replace `dname2011' = "dhaulpur" if `iso2011' == "RJ" & inlist(`dname2011', "dhaulpur")
    qui replace `dname2011' = "karauli" if `iso2011' == "RJ" & inlist(`dname2011', "karauli")
    qui replace `dname2011' = "sawaimadhopur" if `iso2011' == "RJ" & inlist(`dname2011', "sawaimadhopur")
    qui replace `dname2011' = "dausa" if `iso2011' == "RJ" & inlist(`dname2011', "dausa")
    qui replace `dname2011' = "jaipur" if `iso2011' == "RJ" & inlist(`dname2011', "jaipur")
    qui replace `dname2011' = "sikar" if `iso2011' == "RJ" & inlist(`dname2011', "sikar")
    qui replace `dname2011' = "nagaur" if `iso2011' == "RJ" & inlist(`dname2011', "nagaur")
    qui replace `dname2011' = "jodhpur" if `iso2011' == "RJ" & inlist(`dname2011', "jodhpur")
    qui replace `dname2011' = "jaisalmer" if `iso2011' == "RJ" & inlist(`dname2011', "jaisalmer")
    qui replace `dname2011' = "barmer" if `iso2011' == "RJ" & inlist(`dname2011', "barmer")
    qui replace `dname2011' = "jalor" if `iso2011' == "RJ" & inlist(`dname2011', "jalor")
    qui replace `dname2011' = "sirohi" if `iso2011' == "RJ" & inlist(`dname2011', "sirohi")
    qui replace `dname2011' = "pali" if `iso2011' == "RJ" & inlist(`dname2011', "pali")
    qui replace `dname2011' = "ajmer" if `iso2011' == "RJ" & inlist(`dname2011', "ajmer")
    qui replace `dname2011' = "tonk" if `iso2011' == "RJ" & inlist(`dname2011', "tonk")
    qui replace `dname2011' = "bundi" if `iso2011' == "RJ" & inlist(`dname2011', "bundi")
    qui replace `dname2011' = "bhilwara" if `iso2011' == "RJ" & inlist(`dname2011', "bhilwara")
    qui replace `dname2011' = "rajsamand" if `iso2011' == "RJ" & inlist(`dname2011', "rajsamand")
    qui replace `dname2011' = "dungarpur" if `iso2011' == "RJ" & inlist(`dname2011', "dungarpur")
    qui replace `dname2011' = "banswara" if `iso2011' == "RJ" & inlist(`dname2011', "banswara")
    qui replace `dname2011' = "chittaurgarh" if `iso2011' == "RJ" & inlist(`dname2011', "chittaurgarh")
    qui replace `dname2011' = "kota" if `iso2011' == "RJ" & inlist(`dname2011', "kota")
    qui replace `dname2011' = "baran" if `iso2011' == "RJ" & inlist(`dname2011', "baran")
    qui replace `dname2011' = "jhalawar" if `iso2011' == "RJ" & inlist(`dname2011', "jhalawar")
    qui replace `dname2011' = "udaipur" if `iso2011' == "RJ" & inlist(`dname2011', "udaipur")
    qui replace `dname2011' = "pratapgarh(rajasthan)" if `iso2011' == "RJ" & inlist(`dname2011', "pratapgarh(rajasthan)", "pratapgarhrajasthan", "pratapgarh")

*===============================================================================

  * uttar pradesh

    qui replace `dname2011' = "saharanpur" if `iso2011' == "UP" & inlist(`dname2011', "saharanpur")
    qui replace `dname2011' = "muzaffarnagar" if `iso2011' == "UP" & inlist(`dname2011', "muzaffarnagar")
    qui replace `dname2011' = "bijnor" if `iso2011' == "UP" & inlist(`dname2011', "bijnor")
    qui replace `dname2011' = "moradabad" if `iso2011' == "UP" & inlist(`dname2011', "moradabad")
    qui replace `dname2011' = "rampur" if `iso2011' == "UP" & inlist(`dname2011', "rampur")
    qui replace `dname2011' = "jyotibaphulenagar" if `iso2011' == "UP" & inlist(`dname2011', "jyotibaphulenagar", "jbfnagar")
    qui replace `dname2011' = "meerut" if `iso2011' == "UP" & inlist(`dname2011', "meerut")
    qui replace `dname2011' = "baghpat" if `iso2011' == "UP" & inlist(`dname2011', "baghpat")
    qui replace `dname2011' = "ghaziabad" if `iso2011' == "UP" & inlist(`dname2011', "ghaziabad")
    qui replace `dname2011' = "gautambuddhanagar" if `iso2011' == "UP" & inlist(`dname2011', "gautambuddhanagar", "gbnagar")
    qui replace `dname2011' = "bulandshahr" if `iso2011' == "UP" & inlist(`dname2011', "bulandshahr", "bulandshahar")
    qui replace `dname2011' = "aligarh" if `iso2011' == "UP" & inlist(`dname2011', "aligarh")
    qui replace `dname2011' = "mahamayanagar" if `iso2011' == "UP" & inlist(`dname2011', "mahamayanagar", "hathras")
    qui replace `dname2011' = "mathura" if `iso2011' == "UP" & inlist(`dname2011', "mathura")
    qui replace `dname2011' = "agra" if `iso2011' == "UP" & inlist(`dname2011', "agra")
    qui replace `dname2011' = "firozabad" if `iso2011' == "UP" & inlist(`dname2011', "firozabad")
    qui replace `dname2011' = "mainpuri" if `iso2011' == "UP" & inlist(`dname2011', "mainpuri")
    qui replace `dname2011' = "budaun" if `iso2011' == "UP" & inlist(`dname2011', "budaun", "badaun")
    qui replace `dname2011' = "bareilly" if `iso2011' == "UP" & inlist(`dname2011', "bareilly")
    qui replace `dname2011' = "pilibhit" if `iso2011' == "UP" & inlist(`dname2011', "pilibhit")
    qui replace `dname2011' = "shahjahanpur" if `iso2011' == "UP" & inlist(`dname2011', "shahjahanpur")
    qui replace `dname2011' = "kheri" if `iso2011' == "UP" & inlist(`dname2011', "kheri", "lakhimpurkherii")
    qui replace `dname2011' = "sitapur" if `iso2011' == "UP" & inlist(`dname2011', "sitapur")
    qui replace `dname2011' = "hardoi" if `iso2011' == "UP" & inlist(`dname2011', "hardoi")
    qui replace `dname2011' = "unnao" if `iso2011' == "UP" & inlist(`dname2011', "unnao")
    qui replace `dname2011' = "lucknow" if `iso2011' == "UP" & inlist(`dname2011', "lucknow")
    qui replace `dname2011' = "raebareli" if `iso2011' == "UP" & inlist(`dname2011', "raebareli")
    qui replace `dname2011' = "farrukhabad" if `iso2011' == "UP" & inlist(`dname2011', "farrukhabad")
    qui replace `dname2011' = "kannauj" if `iso2011' == "UP" & inlist(`dname2011', "kannauj")
    qui replace `dname2011' = "etawah" if `iso2011' == "UP" & inlist(`dname2011', "etawah")
    qui replace `dname2011' = "auraiya" if `iso2011' == "UP" & inlist(`dname2011', "auraiya")
    qui replace `dname2011' = "kanpurdehat" if `iso2011' == "UP" & inlist(`dname2011', "kanpurdehat")
    qui replace `dname2011' = "kanpurnagar" if `iso2011' == "UP" & inlist(`dname2011', "kanpurnagar", "kanpur")
    qui replace `dname2011' = "jalaun" if `iso2011' == "UP" & inlist(`dname2011', "jalaun")
    qui replace `dname2011' = "jhansi" if `iso2011' == "UP" & inlist(`dname2011', "jhansi")
    qui replace `dname2011' = "lalitpur" if `iso2011' == "UP" & inlist(`dname2011', "lalitpur")
    qui replace `dname2011' = "hamirpur(up)" if `iso2011' == "UP" & inlist(`dname2011', "hamirpur(up)", "hamirpurup", "hamirpur")
    qui replace `dname2011' = "mahoba" if `iso2011' == "UP" & inlist(`dname2011', "mahoba")
    qui replace `dname2011' = "banda" if `iso2011' == "UP" & inlist(`dname2011', "banda")
    qui replace `dname2011' = "chitrakoot" if `iso2011' == "UP" & inlist(`dname2011', "chitrakoot")
    qui replace `dname2011' = "fatehpur" if `iso2011' == "UP" & inlist(`dname2011', "fatehpur")
    qui replace `dname2011' = "pratapgarh(up)" if `iso2011' == "UP" & inlist(`dname2011', "pratapgarh(up)", "pratapgarhup", "pratapgarh")
    qui replace `dname2011' = "kaushambi" if `iso2011' == "UP" & inlist(`dname2011', "kaushambi")
    qui replace `dname2011' = "allahabad" if `iso2011' == "UP" & inlist(`dname2011', "allahabad")
    qui replace `dname2011' = "barabanki" if `iso2011' == "UP" & inlist(`dname2011', "barabanki")
    qui replace `dname2011' = "faizabad" if `iso2011' == "UP" & inlist(`dname2011', "faizabad")
    qui replace `dname2011' = "ambedkarnagar" if `iso2011' == "UP" & inlist(`dname2011', "ambedkarnagar")
    qui replace `dname2011' = "sultanpur" if `iso2011' == "UP" & inlist(`dname2011', "sultanpur")
    qui replace `dname2011' = "bahraich" if `iso2011' == "UP" & inlist(`dname2011', "bahraich")
    qui replace `dname2011' = "shrawasti" if `iso2011' == "UP" & inlist(`dname2011', "shrawasti", "shravasti")
    qui replace `dname2011' = "balrampur(up)" if `iso2011' == "UP" & inlist(`dname2011', "balrampur(up)", "balrampurup", "balrampur")
    qui replace `dname2011' = "gonda" if `iso2011' == "UP" & inlist(`dname2011', "gonda")
    qui replace `dname2011' = "siddharthnagar" if `iso2011' == "UP" & inlist(`dname2011', "siddharthnagar", "siddharthanagar")
    qui replace `dname2011' = "basti" if `iso2011' == "UP" & inlist(`dname2011', "basti")
    qui replace `dname2011' = "santkabirnagar" if `iso2011' == "UP" & inlist(`dname2011', "santkabirnagar", "sknagar")
    qui replace `dname2011' = "maharajganj" if `iso2011' == "UP" & inlist(`dname2011', "mahrajganj", "maharajganj")
    qui replace `dname2011' = "gorakhpur" if `iso2011' == "UP" & inlist(`dname2011', "gorakhpur")
    qui replace `dname2011' = "kushinagar" if `iso2011' == "UP" & inlist(`dname2011', "kushinagar", "khushinagar")
    qui replace `dname2011' = "deoria" if `iso2011' == "UP" & inlist(`dname2011', "deoria")
    qui replace `dname2011' = "azamgarh" if `iso2011' == "UP" & inlist(`dname2011', "azamgarh")
    qui replace `dname2011' = "mau" if `iso2011' == "UP" & inlist(`dname2011', "mau")
    qui replace `dname2011' = "ballia" if `iso2011' == "UP" & inlist(`dname2011', "ballia")
    qui replace `dname2011' = "jaunpur" if `iso2011' == "UP" & inlist(`dname2011', "jaunpur")
    qui replace `dname2011' = "ghazipur" if `iso2011' == "UP" & inlist(`dname2011', "ghazipur")
    qui replace `dname2011' = "chandauli" if `iso2011' == "UP" & inlist(`dname2011', "chandauli")
    qui replace `dname2011' = "varanasi" if `iso2011' == "UP" & inlist(`dname2011', "varanasi")
    qui replace `dname2011' = "santravidasnagar(bhadohi)" if `iso2011' == "UP" & inlist(`dname2011', "santravidasnagar(bhadohi)", "santravidasnagarbhadohi", "bhadohi")
    qui replace `dname2011' = "mirzapur" if `iso2011' == "UP" & inlist(`dname2011', "mirzapur")
    qui replace `dname2011' = "sonbhadra" if `iso2011' == "UP" & inlist(`dname2011', "sonbhadra", "sonebhadra")
    qui replace `dname2011' = "etah" if `iso2011' == "UP" & inlist(`dname2011', "etah")
    qui replace `dname2011' = "kanshiramnagar" if `iso2011' == "UP" & inlist(`dname2011', "kanshiramnagar")
*===============================================================================

  * bihar

    qui replace `dname2011' = "pashchimchamparan" if `iso2011' == "BR" & inlist(`dname2011', "pashchimchamparan", "westchamparan")
    qui replace `dname2011' = "purbachamparan" if `iso2011' == "BR" & inlist(`dname2011', "purbachamparan")
    qui replace `dname2011' = "sheohar" if `iso2011' == "BR" & inlist(`dname2011', "sheohar")
    qui replace `dname2011' = "sitamarhi" if `iso2011' == "BR" & inlist(`dname2011', "sitamarhi")
    qui replace `dname2011' = "madhubani" if `iso2011' == "BR" & inlist(`dname2011', "madhubani")
    qui replace `dname2011' = "supaul" if `iso2011' == "BR" & inlist(`dname2011', "supaul")
    qui replace `dname2011' = "araria" if `iso2011' == "BR" & inlist(`dname2011', "araria")
    qui replace `dname2011' = "kishanganj" if `iso2011' == "BR" & inlist(`dname2011', "kishanganj")
    qui replace `dname2011' = "purnia" if `iso2011' == "BR" & inlist(`dname2011', "purnia", "purnea")
    qui replace `dname2011' = "katihar" if `iso2011' == "BR" & inlist(`dname2011', "katihar")
    qui replace `dname2011' = "madhepura" if `iso2011' == "BR" & inlist(`dname2011', "madhepura")
    qui replace `dname2011' = "saharsa" if `iso2011' == "BR" & inlist(`dname2011', "saharsa")
    qui replace `dname2011' = "darbhanga" if `iso2011' == "BR" & inlist(`dname2011', "darbhanga")
    qui replace `dname2011' = "muzaffarpur" if `iso2011' == "BR" & inlist(`dname2011', "muzaffarpur")
    qui replace `dname2011' = "gopalganj" if `iso2011' == "BR" & inlist(`dname2011', "gopalganj")
    qui replace `dname2011' = "siwan" if `iso2011' == "BR" & inlist(`dname2011', "siwan")
    qui replace `dname2011' = "saran" if `iso2011' == "BR" & inlist(`dname2011', "saran", "chapra")
    qui replace `dname2011' = "vaishali" if `iso2011' == "BR" & inlist(`dname2011', "vaishali")
    qui replace `dname2011' = "samastipur" if `iso2011' == "BR" & inlist(`dname2011', "samastipur")
    qui replace `dname2011' = "begusarai" if `iso2011' == "BR" & inlist(`dname2011', "begusarai")
    qui replace `dname2011' = "khagaria" if `iso2011' == "BR" & inlist(`dname2011', "khagaria")
    qui replace `dname2011' = "bhagalpur" if `iso2011' == "BR" & inlist(`dname2011', "bhagalpur")
    qui replace `dname2011' = "banka" if `iso2011' == "BR" & inlist(`dname2011', "banka")
    qui replace `dname2011' = "munger" if `iso2011' == "BR" & inlist(`dname2011', "munger", "monghyar")
    qui replace `dname2011' = "lakhisarai" if `iso2011' == "BR" & inlist(`dname2011', "lakhisarai")
    qui replace `dname2011' = "sheikhpura" if `iso2011' == "BR" & inlist(`dname2011', "sheikhpura")
    qui replace `dname2011' = "nalanda" if `iso2011' == "BR" & inlist(`dname2011', "nalanda")
    qui replace `dname2011' = "patna" if `iso2011' == "BR" & inlist(`dname2011', "patna")
    qui replace `dname2011' = "bhojpur" if `iso2011' == "BR" & inlist(`dname2011', "bhojpur")
    qui replace `dname2011' = "buxar" if `iso2011' == "BR" & inlist(`dname2011', "buxar")
    qui replace `dname2011' = "kaimur(bhabua)" if `iso2011' == "BR" & inlist(`dname2011', "kaimur(bhabua)", "kaimurbhabua", "kaimur")
    qui replace `dname2011' = "rohtas" if `iso2011' == "BR" & inlist(`dname2011', "rohtas")
    qui replace `dname2011' = "aurangabad(bihar)" if `iso2011' == "BR" & inlist(`dname2011', "aurangabad(bihar)", "aurangabadbihar", "aurangabad")
    qui replace `dname2011' = "gaya" if `iso2011' == "BR" & inlist(`dname2011', "gaya")
    qui replace `dname2011' = "nawada" if `iso2011' == "BR" & inlist(`dname2011', "nawada")
    qui replace `dname2011' = "jamui" if `iso2011' == "BR" & inlist(`dname2011', "jamui")
    qui replace `dname2011' = "jehanabad" if `iso2011' == "BR" & inlist(`dname2011', "jehanabad")
    qui replace `dname2011' = "arwal" if `iso2011' == "BR" & inlist(`dname2011', "arwal")

*===============================================================================

  * sikkim

    qui replace `dname2011' = "northsikkim" if `iso2011' == "SK" & inlist(`dname2011', "northsikkim", "northdistrict", "north", "mangan")
    qui replace `dname2011' = "westsikkim" if `iso2011' == "SK" & inlist(`dname2011', "westsikkim", "westdistrict", "west", "gyalshing")
    qui replace `dname2011' = "southsikkim" if `iso2011' == "SK" & inlist(`dname2011', "southsikkim", "southdistrict", "south", "namchi")
    qui replace `dname2011' = "eastsikkim" if `iso2011' == "SK" & inlist(`dname2011', "eastsikkim", "eastdistrict", "east", "gangtok")

*===============================================================================

  * arunachal pradesh

    qui replace `dname2011' = "tawang" if `iso2011' == "AR" & inlist(`dname2011', "tawang")
    qui replace `dname2011' = "westkameng" if `iso2011' == "AR" & inlist(`dname2011', "westkameng")
    qui replace `dname2011' = "eastkameng" if `iso2011' == "AR" & inlist(`dname2011', "eastkameng", "balemueastkameng")
    qui replace `dname2011' = "papumpare" if `iso2011' == "AR" & inlist(`dname2011', "papumpare")
    qui replace `dname2011' = "uppersubansiri" if `iso2011' == "AR" & inlist(`dname2011', "uppersubansiri")
    qui replace `dname2011' = "westsiang" if `iso2011' == "AR" & inlist(`dname2011', "westsiang")
    qui replace `dname2011' = "eastsiang" if `iso2011' == "AR" & inlist(`dname2011', "eastsiang")
    qui replace `dname2011' = "uppersiang" if `iso2011' == "AR" & inlist(`dname2011', "uppersiang")
    qui replace `dname2011' = "changlang" if `iso2011' == "AR" & inlist(`dname2011', "changlang")
    qui replace `dname2011' = "tirap" if `iso2011' == "AR" & inlist(`dname2011', "tirap")
    qui replace `dname2011' = "lowersubansiri" if `iso2011' == "AR" & inlist(`dname2011', "lowersubansiri")
    qui replace `dname2011' = "kurungkumey" if `iso2011' == "AR" & inlist(`dname2011', "kurungkumey")
    qui replace `dname2011' = "dibangvalley" if `iso2011' == "AR" & inlist(`dname2011', "dibangvalley")
    qui replace `dname2011' = "lowerdibangvalley" if `iso2011' == "AR" & inlist(`dname2011', "lowerdibangvalley")
    qui replace `dname2011' = "lohit" if `iso2011' == "AR" & inlist(`dname2011', "lohit")
    qui replace `dname2011' = "anjaw" if `iso2011' == "AR" & inlist(`dname2011', "anjaw")

*===============================================================================

  * nagaland

    qui replace `dname2011' = "mon" if `iso2011' == "NL" & inlist(`dname2011', "mon")
    qui replace `dname2011' = "mokokchung" if `iso2011' == "NL" & inlist(`dname2011', "mokokchung")
    qui replace `dname2011' = "zunheboto" if `iso2011' == "NL" & inlist(`dname2011', "zunheboto")
    qui replace `dname2011' = "wokha" if `iso2011' == "NL" & inlist(`dname2011', "wokha")
    qui replace `dname2011' = "dimapur" if `iso2011' == "NL" & inlist(`dname2011', "dimapur")
    qui replace `dname2011' = "phek" if `iso2011' == "NL" & inlist(`dname2011', "phek")
    qui replace `dname2011' = "tuensang" if `iso2011' == "NL" & inlist(`dname2011', "tuensang")
    qui replace `dname2011' = "longleng" if `iso2011' == "NL" & inlist(`dname2011', "longleng")
    qui replace `dname2011' = "kiphire" if `iso2011' == "NL" & inlist(`dname2011', "kiphire")
    qui replace `dname2011' = "kohima" if `iso2011' == "NL" & inlist(`dname2011', "kohima")
    qui replace `dname2011' = "peren" if `iso2011' == "NL" & inlist(`dname2011', "peren")

*===============================================================================

  * manipur

    qui replace `dname2011' = "senapati" if `iso2011' == "MN" & inlist(`dname2011', "senapati")
    qui replace `dname2011' = "tamenglong" if `iso2011' == "MN" & inlist(`dname2011', "tamenglong")
    qui replace `dname2011' = "churachandpur" if `iso2011' == "MN" & inlist(`dname2011', "churachandpur")
    qui replace `dname2011' = "bishnupur" if `iso2011' == "MN" & inlist(`dname2011', "bishnupur")
    qui replace `dname2011' = "thoubal" if `iso2011' == "MN" & inlist(`dname2011', "thoubal")
    qui replace `dname2011' = "imphalwest" if `iso2011' == "MN" & inlist(`dname2011', "imphalwest")
    qui replace `dname2011' = "imphaleast" if `iso2011' == "MN" & inlist(`dname2011', "imphaleast")
    qui replace `dname2011' = "ukhrul" if `iso2011' == "MN" & inlist(`dname2011', "ukhrul")
    qui replace `dname2011' = "chandel" if `iso2011' == "MN" & inlist(`dname2011', "chandel")

*===============================================================================

  * mizoram
    qui replace `dname2011' = "mamit" if `iso2011' == "MZ" & inlist(`dname2011', "mamit")
    qui replace `dname2011' = "kolasib" if `iso2011' == "MZ" & inlist(`dname2011', "kolasib")
    qui replace `dname2011' = "aizawl" if `iso2011' == "MZ" & inlist(`dname2011', "aizawl")
    qui replace `dname2011' = "champhai" if `iso2011' == "MZ" & inlist(`dname2011', "champhai")
    qui replace `dname2011' = "serchhip" if `iso2011' == "MZ" & inlist(`dname2011', "serchhip")
    qui replace `dname2011' = "lunglei" if `iso2011' == "MZ" & inlist(`dname2011', "lunglei")
    qui replace `dname2011' = "lawngtlai" if `iso2011' == "MZ" & inlist(`dname2011', "lawngtlai")
    qui replace `dname2011' = "saiha" if `iso2011' == "MZ" & inlist(`dname2011', "saiha")

*===============================================================================

  * tripura

    qui replace `dname2011' = "westtripura" if `iso2011' == "TR" & inlist(`dname2011', "westtripura")
    qui replace `dname2011' = "southtripura" if `iso2011' == "TR" & inlist(`dname2011', "southtripura")
    qui replace `dname2011' = "dhalai" if `iso2011' == "TR" & inlist(`dname2011', "dhalai")
    qui replace `dname2011' = "northtripura" if `iso2011' == "TR" & inlist(`dname2011', "northtripura")

*===============================================================================

  * meghalaya

    qui replace `dname2011' = "westgarohills" if `iso2011' == "ML" & inlist(`dname2011', "westgarohills")
    qui replace `dname2011' = "eastgarohills" if `iso2011' == "ML" & inlist(`dname2011', "eastgarohills")
    qui replace `dname2011' = "southgarohills" if `iso2011' == "ML" & inlist(`dname2011', "southgarohills")
    qui replace `dname2011' = "westkhasihills" if `iso2011' == "ML" & inlist(`dname2011', "westkhasihills")
    qui replace `dname2011' = "ribhoi" if `iso2011' == "ML" & inlist(`dname2011', "ribhoi")
    qui replace `dname2011' = "eastkhasihills" if `iso2011' == "ML" & inlist(`dname2011', "eastkhasihills")
    qui replace `dname2011' = "jaintiahills" if `iso2011' == "ML" & inlist(`dname2011', "jaintiahills", "jaintia")

*===============================================================================

  * assam

    qui replace `dname2011' = "kokrajhar" if `iso2011' == "AS" & inlist(`dname2011', "kokrajhar")
    qui replace `dname2011' = "dhubri" if `iso2011' == "AS" & inlist(`dname2011', "dhubri")
    qui replace `dname2011' = "goalpara" if `iso2011' == "AS" & inlist(`dname2011', "goalpara")
    qui replace `dname2011' = "barpeta" if `iso2011' == "AS" & inlist(`dname2011', "barpeta")
    qui replace `dname2011' = "morigaon" if `iso2011' == "AS" & inlist(`dname2011', "morigaon", "marigaon")
    qui replace `dname2011' = "nagaon" if `iso2011' == "AS" & inlist(`dname2011', "nagaon", "nowgaon", "hojai")
    qui replace `dname2011' = "sonitpur" if `iso2011' == "AS" & inlist(`dname2011', "sonitpur")
    qui replace `dname2011' = "lakhimpur" if `iso2011' == "AS" & inlist(`dname2011', "lakhimpur")
    qui replace `dname2011' = "dhemaji" if `iso2011' == "AS" & inlist(`dname2011', "dhemaji")
    qui replace `dname2011' = "tinsukia" if `iso2011' == "AS" & inlist(`dname2011', "tinsukia")
    qui replace `dname2011' = "dibrugarh" if `iso2011' == "AS" & inlist(`dname2011', "dibrugarh")
    qui replace `dname2011' = "sivasagar" if `iso2011' == "AS" & inlist(`dname2011', "sivasagar", "sibsagar")
    qui replace `dname2011' = "jorhat" if `iso2011' == "AS" & inlist(`dname2011', "jorhat")
    qui replace `dname2011' = "golaghat" if `iso2011' == "AS" & inlist(`dname2011', "golaghat")
    qui replace `dname2011' = "karbianglong" if `iso2011' == "AS" & inlist(`dname2011', "karbianglong", "westkarbianglong")
    qui replace `dname2011' = "dimahasao" if `iso2011' == "AS" & inlist(`dname2011', "dimahasao")
    qui replace `dname2011' = "cachar" if `iso2011' == "AS" & inlist(`dname2011', "cachar")
    qui replace `dname2011' = "karimganj" if `iso2011' == "AS" & inlist(`dname2011', "karimganj")
    qui replace `dname2011' = "hailakandi" if `iso2011' == "AS" & inlist(`dname2011', "hailakandi")
    qui replace `dname2011' = "bongaigaon" if `iso2011' == "AS" & inlist(`dname2011', "bongaigaon")
    qui replace `dname2011' = "chirang" if `iso2011' == "AS" & inlist(`dname2011', "chirang")
    qui replace `dname2011' = "kamrup" if `iso2011' == "AS" & inlist(`dname2011', "kamrup")
    qui replace `dname2011' = "kamrupmetropolitan" if `iso2011' == "AS" & inlist(`dname2011', "kamrupmetropolitan")
    qui replace `dname2011' = "nalbari" if `iso2011' == "AS" & inlist(`dname2011', "nalbari")
    qui replace `dname2011' = "baksa" if `iso2011' == "AS" & inlist(`dname2011', "baksa")
    qui replace `dname2011' = "darrang" if `iso2011' == "AS" & inlist(`dname2011', "darrang")
    qui replace `dname2011' = "udalguri" if `iso2011' == "AS" & inlist(`dname2011', "udalguri")

*===============================================================================

  * west bengal

    qui replace `dname2011' = "darjiling" if `iso2011' == "WB" & inlist(`dname2011', "darjiling", "darjeeling")
    qui replace `dname2011' = "jalpaiguri" if `iso2011' == "WB" & inlist(`dname2011', "jalpaiguri")
    qui replace `dname2011' = "kochbihar" if `iso2011' == "WB" & inlist(`dname2011', "kochbihar", "coochbehar")
    qui replace `dname2011' = "uttardinajpur" if `iso2011' == "WB" & inlist(`dname2011', "uttardinajpur")
    qui replace `dname2011' = "dakshindinajpur" if `iso2011' == "WB" & inlist(`dname2011', "dakshindinajpur")
    qui replace `dname2011' = "maldah" if `iso2011' == "WB" & inlist(`dname2011', "maldah", "malda")
    qui replace `dname2011' = "murshidabad" if `iso2011' == "WB" & inlist(`dname2011', "murshidabad", "mushidabad")
    qui replace `dname2011' = "birbhum" if `iso2011' == "WB" & inlist(`dname2011', "birbhum")
    qui replace `dname2011' = "barddhaman" if `iso2011' == "WB" & inlist(`dname2011', "barddhaman", "burdwan")
    qui replace `dname2011' = "nadia" if `iso2011' == "WB" & inlist(`dname2011', "nadia")
    qui replace `dname2011' = "northtwentyfourparganas" if `iso2011' == "WB" & inlist(`dname2011', "northtwentyfourparganas", "northparganas")
    qui replace `dname2011' = "hugli" if `iso2011' == "WB" & inlist(`dname2011', "hugli", "hooghly", "hoogly")
    qui replace `dname2011' = "bankura" if `iso2011' == "WB" & inlist(`dname2011', "bankura")
    qui replace `dname2011' = "puruliya" if `iso2011' == "WB" & inlist(`dname2011', "puruliya", "purulia")
    qui replace `dname2011' = "haora" if `iso2011' == "WB" & inlist(`dname2011', "haora", "howrah")
    qui replace `dname2011' = "kolkata" if `iso2011' == "WB" & inlist(`dname2011', "kolkata")
    qui replace `dname2011' = "southtwentyfourparganas" if `iso2011' == "WB" & inlist(`dname2011', "southtwentyfourparganas", "southparganas")
    qui replace `dname2011' = "paschimmedinipur" if `iso2011' == "WB" & inlist(`dname2011', "paschimmedinipur")
    qui replace `dname2011' = "purbamedinipur" if `iso2011' == "WB" & inlist(`dname2011', "purbamedinipur")

*===============================================================================

  * jharkhand

    qui replace `dname2011' = "garhwa" if `iso2011' == "JH" & inlist(`dname2011', "garhwa")
    qui replace `dname2011' = "chatra" if `iso2011' == "JH" & inlist(`dname2011', "chatra")
    qui replace `dname2011' = "kodarma" if `iso2011' == "JH" & inlist(`dname2011', "kodarma", "koderma")
    qui replace `dname2011' = "giridih" if `iso2011' == "JH" & inlist(`dname2011', "giridih")
    qui replace `dname2011' = "deoghar" if `iso2011' == "JH" & inlist(`dname2011', "deoghar")
    qui replace `dname2011' = "godda" if `iso2011' == "JH" & inlist(`dname2011', "godda")
    qui replace `dname2011' = "sahibganj" if `iso2011' == "JH" & inlist(`dname2011', "sahibganj", "sahebganj")
    qui replace `dname2011' = "pakur" if `iso2011' == "JH" & inlist(`dname2011', "pakur", "pakaur")
    qui replace `dname2011' = "dhanbad" if `iso2011' == "JH" & inlist(`dname2011', "dhanbad")
    qui replace `dname2011' = "bokaro" if `iso2011' == "JH" & inlist(`dname2011', "bokaro")
    qui replace `dname2011' = "lohardaga" if `iso2011' == "JH" & inlist(`dname2011', "lohardaga")
    qui replace `dname2011' = "purbisinghbhum" if `iso2011' == "JH" & inlist(`dname2011', "purbisinghbhum", "eastsinghbhum")
    qui replace `dname2011' = "palamu" if `iso2011' == "JH" & inlist(`dname2011', "palamu", "palamau")
    qui replace `dname2011' = "latehar" if `iso2011' == "JH" & inlist(`dname2011', "latehar")
    qui replace `dname2011' = "hazaribagh" if `iso2011' == "JH" & inlist(`dname2011', "hazaribagh")
    qui replace `dname2011' = "ramgarh" if `iso2011' == "JH" & inlist(`dname2011', "ramgarh")
    qui replace `dname2011' = "dumka" if `iso2011' == "JH" & inlist(`dname2011', "dumka")
    qui replace `dname2011' = "jamtara" if `iso2011' == "JH" & inlist(`dname2011', "jamtara")
    qui replace `dname2011' = "ranchi" if `iso2011' == "JH" & inlist(`dname2011', "ranchi")
    qui replace `dname2011' = "khunti" if `iso2011' == "JH" & inlist(`dname2011', "khunti")
    qui replace `dname2011' = "gumla" if `iso2011' == "JH" & inlist(`dname2011', "gumla")
    qui replace `dname2011' = "simdega" if `iso2011' == "JH" & inlist(`dname2011', "simdega")
    qui replace `dname2011' = "pashchimisinghbhum" if `iso2011' == "JH" & inlist(`dname2011', "pashchimisinghbhum", "westsinghbhum")
    qui replace `dname2011' = "saraikelakharsawan" if `iso2011' == "JH" & inlist(`dname2011', "saraikelakharsawan", "saraikellakharsawan", "saraikelakharswana")

*===============================================================================

  * orissa

    qui replace `dname2011' = "bargarh" if `iso2011' == "OR" & inlist(`dname2011', "bargarh")
    qui replace `dname2011' = "jharsuguda" if `iso2011' == "OR" & inlist(`dname2011', "jharsuguda")
    qui replace `dname2011' = "sambalpur" if `iso2011' == "OR" & inlist(`dname2011', "sambalpur")
    qui replace `dname2011' = "debagarh" if `iso2011' == "OR" & inlist(`dname2011', "debagarh", "deogarh")
    qui replace `dname2011' = "sundargarh" if `iso2011' == "OR" & inlist(`dname2011', "sundargarh")
    qui replace `dname2011' = "kendujhar" if `iso2011' == "OR" & inlist(`dname2011', "kendujhar", "keonjhar")
    qui replace `dname2011' = "mayurbhanj" if `iso2011' == "OR" & inlist(`dname2011', "mayurbhanj")
    qui replace `dname2011' = "baleshwar" if `iso2011' == "OR" & inlist(`dname2011', "baleshwar", "balasore")
    qui replace `dname2011' = "bhadrak" if `iso2011' == "OR" & inlist(`dname2011', "bhadrak")
    qui replace `dname2011' = "kendrapara" if `iso2011' == "OR" & inlist(`dname2011', "kendrapara")
    qui replace `dname2011' = "jagatsinghapur" if `iso2011' == "OR" & inlist(`dname2011', "jagatsinghapur", "jagatsinghpur")
    qui replace `dname2011' = "cuttack" if `iso2011' == "OR" & inlist(`dname2011', "cuttack")
    qui replace `dname2011' = "jajapur" if `iso2011' == "OR" & inlist(`dname2011', "jajapur", "jajpur")
    qui replace `dname2011' = "dhenkanal" if `iso2011' == "OR" & inlist(`dname2011', "dhenkanal")
    qui replace `dname2011' = "anugul" if `iso2011' == "OR" & inlist(`dname2011', "anugul", "angul")
    qui replace `dname2011' = "nayagarh" if `iso2011' == "OR" & inlist(`dname2011', "nayagarh")
    qui replace `dname2011' = "khordha" if `iso2011' == "OR" & inlist(`dname2011', "khordha", "khurda")
    qui replace `dname2011' = "puri" if `iso2011' == "OR" & inlist(`dname2011', "puri")
    qui replace `dname2011' = "ganjam" if `iso2011' == "OR" & inlist(`dname2011', "ganjam")
    qui replace `dname2011' = "gajapati" if `iso2011' == "OR" & inlist(`dname2011', "gajapati")
    qui replace `dname2011' = "kandhamal" if `iso2011' == "OR" & inlist(`dname2011', "kandhamal", "phulbani")
    qui replace `dname2011' = "baudh" if `iso2011' == "OR" & inlist(`dname2011', "baudh", "boudh")
    qui replace `dname2011' = "subarnapur" if `iso2011' == "OR" & inlist(`dname2011', "subarnapur", "sonepur")
    qui replace `dname2011' = "balangir" if `iso2011' == "OR" & inlist(`dname2011', "balangir", "bolangir")
    qui replace `dname2011' = "nuapada" if `iso2011' == "OR" & inlist(`dname2011', "nuapada", "nuapara")
    qui replace `dname2011' = "kalahandi" if `iso2011' == "OR" & inlist(`dname2011', "kalahandi")
    qui replace `dname2011' = "rayagada" if `iso2011' == "OR" & inlist(`dname2011', "rayagada")
    qui replace `dname2011' = "nabarangapur" if `iso2011' == "OR" & inlist(`dname2011', "nabarangapur", "nawarangpur")
    qui replace `dname2011' = "koraput" if `iso2011' == "OR" & inlist(`dname2011', "koraput")
    qui replace `dname2011' = "malkangiri" if `iso2011' == "OR" & inlist(`dname2011', "malkangiri")

*===============================================================================

  * chattisgarh

    qui replace `dname2011' = "koriya" if `iso2011' == "CT" & inlist(`dname2011', "koriya", "koria")
    qui replace `dname2011' = "surguja" if `iso2011' == "CT" & inlist(`dname2011', "surguja")
    qui replace `dname2011' = "jashpur" if `iso2011' == "CT" & inlist(`dname2011', "jashpur")
    qui replace `dname2011' = "raigarh(chhattisgarh)" if `iso2011' == "CT" & inlist(`dname2011', "raigarh(chhattisgarh)", "raigarhchhattisgarh", "raigarh")
    qui replace `dname2011' = "korba" if `iso2011' == "CT" & inlist(`dname2011', "korba")
    qui replace `dname2011' = "janjgirchampa" if `iso2011' == "CT" & inlist(`dname2011', "janjgirchampa", "jangirchampa")
    qui replace `dname2011' = "bilaspur(chhattisgarh)" if `iso2011' == "CT" & inlist(`dname2011', "bilaspur(chhattisgarh)", "bilaspurchhattisgarh", "bilaspur")
    qui replace `dname2011' = "kabeerdham" if `iso2011' == "CT" & inlist(`dname2011', "kabeerdham", "kawardha")
    qui replace `dname2011' = "rajnandgaon" if `iso2011' == "CT" & inlist(`dname2011', "rajnandgaon")
    qui replace `dname2011' = "durg" if `iso2011' == "CT" & inlist(`dname2011', "durg")
    qui replace `dname2011' = "raipur" if `iso2011' == "CT" & inlist(`dname2011', "raipur")
    qui replace `dname2011' = "mahasamund" if `iso2011' == "CT" & inlist(`dname2011', "mahasamund")
    qui replace `dname2011' = "dhamtari" if `iso2011' == "CT" & inlist(`dname2011', "dhamtari")
    qui replace `dname2011' = "uttarbastarkanker" if `iso2011' == "CT" & inlist(`dname2011', "uttarbastarkanker", "kanker")
    qui replace `dname2011' = "bastar" if `iso2011' == "CT" & inlist(`dname2011', "bastar")
    qui replace `dname2011' = "narayanpur" if `iso2011' == "CT" & inlist(`dname2011', "narayanpur")
    qui replace `dname2011' = "dakshinbastardantewada" if `iso2011' == "CT" & inlist(`dname2011', "dakshinbastardantewada", "dantewada")
    qui replace `dname2011' = "bijapur(chhattisgarh)" if `iso2011' == "CT" & inlist(`dname2011', "bijapur(chhattisgarh)", "bijapurchhattisgarh", "bijapur")

*===============================================================================

  * madhya pradesh

    qui replace `dname2011' = "sheopur" if `iso2011' == "MP" & inlist(`dname2011', "sheopur", "seopur")
    qui replace `dname2011' = "morena" if `iso2011' == "MP" & inlist(`dname2011', "morena")
    qui replace `dname2011' = "bhind" if `iso2011' == "MP" & inlist(`dname2011', "bhind")
    qui replace `dname2011' = "gwalior" if `iso2011' == "MP" & inlist(`dname2011', "gwalior")
    qui replace `dname2011' = "datia" if `iso2011' == "MP" & inlist(`dname2011', "datia")
    qui replace `dname2011' = "shivpuri" if `iso2011' == "MP" & inlist(`dname2011', "shivpuri")
    qui replace `dname2011' = "tikamgarh" if `iso2011' == "MP" & inlist(`dname2011', "tikamgarh")
    qui replace `dname2011' = "chhatarpur" if `iso2011' == "MP" & inlist(`dname2011', "chhatarpur")
    qui replace `dname2011' = "panna" if `iso2011' == "MP" & inlist(`dname2011', "panna")
    qui replace `dname2011' = "sagar" if `iso2011' == "MP" & inlist(`dname2011', "sagar")
    qui replace `dname2011' = "damoh" if `iso2011' == "MP" & inlist(`dname2011', "damoh")
    qui replace `dname2011' = "satna" if `iso2011' == "MP" & inlist(`dname2011', "satna")
    qui replace `dname2011' = "rewa" if `iso2011' == "MP" & inlist(`dname2011', "rewa")
    qui replace `dname2011' = "umaria" if `iso2011' == "MP" & inlist(`dname2011', "umaria", "umria")
    qui replace `dname2011' = "neemuch" if `iso2011' == "MP" & inlist(`dname2011', "neemuch")
    qui replace `dname2011' = "mandsaur" if `iso2011' == "MP" & inlist(`dname2011', "mandsaur", "mandsour")
    qui replace `dname2011' = "ratlam" if `iso2011' == "MP" & inlist(`dname2011', "ratlam")
    qui replace `dname2011' = "ujjain" if `iso2011' == "MP" & inlist(`dname2011', "ujjain")
    qui replace `dname2011' = "shajapur" if `iso2011' == "MP" & inlist(`dname2011', "shajapur", "shahjapur")
    qui replace `dname2011' = "dewas" if `iso2011' == "MP" & inlist(`dname2011', "dewas")
    qui replace `dname2011' = "dhar" if `iso2011' == "MP" & inlist(`dname2011', "dhar")
    qui replace `dname2011' = "indore" if `iso2011' == "MP" & inlist(`dname2011', "indore")
    qui replace `dname2011' = "khargone(westnimar)" if `iso2011' == "MP" & inlist(`dname2011', "khargone(westnimar)", "khargonewestnimar", "khargone")
    qui replace `dname2011' = "barwani" if `iso2011' == "MP" & inlist(`dname2011', "barwani")
    qui replace `dname2011' = "rajgarh" if `iso2011' == "MP" & inlist(`dname2011', "rajgarh")
    qui replace `dname2011' = "vidisha" if `iso2011' == "MP" & inlist(`dname2011', "vidisha")
    qui replace `dname2011' = "bhopal" if `iso2011' == "MP" & inlist(`dname2011', "bhopal")
    qui replace `dname2011' = "sehore" if `iso2011' == "MP" & inlist(`dname2011', "sehore")
    qui replace `dname2011' = "raisen" if `iso2011' == "MP" & inlist(`dname2011', "raisen")
    qui replace `dname2011' = "betul" if `iso2011' == "MP" & inlist(`dname2011', "betul")
    qui replace `dname2011' = "harda" if `iso2011' == "MP" & inlist(`dname2011', "harda")
    qui replace `dname2011' = "hoshangabad" if `iso2011' == "MP" & inlist(`dname2011', "hoshangabad")
    qui replace `dname2011' = "katni" if `iso2011' == "MP" & inlist(`dname2011', "katni")
    qui replace `dname2011' = "jabalpur" if `iso2011' == "MP" & inlist(`dname2011', "jabalpur")
    qui replace `dname2011' = "narsimhapur" if `iso2011' == "MP" & inlist(`dname2011', "narsimhapur", "narsinghpur", "narsighpur")
    qui replace `dname2011' = "dindori" if `iso2011' == "MP" & inlist(`dname2011', "dindori")
    qui replace `dname2011' = "mandla" if `iso2011' == "MP" & inlist(`dname2011', "mandla")
    qui replace `dname2011' = "chhindwara" if `iso2011' == "MP" & inlist(`dname2011', "chhindwara")
    qui replace `dname2011' = "seoni" if `iso2011' == "MP" & inlist(`dname2011', "seoni")
    qui replace `dname2011' = "balaghat" if `iso2011' == "MP" & inlist(`dname2011', "balaghat")
    qui replace `dname2011' = "guna" if `iso2011' == "MP" & inlist(`dname2011', "guna")
    qui replace `dname2011' = "ashoknagar" if `iso2011' == "MP" & inlist(`dname2011', "ashoknagar")
    qui replace `dname2011' = "shahdol" if `iso2011' == "MP" & inlist(`dname2011', "shahdol")
    qui replace `dname2011' = "anuppur" if `iso2011' == "MP" & inlist(`dname2011', "anuppur")
    qui replace `dname2011' = "sidhi" if `iso2011' == "MP" & inlist(`dname2011', "sidhi")
    qui replace `dname2011' = "singrauli" if `iso2011' == "MP" & inlist(`dname2011', "singrauli")
    qui replace `dname2011' = "jhabua" if `iso2011' == "MP" & inlist(`dname2011', "jhabua")
    qui replace `dname2011' = "alirajpur" if `iso2011' == "MP" & inlist(`dname2011', "alirajpur")
    qui replace `dname2011' = "khandwa(eastnimar)" if `iso2011' == "MP" & inlist(`dname2011', "khandwa(eastnimar)", "khandwaeastnimar", "khandwa")
    qui replace `dname2011' = "burhanpur" if `iso2011' == "MP" & inlist(`dname2011', "burhanpur")

*===============================================================================

  * gujarat

    qui replace `dname2011' = "kachchh" if `iso2011' == "GJ" & inlist(`dname2011', "kachchh", "kutch")
    qui replace `dname2011' = "banaskantha" if `iso2011' == "GJ" & inlist(`dname2011', "banaskantha")
    qui replace `dname2011' = "patan" if `iso2011' == "GJ" & inlist(`dname2011', "patan")
    qui replace `dname2011' = "mahesana" if `iso2011' == "GJ" & inlist(`dname2011', "mahesana", "mehsana")
    qui replace `dname2011' = "sabarkantha" if `iso2011' == "GJ" & inlist(`dname2011', "sabarkantha")
    qui replace `dname2011' = "gandhinagar" if `iso2011' == "GJ" & inlist(`dname2011', "gandhinagar")
    qui replace `dname2011' = "ahmedabad" if `iso2011' == "GJ" & inlist(`dname2011', "ahmadabad")
    qui replace `dname2011' = "surendranagar" if `iso2011' == "GJ" & inlist(`dname2011', "surendranagar")
    qui replace `dname2011' = "rajkot" if `iso2011' == "GJ" & inlist(`dname2011', "rajkot")
    qui replace `dname2011' = "jamnagar" if `iso2011' == "GJ" & inlist(`dname2011', "jamnagar")
    qui replace `dname2011' = "porbandar" if `iso2011' == "GJ" & inlist(`dname2011', "porbandar")
    qui replace `dname2011' = "junagadh" if `iso2011' == "GJ" & inlist(`dname2011', "junagadh")
    qui replace `dname2011' = "amreli" if `iso2011' == "GJ" & inlist(`dname2011', "amreli")
    qui replace `dname2011' = "bhavnagar" if `iso2011' == "GJ" & inlist(`dname2011', "bhavnagar")
    qui replace `dname2011' = "anand" if `iso2011' == "GJ" & inlist(`dname2011', "anand")
    qui replace `dname2011' = "kheda" if `iso2011' == "GJ" & inlist(`dname2011', "kheda")
    qui replace `dname2011' = "panchmahals" if `iso2011' == "GJ" & inlist(`dname2011', "panchmahals")
    qui replace `dname2011' = "dohad" if `iso2011' == "GJ" & inlist(`dname2011', "dohad", "dahod")
    qui replace `dname2011' = "vadodara" if `iso2011' == "GJ" & inlist(`dname2011', "vadodara")
    qui replace `dname2011' = "narmada" if `iso2011' == "GJ" & inlist(`dname2011', "narmada")
    qui replace `dname2011' = "bharuch" if `iso2011' == "GJ" & inlist(`dname2011', "bharuch")
    qui replace `dname2011' = "thedangs" if `iso2011' == "GJ" & inlist(`dname2011', "thedangs", "dangs")
    qui replace `dname2011' = "navsari" if `iso2011' == "GJ" & inlist(`dname2011', "navsari")
    qui replace `dname2011' = "valsad" if `iso2011' == "GJ" & inlist(`dname2011', "valsad")
    qui replace `dname2011' = "surat" if `iso2011' == "GJ" & inlist(`dname2011', "surat")
    qui replace `dname2011' = "tapi" if `iso2011' == "GJ" & inlist(`dname2011', "tapi")

*===============================================================================

  * daman & diu

    qui replace `dname2011' = "diu" if `iso2011' == "DD" & inlist(`dname2011', "diu")
    qui replace `dname2011' = "daman" if `iso2011' == "DD" & inlist(`dname2011', "daman")

*===============================================================================

  * dadra & nagar haveli

    qui replace `dname2011' = "dadranagarhaveli" if `iso2011' == "DH" & inlist(`dname2011', "dadra&nagarhaveli", "dadranagarhaveli")

*===============================================================================

  * maharashtra

    qui replace `dname2011' = "nandurbar" if `iso2011' == "MH" & inlist(`dname2011', "nandurbar")
    qui replace `dname2011' = "dhule" if `iso2011' == "MH" & inlist(`dname2011', "dhule")
    qui replace `dname2011' = "jalgaon" if `iso2011' == "MH" & inlist(`dname2011', "jalgaon")
    qui replace `dname2011' = "buldana" if `iso2011' == "MH" & inlist(`dname2011', "buldana", "buldhana")
    qui replace `dname2011' = "akola" if `iso2011' == "MH" & inlist(`dname2011', "akola")
    qui replace `dname2011' = "washim" if `iso2011' == "MH" & inlist(`dname2011', "washim")
    qui replace `dname2011' = "amravati" if `iso2011' == "MH" & inlist(`dname2011', "amravati", "amrawati")
    qui replace `dname2011' = "wardha" if `iso2011' == "MH" & inlist(`dname2011', "wardha")
    qui replace `dname2011' = "nagpur" if `iso2011' == "MH" & inlist(`dname2011', "nagpur")
    qui replace `dname2011' = "bhandara" if `iso2011' == "MH" & inlist(`dname2011', "bhandara")
    qui replace `dname2011' = "gondiya" if `iso2011' == "MH" & inlist(`dname2011', "gondiya", "gondia")
    qui replace `dname2011' = "gadchiroli" if `iso2011' == "MH" & inlist(`dname2011', "gadchiroli")
    qui replace `dname2011' = "chandrapur" if `iso2011' == "MH" & inlist(`dname2011', "chandrapur")
    qui replace `dname2011' = "yavatmal" if `iso2011' == "MH" & inlist(`dname2011', "yavatmal")
    qui replace `dname2011' = "nanded" if `iso2011' == "MH" & inlist(`dname2011', "nanded")
    qui replace `dname2011' = "hingoli" if `iso2011' == "MH" & inlist(`dname2011', "hingoli")
    qui replace `dname2011' = "parbhani" if `iso2011' == "MH" & inlist(`dname2011', "parbhani")
    qui replace `dname2011' = "jalna" if `iso2011' == "MH" & inlist(`dname2011', "jalna")
    qui replace `dname2011' = "aurangabad(maharashtra)" if `iso2011' == "MH" & inlist(`dname2011', "aurangabad(maharashtra)", "aurangabadmaharashtra", "aurangabad")
    qui replace `dname2011' = "nashik" if `iso2011' == "MH" & inlist(`dname2011', "nashik")
    qui replace `dname2011' = "thane" if `iso2011' == "MH" & inlist(`dname2011', "thane")
    qui replace `dname2011' = "mumbaisuburban" if `iso2011' == "MH" & inlist(`dname2011', "mumbaisuburban", "submumbai")
    qui replace `dname2011' = "mumbai" if `iso2011' == "MH" & inlist(`dname2011', "mumbai")
    qui replace `dname2011' = "raigarh(maharashtra)" if `iso2011' == "MH" & inlist(`dname2011', "raigarh(maharashtra)", "raigarhmaharashtra", "raigarh", "raigad")
    qui replace `dname2011' = "pune" if `iso2011' == "MH" & inlist(`dname2011', "pune")
    qui replace `dname2011' = "ahmednagar" if `iso2011' == "MH" & inlist(`dname2011', "ahmadnagar")
    qui replace `dname2011' = "bid" if `iso2011' == "MH" & inlist(`dname2011', "bid", "beed")
    qui replace `dname2011' = "latur" if `iso2011' == "MH" & inlist(`dname2011', "latur")
    qui replace `dname2011' = "osmanabad" if `iso2011' == "MH" & inlist(`dname2011', "osmanabad")
    qui replace `dname2011' = "solapur" if `iso2011' == "MH" & inlist(`dname2011', "solapur")
    qui replace `dname2011' = "satara" if `iso2011' == "MH" & inlist(`dname2011', "satara")
    qui replace `dname2011' = "ratnagiri" if `iso2011' == "MH" & inlist(`dname2011', "ratnagiri")
    qui replace `dname2011' = "sindhudurg" if `iso2011' == "MH" & inlist(`dname2011', "sindhudurg")
    qui replace `dname2011' = "kolhapur" if `iso2011' == "MH" & inlist(`dname2011', "kolhapur")
    qui replace `dname2011' = "sangli" if `iso2011' == "MH" & inlist(`dname2011', "sangli", "sangali")

*===============================================================================

  * andhra pradesh

    qui replace `dname2011' = "adilabad" if `iso2011' == "AP" & inlist(`dname2011', "adilabad")
    qui replace `dname2011' = "nizamabad" if `iso2011' == "AP" & inlist(`dname2011', "nizamabad")
    qui replace `dname2011' = "karimnagar" if `iso2011' == "AP" & inlist(`dname2011', "karimnagar")
    qui replace `dname2011' = "medak" if `iso2011' == "AP" & inlist(`dname2011', "medak")
    qui replace `dname2011' = "hyderabad" if `iso2011' == "AP" & inlist(`dname2011', "hyderabad")
    qui replace `dname2011' = "rangareddy" if `iso2011' == "AP" & inlist(`dname2011', "rangareddy")
    qui replace `dname2011' = "mahbubnagar" if `iso2011' == "AP" & inlist(`dname2011', "mahbubnagar", "mahabubnagar")
    qui replace `dname2011' = "nalgonda" if `iso2011' == "AP" & inlist(`dname2011', "nalgonda")
    qui replace `dname2011' = "warangal" if `iso2011' == "AP" & inlist(`dname2011', "warangal")
    qui replace `dname2011' = "khammam" if `iso2011' == "AP" & inlist(`dname2011', "khammam")
    qui replace `dname2011' = "srikakulam" if `iso2011' == "AP" & inlist(`dname2011', "srikakulam")
    qui replace `dname2011' = "vizianagaram" if `iso2011' == "AP" & inlist(`dname2011', "vizianagaram")
    qui replace `dname2011' = "visakhapatnam" if `iso2011' == "AP" & inlist(`dname2011', "visakhapatnam", "vishakhapatnam")
    qui replace `dname2011' = "eastgodavari" if `iso2011' == "AP" & inlist(`dname2011', "eastgodavari")
    qui replace `dname2011' = "westgodavari" if `iso2011' == "AP" & inlist(`dname2011', "westgodavari")
    qui replace `dname2011' = "krishna" if `iso2011' == "AP" & inlist(`dname2011', "krishna")
    qui replace `dname2011' = "guntur" if `iso2011' == "AP" & inlist(`dname2011', "guntur")
    qui replace `dname2011' = "prakasam" if `iso2011' == "AP" & inlist(`dname2011', "prakasam")
    qui replace `dname2011' = "nellore" if `iso2011' == "AP" & inlist(`dname2011', "nellore", "sripottisriramulunellore", "sripottisriramulunell")
    qui replace `dname2011' = "ysr" if `iso2011' == "AP" & inlist(`dname2011', "ysr", "kadapa", "cuddapah", "ysrkadapa")
    qui replace `dname2011' = "kurnool" if `iso2011' == "AP" & inlist(`dname2011', "kurnool")
    qui replace `dname2011' = "anantapur" if `iso2011' == "AP" & inlist(`dname2011', "anantapur")
    qui replace `dname2011' = "chittoor" if `iso2011' == "AP" & inlist(`dname2011', "chittoor")

*===============================================================================

  * karnataka

    qui replace `dname2011' = "belgaum" if `iso2011' == "KA" & inlist(`dname2011', "belgaum")
    qui replace `dname2011' = "bagalkot" if `iso2011' == "KA" & inlist(`dname2011', "bagalkot")
    qui replace `dname2011' = "bijapur(karnataka)" if `iso2011' == "KA" & inlist(`dname2011', "bijapur(karnataka)", "bijapurkarnataka", "bijapur")
    qui replace `dname2011' = "bidar" if `iso2011' == "KA" & inlist(`dname2011', "bidar")
    qui replace `dname2011' = "raichur" if `iso2011' == "KA" & inlist(`dname2011', "raichur")
    qui replace `dname2011' = "koppal" if `iso2011' == "KA" & inlist(`dname2011', "koppal")
    qui replace `dname2011' = "gadag" if `iso2011' == "KA" & inlist(`dname2011', "gadag")
    qui replace `dname2011' = "dharwad" if `iso2011' == "KA" & inlist(`dname2011', "dharwad")
    qui replace `dname2011' = "uttarakannada" if `iso2011' == "KA" & inlist(`dname2011', "uttarakannada")
    qui replace `dname2011' = "haveri" if `iso2011' == "KA" & inlist(`dname2011', "haveri")
    qui replace `dname2011' = "bellary" if `iso2011' == "KA" & inlist(`dname2011', "bellary")
    qui replace `dname2011' = "chitradurga" if `iso2011' == "KA" & inlist(`dname2011', "chitradurga")
    qui replace `dname2011' = "davanagere" if `iso2011' == "KA" & inlist(`dname2011', "davanagere")
    qui replace `dname2011' = "shimoga" if `iso2011' == "KA" & inlist(`dname2011', "shimoga")
    qui replace `dname2011' = "udupi" if `iso2011' == "KA" & inlist(`dname2011', "udupi")
    qui replace `dname2011' = "chikmagalur" if `iso2011' == "KA" & inlist(`dname2011', "chikmagalur", "chickmagalur")
    qui replace `dname2011' = "tumkur" if `iso2011' == "KA" & inlist(`dname2011', "tumkur")
    qui replace `dname2011' = "bangalore" if `iso2011' == "KA" & inlist(`dname2011', "bangalore", "bangaloreu")
    qui replace `dname2011' = "mandya" if `iso2011' == "KA" & inlist(`dname2011', "mandya")
    qui replace `dname2011' = "hassan" if `iso2011' == "KA" & inlist(`dname2011', "hassan")
    qui replace `dname2011' = "dakshinakannada" if `iso2011' == "KA" & inlist(`dname2011', "dakshinakannada")
    qui replace `dname2011' = "kodagu" if `iso2011' == "KA" & inlist(`dname2011', "kodagu")
    qui replace `dname2011' = "mysore" if `iso2011' == "KA" & inlist(`dname2011', "mysore")
    qui replace `dname2011' = "chamarajanagar" if `iso2011' == "KA" & inlist(`dname2011', "chamarajanagar")
    qui replace `dname2011' = "gulbarga" if `iso2011' == "KA" & inlist(`dname2011', "gulbarga")
    qui replace `dname2011' = "yadgir" if `iso2011' == "KA" & inlist(`dname2011', "yadgir")
    qui replace `dname2011' = "kolar" if `iso2011' == "KA" & inlist(`dname2011', "kolar")
    qui replace `dname2011' = "chikkaballapura" if `iso2011' == "KA" & inlist(`dname2011', "chikkaballapura")
    qui replace `dname2011' = "bangalorerural" if `iso2011' == "KA" & inlist(`dname2011', "bangalorerural", "bangalorer")
    qui replace `dname2011' = "ramanagara" if `iso2011' == "KA" & inlist(`dname2011', "ramanagara", "ramanagaram")

*===============================================================================

  * goa

    qui replace `dname2011' = "northgoa" if `iso2011' == "GA" & inlist(`dname2011', "northgoa")
    qui replace `dname2011' = "southgoa" if `iso2011' == "GA" & inlist(`dname2011', "southgoa")

*===============================================================================

  * lakshadweep

    qui replace `dname2011' = "lakshadweep" if `iso2011' == "LD" & inlist(`dname2011', "lakshadweep")

*===============================================================================

  * kerala

    qui replace `dname2011' = "kasaragod" if `iso2011' == "KL" & inlist(`dname2011', "kasaragod")
    qui replace `dname2011' = "kannur" if `iso2011' == "KL" & inlist(`dname2011', "kannur")
    qui replace `dname2011' = "wayanad" if `iso2011' == "KL" & inlist(`dname2011', "wayanad")
    qui replace `dname2011' = "kozhikode" if `iso2011' == "KL" & inlist(`dname2011', "kozhikode")
    qui replace `dname2011' = "malappuram" if `iso2011' == "KL" & inlist(`dname2011', "malappuram")
    qui replace `dname2011' = "palakkad" if `iso2011' == "KL" & inlist(`dname2011', "palakkad")
    qui replace `dname2011' = "thrissur" if `iso2011' == "KL" & inlist(`dname2011', "thrissur")
    qui replace `dname2011' = "ernakulam" if `iso2011' == "KL" & inlist(`dname2011', "ernakulam")
    qui replace `dname2011' = "idukki" if `iso2011' == "KL" & inlist(`dname2011', "idukki")
    qui replace `dname2011' = "kottayam" if `iso2011' == "KL" & inlist(`dname2011', "kottayam")
    qui replace `dname2011' = "alappuzha" if `iso2011' == "KL" & inlist(`dname2011', "alappuzha")
    qui replace `dname2011' = "pathanamthitta" if `iso2011' == "KL" & inlist(`dname2011', "pathanamthitta")
    qui replace `dname2011' = "kollam" if `iso2011' == "KL" & inlist(`dname2011', "kollam")
    qui replace `dname2011' = "thiruvananthapuram" if `iso2011' == "KL" & inlist(`dname2011', "thiruvananthapuram")

*===============================================================================

  * tamil nadu

    qui replace `dname2011' = "thiruvallur" if `iso2011' == "TN" & inlist(`dname2011', "thiruvallur", "tiruvallur")
    qui replace `dname2011' = "chennai" if `iso2011' == "TN" & inlist(`dname2011', "chennai")
    qui replace `dname2011' = "kancheepuram" if `iso2011' == "TN" & inlist(`dname2011', "kancheepuram", "kanchipuram")
    qui replace `dname2011' = "vellore" if `iso2011' == "TN" & inlist(`dname2011', "vellore")
    qui replace `dname2011' = "tiruvannamalai" if `iso2011' == "TN" & inlist(`dname2011', "tiruvannamalai")
    qui replace `dname2011' = "viluppuram" if `iso2011' == "TN" & inlist(`dname2011', "viluppuram", "villupuram")
    qui replace `dname2011' = "salem" if `iso2011' == "TN" & inlist(`dname2011', "salem")
    qui replace `dname2011' = "namakkal" if `iso2011' == "TN" & inlist(`dname2011', "namakkal")
    qui replace `dname2011' = "erode" if `iso2011' == "TN" & inlist(`dname2011', "erode")
    qui replace `dname2011' = "thenilgiris" if `iso2011' == "TN" & inlist(`dname2011', "thenilgiris")
    qui replace `dname2011' = "dindigul" if `iso2011' == "TN" & inlist(`dname2011', "dindigul")
    qui replace `dname2011' = "karur" if `iso2011' == "TN" & inlist(`dname2011', "karur")
    qui replace `dname2011' = "tiruchirappalli" if `iso2011' == "TN" & inlist(`dname2011', "tiruchirappalli")
    qui replace `dname2011' = "perambalur" if `iso2011' == "TN" & inlist(`dname2011', "perambalur")
    qui replace `dname2011' = "ariyalur" if `iso2011' == "TN" & inlist(`dname2011', "ariyalur")
    qui replace `dname2011' = "cuddalore" if `iso2011' == "TN" & inlist(`dname2011', "cuddalore")
    qui replace `dname2011' = "nagapattinam" if `iso2011' == "TN" & inlist(`dname2011', "nagapattinam")
    qui replace `dname2011' = "thiruvarur" if `iso2011' == "TN" & inlist(`dname2011', "thiruvarur", "tiruvarur")
    qui replace `dname2011' = "thanjavur" if `iso2011' == "TN" & inlist(`dname2011', "thanjavur")
    qui replace `dname2011' = "pudukkottai" if `iso2011' == "TN" & inlist(`dname2011', "pudukkottai")
    qui replace `dname2011' = "sivaganga" if `iso2011' == "TN" & inlist(`dname2011', "sivaganga", "sivagangai")
    qui replace `dname2011' = "madurai" if `iso2011' == "TN" & inlist(`dname2011', "madurai")
    qui replace `dname2011' = "theni" if `iso2011' == "TN" & inlist(`dname2011', "theni")
    qui replace `dname2011' = "virudhunagar" if `iso2011' == "TN" & inlist(`dname2011', "virudhunagar", "virudunagar")
    qui replace `dname2011' = "ramanathapuram" if `iso2011' == "TN" & inlist(`dname2011', "ramanathapuram", "ramanadhapuram")
    qui replace `dname2011' = "thoothukkudi" if `iso2011' == "TN" & inlist(`dname2011', "thoothukkudi", "tuticorin")
    qui replace `dname2011' = "tirunelveli" if `iso2011' == "TN" & inlist(`dname2011', "tirunelveli")
    qui replace `dname2011' = "kanniyakumari" if `iso2011' == "TN" & inlist(`dname2011', "kanniyakumari")
    qui replace `dname2011' = "dharmapuri" if `iso2011' == "TN" & inlist(`dname2011', "dharmapuri")
    qui replace `dname2011' = "krishnagiri" if `iso2011' == "TN" & inlist(`dname2011', "krishnagiri")
    qui replace `dname2011' = "coimbatore" if `iso2011' == "TN" & inlist(`dname2011', "coimbatore")
    qui replace `dname2011' = "tiruppur" if `iso2011' == "TN" & inlist(`dname2011', "tiruppur")

*===============================================================================

  * pondicherry
    qui replace `dname2011' = "yanam" if `iso2011' == "PY" & inlist(`dname2011', "yanam")
    qui replace `dname2011' = "puducherry" if `iso2011' == "PY" & inlist(`dname2011', "puducherry")
    qui replace `dname2011' = "mahe" if `iso2011' == "PY" & inlist(`dname2011', "mahe")
    qui replace `dname2011' = "karaikal" if `iso2011' == "PY" & inlist(`dname2011', "karaikal")

*===============================================================================

  * andaman & nicobar islands
    qui replace `dname2011' = "nicobars" if `iso2011' == "AN" & inlist(`dname2011', "nicobars")
    qui replace `dname2011' = "northmiddleandaman" if `iso2011' == "AN" & inlist(`dname2011', "north&middleandaman", "northmiddleandaman")
    qui replace `dname2011' = "southandaman" if `iso2011' == "AN" & inlist(`dname2011', "southandaman", "southandamans")

*===============================================================================
end
