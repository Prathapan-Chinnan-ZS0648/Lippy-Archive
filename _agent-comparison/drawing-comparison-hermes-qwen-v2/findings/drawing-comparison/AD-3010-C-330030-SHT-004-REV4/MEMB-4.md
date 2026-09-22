---
item: MEMB-4
for-document: sha256:e2c1629b3536b5f2c773200403c11edb73f1f0678931f2f3db1becad130034d1
also-cites: AD-3010-C-330030-SHT-004-REV3.pdf (sha256:d8afdded2146507660d5f0e2de55790f13c910472e63f2a1adb47a628a65cbe6)
verdict: CHANGED
material: true
confidence: SURE
group: PL.111.500 Grid D col.1
position: (482,859/873)
skill: drawing-comparison
skill-version: 1
verified-by: author cross-check — text layer both files (pdftotext -bbox); raster channel (matched-region pdftoppm crops 150–500 dpi): tesseract.js OCR of values + pure-pixel diff footprints for clouds; per-file notes below
verified-on: 2026-09-21
---
# MEMB-4 — connection weld/bolt count

**CHANGED**

## Old (document, page, callout)
AD-3010-C-330030-SHT-004-REV3.pdf, p.1: "SW(50N 10V)" @(482,859)+(482,841)

## New (document, page, callout)
AD-3010-C-330030-SHT-004-REV4.pdf, p.1: "SW(58N 2Vy)" @(482,873)+(482,849)

## What changed
Head count 50N→58N raster-read at the same crop position (rev3 "ISW(50N" c81 / rev4 "ISW(58N" c74). Tail now reads "2Vy)" (raster fragment "2V" c92) where every other node prints "10V)". No revision balloon or arc footprint at this node (nearest balloon (453,822), leader target unverifiable) → revision-cloud-untagged.

## Why it matters
material=true — weld/bolt count on the UB457x191x74 connection. Untagged by the sheet's own cloud layer: a cloud-only triage misses it (Module 6). Exact tail digits ("2Vy)") anomalous — second-reader item, though the change itself is dual-channel confirmed.
