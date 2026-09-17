---
item: MEMB-7
for-document: sha256:e2c1629b3536b5f2c773200403c11edb73f1f0678931f2f3db1becad130034d1
class: CHANGED
material: yes
group: PL.111.500 col-1 C-D
addressed: true
verdict: CHANGED
old-position: "SW(50N 10V)" @(482,859)+(482,841), Plan EL. 111.500, column line 1, bay C–D (beam UB457x191x74 connection)
new-position: "SW(58N 2Vy)" @(482,873)+(482,849), same node
verified-by: author cross-check — text layer both sheets; raster OCR (sw58 crop rot+1): Rev 3 "ISW(50N" c81 at (174,284)→pt(482,~865), Rev 4 "ISW(58N" c74 at identical (174,285); pixel diff: glyph-only deltas at (484,845/851) — no cloud arc footprint at this node; nearest Rev-4 balloon "4" at (453,822) is on the adjacent mid-line brace/SW cluster's cloud, not demonstrably on this label (see pivot §12)
verified-on: 2026-09-16
confidence: SURE
---
# MEMB-7

**Column-line-1 bay C–D connection weld count (UB457x191x74 node)**
CHANGED

## Old (document, page, callout)
AD-3010-C-330030-SHT-004-REV3.pdf, page 1: "SW(50N 10V)" @(482,859)

## New (document, page, callout)
AD-3010-C-330030-SHT-004-REV4.pdf, page 1: "SW(58N 2Vy)" @(482,873)

## What changed
The connection callout on the UB457x191x74 beam at column line 1, bay C–D, changes its count field: "50N" → "58N" and "10V)" → "2Vy)". Both heads and the tail were read on both sheets' text layer at matching coordinates; the raster channel independently read "SW(50N" in Rev 3 and "SW(58N" in Rev 4 at the same crop position. The second token as extracted is "2Vy)" — see caveat.

## Why it matters
material=yes — weld/bolt counts on a named beam connection are direct fabrication instructions; a count change (whatever the exact new glyph group is) changes the connection build. Caveat: the tail glyph group extracted as "2Vy)" is anomalous (every other node on both sheets reads "10V)"); it is most plausibly "20V)" with a corrupted glyph mapping, but no raster read confirmed the middle character above threshold, so the exact second count value carries `confidence: UNSURE` while the fact and position of the change are SURE. This node sits in a cluster of Rev-4 changes (balloon "4" at (453,822) nearby) but has no revision balloon or asterisk demonstrably on it.
