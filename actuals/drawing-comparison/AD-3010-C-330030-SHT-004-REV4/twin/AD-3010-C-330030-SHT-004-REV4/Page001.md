---
document: AD-3010-C-330030-SHT-004-REV4.pdf
for-document: sha256:e2c1629b3536b5f2c773200403c11edb73f1f0678931f2f3db1becad130034d1
page: 1
tier: TEXT_LAYER
read-by: pdftotext -raw; pdftoppm -r 300 (300dpi raster, cross-checked by pixel diff against REV3)
laid-out-as-a-table: true
verified-by: single-reader cross-check
verified-on: 2026-09-17
verification: corrected
confidence: SURE
---

## Title block

| Field | Value |
| --- | --- |
| Consultant/Contractor/Vendor | TECNICAS REUNIDAS (logo); client logo ADNOC Offshore |
| Project/PMR title | LOWER ZAKUM LONG TERM DEVELOPMENT — PLAN PHASE-1 (LZ LTDP-1) - EPC WORKS PACKAGE 2 |
| Drawing title | UTILITIES - UNIT 3010 / AL OMAIRAH ISLAND / 3010PAR002 STEEL STRUCTURE / PLAN EL. 111.500 & 112.800 (T.O.S.) |
| Drawing No. | AD-3010-C-330030-SHT-004 |
| Sht.No. | 004 |
| Rev. | 4 |
| Scale | AS SHOWN |
| Sht. Size | A1 |
| Budget Ref. | 14001-10222-2 |
| Proj/PMR No. | 10222-2 |

## Revision history table

| Rev | Date | Description | By | Chk | Eng/Chk2 | Appd |
| --- | --- | --- | --- | --- | --- | --- |
| 1 | 09.01.2026 | ISSUED FOR REVIEW | VPM | GAN | VRR | MM |
| 2 | 04.02.2026 | ISSUED FOR APPROVAL | VPM | GAN | VRR | MM |
| 3 | 20.04.2026 | ISSUED FOR CONSTRUCTION | VPM | FSN | VRR | MM |
| 4 | 27.07.2026 | ISSUED FOR CONSTRUCTION | VPM | AVH | JYM / CVH | MM |

## Notes

1. FOR GENERAL NOTES, REFERENCES DRAWINGS AND KEYPLAN SEE SHEET 001.

### Symbology (new on this revision)

> SYMBOLOGY
> (*) CLOUDS MARKED WITH (*) INDICATE CHANGES THAT HAVE ALREADY BEEN COMMUNICATED TO STEEL STRUCTURE FABRICATOR.

## Reference drawings/documents

Table present, headed "DRAWING NUMBER / DRAWING TITLE", no rows filled in.

## Key plan

A small-scale key-plan figure locating this sheet's coverage within the overall site, with a 0–12m graphic scale bar. Unchanged in content from REV3.

## Plan views

Two structural steel plan views share the sheet: **Plan EL. 111.500 (T.O.S.)**, scale 1:100, and **Plan EL. 112.800 (T.O.S.)**, scale 1:100. Both cover grid line 1 to grid line 2 (8000mm, with an unlabelled column line at the 4000mm midpoint) across grid lines A to F (42000mm total: A–B 9000, B–C 9000, C–D 6000, D–E 9000, E–F 9000, each further split into 3000mm sub-panels where 9000 or 6000). A north/wind-rose symbol (true north, plant north, prevailing wind 70.8°/4.2°) appears at the top of Plan EL. 111.500. Ladder and handrail callouts appear on Plan EL. 112.800 at two ladder cages, column-2 side: `CL LADDER-1`/`CL LADDER-2` at Grid A and `CL LADDER-3`/`CL LADDER-4` at Grid E (each pair reading `HANDRAIL (TYP.)`, `30 THK GRATING AT EL. 112.830 (T.O.G.)`). Both cages carry the label-position reflow recorded as `CTRL-1` (Grid A) and `CTRL-3` (Grid E), and both also carry a real dimension change immediately adjacent, recorded as `MEMB-13`/`MEMB-14` (Grid A) and `MEMB-15`/`MEMB-16` (Grid E).

Per `skills/drawing-comparison/Skill.md`'s `reading-needs: figures` declaration, the two plan views are read as figures: rather than one sentence per statement (design section 7's default figure rule), each is read as a structural member/connection schedule, since that is the plan's own native content shape. This pack transcribes, in full, every callout that differs from REV3 (the units in `findings/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/`) plus two callouts kept as explicit UNCHANGED control cases; it does not re-transcribe the sheet's remaining ~100 unchanged member callouts line by line — see `actuals/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/Plan.md` and `skills/drawing-comparison/Skill.md`'s Module 3 scoping note for that scoping decision.

### Structural member/connection callouts transcribed for this pack

| id | view | grid position | connection tag | member/value | revision cloud | notes |
| --- | --- | --- | --- | --- | --- | --- |
| MEMB-1 | Plan EL. 111.500 | Grid 1–2 / A–B, diagonal brace | BW(76N) | T171x178x26 (-175) | Rev 4 cloud, marked (*) | notch depth increased from REV3's (-120) |
| MEMB-2 | Plan EL. 111.500 | midpoint column, Grid C–D panel 1 of 2 | SW(30N 10V) | UC203x203x46 (-120) | Rev 4 cloud | weld/bolt count added; REV3 printed no count |
| MEMB-3 | Plan EL. 111.500 | midpoint column, Grid C–D panel 2 of 2 | SW(30N 10V) | UC203x203x46 (-120) | Rev 4 cloud | weld/bolt count added; REV3 printed no count |
| MEMB-4 | Plan EL. 111.500 | Grid D node, column line 1 | SW(58N 2Vy) | UB457x191x74 | none | REV3 read SW(50N 10V); no cloud drawn |
| MEMB-5 | Plan EL. 111.500 | Grid D node, column line 2 | SW(63N 3Vy) | UB457x191x74 | none | REV3 read SW(50N 10V); no cloud drawn |
| MEMB-6 | Plan EL. 111.500 | midpoint column at Grid D, bracing toward column 2 | BW | T171x178x34 (-120) | Rev 4 cloud | new brace, not present on REV3 |
| MEMB-7 | Plan EL. 111.500 | midpoint column at Grid D, bracing toward column 1 | BW | T171x178x34 (-120) | Rev 4 cloud | new brace, not present on REV3; companion to MEMB-6 |
| MEMB-8 | Plan EL. 111.500 | midpoint column, Grid D–E panel 1 | SW(30N 10V) | UC203x203x46 (-120) | Rev 4 cloud | weld/bolt count added; REV3 printed no count |
| MEMB-9 | Plan EL. 111.500 | midpoint column area, near Grid E–F | SW(30N 10V) | UB305x165x46 | Rev 4 cloud | weld/bolt count added; REV3 printed no count |
| MEMB-10 | Plan EL. 111.500 | midpoint column, exact grid row not yet confirmed (see `skills/drawing-comparison/PatternLog.md` Entry 4) | SW(30N 10V) | UC203x203x46 (-120) | Rev 4 cloud (per text diff) | weld/bolt count added; REV3 printed no count |
| MEMB-11 | Plan EL. 111.500 | midpoint column, exact grid row not yet confirmed (see `skills/drawing-comparison/PatternLog.md` Entry 4) | SW(30N 10V) | UC203x203x46 (-120) | Rev 4 cloud (per text diff) | weld/bolt count added; REV3 printed no count |
| MEMB-12 | Plan EL. 111.500 | midpoint column, exact grid row not yet confirmed (see `skills/drawing-comparison/PatternLog.md` Entry 4) | SW(30N 10V) | UC203x203x46 (-120) | Rev 4 cloud (per text diff) | weld/bolt count added; REV3 printed no count |
| CTRL-1 | Plan EL. 112.800 | Grid A ladder cage, column-2 node | MW / BW | UB356x171x51 / L80x80x8 (-50), "HANDRAIL (TYP.)" | none (Rev 3 clouds cleared) | UNCHANGED control case; label order reflowed only, see `skills/drawing-comparison/Skill.md` Module 6, "reformat control case". This node also carries MEMB-13/MEMB-14 — a real, adjacent change missed on first pass, see `prompt-log/drawing-comparison/PromptLog.md`'s 2026-09-17 correction entry |
| CTRL-2 | Plan EL. 111.500 | Grid A, column line 1 | SW | UC203x203x46 (-120) | none | UNCHANGED control case; byte-identical on both revisions |
| MEMB-13 | Plan EL. 112.800 | Grid A ladder cage (LADDER-1/2), upper dimension | — | 500 | Rev 4 cloud, marked (*) | REV3 read 420; added 2026-09-17, see `prompt-log/drawing-comparison/PromptLog.md`'s 2026-09-17 correction entry |
| MEMB-14 | Plan EL. 112.800 | Grid A ladder cage (LADDER-1/2), lower dimension | — | 515 | same cloud as MEMB-13 | REV3 read 545; added 2026-09-17 |
| MEMB-15 | Plan EL. 112.800 | Grid E ladder cage (LADDER-3/4), upper dimension | — | 500 | Rev 4 cloud, marked (*) | REV3 read 420; second occurrence of MEMB-13's pattern, added 2026-09-17 |
| MEMB-16 | Plan EL. 112.800 | Grid E ladder cage (LADDER-3/4), lower dimension | — | 515 | same cloud as MEMB-15 | REV3 read 545; added 2026-09-17 |
| CTRL-3 | Plan EL. 112.800 | Grid E ladder cage, column-2 node | MW / BW | UB356x171x51 / L80x80x8 (-50), "HANDRAIL (TYP.)" | none (Rev 3 clouds cleared) | UNCHANGED control case mirroring CTRL-1; added 2026-09-17 |

> Docusign Envelope ID: C401E199-D49B-8D00-8015-A663C910C40C
