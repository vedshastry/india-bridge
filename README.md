# india-bridge

`india-bridge` is a collection of Stata tools that assign **stable, time-consistent
identifiers** to messy Indian **state** and **district** names, so data from
different sources and decades can be linked. Codes are kept in sync with the
administrative atlas and the [Local Government Directory (LGD)](https://lgdirectory.gov.in/)
(see `docs/`).

The current program, `indiabridge`, matches names by **round-aware fuzzy string
matching** rather than exhaustive hard-coded lookups. It covers the Census decades
1951–2011 and the LGD, and resolves names reused across eras (e.g. "Telangana",
"Madras", "Orissa") to the correct unit for a given time window.

## Installation

`indiabridge` lives in `ado/indiabridge-v2/`. Choose either method.

### Option 1 — `net install` (quick)

```stata
net install indiabridge, ///
    from("https://raw.githubusercontent.com/vedshastry/india-bridge/master/ado/indiabridge-v2") ///
    replace
```

The two dependencies (`matchit`, `strkeep`) auto-install from SSC on first run.

### Option 2 — adopath (recommended for reproducibility)

Clone the repo and point Stata's ado path at the package — ideally from your
project's `profile.do` so it is version-controlled with your work:

```stata
* profile.do
adopath + "/path/to/india-bridge/ado/indiabridge-v2"
```

This guarantees the runtime dictionaries under `dict/` travel with the program.

Verify either way with `which indiabridge` and `help indiabridge`.

## Usage

```stata
* states (names in `sname`, a unique numeric row id in `id`)
indiabridge, currentyear(2011) fromyear(2011) toyear(2011) ///
    statename(sname) idstate(id)

* states + districts together (matched state iso scopes the district match)
indiabridge, currentyear(2011) fromyear(2011) toyear(2011) ///
    statename(sname) idstate(id) districtname(dname) iddistrict(id)
```

`currentyear()` picks the matching round (a Census decade, or LGD for years after
2011); `fromyear()`/`toyear()` widen the candidate pool to era-specific spellings
inside the data window. All created variables are prefixed `_IB_` (stable id
`_IB_stid`, round name `_IB_stname_`*round*, match quality `_IB_score`/`_IB_match`,
plus district equivalents). Run `help indiabridge` for the full variable list and
the district-ambiguity (`_IB_ambig`) handling.

> Always eyeball low `_IB_score`, `_IB_match==0`, and `_IB_ambig==1` rows by hand —
> fuzzy matching can mis-rank very short or heavily misspelled names.

## Directory structure

- `ado/indiabridge-v2/` — the current `indiabridge` program, its help file, the
  net-install manifest (`stata.toc`, `indiabridge.pkg`), and the runtime
  dictionaries in `dict/`.
- `ado/indiabridge-v1/` — the **archived** original program (`dclean`, `dcode`,
  `sclean`, `scode`, `indiabridge` wrapper). Kept for reference and reproducibility;
  not maintained.
- `src/code/` — reproducible build and test do-files: `extract_dicts.do`,
  `prep_state_crosswalk.do`, `prep_district_crosswalk.do`, and the
  `test_indiabridge*.do` end-to-end checks.
- `data/` — bridge/crosswalk datasets and LGD inputs/outputs.
- `docs/` — administrative atlas and district-change references.
- `archive/` — superseded/legacy material (e.g. `indiabridge_legacy_dict/`).
- `releases/` — older compressed snapshots of the v1/v2 Stata programs.

## How the dictionaries are built

The runtime dictionaries are reproducible from the curated v1 cleaning programs:

1. `src/code/extract_dicts.do` parses `ado/indiabridge-v1/sclean.ado` and
   `dclean.ado` into per-year name dictionaries
   (`ado/indiabridge-v2/dict/state_names.csv`, `dist_names.csv`).
2. `src/code/prep_state_crosswalk.do` and `prep_district_crosswalk.do` combine
   those with the LGD outputs to build the round-aware files read at runtime
   (`dict/state/`, `dict/district/`).

Edit a source, then re-run the relevant do-file from the repository root to rebuild.

## Versioning

`indiabridge` (v2) **replaces** the original program entirely and is invoked with
the same `indiabridge` command. The v1 implementation is archived under
`ado/indiabridge-v1/`; switching may change identifiers or break v1-specific
scripts.

## Maintainer

Vedarshi Shastry — vedshastry.com
