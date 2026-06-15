{smcl}
{* *! version 2.0}{...}

{p2col:{bf:indiabridge2}}

Fuzzy ("closest match") assignment of stable india-bridge state identifiers

{marker syntax}{...}

{title:Syntax}

{p 8 17 2}
{cmd:indiabridge2}{cmd:,}
{opt CURRENT:year(num)}
{opt FROM:year(num)}
{opt TO:year(num)}
{opt ST:atename(varname)}
{opt IDS:tate(varname)}

{synoptset 24 tabbed}{...}
{synopthdr}
{synoptline}
{synopt:{opt CURRENT:year(num)}}data's reference year; picks the india-bridge round (census decade, or LGD for years after 2011){p_end}
{synopt:{opt FROM:year(num)}}earliest year covered by the data{p_end}
{synopt:{opt TO:year(num)}}latest year covered by the data{p_end}
{synopt:{opt ST:atename(varname)}}string variable holding state names to match{p_end}
{synopt:{opt IDS:tate(varname)}}numeric variable uniquely identifying each input row{p_end}
{synoptline}

{p 4 6 2}{opt DIST:rictname()} and {opt IDD:istrict()} are accepted but district
matching is {bf:not yet implemented} (planned for a future release).{p_end}

{marker description}{...}

{title:Description}

{pstd}
{cmd:indiabridge2} reconciles messy Indian state names against the india-bridge
dictionary by fuzzy string matching ({cmd:matchit}, n-gram similarity), rather
than the exhaustive hard-coded lookups of {cmd:indiabridge} (v1).

{pstd}
Matching is {bf:round-aware}. {opt CURRENTyear()} selects the primary round - a
census decade ({cmd:cen1951}...{cmd:cen2011}) or the Local Government Directory
({cmd:lgd}) for years after 2011 - and the input is matched against that round's
per-year spelling dictionary (extracted from {cmd:sclean.ado}). {opt FROMyear()}
/{opt TOyear()} widen the candidate pool to every census round inside the data
window, so multi-year data still matches era-specific spellings.

{pstd}
Each input row is tagged with a {bf:stable project id} ({cmd:__id_st_ib}) that is
constant across time, plus the {bf:round-appropriate standardized name}
({cmd:__name_st_}{it:round}) - reproducing what {cmd:sclean}{it:YYYY} would output.
Units lost or transferred over the decades (Bombay State, Madhya Bharat, PEPSU, ...)
receive a {cmd:999xxxx} stable id. Names reused across eras resolve by window: e.g.
"Telangana" maps to Andhra Pradesh for a pre-2014 window but to Telangana later.

{marker outputs}{...}

{title:Variables created}

{synoptset 24 tabbed}{...}
{synopt:{cmd:__id_st_ib}}stable india-bridge state id (string; {cmd:999xxxx} = lost/transferred unit){p_end}
{synopt:{cmd:__name_st_ib}}stable (current) canonical name of the matched unit{p_end}
{synopt:{cmd:__name_st_}{it:round}}standardized name for the primary round, e.g. {cmd:__name_st_cen2001}{p_end}
{synopt:{cmd:__id_st_}{it:round}}matched round id, for round = {cmd:cen2001}, {cmd:cen2011} or {cmd:lgd}{p_end}
{synopt:{cmd:_IBscore}}similarity score of the best match (1 = exact){p_end}
{synopt:{cmd:_IBmatch}}1 if matched, 0 if no candidate cleared the similarity threshold{p_end}
{synoptline}

{p 4 6 2}{bf:Always inspect low {cmd:_IBscore} values and any {cmd:_IBmatch}==0
rows by hand} - fuzzy matching can mis-rank very short or heavily misspelled names.{p_end}

{marker examples}{...}

{title:Examples}
{hline}

{pstd}Modern data (state names in {cmd:sname}, row id in {cmd:id}):{p_end}
{phang2}{cmd:. indiabridge2, currentyear(2011) fromyear(2011) toyear(2011) statename(sname) idstate(id)}{p_end}

{pstd}Recent (post-2011) data, matched against the Local Government Directory:{p_end}
{phang2}{cmd:. indiabridge2, currentyear(2020) fromyear(2015) toyear(2020) statename(sname) idstate(id)}{p_end}

{hline}

{marker dictionary}{...}

{title:Dictionary}

{pstd}
The per-year name dictionaries {cmd:dict/state_names.csv} and
{cmd:dict/dist_names.csv} are extracted from the curated v1 cleaning programs
({cmd:ado/sclean.ado}, {cmd:ado/dclean.ado}) by {cmd:src/code/extract_dicts.do}.

{pstd}
The runtime files {cmd:dict/state/st_crosswalk.csv} (stable registry),
{cmd:dict/state/st_year_dict.csv} (round-aware candidates) and the project-id
registry {cmd:dict/id_st_indiabridge.csv} are then generated from
{cmd:state_names.csv} + {cmd:state/st_lgd.csv} + {cmd:data/output/lgd_states.dta}
by {cmd:src/code/prep_state_crosswalk.do}. Edit a source, re-run those two
do-files to rebuild.

{title:Maintainer(s)}

{p 4 4 2}{bf:Vedarshi Shastry}{break}
			vedarshis@gmail.com{break}
			vedshastry.github.io{break}
		{bf:Aaditya Dar}{break}
			aadityadar@gmail.com{break}
			aadityadar.com

{title:Dependencies}

{p 4 4 2}{cmd:matchit} (J. Raffo) and {cmd:strkeep} (R. Chu); both are installed
from SSC automatically on first run if missing.

{hline}
