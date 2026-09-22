---
item: MEMB-2
for-document: sha256:e2c1629b3536b5f2c773200403c11edb73f1f0678931f2f3db1becad130034d1
also-cites: AD-3010-C-330030-SHT-004-REV3.pdf (sha256:d8afdded2146507660d5f0e2de55790f13c910472e63f2a1adb47a628a65cbe6)
verdict: CHANGED
material: true
confidence: SURE
group: LADDER-1/2 band
position: (1334,387)→(1335,389)
skill: drawing-comparison
skill-version: 1
verified-by: author cross-check — text layer both files (pdftotext -bbox); raster channel (matched-region pdftoppm crops 150–500 dpi): tesseract.js OCR of values + pure-pixel diff footprints for clouds; per-file notes below
verified-on: 2026-09-21
---
# MEMB-2 — lower ladder-band vertical dimension

**CHANGED**

## Old (document, page, callout)
AD-3010-C-330030-SHT-004-REV3.pdf, p.1: "545" @(1334,387)

## New (document, page, callout)
AD-3010-C-330030-SHT-004-REV4.pdf, p.1: "515" @(1335,389)

## What changed
EL.112.830 → EL.117.530 dimension −30 mm, in the same cloud as MEMB-1. Text layer both sides; pixel diff at (1334,382–388); rot-CW render reads of these hairline digits were garbled (old side "24359" family, new side "493"/"533" at c59–89) — position confirmed, digits per vector layer.

## Why it matters
material=true — interface distance at the 30 THK GRATING line; both ladder bands change identically (mirrors MEMB-13/14), a coordinated correction, not an isolated edit.
