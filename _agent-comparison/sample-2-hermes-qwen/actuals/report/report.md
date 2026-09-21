# AD-3010-C-330030-SHT-004 — Rev 3 → Rev 4 comparison (pack sample-2)

skill: drawing-comparison · documents: REV3 (supporting, superseded) → REV4 (source, current) · one A1 sheet per revision (page 1 of each file) · verified-by: author cross-check, two channels (text layer + rendered-raster OCR/pixel diff), not the design §8 two-human standard (see pivot.md § Method) · state at hand-over: verified-not-signed
---

## Counts by class

| class | findings | material=yes | material=no | confidence UNSURE |
|---|---|---|---|---|
| CHANGED | 18 | 12 | 6 | 1 |
| ADDED | 4 | 2 | 2 | 2 |
| UNCHANGED (control) | 5 | 0 | 5 | 0 |
| **total files** | **27** | **14** | **13** | **3 (11% of all, 14% of diff findings)** |

## Rows, in register (unit-id) order

| id | callout | verdict | position (view / pt) | citation (REV3 → REV4) | material | conf | one line of reasoning |
|---|---|---|---|---|---|---|---|
| TITLE-1 | DRAWING TITLE text | CHANGED | title block (2046,1491) | "UTILITIES (NITROGEN SYSTEM, INSTRUMENT/PLANT AIR, POTABLE WATER)-UNIT 3010" → "UTILITIES - UNIT 3010" | no | SURE | title simplification; scope lives in notes/spec, not the title |
| TITLE-2 | REV. box | CHANGED | title block (2310,1592) | "3" → "4" | no | SURE | correct field for issue identity; rests on REV-1 row + render digits |
| TITLE-12 | DocuSign envelope line | CHANGED | furniture (101,10) | A0436D27-… → C401E199-… | no | SURE | re-signature artefact, not drawing content |
| REV-1 | rev-table row 4 | ADDED | (1865–2315, 1196) | — → "4 / 27.07.2026 / ISSUED FOR CONSTRUCTION / VPM AVH CVH JYM MM" | no | SURE | second IFC issue with fresh sign-off; Rev-3 band provably empty |
| NOTE-1 | Notes item 1 (Sheet 001 ref) | UNCHANGED | notes (1861,96) | identical both sheets | no | SURE | out-of-pack cross-reference; scope limit for MEMB-1…9 |
| NOTE-2 | SYMBOLOGY "(*)" legend | ADDED | notes (1921,481) | — → "(*) CLOUDS MARKED WITH (*) INDICATE CHANGES THAT HAVE ALREADY BEEN COMMUNICATED TO STEEL STRUCTURE FABRICATOR." | no | SURE | drawing defines its own cloud vocabulary; must be read to triage clouds |
| MEMB-1 | mid-line connection B–C | CHANGED | PL.111.500 (599,567) | "SW" → "SW(30N 10V)" | yes | SURE | count stated where Rev 3 printed none; clouded band (balloon 4 @565,666) |
| MEMB-2 | mid-line connection B–C | CHANGED | (599,652) | "SW" → "SW(30N 10V)" | yes | SURE | same band-cloud |
| MEMB-3 | mid-line connection C–D | CHANGED | (599,822) | "SW" → "SW(30N 10V)" | yes | SURE | C–D cluster cloud (balloon 4 @453,822) |
| MEMB-4 | mid-line connection C–D | CHANGED | (599,907) | "SW" → "SW(30N 10V)" | yes | SURE | C–D cluster |
| MEMB-5 | mid-line connection D–E | CHANGED | (599,1077) | "SW" → "SW(30N 10V)" | yes | SURE | D–E band cloud (balloon 4 @561,1129) |
| MEMB-6 | mid-line connection D–E | CHANGED | (599,1162) | "SW" → "SW(30N 10V)" | yes | SURE | D–E band |
| MEMB-7 | col-1 C–D connection | CHANGED | (487,873) | "SW(50N 10V)" → "SW(58N 2Vy)" | yes | SURE (head; tail-glyph note) | weld/bolt count up; 58N head raster-read; "2Vy)" tail anomalous |
| MEMB-8 | col-2 C–D connection | CHANGED | (742,874) | "SW(50N 10V)" → "SW(63N 3Vy)" | yes | UNSURE | untagged by any Rev-4 cloud (nearest balloon ~300pt, no arcs in pixel diff); "63N" not raster-read yet |
| MEMB-9 | col-2-side connection E–F | CHANGED | (683,1351) | "SW" → "SW(30N 10V)" | yes | SURE | seventh count-completion, on the column-2 flank; balloon 4 @ (714,1322) |
| MEMB-11 | T-section bracketed value | CHANGED | PL.111.500 A–B (564,370) | "T171x178x26 (-120)" → "(-175)" | yes | SURE | 55mm change on member coping/cutback; clouded+asterisked |
| MEMB-12 | ladder-band vertical dim | CHANGED | LADDER-1/2 (1334,321) | "420" → "500" | yes | SURE | +80mm at EL.107.200→112.830 interface; inside the (*) cloud |
| MEMB-13 | ladder-band vertical dim | CHANGED | (1334,387) | "545" → "515" | yes | SURE | −30mm at EL.112.830→117.530; same cloud, carries (*) |
| MEMB-14 | brace label | ADDED | mid C–D (533–583,873–910) | — → fragments "T1·7·1·x17·8·x·34·BW·(-·12·0)" | yes | UNSURE | new brace callout on-sheet; reconstruction unverified |
| MEMB-15 | brace label | ADDED | mid C–D (646–696,788–825) | — → fragments as above family | yes | UNSURE | east mirror of MEMB-14; same caveat |
| MEMB-16 | ladder-band vertical dim | CHANGED | LADDER-3/4 (1339,1289) | "420" → "500" | yes | SURE | digit-clean raster pair c94/c95; (*) cloud |
| MEMB-17 | ladder-band vertical dim | CHANGED | (1333,1356) | "545" → "515" | yes | SURE | mirror of MEMB-13 |
| MEMB-18 | revision-cloud marker layer | CHANGED | both views | 12×"3" balloons → 7×"4" balloons, 3 with "(*)" | no | SURE | the designer's own change list, superseded; disagrees once (MEMB-8) |
| CTRL-1 | handrail/BW label pair | UNCHANGED | PL.112.800 bay E | same strings, vertical order swapped | no | SURE | reflow after cloud clearance — reporting CHANGED here is a false positive |
| CTRL-2 | head-label band, both plans | UNCHANGED | y 140–265 | identical word list minus 4 cleared balloons | no | SURE | near the changed mid-line nodes; alignment-by-text fails here |
| CTRL-3 | key plan / wind rose / scale bar | UNCHANGED | x<280,y<320; scale band | identical token sets (64.2°/70.8° in both) | no | SURE | the layout-diff ghost — coordinates clear it |
| CTRL-4 | 44 SAME connection nodes + member families | UNCHANGED | sheet-wide | per pair table | no | SURE | repeated-callout guard: verdicts are coordinate-pinned |

(Positions are display-space points on the rotated A1 sheet; full node-level table in `../twin/derived/derived-full-inventory.md`.)

## Findings that need attention before submission

1. **MEMB-8** (and MEMB-7's tail, MEMB-14/15) need a second reader on the 200–500 dpi renders before quoting to the fabricator: exact new glyph strings "63N", "2Vy)"/"3Vy)", and the brace-label reconstructions are not yet raster-confirmed. These three files are UNSURE by design and count against the 10% UNSURE budget at 11–14% — the pack therefore stays `verified`, not `signed` (design §13).
2. **The single cloud-untagged value change (MEMB-8)** disagrees with the drawing's own cloud set (MEMB-18). Flag to the issuing designer: either a missing cloud in Rev 4, or the 63N is a Rev-3-era change clouded under a cleared balloon — resolve before the fabricator's Rev-4 build.
3. The anomalous tails "2Vy)"/"3Vy)" (every other node reads "10V)") suggest either intentional new counts (20V/30V?) or a glyph-mapping quirk in the Docusign-reprocessed font subset; do not normalise silently.

## Method recap

Detection/plan per actuals/detection.md + plan.md. Change hunt: coordinate cell-diff of `pdftotext -bbox` word layers → 22 zones; each zone cross-checked by (a) matched-region raster crops (150–500 dpi, tesseract.js, rotation passes) and (b) pure-pixel diff footprints for graphics (clouds); every finding names its verified-by channels. Corrections made en route: "3 AT EL. 112.830" proven a balloon artefact (no finding); "TECNICAS REUNIDAS" present in both (no finding); wind rose identical (CTRL-3). See pivot.md §§5–12.
