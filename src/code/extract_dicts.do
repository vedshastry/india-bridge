*-------------------------------------------------------------------------------
* extract_dicts.do
*
* Regenerates the indiabridge2 name dictionaries directly from the curated v1
* cleaning programs, so the dictionaries are a faithful, reproducible image of
* the per-year spelling-variation sublists. Run from the repository root.
*
* Parses lines of the form
*   qui replace `snameYYYY' = "canonical" if inlist(`snameYYYY', "v1", "v2", ...)
*   qui replace `dnameYYYY' = "canonical" if `isoYYYY' == "XX" & inlist(..., ...)
* taking the year from the enclosing  program define {s|d}cleanYYYY.
*
* Inputs : ado/sclean.ado            ado/dclean.ado
* Outputs: ado/indiabridge2/dict/state_names.csv   year, state, names
*          ado/indiabridge2/dict/dist_names.csv     year, dist, iso, names
*-------------------------------------------------------------------------------

clear all
version 14.0

local Q = char(34)                              // a literal double quote
local QP `"["]"'                                // regex char-class matching one quote
local TOK `"["]([^"]+)["]"'                     // regex for one "quoted" token

*-------------------------------------------------------------------------------
* loop over the two sources
*-------------------------------------------------------------------------------
foreach src in state district {

	if "`src'" == "state" {
		local infile  "ado/sclean.ado"
		local outfile "ado/indiabridge2/dict/state_names.csv"
		local prog    "sclean"
		local header  "year,state,names"
	}
	else {
		local infile  "ado/dclean.ado"
		local outfile "ado/indiabridge2/dict/dist_names.csv"
		local prog    "dclean"
		local header  "year,dist,iso,names"
	}

	tempname fin fout
	file open `fin'  using "`infile'"  , read  text
	file open `fout' using "`outfile'" , write replace text
	file write `fout' "`header'" _n

	local year ""
	local nrows = 0

	file read `fin' line
	while r(eof) == 0 {

		* track the current census year from the program header
		if ustrregexm(`"`line'"', "program define `prog'([0-9]+)") {
			local year = ustrregexs(1)
		}
		* parse a cleaning rule
		else if strpos(`"`line'"', "replace") & strpos(`"`line'"', "inlist(") {

			* canonical name = first quoted token after the "="
			local aftereq = substr(`"`line'"', strpos(`"`line'"', "=") + 1, .)
			local canon ""
			if ustrregexm(`"`aftereq'"', `"`TOK'"') local canon = ustrregexs(1)

			* state ISO (district file only) = first quoted token after "=="
			local iso ""
			local eqpos = strpos(`"`line'"', "==")
			if `eqpos' > 0 {
				local isopart = substr(`"`line'"', `eqpos', .)
				if ustrregexm(`"`isopart'"', `"`TOK'"') local iso = ustrregexs(1)
			}

			* variant list = every quoted token inside inlist(...)
			local afterin = substr(`"`line'"', strpos(`"`line'"', "inlist(") + 7, .)
			local names ""
			while ustrregexm(`"`afterin'"', `"`TOK'"') {
				local tok = ustrregexs(1)
				if "`names'" == "" 	local names "`tok'"
				else 				local names "`names',`tok'"
				local afterin = ustrregexrf(`"`afterin'"', `"`TOK'"', "")
			}

			* write the dictionary row
			if "`canon'" != "" & "`year'" != "" {
				if "`src'" == "state" {
					local row `"`year',`Q'`canon'`Q',`Q'`names'`Q'"'
				}
				else {
					local row `"`year',`Q'`canon'`Q',`Q'`iso'`Q',`Q'`names'`Q'"'
				}
				file write `fout' `"`row'"' _n
				local ++nrows
			}
		}

		file read `fin' line
	}

	file close `fin'
	file close `fout'
	di as result "`src': wrote `nrows' rows to `outfile'"
}
