---
---

# Graph — evidence trace, blind run 2026-09-29

Sheet geometry anchors (display-space pt, rotated page):
- Grid bubbles A–F (left view) x≈305, y = 269/524/779/949/1204/1459; grid line segments verified at those y (user-space verticals x = same values, spans Xd 520–725).
- Midpoint column dash-dot line at x≈619–624 (user-space horizontal yu≈1760, 93 dash segments, Yd 143–1497).
- Panel dividers at 85 pt: 354/439/609/694/864/1034/1120/1290/1374.

| Unit | REV3 token (x,y) | REV4 token (x,y) | Bay (grid y-range) | Panel | Verdict |
|---|---|---|---|---|---|
| MEMB-10 | `SW` 594,[560–573]; `UC203x203x46` 606,[551–604] | `SW(30N` 594,[561–590] + `10V)` [543–559] | B–C (524–779) | 1 of 3 | CHANGED, material, SURE |
| MEMB-11 | `SW` 594,[646–658]; `UC203x203x46` 606,[636–689] | `SW(30N` 594,[646–675] + `10V)` [628–644] | B–C (524–779) | 2 of 3 | CHANGED, material, SURE |
| MEMB-12 | `SW` 594,[1156–1168]; `UC203x203x46` 606,[1146–1199] | `SW(30N` 594,[1156–1185] + `10V)` [1138–1154] | D–E (949–1204) | 3 of 3 | CHANGED, material, SURE |
| (ref MEMB-2/3) | bare SW at 594,[816–828]/[901–913] | counted at same x | C–D (779–949) | 1 of 2 / 2 of 2 | settled |
| (ref MEMB-8) | bare SW at 594,[1071–1083] | counted at same x | D–E (949–1204) | upper changed node (1088) | settled |

Negative checks: node 1003 (`SW(30N` REV3 594,[986–1015]) identical in REV4 → unchanged, excluded. Node 747, 1258, 1343 counted in both → excluded. Node 1428 bare in both → excluded. Alignment is coordinate-to-coordinate across revisions (stacks coincide within ~1 pt), never text-match.
Report trace: findings/MEMB-10/11/12.md → report/report.md rows 1–3.
