---
item: MEMB-5
for-document: sha256:e2c1629b3536b5f2c773200403c11edb73f1f0678931f2f3db1becad130034d1
also-cites: AD-3010-C-330030-SHT-004-REV3.pdf (sha256:d8afdded2146507660d5f0e2de55790f13c910472e63f2a1adb47a628a65cbe6)
verdict: CHANGED
material: true
confidence: UNSURE
group: PL.111.500 Grid D col.2
position: (742,859/874)
skill: drawing-comparison
skill-version: 1
verified-by: author cross-check — text layer both files (pdftotext -bbox); raster channel (matched-region pdftoppm crops 150–500 dpi): tesseract.js OCR of values + pure-pixel diff footprints for clouds; per-file notes below
verified-on: 2026-09-21
---
# MEMB-5 — connection weld/bolt count

**CHANGED**

## Old (document, page, callout)
AD-3010-C-330030-SHT-004-REV3.pdf, p.1: "SW(50N 10V)" @(742,859)+(742,841) — head raster-read "W(50N" c88

## New (document, page, callout)
AD-3010-C-330030-SHT-004-REV4.pdf, p.1: vector layer "SW(63N 3Vy)"; raster confirms a changed head at the identical position and tail "3V…" c92, but no render pass produced ≥60-confidence digits for "63N"

## What changed
Mirror node of MEMB-4 on column line 2. Change fact and position dual-confirmed (glyph-only pixel diff at (743,845–851), no arc — second untagged node); exact new head digits rest on the vector layer alone.

## Why it matters
material=true. Recorded CHANGED with confidence=UNSURE per Module 1's absence-policy line: the new count is not guessed beyond the extraction, and the untagged-cloud status is flagged for the issuing designer.
