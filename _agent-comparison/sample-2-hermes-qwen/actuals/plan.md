---
skill: drawing-comparison
confidence: HIGH
candidates: drawing-comparison (HIGH); version-compare (LOW)
verified-by: author cross-check; see pivot.md § Method
verified-on: 2026-09-16
verification: corrected
---
# Plan of Action · version 1

| # | Operation | What it does on this project | Example |
|---|---|---|---|
| 1 | UNDERSTAND | grain=callout; the two single-sheet A1 PDFs: REV3 (supporting, 20.04.2026) and REV4 (source, 27.07.2026); areas = title block, revision-history table, Notes box, Plan EL. 111.500 (left strip, grid 1–2 × A–F), Plan EL. 112.800 (right strip, same grid) | The Notes-box SYMBOLOGY legend at sheet pt (1925–2286, 488–518) becomes a NOTE unit |
| 2 | ALIGN | match each REV4 callout to its REV3 counterpart by sheet position (word bbox coordinates from `pdftotext -bbox`, display space) and member/field identity; never by text match alone — this sheet repeats `UC203x203x46 (-120)` 22+ times and `SW(30N …10V)` at many nodes; cloud presence is not the aligner | REV4 `SW(58N …)` at (487,873) aligns to REV3 `SW(50N 10V)` at the same point, not to the 8 other `SW(50N` callouts |
| 3 | CLASSIFY | ADDED / REMOVED / CHANGED / UNCHANGED over all aligned callouts | Rev-table row `4 27.07.2026 ISSUED FOR CONSTRUCTION` = ADDED (REV-4) |
| 4 | JUDGE | material=yes/no per change: member size, connection count, elevation/dimension geometry = yes; reflow, envelope ID, admin rows = no | `T171x178x26 (-120)→(-175)` material=yes; HANDRAIL/BW label swap material=no (CTRL case) |
| 5 | RETRIEVE | for every CHANGED/REMOVED, locate and copy the REV3 value at the same coordinates from the supporting sheet's text layer; confirm both old and new glyph on 150–400 dpi raster crops (`pdftoppm` crops + OCR), and confirm cloud/asterisk graphics by pixel-diff footprints | `420→500`: REV3 word `420`@ (1334,321), REV4 word `500`@(1336,324); raster confirms each value on its own sheet's render |
| 6 | GENERATE | one finding per non-UNCHANGED unit in the skill's finding shape (Old/New/What changed/Why it matters) + UNCHANGED control cases (CTRL-n); then report.md rows and counts | MEMB-* findings rest on the zone table in `actuals/twin/section-map.md` |

Cost: single-sheet pair; ~22 change zones, ~20 findings + control cases; no multi-page alignment.
