---
document: sectionMap — AD-3010-C-330030-SHT-004 (Rev 3 / Rev 4)
for-documents: d8afdded… (REV3, supporting) / e2c1629b… (REV4, source)
verified-on: 2026-09-21
confidence: SURE
---
# Section map

Coordinates: display-space points on the rotated A1 page (x→right 0–2384, y→down 0–1684), from `pdftotext -bbox`. Page count per §context PDF rule: one physical sheet = page 1, both files.

| area | extent (pt) | Rev 3 states | Rev 4 states |
|---|---|---|---|
| Docusign header | y 10–15 | envelope A0436D27-… | envelope C401E199-… (furniture only) |
| key plan / north / wind | x<280, y 28–320 | identical | identical (64.2°/70.8° in both) |
| NOTES box | x≥1830, y 40–470 | item 1 only (SHEET 001 cross-ref) | item 1 + SYMBOLOGY "(*)" legend (y 481–518) |
| REFERENCE DRAWINGS/DOCUMENTS table | y 560–620 | header, empty | same |
| KEY PLAN band | y 871–1130 | scale bar, identical | same |
| revision-history table | x 1855–2332, y 1160–1290 | rows 3,2,1 | rows 4,3,2,1 (row 4 top at y1196; band 1187–1212 provably empty in Rev 3) |
| title block | x≥1830, y 1290–1660 | long DRAWING TITLE; REV. "3" | short DRAWING TITLE; REV. "4"; all other fields identical |
| footer | y 1625–1660 | contract + confidentiality | identical |
| PLAN EL. 111.500 (plan-left) | x 280–1060, y 28–1600 | cols 1/2 × bays A–F; 10× SW(50N 10V); 7 bare SW on mid line & col-2 flank; T171 (-120); 12 "3" balloons | SW(58N)/SW(63N) at Grid D cols 1/2; the 7 SW gain (30N 10V); T171 (-175); 7 "4" balloons, 3 with "(*)"; 2 added brace-label fragment runs |
| LADDER-1/2 dim band | x 1290–1470, y 240–450 | dims 420 @(1334,321), 545 @(1334,387); balloon "3" @(1345,338) between them | dims 500 @(1336,324), 515 @(1335,389); balloon "4"+"(*)" — one cloud covers both (pixel-diff arc footprint (1253–1397,285–423)) |
| PLAN EL. 112.800 (plan-right) | x 1060–1290, y 140–1600 | HANDRAIL above BW/L80x80x8 node @(1175,1188); balloons "3" @(1163,1194),(1194,1114) | order swapped, values identical; balloons cleared — pure reflow (CTRL-1) |
| LADDER-3/4 dim band | x 1290–1470, y 1210–1420 | dims 420 @(1339,1289), 545 @(1339,1356) | dims 500 @(1337,1274), 515 @(1333,1356); "4"+"(*)" cloud (footprint to y 1423) |

## Grid geometry used for unit identity
Row labels (bubbles): plan-left A(305,265) B(305,520) C(305,775) D(305,945) E(305,1200) F(305,1455); column lines col-1 x≈482–506, mid x≈588–632, col-2 x≈728–763. "Grid D col.1 weld/bolt count" (skill Module 3 example) = node (482,859)→bay C–D.

## Cloud-attribution evidence
Balloon tokens read from both word layers; cloud *outlines* inferred from pixel-diff footprints only (vector arcs, not OCR-readable). Nodes (482/742, 841–885) show glyph-diff only — no arc footprint → treated as untagged (MEMB-4/MEMB-5), matching the skill's Module 6 record for this pair.
