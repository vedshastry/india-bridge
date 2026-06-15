{smcl}
{* *! version 2.0}{...}

{p2col:{bf:indiabridge}}

Fuzzy ("closest match") assignment of stable india-bridge state and district identifiers

{marker syntax}{...}

{title:Syntax}

{p 8 17 2}
{cmd:indiabridge}{cmd:,}
{opt CURRENT:year(num)}
{opt FROM:year(num)}
{opt TO:year(num)}
[{opt ST:atename(varname)} {opt IDS:tate(varname)}
{opt DIST:rictname(varname)} {opt IDD:istrict(varname)}]

{synoptset 24 tabbed}{...}
{synopthdr}
{synoptline}
{synopt:{opt CURRENT:year(num)}}data's reference year; picks the india-bridge round (census decade, or LGD for years after 2011){p_end}
{synopt:{opt FROM:year(num)}}earliest year covered by the data{p_end}
{synopt:{opt TO:year(num)}}latest year covered by the data{p_end}
{synopt:{opt ST:atename(varname)}}string variable holding state names{p_end}
{synopt:{opt IDS:tate(varname)}}numeric row id (required with statename){p_end}
{synopt:{opt DIST:rictname(varname)}}string variable holding district names{p_end}
{synopt:{opt IDD:istrict(varname)}}numeric row id (required with districtname){p_end}
{synoptline}

{p 4 6 2}State and district matching are independent and either may be used alone.
If {bf:both} are given, the matched state's iso scopes the district match (see below).{p_end}

{marker description}{...}

{title:Description}

{pstd}
{cmd:indiabridge} reconciles messy Indian state names against the india-bridge
dictionary by fuzzy string matching ({cmd:matchit}, n-gram similarity), rather
than the exhaustive hard-coded lookups of the legacy v1 program (archived under
{cmd:ado/indiabridge-v1/}).

{pstd}
Matching is {bf:round-aware}. {opt CURRENTyear()} selects the primary round - a
census decade ({cmd:cen1951}...{cmd:cen2011}) or the Local Government Directory
({cmd:lgd}) for years after 2011 - and the input is matched against that round's
per-year spelling dictionary (extracted from {cmd:sclean.ado}). {opt FROMyear()}
/{opt TOyear()} widen the candidate pool to every census round inside the data
window, so multi-year data still matches era-specific spellings.

{pstd}
Every variable the program creates is prefixed {cmd:_IB_}. Each input row is tagged
with a {bf:stable project id} ({cmd:_IB_stid}) that is constant across time, plus the
{bf:round-appropriate standardized name} ({cmd:_IB_stname_}{it:round}) - reproducing
what {cmd:sclean}{it:YYYY} would output.
Units lost or transferred over the decades (Bombay State, Madhya Bharat, PEPSU, ...)
receive a {cmd:999xxxx} stable id. Names reused across eras resolve by window: e.g.
"Telangana" maps to Andhra Pradesh for a pre-2014 window but to Telangana later.

{pstd}
{bf:Districts} work the same way but are scoped by state, because district names
repeat across states (there are two Aurangabads, two Hamirpurs, ...). If
{opt statename()} is also given, the matched state's iso restricts each row's
district candidates, so the right Aurangabad is chosen. With {opt districtname()}
{bf:alone}, a repeated name cannot be resolved: such rows are flagged
({cmd:_IB_ambig}==1), their id is left missing, and the competing units are listed
in {cmd:_IB_dtcandidates} for review.

{marker outputs}{...}

{title:Variables created}

{p 4 4 2}{bf:State} ({opt statename()}):{p_end}
{synoptset 24 tabbed}{...}
{synopt:{cmd:_IB_stid}}stable india-bridge state id (string; {cmd:999xxxx} = lost/transferred unit){p_end}
{synopt:{cmd:_IB_stname}}stable (current) canonical name of the matched unit{p_end}
{synopt:{cmd:_IB_stiso}}2-letter state code (used to scope districts){p_end}
{synopt:{cmd:_IB_stname_}{it:round}}standardized name for the primary round, e.g. {cmd:_IB_stname_cen2001}{p_end}
{synopt:{cmd:_IB_stid_}{it:round}}matched round id, for round = {cmd:cen2001}, {cmd:cen2011} or {cmd:lgd}, e.g. {cmd:_IB_stid_cen2011}{p_end}
{synoptline}

{p 4 4 2}{bf:District} ({opt districtname()}):{p_end}
{synoptset 24 tabbed}{...}
{synopt:{cmd:_IB_dtid}}stable district id (string; {cmd:999xxxxx} = lost/renamed unit; missing if ambiguous){p_end}
{synopt:{cmd:_IB_dtname}}stable (current) canonical district name{p_end}
{synopt:{cmd:_IB_dtiso}}state iso of the matched district{p_end}
{synopt:{cmd:_IB_dtname_}{it:round}}standardized district name for the primary round{p_end}
{synopt:{cmd:_IB_dtid_}{it:round}}matched round district id, for {cmd:cen2001}, {cmd:cen2011} or {cmd:lgd}{p_end}
{synopt:{cmd:_IB_dtcandidates}}competing "iso:id" units when a district name is ambiguous{p_end}
{synopt:{cmd:_IB_ambig}}1 if the district name matched more than one state's unit{p_end}
{synoptline}

{p 4 4 2}Both report {cmd:_IB_score} (best similarity, 1 = exact) and {cmd:_IB_match}
(1 = matched).{p_end}

{p 4 6 2}{bf:Always inspect low {cmd:_IB_score} values, {cmd:_IB_match}==0, and
{cmd:_IB_ambig}==1 rows by hand} - fuzzy matching can mis-rank very short or
heavily misspelled names.{p_end}

{marker examples}{...}

{title:Examples}
{hline}

{pstd}Modern data (state names in {cmd:sname}, row id in {cmd:id}):{p_end}
{phang2}{cmd:. indiabridge, currentyear(2011) fromyear(2011) toyear(2011) statename(sname) idstate(id)}{p_end}

{pstd}States and districts together (state scopes the district match):{p_end}
{phang2}{cmd:. indiabridge, currentyear(2011) fromyear(2011) toyear(2011) statename(sname) idstate(id) districtname(dname) iddistrict(id)}{p_end}

{pstd}Districts alone (repeated names will be flagged in {cmd:_IB_ambig}):{p_end}
{phang2}{cmd:. indiabridge, currentyear(2011) fromyear(2011) toyear(2011) districtname(dname) iddistrict(id)}{p_end}

{hline}

{marker dictionary}{...}

{title:Dictionary}

{pstd}
The per-year name dictionaries {cmd:dict/state_names.csv} and
{cmd:dict/dist_names.csv} are extracted from the curated v1 cleaning programs
({cmd:ado/sclean.ado}, {cmd:ado/dclean.ado}) by {cmd:src/code/extract_dicts.do}.

{pstd}
The runtime files are generated from those dictionaries plus the LGD outputs:
{cmd:src/code/prep_state_crosswalk.do} builds {cmd:dict/state/st_crosswalk.csv},
{cmd:dict/state/st_year_dict.csv} and {cmd:dict/id_st_indiabridge.csv};
{cmd:src/code/prep_district_crosswalk.do} builds the {cmd:dict/district/}
equivalents. Edit a source, re-run the relevant do-files to rebuild.

{pstd}
{bf:Note (districts):} historical districts are anchored to LGD by name within
state. A district that was renamed (allahabad{c -}>prayagraj) or moved to a new
state (Telangana districts in 2014) currently lands as a {cmd:999xxxxx} historical
unit rather than auto-linking to its modern LGD code; full cross-time district
bridging is a planned refinement.

{title:Maintainer(s)}

{p 4 4 2}{bf:Vedarshi Shastry}{break}
			veshastr@ucsc.edu{break}
			vedshastry.com

{title:Dependencies}

{p 4 4 2}{cmd:matchit} (J. Raffo) and {cmd:strkeep} (R. Chu); both are installed
from SSC automatically on first run if missing.

{hline}
