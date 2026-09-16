---
document: AD-3010-C-330030-SHT-004-REV3.pdf
for-document: sha256:d8afdded2146507660d5f0e2de55790f13c910472e63f2a1adb47a628a65cbe6
page: 1
tier: TEXT_LAYER
read-by: pdftotext -raw; pdftoppm -r 300 (300dpi raster, cross-checked by pixel diff against REV4)
laid-out-as-a-table: true
verified-by: single-reader cross-check
verified-on: 2026-09-15
verification: corrected
confidence: SURE
---

## Title block

| Field | Value |
| --- | --- |
| Consultant/Contractor/Vendor | TECNICAS REUNIDAS (logo); client logo ADNOC Offshore |
| Project/PMR title | LOWER ZAKUM LONG TERM DEVELOPMENT — PLAN PHASE-1 (LZ LTDP-1) - EPC WORKS PACKAGE 2 |
| Drawing title | UTILITIES (NITROGEN SYSTEM, INSTRUMENT/PLANT AIR, POTABLE WATER)-UNIT 3010 / AL OMAIRAH ISLAND / 3010PAR002 STEEL STRUCTURE / PLAN EL. 111.500 & 112.800 (T.O.S.) |
| Drawing No. | AD-3010-C-330030-SHT-004 |
| Sht.No. | 004 |
| Rev. | 3 |
| Scale | AS SHOWN |
| Sht. Size | A1 |
| Budget Ref. | 14001-10222-2 |
| Proj/PMR No. | 10222-2 |

## Revision history table

| Rev | Date | Description | By | Chk | Eng | Appd |
| --- | --- | --- | --- | --- | --- | --- |
| 1 | 09.01.2026 | ISSUED FOR REVIEW | VPM | GAN | VRR | MM |
| 2 | 04.02.2026 | ISSUED FOR APPROVAL | VPM | GAN | VRR | MM |
| 3 | 20.04.2026 | ISSUED FOR CONSTRUCTION | VPM | FSN | VRR | MM |

No Rev 4 row on this document.

## Notes

1. FOR GENERAL NOTES, REFERENCES DRAWINGS AND KEYPLAN SEE SHEET 001.

No "SYMBOLOGY" box on this revision — the Notes area below item 1 is blank.

## Reference drawings/documents

Table present, headed "DRAWING NUMBER / DRAWING TITLE", no rows filled in.

## Key plan

A small-scale key-plan figure locating this sheet's coverage within the overall site, with a 0–12m graphic scale bar. Unchanged in content from REV4.

## Plan views

Two structural steel plan views share the sheet: **Plan EL. 111.500 (T.O.S.)**, scale 1:100, and **Plan EL. 112.800 (T.O.S.)**, scale 1:100. Both cover grid line 1 to grid line 2 (8000mm, with an unlabelled column line at the 4000mm midpoint) across grid lines A to F (42000mm total: A–B 9000, B–C 9000, C–D 6000, D–E 9000, E–F 9000, each further split into 3000mm sub-panels where 9000 or 6000). A north/wind-rose symbol (true north, plant north, prevailing wind 70.8°/4.2°) appears at the top of Plan EL. 111.500. Ladder and handrail callouts (`CL LADDER-1` through `CL LADDER-4`, `HANDRAIL (TYP.)`, `30 THK GRATING AT EL. 112.830 (T.O.G.)`) appear on Plan EL. 112.800 around the ladder cage at Grid 2.

Per `skills/drawing-comparison.md`'s `reading-needs: figures` declaration, the two plan views are read as figures: rather than one sentence per statement (design section 7's default figure rule), each is read as a structural member/connection schedule, since that is the plan's own native content shape. This pack transcribes, in full, every callout that the REV3→REV4 comparison found to differ (the "old" side of the units in `actuals/findings/`) plus two callouts kept as explicit UNCHANGED control cases; it does not re-transcribe the sheet's remaining ~100 unchanged member callouts line by line — see `actuals/plan.md` and `bootstrap.md`'s `profile:` line for that scoping decision.

### Structural member/connection callouts transcribed for this pack

| id | view | grid position | connection tag | member/value | revision cloud | notes |
| --- | --- | --- | --- | --- | --- | --- |
| MEMB-1 | Plan EL. 111.500 | Grid 1–2 / A–B, diagonal brace | BW(76N) | T171x178x26 (-120) | Rev 3 cloud (not this pack's subject revision) | becomes (-175) in REV4 |
| MEMB-2 | Plan EL. 111.500 | midpoint column, Grid C–D panel 1 of 2 | SW | UC203x203x46 (-120) | none | no weld/bolt count printed; REV4 adds (30N 10V) |
| MEMB-3 | Plan EL. 111.500 | midpoint column, Grid C–D panel 2 of 2 | SW | UC203x203x46 (-120) | none | no weld/bolt count printed; REV4 adds (30N 10V) |
| MEMB-4 | Plan EL. 111.500 | Grid D node, column line 1 | SW(50N 10V) | UB457x191x74 | none | REV4 reads SW(58N 2Vy); no cloud on either revision |
| MEMB-5 | Plan EL. 111.500 | Grid D node, column line 2 | SW(50N 10V) | UB457x191x74 | none | REV4 reads SW(63N 3Vy); no cloud on either revision |
| MEMB-6 | Plan EL. 111.500 | midpoint column at Grid D, bracing toward column 2 | — | not present | — | added in REV4 as T171x178x34 (-120) |
| MEMB-7 | Plan EL. 111.500 | midpoint column at Grid D, bracing toward column 1 | — | not present | — | added in REV4 as T171x178x34 (-120) |
| MEMB-8 | Plan EL. 111.500 | midpoint column, Grid D–E panel 1 | SW | UC203x203x46 (-120) | none | no weld/bolt count printed; REV4 adds (30N 10V) |
| MEMB-9 | Plan EL. 111.500 | midpoint column area, near Grid E–F | SW | UB305x165x46 | none | no weld/bolt count printed; REV4 adds (30N 10V) |
| MEMB-10 | Plan EL. 111.500 | midpoint column, exact grid row not yet confirmed (§ pivot.md 4) | SW | UC203x203x46 (-120) | none | no weld/bolt count printed; REV4 adds (30N 10V) per text diff |
| MEMB-11 | Plan EL. 111.500 | midpoint column, exact grid row not yet confirmed (§ pivot.md 4) | SW | UC203x203x46 (-120) | none | no weld/bolt count printed; REV4 adds (30N 10V) per text diff |
| MEMB-12 | Plan EL. 111.500 | midpoint column, exact grid row not yet confirmed (§ pivot.md 4) | SW | UC203x203x46 (-120) | none | no weld/bolt count printed; REV4 adds (30N 10V) per text diff |
| CTRL-1 | Plan EL. 112.800 | Grid A, column-2 node | MW / BW | UB356x171x51 / L80x80x8 (-50), "HANDRAIL (TYP.)" | Rev 3 clouds present, triangle "3" | UNCHANGED control case; clouds cleared and labels reordered in REV4, see pivot.md § 5 |
| CTRL-2 | Plan EL. 111.500 | Grid A, column line 1 | SW | UC203x203x46 (-120) | none | UNCHANGED control case; byte-identical on both revisions |

> Docusign Envelope ID: A0436D27-BF4A-8678-816A-0755E71D4665
