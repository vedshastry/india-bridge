global dropbox "/home/ved/dropbox"
do "$dropbox/india_bridge/code/globals.do"

global rootdir "/home/ved/repos/india-bridge/"

import excel "${rootdir}/data/input/lgd/lgd_utstates_export_20231020.xlsx" , clear

    * rename
    rename  A sr_no
    rename  B id_st_lgd
    rename  C name_st_lgd_en
    rename  D name_st_lgd_loc
    rename  E is_ut
    rename  F id_st_cen01
    rename  G
    rename  H
    rename  I
    rename  J
    rename  K
    rename  L
    rename  M
import excel "${rootdir}/data/input/lgd/lgd_districts_export_20231020.xlsx" , clear

    * rename
    rename  A sr_no
    rename  B id_lgd_dt
    rename  C dtname_lgd_en
    rename  D dtname_lgd_loc
    rename  E
    rename  F
    rename  G
    rename  H
    rename  I
    rename  J
    rename  K
    rename  L
    rename  M
