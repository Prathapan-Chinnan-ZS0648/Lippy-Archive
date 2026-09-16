---
item: MEMB-10
for-document: sha256:e2c1629b3536b5f2c773200403c11edb73f1f0678931f2f3db1becad130034d1
section: Plan EL. 111.500 (T.O.S.), midpoint column, exact grid row not yet confirmed
kind: CHANGED
material: true
old: AD-3010-C-330030-SHT-004-REV3.pdf, page 1
new: AD-3010-C-330030-SHT-004-REV4.pdf, page 1
cites: AD-3010-C-330030-SHT-004-REV3.pdf, page 1; AD-3010-C-330030-SHT-004-REV4.pdf, page 1
verified-by: single-reader cross-check
verified-on: 2026-09-15
confidence: UNSURE
---

# MEMB-10

**Plan EL. 111.500 (T.O.S.), midpoint column, exact grid row not yet confirmed** — CHANGED (material)

## Old
> SW
> UC203x203x46 (-120)
> — AD-3010-C-330030-SHT-004-REV3.pdf, page 1 (grid row not yet confirmed)

## New
> SW(30N 10V)
> UC203x203x46 (-120)
> — AD-3010-C-330030-SHT-004-REV4.pdf, page 1 (grid row not yet confirmed)

## What changed
The `pdftotext -raw` text-layer diff between REV3 and REV4 confirms a `SW` → `SW(30N 10V)` change on a `UC203x203x46 (-120)` column, at a text-stream position distinct from `MEMB-2`, `MEMB-3` and `MEMB-8` (which were independently pinned to Grid C–D and Grid D–E by cropping the pixel-diff bounding boxes at full resolution). This instance's exact grid row among the sheet's many visually identical midpoint-column panels was not independently confirmed before this session's verification effort budget was reached.

## Why it matters
The underlying change (a weld/bolt count added where none was specified) is the same fabrication-relevant pattern as `MEMB-2`/`MEMB-3`/`MEMB-8`/`MEMB-9`. Recorded `confidence: UNSURE` rather than assigning a guessed grid row, per `bootstrap.md`'s "what must not happen" and `pivot.md` § 4. A second reader should locate it via the same pixel-diff-and-crop method described in `prompting.md`, or, on re-inspection, confirm it is not a duplicate of `MEMB-2`, `MEMB-3`, `MEMB-8`, `MEMB-11` or `MEMB-12`.
