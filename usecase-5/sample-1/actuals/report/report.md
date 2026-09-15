---
verified-by: single-reader cross-check
verified-on: 2026-09-15
confidence: SURE
---
# The reissue explained: AD-3010-C-330030-SHT-004, Rev 3 → Rev 4

Source: `documents/source/AD-3010-C-330030-SHT-004-REV4.pdf` (Rev 4, issued for construction 27.07.2026)
Supporting: `documents/supporting/AD-3010-C-330030-SHT-004-REV3.pdf` (Rev 3, issued for construction 20.04.2026 — superseded)

## Counts by kind

| kind | count |
|---|---|
| ADDED | 4 |
| CHANGED | 11 |
| UNCHANGED | 2 |
| REMOVED | 0 |
| material: yes | 13 |
| material: no | 4 |
| confidence: SURE | 14 |
| confidence: UNSURE | 3 |
| **total units** | **17** |

## Rows, in on-sheet order

| id | area | kind | material | confidence | what changed |
|---|---|---|---|---|---|
| TITLE-1 | Title block | CHANGED | true | SURE | Drawing title shortened from a named system list to "UTILITIES - UNIT 3010". |
| REV-1 | Title block, revision table | ADDED | false | SURE | New Rev 4 row: 27.07.2026, Issued for Construction. |
| NOTE-1 | Notes box | ADDED | false | SURE | New "SYMBOLOGY" legend defining the `(*)` already-communicated cloud marker. |
| MEMB-1 | Plan EL. 111.500, Grid 1–2/A–B | CHANGED | true | SURE | Brace T171x178x26 notch depth -120 → -175; clouded, marked `(*)`. |
| MEMB-2 | Plan EL. 111.500, midpoint column, Grid C–D | CHANGED | true | SURE | UC203x203x46 (-120): weld/bolt count `(30N 10V)` added; clouded. |
| MEMB-3 | Plan EL. 111.500, midpoint column, Grid C–D | CHANGED | true | SURE | UC203x203x46 (-120), next panel: weld/bolt count `(30N 10V)` added; clouded. |
| MEMB-4 | Plan EL. 111.500, Grid D, column line 1 | CHANGED | true | SURE | UB457x191x74 weld/bolt count (50N 10V) → (58N 2Vy); **no cloud**. |
| MEMB-5 | Plan EL. 111.500, Grid D, column line 2 | CHANGED | true | SURE | UB457x191x74 weld/bolt count (50N 10V) → (63N 3Vy); **no cloud**. |
| MEMB-6 | Plan EL. 111.500, midpoint column at Grid D | ADDED | true | SURE | New brace T171x178x34 (-120) toward column 2; clouded. |
| MEMB-7 | Plan EL. 111.500, midpoint column at Grid D | ADDED | true | SURE | New brace T171x178x34 (-120) toward column 1; clouded; companion to MEMB-6. |
| MEMB-8 | Plan EL. 111.500, midpoint column, Grid D–E | CHANGED | true | SURE | UC203x203x46 (-120): weld/bolt count `(30N 10V)` added; clouded. |
| MEMB-9 | Plan EL. 111.500, midpoint column area, near Grid E–F | CHANGED | true | SURE | UB305x165x46: weld/bolt count `(30N 10V)` added; clouded. |
| MEMB-10 | Plan EL. 111.500, midpoint column (grid row unconfirmed) | CHANGED | true | UNSURE | UC203x203x46 (-120): weld/bolt count `(30N 10V)` added; grid row pending second reader. |
| MEMB-11 | Plan EL. 111.500, midpoint column (grid row unconfirmed) | CHANGED | true | UNSURE | Same pattern as MEMB-10; grid row pending second reader. |
| MEMB-12 | Plan EL. 111.500, midpoint column (grid row unconfirmed) | CHANGED | true | UNSURE | Same pattern as MEMB-10; grid row pending second reader. |
| CTRL-1 | Plan EL. 112.800, Grid A, column-2 node | UNCHANGED | false | SURE | Reformat control case: Rev 3 clouds cleared, two labels swap vertical order, no wording change. |
| CTRL-2 | Plan EL. 111.500, Grid A, column line 1 | UNCHANGED | false | SURE | Plain control case: byte-identical callout, no cloud on either revision. |

## Open items before this pack can be signed

- `MEMB-10`, `MEMB-11`, `MEMB-12`: exact grid row not yet independently confirmed by a second reader (`pivot.md` § 4).
- `TITLE-1`: materiality call (`true`) not yet confirmed by a second reader (`pivot.md` § 3).
- No named domain reviewer from Assent Steel or the project team has signed this pack; `bootstrap.md` `state: verified`, not `signed`.
