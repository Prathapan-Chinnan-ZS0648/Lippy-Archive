---
run: AD-3010-C-330030-SHT-004
use-case: drawing-comparison
skill-version: v1
unit: MEMB-12 — Plan EL. 111.500 (T.O.S.), midpoint column, exact grid row still not confirmed
kind: CHANGED
material: true
cites: AD-3010-C-330030-SHT-004-REV3.pdf, page 1; AD-3010-C-330030-SHT-004-REV4.pdf, page 1
verified-by: single-reader cross-check
verified-on: 2026-09-15; grid-row attempt on 2026-09-29 did not reach a confirmed result
confidence: UNSURE
---

# MEMB-12

Source: `documents/source/AD-3010-C-330030-SHT-004-REV4.pdf`
Supporting: `documents/supporting/AD-3010-C-330030-SHT-004-REV3.pdf`
Twin: `actuals/twin/derived/AD-3010-C-330030-SHT-004-REV3.md` (older), `actuals/twin/derived/AD-3010-C-330030-SHT-004-REV4.md` (newer)

**Plan EL. 111.500 (T.O.S.), midpoint column, exact grid row still not confirmed** — CHANGED (material)

## Old
> SW
> UC203x203x46 (-120)
> — AD-3010-C-330030-SHT-004-REV3.pdf, page 1 (grid row not yet confirmed)

## New
> SW(30N 10V)
> UC203x203x46 (-120)
> — AD-3010-C-330030-SHT-004-REV4.pdf, page 1 (grid row not yet confirmed)

## What changed
Same pattern as `MEMB-10`/`MEMB-11`: a `SW` → `SW(30N 10V)` change on a `UC203x203x46 (-120)` column, confirmed to exist by the `pdftotext -raw` text-layer diff. This is the one remaining unlocated instance of the six total on this column (four are pinned: `MEMB-2`, `MEMB-3`, `MEMB-8`, plus `MEMB-10`/`MEMB-11` resolved on 2026-09-29).

## Why it matters
Same fabrication-relevant pattern as the rest of this group — a connection design value that was previously unspecified is now specified. `confidence: UNSURE` stands, not by default this time but after a real, documented attempt to resolve it.

## 2026-09-29 resolution attempt — genuinely unresolved, not merely unre-tried
A coordinate-based method (`pdftotext -bbox-layout` word coordinates, cross-checked against
a 300dpi render) successfully and independently confirmed `MEMB-10` and `MEMB-11`'s exact
grid rows (Grid B–C, panels 1 and 2 of 3) — see those two findings and `prompting.md`'s
2026-09-29 entry for the full method. The same method, applied to this sixth instance,
hit a real limitation: predicted pixel coordinates for anything past roughly the B–C bay
consistently rendered the wrong content (Plan EL. 112.800's labels instead of Plan EL.
111.500's), even though the underlying word-coordinate data for this instance is genuine
and present in the PDF. Sequential visual tiling across the same row band, rather than
coordinate prediction, was tried as a fallback and reached Plan EL. 112.800's content
before conclusively locating this instance — meaning it likely sits further down the
sheet (Grid D–E's second sub-panel, Grid E–F, or on a mirrored column not yet examined at
all) than a naive extrapolation from `MEMB-8`'s position would suggest, but exactly where
was not established with the confidence this project requires before writing a position
into a finding. Per `skills/drawing-comparison.md`'s absence policy: recording a guessed
grid row to close this out was rejected as worse than leaving it open. A second reader
should either extend the coordinate method with a per-viewport calibration (rather than
one global transform for the whole sheet), or locate it directly by eye in a full-page
render at high zoom.
