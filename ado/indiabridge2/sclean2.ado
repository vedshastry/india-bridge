*-------------------------------------------------------------------------------
* Objective: Standardise a list of state names with typos/variations
*-------------------------------------------------------------------------------

* Read csv and input variable
local stvals_csv "/home/ved/repos/india-bridge/ado/indiabridge2/dict/state/stvals_cen2011.csv"
local id_indiabridge "id_cen2011"

* example data

	clear
		input int id_cur str20 sname
		1 "rjrajasthan"
		2 "sksikkim"
		3 "oddisha"
		4 "balarampur"
		5 "andhrunachalpradesh"
		6 "andhyapradesh"
	end

tempfile current
save `current', replace

*-------------------------------------------------------------------------------
* stkeyvals

	import delimited "`stvals_csv'", clear varnames(1) delimiter(",")

tempfile stvals
save `stvals', replace

*-------------------------------------------------------------------------------

// use `current', clear
// sclean2 , name(sname) id(id_cur)

// rename id_cur id
// sclean2 , name(sname)


* define sclean
cap prog drop sclean2
prog sclean2

	* accept string variable as input
	syntax , name(varlist string max=1)  [id(varlist numeric max=1)]

	if "`id'" == "" {
		di "ID variable not specified. Generating unique ID to name variable: `name'"
		egen id_cur = group(`name')
		isid id_cur
	}
	else if "`id'" != "" {
		di "Verifying ID on : `name'"
		isid id_cur
	}

matchit id_cur sname using `stvals' , idu(id_key) txtu(stkey) override

	* convert similarity score -> floating point matchscore
	recast float 		similscore , force
	rename similscore 	matchscore

	* keep current data obs with its best match from keyvals
	bys id_cur : egen 	maxscore = max(matchscore)

				gsort 	id_cur -maxscore
				drop 	if matchscore != maxscore

			drop 	maxscore

end


* map onto possible values
	** assert no id_stkey unmerged from master, keep merged values
merge m:1 id_key using `stvals' , assert(2 3) keep(3) nogen keepusing(stvals)

* map onto current data
merge m:1 id_cur using `current' , assert(2 3) gen(_ibmerge)

	** greate idkey to assign
	** toggle if found in indiabridge list

	gen 	`id_indiabridge' 	= .
	gen 	indiabridge = 0

	order `id_indiabridge' matchscore indiabridge , before(id_key)

	* Split value list by comma
	split stvals , parse(",")

		* iterate over list values resulting from split
		foreach value in `r(varlist)' {

			* reference dataset name against these values. Assign score = 1 for replaced
			replace indiabridge = 1 if sname == `value' & !mi(sname)
			replace matchscore = 1 if indiabridge == 1

		}

		* assign id_indiabridge
		replace `id_indiabridge' = id_key if indiabridge == 1
		replace `id_indiabridge' = id_key if mi(`id_indiabridge') & !mi(matchscore)

			* drop variables from key-value data checked against
			drop id_key stkey stvals*


* verify that nonmissing id_indiabridges are unique
isid `id_indiabridge' , missok

* map onto lgdcensus database using id



local N = _N
forval i = 1/`N' {
	listkeyval _sname_lgd, k(stkey[`i']) ///
		l(stvals[`i'])
}
di "`N'"

* define sclean
cap prog drop sclean2
prog sclean2

	* accept string variable as input
	syntax varlist(string max=1)

	* read and store user input
		// local statevar `1'

	* retain alphabets and convert string to lowercase (`ssc install strkeep`)
		* run quietly
		qui {
			clonevar _sname_lgd = `varlist'
			strkeep _sname_lgd, alpha strlower replace
			replace _sname_lgd = subinstr(_sname_lgd, " and ", "", .)
			replace _sname_lgd = subinstr(_sname_lgd, " of ", "", .)
		}

	* replace state name with standard lgd name using `listkeyval`

	listkeyval _sname_lgd, k("assam") ///
		l("assam,asassam,as")

	listkeyval _sname_lgd, k("andamannicobarislands") ///
		l("andamannicobarislands,andamannicobarisland,anislands,andamannicobar,an,andamansnicobars,andamanandnicobar,andmanandnocobarislands,andamanandnicobarislands,andamansnicobars")

	listkeyval _sname_lgd, k("andhrapradesh") ///
		l("andhrapradesh,apandhrapradesh,ap,telangana")

	listkeyval _sname_lgd, k("arunachalpradesh") ///
		l("arunachalpradesh,ararunachalpradesh,arunanchalpradesh,ar,arunancal predesh,arp")

	listkeyval _sname_lgd, k("bihar") ///
		l("bihar,bhbihar,br,bh")

	listkeyval _sname_lgd, k("chandigarh") ///
		l("chandigarh,sahibzadaajitsinghnagar")

	listkeyval _sname_lgd, k("chhattisgarh") ///
		l("chhattisgarh,ct,chhatisgarh,cg,chattisgarh")

	listkeyval _sname_lgd, k("dadranagarhaveli") ///
		l("dadranagarhaveli,dnhaveli,thedadraandnagarhavelianddamananddiu")

	listkeyval _sname_lgd, k("damandiu") ///
		l("damandiu,daman,diu")

	listkeyval _sname_lgd, k("delhi") ///
		l("delhincr,delhi,dldelhi,newdelhi,nationalcapitalterritorydelhi,nctdelhi,nct,dl,nctofdelhi")

	listkeyval _sname_lgd, k("goa") ///
		l("goa")

	listkeyval _sname_lgd, k("gujarat") ///
		l("gujarat,gjgujarat,gujrat,gj,kutch,saurashtra")

	listkeyval _sname_lgd, k("haryana") ///
		l("haryana,hrharyana,hr")

	listkeyval _sname_lgd, k("himachalpradesh") ///
		l("himachalpradesh,hphimachalpradesh,himachal,hp,bilaspur")

	listkeyval _sname_lgd, k("jammukashmir") ///
		l("jammukashmir,jmjammukashmir,jammu,jk,jammuandkashmir,ladakh")

	listkeyval _sname_lgd, k("jharkhand") ///
		l("jharkhand,jh")

	listkeyval _sname_lgd, k("karnataka") ///
		l("karnataka,kakarnataka,ka,mysore")

	listkeyval _sname_lgd, k("kerala") ///
		l("kerala,kekerala,kerela,kl,travancorecochin,ke")

	listkeyval _sname_lgd, k("lakshadweep") ///
		l("lakshadweep,lakshadwep,ld")

	listkeyval _sname_lgd, k("madhyapradesh") ///
		l("madhyapradesh,madhypradesh,mpmadhyapradesh,mp")

	listkeyval _sname_lgd, k("maharashtra") ///
		l("maharashtra,mhmaharashtra,mh,ms")

	listkeyval _sname_lgd, k("manipur") ///
		l("manipur,mamanipur,mn,mnp")

	listkeyval _sname_lgd, k("meghalaya") ///
		l("shillong,meghalay,meghalaya,mgh")

	listkeyval _sname_lgd, k("mizoram") ///
		l("mizohills,mizoram,mz")

	listkeyval _sname_lgd, k("nagaland") ///
		l("nagaland,nanagaland,nl")

	listkeyval _sname_lgd, k("odisha") ///
		l("orissa,ororissa,or,odisha")

	listkeyval _sname_lgd, k("pondicherry") ///
		l("puducherry,pondicherry,pondi,py,pondicherryfrench")

	listkeyval _sname_lgd, k("punjab") ///
		l("punjab,pjpunjab,panjab,pb")

	listkeyval _sname_lgd, k("rajasthan") ///
		l("rajasthan,rjrajasthan,rj")

	listkeyval _sname_lgd, k("sikkim") ///
		l("sikkim,sksikkim,sk")

	listkeyval _sname_lgd, k("tamilnadu") ///
		l("tamilnadu,tntamilnadu,tn,madras")

	listkeyval _sname_lgd, k("tripura") ///
		l("tripura,trtripura,tr,tp")

	listkeyval _sname_lgd, k("uttarakhand") ///
		l("ut,uttaranchal,uttrakhand,uk,uttranchal")

	listkeyval _sname_lgd, k("uttarpradesh") ///
		l("uttarpradesh,uputtarpradesh,uttarapradesh,up")

	listkeyval _sname_lgd, k("westbengal") ///
		l("westbengal,wbwestbengal,wb")

end

* define scode
cap prog drop scode2
prog scode2

	syntax varlist(string max=1)

	* run quietly
	qui {
		gen _scode_lgd = ""
		replace _scode_lgd = "01" if _sname_lgd == "jammukashmir"
		replace _scode_lgd = "02" if _sname_lgd == "himachalpradesh"
		replace _scode_lgd = "03" if _sname_lgd == "punjab"
		replace _scode_lgd = "04" if _sname_lgd == "chandigarh"
		replace _scode_lgd = "05" if _sname_lgd == "uttarakhand"
		replace _scode_lgd = "06" if _sname_lgd == "haryana"
		replace _scode_lgd = "07" if _sname_lgd == "delhi"
		replace _scode_lgd = "08" if _sname_lgd == "rajasthan"
		replace _scode_lgd = "09" if _sname_lgd == "uttarpradesh"
		replace _scode_lgd = "10" if _sname_lgd == "bihar"
		replace _scode_lgd = "11" if _sname_lgd == "sikkim"
		replace _scode_lgd = "12" if _sname_lgd == "arunachalpradesh"
		replace _scode_lgd = "13" if _sname_lgd == "nagaland"
		replace _scode_lgd = "14" if _sname_lgd == "manipur"
		replace _scode_lgd = "15" if _sname_lgd == "mizoram"
		replace _scode_lgd = "16" if _sname_lgd == "tripura"
		replace _scode_lgd = "17" if _sname_lgd == "meghalaya"
		replace _scode_lgd = "18" if _sname_lgd == "assam"
		replace _scode_lgd = "19" if _sname_lgd == "westbengal"
		replace _scode_lgd = "20" if _sname_lgd == "jharkhand"
		replace _scode_lgd = "21" if _sname_lgd == "odisha"
		replace _scode_lgd = "22" if _sname_lgd == "chhattisgarh"
		replace _scode_lgd = "23" if _sname_lgd == "madhyapradesh"
		replace _scode_lgd = "24" if _sname_lgd == "gujarat"
		replace _scode_lgd = "25" if _sname_lgd == "damandiu"
		replace _scode_lgd = "26" if _sname_lgd == "dadranagarhaveli"
		replace _scode_lgd = "27" if _sname_lgd == "maharashtra"
		replace _scode_lgd = "28" if _sname_lgd == "andhrapradesh"
		replace _scode_lgd = "29" if _sname_lgd == "karnataka"
		replace _scode_lgd = "30" if _sname_lgd == "goa"
		replace _scode_lgd = "31" if _sname_lgd == "lakshadweep"
		replace _scode_lgd = "32" if _sname_lgd == "kerala"
		replace _scode_lgd = "33" if _sname_lgd == "tamilnadu"
		replace _scode_lgd = "34" if _sname_lgd == "pondicherry"
		replace _scode_lgd = "35" if _sname_lgd == "andamannicobarislands"
		replace _scode_lgd = "36" if _sname_lgd == "telangana"
		replace _scode_lgd = "37" if _sname_lgd == "ladakh"

		* mark union territories
		inlist2 _scode_lgd, val(04,07,25,26,31,35,37) name(_ut_lgd)
	}

end

/*
cap program drop inlist2
program define inlist2
version 12.1
	syntax varlist (min=1 max=1) [if] [in], VALues(string) [  ///
	/* optional */ name(string) Verbose ///
	]

	marksample touse, strok

	if "`verbose'"==""  local silently quietly

	if ("`name'"=="") local name "inlist2"
	capture confirm variable `name'
	if (!_rc==1) di as error "Warning: inlist2 is replacing a preexisting variable with the same name. See option name(string)"
	cap drop `name'

	tokenize "`values'", parse(",")
	local num_values=((length("`values'") - length(subinstr("`values'",",","", .)))*2)+1
	cap gen byte `name'=.
	capture confirm string variable `varlist'
		if !_rc {
			forvalues iteration=1(2)`num_values' {
				`silently' replace `name'= (`varlist'=="``iteration''") if `touse' & `name'!=1
			}
		}
		else {
			forvalues iteration=1(2)`num_values'{
				`silently' replace `name'= (`varlist'==``iteration'') if `touse' & `name'!=1
			}
		}
		lab var `name' "=1 if -`varlist'- equals the specified value(s); 0 otherwise"
		note `name' : Specified values: `values'

* listkeyval with inbuilt inlist functionality

cap prog drop listkeyval
prog listkeyval

	* input: var, key, value
	syntax varlist(string max=1), KEY(varlist string) VALS(varlist string)

	* get value tokens from list [note: each even token is a comma]
	// tokenize "`list'", parse(",")

	* no. of values to lookup = (list length - no. of commas) + 1
	// local nvals = length("`list'") - length(subinstr("`list'",",","", .)) + 1

	// tokenize "`list'", parse(",")

	* no. of values to lookup = (list length - no. of commas) + 1
	local nvals = length("`list'") - length(subinstr("`list'",",","", .)) + 1

	* go up from 1 in steps of 2 [skipping even numbers]
	local ntokens = (`nvals'*2) - 1
	forval i = 1 (2) `ntokens' {
		local str = "``i''"
		replace `varlist' = "`key'" if state == "`str'"
	}
end

	listkeyval sname , key(stkey) vals(stvals)

end
