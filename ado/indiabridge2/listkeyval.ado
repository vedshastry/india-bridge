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

/*
`listkeyval`

listkeyval takes a string variable as input, compares it against a list of values and assigns the relevant key
*/
