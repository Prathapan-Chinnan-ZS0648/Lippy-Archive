---
---

# Graph — run 2026-09-29-a

Which unit was checked against what, and how findings trace to the report.
Grain: one finding per tagged item (skill bom-extraction). Two reading channels per unit:
(a) rendered-raster perception (200 dpi overview + 400 dpi targeted crop of the item's own
block); (b) PDF text layer where it surfaced the string (large header rows only).

| unit | label | home twin page | crop evidence (400 dpi, px box) | text-layer confirm | finding file | report row |
|---|---|---|---|---|---|---|
| V-200 | EQUIPMENT | page-006 | [2550,150,3500,550] datasheet | yes ("V-200 INTERMEDIATE PRESSURE BULK SEPARATOR") | findings/V-200.md | EQUIPMENT tbl |
| PSV-200 | SAFETY-RELIEF-VALVE | page-006 | [1950,700,2800,1400] cloud+bubble | no | findings/PSV-200.md | PSV tbl |
| PSV-201 | SAFETY-RELIEF-VALVE | page-006 | tile-2 sweep crop (SET @ 362 PSIG) | no | findings/PSV-201.md | PSV tbl |
| PSV-202 | SAFETY-RELIEF-VALVE | page-006 | tile-2 sweep crop (SET @ 380 PSIG) | no | findings/PSV-202.md | PSV tbl |
| LCV-200 | CONTROL-VALVE | page-006 | [4150,2100,5100,2750] | no | findings/LCV-200.md | CV tbl |
| LCV-201 | CONTROL-VALVE | page-006 | [3450,3150,4150,3650] | no | findings/LCV-201.md | CV tbl |
| V-600A | EQUIPMENT | page-008 | [2700,150,3600,550] | yes ("V-600A TEST SEPARATOR #1") | findings/V-600A.md | EQUIPMENT tbl |
| PSV-600A | SAFETY-RELIEF-VALVE | page-008 | tile-2 sweep (SET @ 720 PSIG) | no | findings/PSV-600A.md | PSV tbl |
| PSV-601A | SAFETY-RELIEF-VALVE | page-008 | tile-3 sweep (SET @ 738 PSIG) | no | findings/PSV-601A.md | PSV tbl |
| PSV-602A | SAFETY-RELIEF-VALVE | page-008 | tile-3 sweep (SET @ 756 PSIG) | no | findings/PSV-602A.md | PSV tbl |
| PCV-600A | CONTROL-VALVE | page-008 | [5850,0,6800,1300]+[5900,550,6550,1000] | no | findings/PCV-600A.md | CV tbl |
| PCV-601A | CONTROL-VALVE | page-008 | [4533,0,5500,1300] (SET @ 35 PSIG) | no | findings/PCV-601A.md | CV tbl |
| PCV-602A | CONTROL-VALVE | page-008 | [3300,500,4533,1700] | no | findings/PCV-602A.md | CV tbl |
| PCV-604A | CONTROL-VALVE | page-008 | [2266,2200,3400,3400] | no | findings/PCV-604A.md | CV tbl |
| LCV-601A | CONTROL-VALVE | page-008 | tile-2 sweep (2" V-BALL FO) | no | findings/LCV-601A.md | CV tbl |
| LCV-602A | CONTROL-VALVE | page-008 | tile-5 sweep (2" V-BALL FO) | no | findings/LCV-602A.md | CV tbl |
| LCV-603A | CONTROL-VALVE | page-008 | tile-5 sweep (2" V-BALL FO) | no | findings/LCV-603A.md | CV tbl |
| PCV-201 | CONTROL-VALVE | page-010 | [1850,1600,2500,2000] "SET @ 310PSI" | no | findings/PCV-201.md | CV tbl |
| PCV-202 | CONTROL-VALVE | page-010 | [4700,1700,5600,2400] | no | findings/PCV-202.md | CV tbl |
| V-700 | EQUIPMENT | page-011 | [3150,150,4200,450] | yes ("V-700 VENT STACK") | findings/V-700.md | EQUIPMENT tbl |
| CA-800 | EQUIPMENT | page-012 | [1250,0,2100,600] | yes (header row) | findings/CA-800.md | EQUIPMENT tbl |
| F-803 | EQUIPMENT | page-012 | [2266,350,3150,1050] | yes | findings/F-803.md | EQUIPMENT tbl |
| F-804A | EQUIPMENT | page-012 | tile-2 sweep header block | yes | findings/F-804A.md | EQUIPMENT tbl |
| DR-804 | EQUIPMENT | page-012 | tile-2/3 sweep header block | yes | findings/DR-804.md | EQUIPMENT tbl |
| F-804B | EQUIPMENT | page-012 | tile-3 sweep header block | yes | findings/F-804B.md | EQUIPMENT tbl |
| V-805 | EQUIPMENT | page-012 | tile-3 sweep header block | yes | findings/V-805.md | EQUIPMENT tbl |
| DR-3001 | EQUIPMENT | page-012 | full-page view; text layer "VENT MUFFLERS (OUTSIDE BUILDING) DR-3001 (f)" | yes | findings/DR-3001.md | EQUIPMENT tbl |
| PSV-800 | SAFETY-RELIEF-VALVE | page-012 | [2200,1300,3050,1750]+[2150,1600,3050,1900] | no | findings/PSV-800.md | PSV tbl |
| PSV-801A | SAFETY-RELIEF-VALVE | page-012 | tile-1 sweep (SET @ 80 PSI / 74 SCFM) | no | findings/PSV-801A.md | PSV tbl |
| PSV-802A | SAFETY-RELIEF-VALVE | page-012 | tile-3 sweep | no | findings/PSV-802A.md | PSV tbl |
| PSV-805 | SAFETY-RELIEF-VALVE | page-012 | tile-5 sweep (3/4"X1" SET @ 200 PSIG) | no | findings/PSV-805.md | PSV tbl |
| PCV-800 | CONTROL-VALVE | page-012 | tile-5 sweep (SET @ 100 PSIG, pilot) | no | findings/PCV-800.md | CV tbl |
| KV-800 | CONTROL-VALVE | page-012 | tile-2/3 sweep (1/2" FC) | no | findings/KV-800.md | CV tbl (UNSURE) |
| KV-805 | CONTROL-VALVE | page-012 | tile-5 sweep (1/2" FO) | no | findings/KV-805.md | CV tbl (UNSURE) |

## Negative-result checks (no units)
- page-003, page-004: 6-tile sweeps found no tagged equipment/PSV/PCV → plan.md exclusion list; detection §4/§6.
- page-005/007/009/013: INTENTIONALLY BLANK, full-page views.

## Traceability
Every report table row is generated from exactly one findings/<tag>.md; counts in
report.md equal file counts in findings/ (10/10/14 = 34). UNSURE share: 3/34 individually
extracted units (8.8%) — KV-800, KV-805 (prefix not in the set's nomenclature) and DR-3001
(tag legible both channels, no datasheet block located on any sheet) — plus 1 twin-page
title item (page-010). All within the pack's 10% signing budget.
