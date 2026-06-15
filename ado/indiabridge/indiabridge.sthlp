{smcl}

{* *! version 17.1 01feb2022}{...}

{p2col:{bf:indiabridge}}

Census consistent district identification

{marker syntax}{...}

{title:Syntax}

{p}

{cmd:indiabridge} {it:[if]}{cmd:,} {opt y:ear(num)} {opt s:tate(varlist)} {opt d:istrict(varlist)}

{marker menu}{...}

{marker description}{...}

{title:Description}

{pstd}

{cmd:indiabridge} is a collection of ado programs to standardise variations/typos in state and district names in India from 1951 until 2011.
These names are standardised in accordance with Census reports and the administrative atlas (available in the project documentation).
After standardising names, {cmd:indiabridge} also assigns unique state codes and district codes along with the relevant (current) ISO code & union territory status.

{marker options}{...}

{title:Options}

{phang}{opt y:ear(num)} is a year required in YYYY format (numeric).

{phang}{opt s:tate(var)} specifies a variable containing state names.

{phang}{opt d:istrict(var)} specifies a variable containing district names.

{marker examples}{...}

{title:Examples}
{hline}

{pstd} Assuming 2001 identification is required for state names stored in {cmd: state_name} and district names stored in {cmd: district_name} -

{phang2}{cmd:. indiabridge, y(2001) s(state_name) d(district_name)}


{hline}

{title:Maintainer}

{p 4 4 2}{bf:Vedarshi Shastry}{break}
			vedarshis@gmail.com{break}
			vedshastry.github.io

{bf:To-do}
{hline}
{cmd:indiabridge} currently only works for one variable of state & district each, for one year at a time.
I plan on building in input for a year variable in YYYY format for {opt y:ear()}, and parsing multiple state/district variables in one go.

{pstd} Suppose now the variable {cmd: cenyear} contains a list of multiple Census years (say, 1991 and 2001) -

{phang2}{cmd:. indiabridge, y(cenyear) s(statelist) d(districtlist)}

{phang2} will now read the year from {cmd: cenyear} and assign the relevant state/district identifiers to variables in {cmd:statelist, districtlist}.

{hline}

{title:Acknowledgements & References}

{p 4 8 2}
{bf:Kumar, Hemanshu and Somanathan, Rohini}{break}
{it:State and District Boundary Changes in India: 1961-2001 (November 6, 2015)}{break}
http://dx.doi.org/10.2139/ssrn.2687484

Additional information on district splits and merges was derived from work previously done by the authors of this paper.

{p 4 4 2}{bf:Nicholas J. Cox, Durham University, U.K.}{break}
         n.j.cox@durham.ac.uk

{cmd:egenmore}, maintained by Nicholas J. Cox is a dependency for {cmd:indiabridge}.



{hline}
