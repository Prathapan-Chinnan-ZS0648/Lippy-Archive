---
run: AD-3010-C-330030-SHT-004
use-case: drawing-comparison
skill-version: v1
unit: MEMB-11 — Plan EL. 111.500 (T.O.S.), midpoint column, Grid B–C panel 2 of 3
kind: CHANGED
material: true
cites: AD-3010-C-330030-SHT-004-REV3.pdf, page 1; AD-3010-C-330030-SHT-004-REV4.pdf, page 1
verified-by: single-reader cross-check (coordinate-preserved text extraction + vector grid-line geometry + rendered-crop visual check)
verified-on: 2026-09-29
confidence: SURE
---

# MEMB-11

Source: `documents/source/AD-3010-C-330030-SHT-004-REV4.pdf`
Supporting: `documents/supporting/AD-3010-C-330030-SHT-004-REV3.pdf`
Twin: `twin/derived/AD-3010-C-330030-SHT-004-REV3.md` (older), `twin/derived/AD-3010-C-330030-SHT-004-REV4.md` (newer)

**Grid B–C, panel 2 of 3, midpoint column (Plan EL. 111.500 T.O.S.)** — CHANGED (material)

## Old
> SW
> UC203x203x46 (-120)
> — AD-3010-C-330030-SHT-004-REV3.pdf, page 1

## New
> SW(30N 10V)
> UC203x203x46 (-120)
> — AD-3010-C-330030-SHT-004-REV4.pdf, page 1

## What changed
A weld/bolt count, `(30N 10V)`, is added to the previously bare `SW` connection tag on this column panel. Member size and notch (-120) unchanged. The REV4 stack sits at sheet display coordinates x≈594–616 pt, y≈636–689 pt (rotated page space, origin top-left); the tag is circled by a Rev 4 revision cloud.

## Why it matters
A connection design value (weld/bolt count) that was previously unspecified on the drawing is now specified — fabrication-relevant, not cosmetic. Same systematic Rev 4 pattern as `MEMB-2`/`MEMB-3`/`MEMB-8` on this column line.

## Grid-position evidence (independent derivation)
- Grid lines of the left-hand plan view run horizontally at y = 269 (A), 524 (B), 779 (C), 949 (D), 1204 (E), 1459 (F) pt — extracted from the PDF vector layer and matching the circled grid bubbles at x≈305 pt.
- Panel divider lines run at 85 pt spacing; the B–C bay (y 524–779) is divided into 3 panels at y-centres 577, 662, 747. This unit's stack centre y≈662 places it in panel 2 counting from the upper grid line.
- REV3 carries a bare `SW` at this exact coordinate; REV4 carries `SW(30N 10V)` at the same coordinate. Alignment is by position, not by text match.
