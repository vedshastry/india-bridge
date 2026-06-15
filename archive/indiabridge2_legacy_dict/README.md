# Legacy indiabridge2 dictionary files

These per-round CSVs (`st_cen2001.csv`, `st_cen2011.csv`) are from the abandoned
3-file design of `indiabridge2`. They are **not used** by the current program: the
runtime now reads the round-aware `dict/state/st_year_dict.csv` +
`dict/state/st_crosswalk.csv` (built by `src/code/prep_state_crosswalk.do` from
`dict/state_names.csv` and `dict/state/st_lgd.csv`).

Kept here for reference only. Safe to delete.
