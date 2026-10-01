---
skill: drawing-comparison
confidence: HIGH
why: blind rerun of MEMB-10/11/12 grid-row resolution only; skill and documents are the same as runs/2026-09-17-a
---

# Detection — blind run 2026-09-29 (qwen3.8-flash via Hermes Agent)

Quirks and edge cases found ahead of judgment, on this pair only (REV4 source vs REV3 supporting, single A1 sheet each).

1. **Coordinate spaces.** Page is 1684x2384 pt with /Rotate 90. `pdftotext -bbox-layout` reports coordinates in the rotated display space (x 0..2384, y 0..1684); PyMuPDF `get_drawings()` reports unrotated user space. Mapping used: display X = 2384 − user y, display Y = user x. All positions below are display-space pt.
2. **The text layer DOES preserve spatial position for the disputed runs.** `SW(30N`, `10V)`, `SW`, `UC203x203x46`, `(-120)` all carry per-word bboxes in `pdftotext -bbox-layout`. The prior run's "grid row uncertain from text-layer diff alone" condition did not reproduce here — every addition is anchored by coordinates.
3. **Two views, two grid-bubble columns.** Circled A–F bubbles at x≈305 pt (left plan view, the "Plan EL. 111.500 (T.O.S.)" carrying the disputed UC203 column line) and x≈1072 pt (a second, right-hand view whose grid lines sit 28 pt higher). The disputed column line (x≈594–616) belongs to the LEFT view; its grid lines are at y = 269/524/779/949/1204/1459 (A–F), verified against vector line segments at those exact y values.
4. **Panel structure.** Vector extraction shows horizontal divider lines at 85 pt spacing; grid bays = 255 pt (3 panels) except C–D = 170 pt (2 panels). Each UC203 stack sits ~53 pt below a line, i.e. at a panel centre. Nodes along the midpoint column line (y-centre): 314, 404, 483 (A–B); 577, 662, 747 (B–C); 832, 917 (C–D); 1003, 1088, 1173 (D–E); 1258, 1343, 1428 (E–F).
5. **Addition census (complete).** REV3 has `SW(30N 10V)` already at nodes 404, 483, 747, 1003, 1258, 1343; bare `SW` at 314, 577, 662, 832, 917, 1088, 1173, 1428. REV4 adds `(30N 10V)` to exactly six: 577, 662, 832, 917, 1088, 1173. Node 314 and node 1428 remain bare in REV4 (checked, no change). Six additions = MEMB-2/3 (C–D 1/2, confirmed) + MEMB-8 (one D–E addition, confirmed) + MEMB-10/11/12 (the remaining three).
6. **MEMB-8 overlap note (observation only, not reopening a settled finding).** Under strict geometric numbering the D–E bay's panels are 1003 (p1), 1088 (p2), 1173 (p3); node 1003 already carried the count in REV3. The settled `MEMB-8` ("Grid D–E panel 1, first panel below Grid D") therefore corresponds to the upper *changed* D–E node, 1088. This blind run assigns the leftover D–E addition, node 1173, to the disputed set as Grid D–E panel 3 of 3.
7. **Out of scope here but present:** beam-tag changes `SW(50N 10V)` → `SW(58N ...)`/`SW(63N ...)` at x≈482/742, y≈859–888 (the no-cloud pattern noted in the skill), and a T171x178x34 diagonal inside a cloud near y≈900 — all belong to other MEMB units.
8. **Clouds.** Rendered REV4 crops confirm revision clouds on the added tags at 917, 1088, 1173 (and the T171 change), and no cloud on the unchanged node-1003 tag — clouds corroborate the coordinate diff.
