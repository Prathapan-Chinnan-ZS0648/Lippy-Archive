# Report — blind comparison run 2026-09-29 (MEMB-10/11/12 grid resolution)

Reader: qwen3.8-flash via Hermes Agent. Source: AD-3010-C-330030-SHT-004-REV4.pdf; Supporting: ...-REV3.pdf. Skill: drawing-comparison v1.

## Result

All three previously unconfirmed weld/bolt-count additions on the UC203x203x46 midpoint column (Plan EL. 111.500 T.O.S.) are now positionally resolved — none remains UNSURE:

| Unit | Grid position | Old (REV3) | New (REV4) | Verdict | Material | Confidence |
|---|---|---|---|---|---|---|
| MEMB-10 | Grid B–C, panel 1 of 3 | `SW` / `UC203x203x46 (-120)` | `SW(30N 10V)` / `UC203x203x46 (-120)` | CHANGED | true | SURE |
| MEMB-11 | Grid B–C, panel 2 of 3 | `SW` / `UC203x203x46 (-120)` | `SW(30N 10V)` / `UC203x203x46 (-120)` | CHANGED | true | SURE |
| MEMB-12 | Grid D–E, panel 3 of 3 (adjoins Grid E) | `SW` / `UC203x203x46 (-120)` | `SW(30N 10V)` / `UC203x203x46 (-120)` | CHANGED | true | SURE |

Counts: 3 units judged — CHANGED 3, ADDED 0, REMOVED 0, UNCHANGED 0 (settled references excluded); material: 3/3.

## How positions were fixed
`pdftotext -bbox-layout` gives per-word coordinates in rotated display space; PyMuPDF vector extraction locates the grid lines (y = 269/524/779/949/1204/1459 for A–F) and 85 pt panel dividers. Every REV3↔REV4 token pair aligns within ~1 pt, so each addition is bound to its grid bay and panel by geometry, not text order (Module 1 grid-identity rule). Rendered REV4 crops confirm revision clouds on exactly the added tags.

## Explicit call-outs (Module 5)
- The complete REV4 addition census is six nodes: 577, 662 (B–C p1/p2), 832, 917 (C–D p1/p2 = settled MEMB-2/3), 1088, 1173 (D–E). Settled MEMB-8 corresponds to the upper changed D–E node (1088); this run files the remaining one as MEMB-12, D–E panel 3 of 3. Note (observation, not reopening): under strict geometric numbering 1088 is D–E panel 2 of 3 — panel 1 (node 1003) already carried `SW(30N 10V)` in REV3 and is unchanged. See detection.md §6.
- Node 1428 (E–F) stays bare `SW` in REV4 — checked, no change; the Rev 4 campaign did not reach the last panel of E–F.
- No unclouded additions were found among the six (all sit inside Rev 4 clouds); the known unclouded changes on this sheet are the beam-tag 50N→58N/63N pair, outside these three units.

Blindness: no file inside runs/2026-09-17-a/ was opened; actuals/findings/MEMB-10/11/12.md, pivot.md, prompting.md were not read. Only MEMB-2/3/8/9 findings and templates were consulted, as authorized.
