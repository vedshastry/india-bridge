*-------------------------------------------------------------------------------
* Objective: Standardise a list of state names with typos/variations
*-------------------------------------------------------------------------------

/*
`listkeyval`

listkeyval takes a string variable as input, compares it against a list of values and assigns the relevant key
*/

import delimited "/home/ved/repos/india-bridge/ado/indiabridge2/stkeyvals.csv", clear varnames(1) delimiter(",")


import delimited "/home/ved/repos/india-bridge/ado/indiabridge2/stkeyvals.txt", clear varnames(1) delimiter(";") stringcols(_all)
tempfile stkeys
save `stkeys', replace

local N = _N
forval i = 1/`N' {
	listkeyval _sname_lgd, k(stkey[`i']) ///
		l(stvals[`i'])
}
di "`N'"

cap prog drop listkeyval
prog listkeyval

	* input: var, key, value
	syntax varlist(string max=1), Key(string) List(string)

	* run quietly
	qui {
		local statevar `varlist'
		inlist2 `statevar', val("`list'") name(_x)
		replace `statevar' = "`key'" if _x
		drop _x
	}

end

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
end

* listkeyval with inbuilt inlist functionality

cap prog drop listkeyval
prog listkeyval

	* input: var, key, value
	syntax varlist(string max=1), Key(string) List(string)

	local statevar `varlist'

	* get value tokens from list [note: every 2nd token is the delimiter]
	tokenize "`list'", parse(",")

	* no. of values = (list length - no. of commas) + 1
	local nvals = length("`list'") - length(subinstr("`list'",",","", .)) + 1

	* go up in steps of 2 [all odd numbers are values]
	local ntokens = (`nvals'*2) - 1
	forval i = 1 (2) `ntokens' {
		local str = "``i''"
		replace `statevar' = "`key'" if state == "`str'"
	}
end
