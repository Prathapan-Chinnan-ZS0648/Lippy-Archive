---
item: MEMB-17
for-document: sha256:e2c1629b3536b5f2c773200403c11edb73f1f0678931f2f3db1becad130034d1
also-cites: AD-3010-C-330030-SHT-004-REV3.pdf (sha256:d8afdded2146507660d5f0e2de55790f13c910472e63f2a1adb47a628a65cbe6)
verdict: CHANGED
material: false
confidence: SURE
group: marker layer, both views
position: 12 cleared / 7 drawn
skill: drawing-comparison
skill-version: 1
verified-by: author cross-check — text layer both files (pdftotext -bbox); raster channel (matched-region pdftoppm crops 150–500 dpi): tesseract.js OCR of values + pure-pixel diff footprints for clouds; per-file notes below
verified-on: 2026-09-21
---
# MEMB-17 — revision-cloud balloon layer

**CHANGED**

## Old (document, page, callout)
AD-3010-C-330030-SHT-004-REV3.pdf, p.1: twelve "3" balloons at (836,172),(1202,181),(1151,227),(1428,263),(1177,355),(1345,338),(1281,477),(1194,1114),(1163,1194),(1425,1232),(1288,1366),(1283,413)

## New (document, page, callout)
AD-3010-C-330030-SHT-004-REV4.pdf, p.1: no "3" balloons remain; seven "4" balloons at (549,390),(1352,396),(562,660),(453,822),(561,1129),(1353,1355),(714,1322), asterisks "(*)" at (534,385),(1367,393),(1363,1373)

## What changed
The whole revision-marker layer is replaced: old-issue clouds cleared (causing the label reflows behind CTRL-1/2), new-issue clouds drawn over the member changes. One disagreement with the value diff: MEMB-4/MEMB-5 changed with no verified cloud at either node.

## Why it matters
material=false (markers, not geometry), but it is the drawing's own claim about its change set — and the audited set differs from it in exactly the two untagged places. Cloud outlines are vector arcs; presence/extent here rests on pixel-diff footprints, stated as such.
