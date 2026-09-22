---
item: CTRL-1
for-document: sha256:e2c1629b3536b5f2c773200403c11edb73f1f0678931f2f3db1becad130034d1
also-cites: AD-3010-C-330030-SHT-004-REV3.pdf (sha256:d8afdded2146507660d5f0e2de55790f13c910472e63f2a1adb47a628a65cbe6)
verdict: UNCHANGED
material: false
confidence: SURE
group: control
position: PL.112.800 grid E node (1160–1240,1180–1250)
skill: drawing-comparison
skill-version: 1
verified-by: author cross-check — text layer both files (pdftotext -bbox); raster channel (matched-region pdftoppm crops 150–500 dpi): tesseract.js OCR of values + pure-pixel diff footprints for clouds; per-file notes below
verified-on: 2026-09-21
---
# CTRL-1 — CTRL-1 control case

**UNCHANGED**

## Old (document, page, callout)
AD-3010-C-330030-SHT-004-REV3.pdf, p.1: "HANDRAIL (TYP.)" @(1175,1188) printed ABOVE "BW L80x80x8 (-50) (TYP.) U.N.O." @(1189,1215–1195,1239)

## New (document, page, callout)
AD-3010-C-330030-SHT-004-REV4.pdf, p.1: same strings — BW/L80 pair @(1186,1187–1193,1212) ABOVE "HANDRAIL (TYP.)" @(1179,1229)

## What changed
Vertical order of the two label groups swapped; token multiset over the wide window identical; the Rev-3 cloud balloons at (1163,1194),(1194,1114) cleared. Adjacent dimensions MEMB-13/14 DID change — filed separately per Module 6.

## Why it matters
UNCHANGED as a reformat control: any run marking this node CHANGED (labels "moved") is a false positive; any run marking MEMB-13/14 unchanged because this node is a reflow is the mirror error. Both verdicts checked against both sheets.
