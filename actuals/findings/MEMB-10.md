---
run: AD-3010-C-330030-SHT-004
use-case: drawing-comparison
skill-version: v1
unit: MEMB-10 — Plan EL. 111.500 (T.O.S.), Grid B–C panel 1 of 3
kind: CHANGED
material: true
cites: AD-3010-C-330030-SHT-004-REV3.pdf, page 1; AD-3010-C-330030-SHT-004-REV4.pdf, page 1
verified-by: single-reader cross-check, grid position confirmed by coordinate-bbox extraction (`pdftotext -bbox-layout`) cross-checked against a 300dpi render
verified-on: 2026-09-29
confidence: SURE
---

# MEMB-10

Source: `documents/source/AD-3010-C-330030-SHT-004-REV4.pdf`
Supporting: `documents/supporting/AD-3010-C-330030-SHT-004-REV3.pdf`
Twin: `actuals/twin/derived/AD-3010-C-330030-SHT-004-REV3.md` (older), `actuals/twin/derived/AD-3010-C-330030-SHT-004-REV4.md` (newer)

**Plan EL. 111.500 (T.O.S.), Grid B–C panel 1 of 3** — CHANGED (material)

## Old
> SW
> UC203x203x46 (-120)
> — AD-3010-C-330030-SHT-004-REV3.pdf, page 1, Grid B–C panel 1 of 3

## New
> SW(30N 10V)
> UC203x203x46 (-120)
> — AD-3010-C-330030-SHT-004-REV4.pdf, page 1, Grid B–C panel 1 of 3

## What changed
A weld/bolt count, `(30N 10V)`, is added to the `SW` connection tag on this column panel — the first of the three 3000mm sub-panels making up the B–C bay (which, like A–B and D–E, spans 9000mm in three equal panels; C–D is the one exception at 6000mm/two panels). Member size and notch (-120) unchanged. Marked with a Rev 4 revision cloud, directly confirmed in a 300dpi render.

## Why it matters
The same fabrication-relevant pattern as `MEMB-2`/`MEMB-3`/`MEMB-8`/`MEMB-9` — a connection design value that was previously unspecified is now specified. Grid row resolved on 2026-09-29 by extracting exact word coordinates from both PDFs (`pdftotext -bbox-layout`), comparing REV3 against REV4 position-by-position across every sub-panel of the same column, and visually confirming the result in a full-resolution render (the revision cloud is directly visible around this callout). See `prompting.md`'s 2026-09-29 entry for the full method, including a genuine coordinate-mapping limitation hit and disclosed while resolving `MEMB-12`.
