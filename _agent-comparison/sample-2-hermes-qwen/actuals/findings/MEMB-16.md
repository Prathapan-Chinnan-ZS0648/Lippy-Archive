---
item: MEMB-16
for-document: sha256:e2c1629b3536b5f2c773200403c11edb73f1f0678931f2f3db1becad130034d1
class: CHANGED
material: yes
group: LADDER-3/4 band, upper dimension
addressed: true
verdict: CHANGED
old-position: "420" @(1339,1289), rotated vertical dimension in the LADDER-3/LADDER-4 elevation band (right of Plan EL. 112.800)
new-position: "500" @(1337,1274), same string
verified-by: author cross-check — FULL raster double-read: matched 200-dpi band crops read "420" at c94 (Rev 3) and "500" at c95 (Rev 4) at the same back-projected position (lobandB crops, rot+1 pass); text layer both sheets; pixel diff glyph delta at (1334,1268)/(1339,1279); cloud footprint spans (1259–1397, 1245–1423) with balloon "4" (1356,1360)+"(*)" (1367,1378)
verified-on: 2026-09-16
confidence: SURE
---
# MEMB-16

**LADDER-3/4 band vertical dimension: 420 → 500 (lower, mirror of MEMB-12)**
CHANGED

## Old (document, page, callout)
AD-3010-C-330030-SHT-004-REV3.pdf, page 1: "420" @(1339,1289)

## New (document, page, callout)
AD-3010-C-330030-SHT-004-REV4.pdf, page 1: "500" @(1337,1274)

## What changed
Exact mirror of MEMB-12 on the lower stair band: +80 mm on the EL.107.200→EL.112.830 dimension at LADDER-3/4. Both digits read cleanly off the renders (this is the band the OCR channel confirmed digit-for-digit: c94 old / c95 new), inside one asterisk-marked Rev-4 cloud.

## Why it matters
material=yes, same reasoning as MEMB-12; the two bands changing identically is consistent with a single design correction applied to both stair flights rather than an isolated typo fix — relevant to a fabricator reconciling Rev 3 vs Rev 4 shop loads. Already communicated per the (*) cloud marker.
