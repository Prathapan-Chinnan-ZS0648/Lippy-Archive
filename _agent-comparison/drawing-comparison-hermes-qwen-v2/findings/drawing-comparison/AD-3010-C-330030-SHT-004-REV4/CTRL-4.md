---
item: CTRL-4
for-document: sha256:e2c1629b3536b5f2c773200403c11edb73f1f0678931f2f3db1becad130034d1
also-cites: AD-3010-C-330030-SHT-004-REV3.pdf (sha256:d8afdded2146507660d5f0e2de55790f13c910472e63f2a1adb47a628a65cbe6)
verdict: UNCHANGED
material: false
confidence: SURE
group: control
position: both plans, sheet-wide families
skill: drawing-comparison
skill-version: 1
verified-by: author cross-check — text layer both files (pdftotext -bbox); raster channel (matched-region pdftoppm crops 150–500 dpi): tesseract.js OCR of values + pure-pixel diff footprints for clouds; per-file notes below
verified-on: 2026-09-21
---
# CTRL-4 — CTRL-4 control case

**UNCHANGED**

## Old (document, page, callout)
AD-3010-C-330030-SHT-004-REV3.pdf, p.1: 53 SW nodes (full table: twin/derived/diff-nodes.md); "UC203x203x46 (-120)" ×12; "UB914x305x289", "UB305x165x46", "UB356x171x45", "UB457x191x74" ×2, "MW", "SW-"/-SW edges, "117.530/112.830/107.200", "30 THK GRATING"

## New (document, page, callout)
AD-3010-C-330030-SHT-004-REV4.pdf, p.1: 44 of 53 nodes identical string+position; all listed families equal counts and coordinates

## What changed
Position-paired 53↔53, nine DIFFs filed as MEMB-4..12, zero added/removed nodes; family token counts balanced between revisions apart from those nine and the two brace additions.

## Why it matters
The repeated-callout guard (Module 6): every SAME/DIFF verdict is coordinate-pinned, never text-proximity, on a sheet where identical strings recur 8–22×.
