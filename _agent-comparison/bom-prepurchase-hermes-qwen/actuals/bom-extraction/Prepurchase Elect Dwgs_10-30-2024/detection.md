---
skill: bom-extraction
skill-version: 1
confidence: HIGH
candidates: bom-extraction (HIGH)
verified-by: author cross-check
verified-on: 2026-09-22
---
# Detection

The configured document is "Prepurchase Elect Dwgs_10-30-2024.pdf" — an 11-page, 24"x34" (1584x2448 pt, rot 270) AutoCAD-plot electrical drawing set, Upper Trinity Regional Water District / Tom Harpool Regional WTP Phase 2 Expansion (GAI Consulting, "ISSUED FOR THE PURPOSE OF PROCUREMENT ONLY"). It is a drawing, not prose: its procurable content is tagged equipment on one-line diagrams, panel schedules and a site plan. `bom-extraction` (HIGH) is exactly this shape — "read every tagged item on an engineering drawing and extract it as a structured BOM line". This is its second-ever drawing type (the skill's Module 3 so far documents only P&IDs and explicitly anticipates "an electrical single-line diagram" as a future input validating new category rows); the category adaptation is recorded in plan.md and as an ENHANCE-SKILL suggestion in the sandbox prompt-log (live skill not touched — writes fenced to this folder). No other skill is a plausible candidate: there is no second document to diff (drawing-comparison n/a), no question set to evaluate against (base-evaluation n/a).

Sheet structure (recorded per Module 6 non-sequential-sheet-order, actual page order as found):
| PDF page | sheet no. | project/job no. | subject |
|---|---|---|---|
| 1 | GE01 | 10078H10 | LEGEND AND SYMBOLS - I |
| 2 | GE02 | 10078H10 | LEGEND AND SYMBOLS - II (ABBREVIATIONS) |
| 3 | E02 | 10078H10(foot)/9469B10-family | ELECTRICAL SITE PLAN (survey base map; PMU-2 location note; general notes) |
| 4 | (title-block scan E05) | 9469B10 | RECOVERY/EMERGENCY PUMP STATION one-lines (TX-M1/M2, GSW-2, PMU…) |
| 5 | — NO TEXT LAYER — | — | graphics-only sheet (6.4% ink at 40 dpi; undetermined subject — raster pass required) |
| 6 | E07 | 9469B10 | generator/transformer one-line continuation (DC-1..8, GCP-3C, relays) |
| 7 | E08 | 9469B10 | MVSWGR-E 4160V switchgear one-line (MVSRE-3P…13P, TX-7/9) |
| 8 | E09 | 9469B10 | MVSWGR-F one-line (MVSRF-4P…12P, TX-8/10, FPR-1120) |
| 9 | E10 | 9469B10 | generator switchgear GSW-2 / GEN-G3…G6 / NGR-G3…G6 one-line |
| 10 | (title "MASTER CONTROL PANEL ELEVATION") | 9469B10 | generators master control panel elevation + bus duct runs |
| 11 | — (title block not yet parsed) | 9469B10 | MCC-E, VFD-6…11, ATS/SWBDF-2AP, generator load bank, chlorine area |

Missing sheet numbers vs. sequence: E01, E03, E04, E06 absent from this PDF; page-3 general notes say "REFER TO DRAWING EBFNE01 FOR EQUIPMENT TAG TABLE" — the authoritative equipment tag table is OUT OF PACK (recorded, not guessed, per Module 1 absence policy). Two project/job numbers coexist (10078H10 on GE0x, 9469B10 on Ex) — recorded as found.
