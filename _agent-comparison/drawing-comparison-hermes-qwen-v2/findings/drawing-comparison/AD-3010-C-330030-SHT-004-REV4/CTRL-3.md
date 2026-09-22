---
item: CTRL-3
for-document: sha256:e2c1629b3536b5f2c773200403c11edb73f1f0678931f2f3db1becad130034d1
also-cites: AD-3010-C-330030-SHT-004-REV3.pdf (sha256:d8afdded2146507660d5f0e2de55790f13c910472e63f2a1adb47a628a65cbe6)
verdict: UNCHANGED
material: false
confidence: SURE
group: control
position: key plan / wind rose / scale bar
skill: drawing-comparison
skill-version: 1
verified-by: author cross-check — text layer both files (pdftotext -bbox); raster channel (matched-region pdftoppm crops 150–500 dpi): tesseract.js OCR of values + pure-pixel diff footprints for clouds; per-file notes below
verified-on: 2026-09-21
---
# CTRL-3 — CTRL-3 control case

**UNCHANGED**

## Old (document, page, callout)
AD-3010-C-330030-SHT-004-REV3.pdf, p.1: "NORTH" "TRUE" "PREVAILING WIND", rose fragments 64.2°/70.8°, key-plan bubbles, scale bar 0–10m

## New (document, page, callout)
AD-3010-C-330030-SHT-004-REV4.pdf, p.1: identical

## What changed
Coordinate windows show byte-identical token sets; the layout-mode text diff of these lines LOOKS changed ("64. 8 º" vs "64. 2 º" adjacent-line shuffle) — that is poppler line reflow, disproved by coordinates and by matched-crop OCR.

## Why it matters
Control against raw-diff noise: a run flagging the wind rose or key plan changed is reporting an extraction artifact.
