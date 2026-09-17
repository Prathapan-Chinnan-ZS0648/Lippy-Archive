---
item: CTRL-2
for-document: sha256:e2c1629b3536b5f2c773200403c11edb73f1f0678931f2f3db1becad130034d1
class: UNCHANGED
material: no
group: head-label band (both plans, y 140–265)
addressed: true
verdict: UNCHANGED
old-position: "T165x152x20 (-120)" @(417/466,198) & (751/800,198), "UC203x203x46 (-120)" @(508/563,210), "UB305x165x46" @(596,213) & rotated @(495,214)/(755,215), "BW" @(446/779,185), "SW" @(540,198)/(616,201), "1100" "835" "1065" "UB914x305x289", right-plan "3200/1200/800/1200" "UB356x171x51" "L80x80x8 (-50)" — all Rev 3
new-position: identical strings at identical coordinates in Rev 4 (≤2pt jitter)
verified-by: author cross-check — zone table lists (785,178)/(1146,150) as balloon-clearance-only zones; wpeek comparison of the head band shows the Rev-4 word list equal to Rev-3's minus four "3" balloons (836,172),(1202,181),(1151,227),(1428,263); raster: batch-1 wind crop OCR reads the same head tokens both revisions (4000/2500/8000/BW/SW families, matching coords)
verified-on: 2026-09-16
confidence: SURE
---
# CTRL-2

**Head-label band after Rev-3 cloud clearance — carried forward unchanged**
UNCHANGED

## Old (document, page, callout)
AD-3010-C-330030-SHT-004-REV3.pdf, page 1: head labels above both plans as listed, four cloud balloons "3" interleaved.

## New (document, page, callout)
AD-3010-C-330030-SHT-004-REV4.pdf, page 1: the same labels, same strings, same grid-relative positions; the four balloons gone (see MEMB-18).

## What changed
Nothing textual. This zone sits directly west of the (599,567)/(599,652) SW-count additions, so a run aligning the band by text order rather than coordinates may mis-map labels into the changed nodes — the pack-profile "near-miss" guard.

## Why it matters
False-positive test #2: a run reporting "T165x152x20 (-120) changed" or "moved" at these positions is wrong on both counts. It also tests silent-difference blindness in reverse: no change here should be reported even though neighbouring callouts changed.
