global dropbox "/home/ved/dropbox"
do "$dropbox/india_bridge/code/globals.do"

global rootdir "/home/ved/repos/india-bridge"

** states

import excel "${rootdir}/data/input/lgd/lgd_states_export_20231020.xlsx" , clear

    * rename
    drop in 1
    rename  B id_st_lgd
    rename  C name_st_lgd_en
    rename  D name_st_lgd_loc
    rename  E state_ut
    rename  F id_st_cen01
    rename  G id_st_cen11

    destring    id_* , replace
    order       id_* , first

    gen         is_ut = regexm(state_ut, "UT")
    drop        state_ut
    drop        ?

    sort        id_st_lgd
    isid        id_st_lgd

compress
save "${rootdir}/data/output/lgd_states.dta" , replace

** Districts

import excel "${rootdir}/data/input/lgd/lgd_districts_export_20231020.xlsx" , clear

    * rename
    drop in 1
    rename  B id_dt_lgd
    rename  C name_dt_lgd_en
    rename  D name_dt_lgd_loc
    rename  E hierarchy
    rename  F name_dt_lgd_abv
    rename  G id_dt_cen01
    rename  H id_dt_cen11
    rename  I pesa_status

    destring    id_* , replace
    order       id_* , first

    drop        ?

    replace     id_dt_cen11 = .m if id_dt_cen11 == 0
    sort        id_dt_lgd
    isid        id_dt_lgd

compress
save "${rootdir}/data/output/lgd_districts.dta" , replace
