---
use-case: drawing-comparison
source-document: AD-3010-C-330030-SHT-004-REV4.pdf
supporting-document: AD-3010-C-330030-SHT-004-REV3.pdf
skill: drawing-comparison v1
generated: 2026-09-21 (IST)
method: coordinate-diff of both PDF text layers (24 change zones, 53↔53 node pair) verified against rendered rasters (matched-crop OCR + pixel-diff footprints)
---
# Report — AD-3010-C-330030-SHT-004, Rev 3 → Rev 4

## Counts by verdict

| verdict | units | of which material=true | confidence UNSURE |
|---|---|---|---|
| CHANGED | 17 | 14 | 1 (MEMB-5) |
| ADDED | 4 | 2 | 2 (MEMB-15, MEMB-16) |
| REMOVED | 0 | — | — |
| UNCHANGED (control) | 5 | 0 | 0 |
| **total files** | **26** | **16** | **3** |

## Rows (unit order)

| id | verdict | material | position | old → new (verbatim) | one line |
|---|---|---|---|---|---|
| TITLE-1 | CHANGED | false | title block | "UTILITIES (NITROGEN SYSTEM, INSTRUMENT/PLANT AIR, POTABLE WATER)-UNIT 3010" → "UTILITIES - UNIT 3010" | service list dropped from title |
| TITLE-2 | CHANGED | false | (2310,1592) | "3" → "4" | REV. box, render-confirmed both digits |
| REV-1 | ADDED | false | (1865–2315,1196) | — → "4 / 27.07.2026 / ISSUED FOR CONSTRUCTION / VPM AVH CVH JYM MM" | second IFC, fresh sign-off |
| NOTE-1 | ADDED | false | (1921–2316,481–518) | — → SYMBOLOGY "(*) CLOUDS MARKED WITH (*) … ALREADY BEEN COMMUNICATED TO STEEL STRUCTURE FABRICATOR." | cloud triage vocabulary |
| NOTE-2 | UNCHANGED | false | (1861,96) | "1. FOR GENERAL NOTES … SEE SHEET 001." | out-of-pack, flagged not guessed |
| MEMB-1 | CHANGED | true | LADDER-1/2 (1334,321) | "420" → "500" | +80 mm, inside "(*)" cloud |
| MEMB-2 | CHANGED | true | (1334,387) | "545" → "515" | −30 mm, same cloud |
| MEMB-3 | CHANGED | true | PL.111.500 mid A-B (564,370) | "T171x178x26 (-120)" → "(-175)" | +55 member value, "(*)" cloud |
| MEMB-4 | CHANGED | true | Grid D col.1 (482,873) | "SW(50N 10V)" → "SW(58N 2Vy)" | untagged by any cloud |
| MEMB-5 | CHANGED | true | Grid D col.2 (742,874) | "SW(50N 10V)" → "SW(63N 3Vy)" | untagged; new head digits UNSURE |
| MEMB-6 | CHANGED | true | (594,560)→(594,567) mid B-C | bare "SW" → "SW(30N 10V)" | count newly stated, band cloud (562,660) |
| MEMB-7 | CHANGED | true | (594,645)→(594,652) mid B-C | bare "SW" → "SW(30N 10V)" | count newly stated, same band cloud |
| MEMB-8 | CHANGED | true | (594,816)→(594,822) mid C-D | bare "SW" → "SW(30N 10V)" | count newly stated, cluster cloud (453,822) |
| MEMB-9 | CHANGED | true | (594,900)→(594,907) mid C-D | bare "SW" → "SW(30N 10V)" | count newly stated, same cluster |
| MEMB-10 | CHANGED | true | (594,1071)→(594,1077) mid D-E | bare "SW" → "SW(30N 10V)" | count newly stated, band cloud (561,1129) |
| MEMB-11 | CHANGED | true | (594,1156)→(594,1162) mid D-E | bare "SW" → "SW(30N 10V)" | count newly stated, same band |
| MEMB-12 | CHANGED | true | (674,1347)→(674,1351) col-2 flank E-F | bare "SW" → "SW(30N 10V)" | count newly stated, cloud (714,1322) |
| MEMB-13 | CHANGED | true | LADDER-3/4 (1337,1274) | "420" → "500" | digit-for-digit render-confirmed (c94→c95) |
| MEMB-14 | CHANGED | true | (1333,1356) | "545" → "515" | adjacent to CTRL-1 but distinct verdict |
| MEMB-15 | ADDED | true | mid C-D west (533–583,873–910) | — → brace fragments "T1·7·1·x17·8·x·34·BW·(-·12·0)" | only member-label ADDs; string UNSURE |
| MEMB-16 | ADDED | true | mid C-D east (646–696,788–825) | — → brace fragments "BW·34·x·8·x17·(-·12·0)" | east mirror of MEMB-15; same caveat |
| MEMB-17 | CHANGED | false | both views | 12×"3" balloons → 7×"4" balloons + 3×"(*)" | sheet's own change claim; disagrees at MEMB-4/5 |
| CTRL-1 | UNCHANGED | false | PL.112.800 grid E | HANDRAIL/BW pair order swapped, values identical | reformat control |
| CTRL-2 | UNCHANGED | false | head band | identical | balloon-clearance control |
| CTRL-3 | UNCHANGED | false | key plan/wind | identical | raw-diff-noise control |
| CTRL-4 | UNCHANGED | false | sheet-wide | 44/53 nodes SAME | repeated-callout alignment control |

## Explicit call-outs the reader would otherwise have to infer (Module 5)

1. **Two fabrication-relevant changes carry no revision cloud** — MEMB-4 and MEMB-5 (the Grid D weld counts). Trusting the sheet's own balloon layer (MEMB-17) as the change list misses exactly these. This is the run's central finding about the drawing, and the central test for any engine run on this pair.
2. **Three of the seven new clouds are asterisked "(*)"** — per the NOTE-1 legend they were already communicated to the fabricator outside the revision: the dimension pairs (MEMB-1/2, MEMB-13/14) and MEMB-3. The other four clouds ((562,660),(453,822),(561,1129),(714,1322)) mark this issue's genuinely new news (the count completions).
3. **A reflow is not a change**: CTRL-1's label pair swapped order because Rev 3's clouds were cleared, while its two adjacent dimensions (MEMB-13/14) did change — both sides verified on both sheets.
4. **Glyph caveats, no guessing**: "2Vy)"/"3Vy)" tails and "63N" head read anomalously on the vector layer; render OCR confirmed "2V"/"3V" fragments and the changed-head position but not the full digit strings — MEMB-5/15/16 stay UNSURE with the reason stated in each file.
5. **"3 AT EL. 112.830" is not a quantity** — the leading "3" beside the grating line on Rev 3 is that sheet's cloud balloon (1347,344); Rev 4's corresponding balloon "4" prints at (1355,402). Nothing was removed there.
6. **Nothing REMOVED**: all 53 Rev-3 nodes and every label family persist into Rev 4; Rev 4 only edits, completes, and adds.

## Open items for a reviewer
- Second-reader raster pass (500-dpi, per-glyph) on MEMB-5 ("63N"), MEMB-15/16 (brace strings), MEMB-4 tail ("2Vy)").
- Raise with the issuing designer: MEMB-4/5 untagged — missing clouds or cleared-with-the-change?
- HITL: MANUAL VALIDATE is a human step; no validation record is asserted by this run.
