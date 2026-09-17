---
item: CTRL-1
for-document: sha256:e2c1629b3536b5f2c773200403c11edb73f1f0678931f2f3db1becad130034d1
class: UNCHANGED
material: no
group: PL.112.800 bay E node (handrail/BW label pair)
addressed: true
verdict: UNCHANGED
old-position: "HANDRAIL (TYP.)" @(1175,1188)/(1184,1200) printed ABOVE "BW L80x80x8 (-50) (TYP.) U.N.O." @(1189,1215)-(1195,1239)
new-position: "BW L80x80x8 (-50) (TYP.) U.N.O." @(1186,1187)-(1193,1212) printed ABOVE "HANDRAIL (TYP.)" @(1179,1229)/(1188,1241)
verified-by: author cross-check — wide-window token-multiset comparison x[1060,1330] y[1130,1330]: identical label sets both revisions, only vertical order swapped; Rev-3's two cloud balloons "3" (1163,1194),(1194,1114) gone; pixel diff of matched crops shows changed pixels only inside the two swapped text bands (y 1189–1228) — no arc footprint beyond clearance
verified-on: 2026-09-16
confidence: SURE
---
# CTRL-1

**Handrail / BW·L80x80x8 label pair at grid E, right plan — order swap, no value change**
UNCHANGED

## Old (document, page, callout)
AD-3010-C-330030-SHT-004-REV3.pdf, page 1: "HANDRAIL (TYP.)" above "BW / L80x80x8 (-50) (TYP.) U.N.O." at (1160–1240, 1180–1250), the pair cluttered by the two Rev-3 clouds being cleared in this issue.

## New (document, page, callout)
AD-3010-C-330030-SHT-004-REV4.pdf, page 1: same two labels, same words — the pair printed in the opposite vertical order.

## What changed
Nothing in value: the swap is the reflow that happened when Rev 3's clouds around this node were cleared (the labels had been stacked to dodge the balloons). This is the pack-profile "reformat control case": a layout-only movement.

## Why it matters
A drawing-comparison run that reports this node as CHANGED (label moved / re-ordered) has produced a false positive against this actual; the skill's rule says a callout is CHANGED only when its value differs. It also guards the reverse failure: a run must still see through the swap to confirm "L80x80x8 (-50)" and "U.N.O." are genuinely carried forward (they are, both channels).
