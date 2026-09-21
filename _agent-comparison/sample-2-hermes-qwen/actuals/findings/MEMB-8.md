---
item: MEMB-8
for-document: sha256:e2c1629b3536b5f2c773200403c11edb73f1f0678931f2f3db1becad130034d1
class: CHANGED
material: yes
group: PL.111.500 col-2 C-D
addressed: true
verdict: CHANGED
old-position: "SW(50N 10V)" @(742,859)+(742,841), Plan EL. 111.500, column line 2, bay C–D (UB457x191x74 connection)
new-position: "SW(63N 3Vy)" @(742,859)+(742,849), same node
verified-by: author cross-check — text layer both sheets at identical coordinates; raster OCR confirms Rev-3 head "W(50N" c88 and tail "10V)" at this node (n63 crop), Rev-4 tail "3V…" c92 (sw63hi crop); Rev-4 head "SW(63N" NOT yet read on any render (400-dpi and 200-dpi attempts garbled) — see caveat
verified-on: 2026-09-16
confidence: UNSURE
---
# MEMB-8

**Column-line-2 bay C–D connection weld count (UB457x191x74 node)**
CHANGED

## Old (document, page, callout)
AD-3010-C-330030-SHT-004-REV3.pdf, page 1: "SW(50N 10V)" @(742,859)

## New (document, page, callout)
AD-3010-C-330030-SHT-004-REV4.pdf, page 1: text-layer "SW(63N 3Vy)" @(742,859); raster channel confirms the node changed in the render (pixel diff, glyph deltas at (743,845)–(743,851)) and reads the new tail "3V…" at c92, but no render OCR has cleanly read the new head digits "63N".

## What changed
The mirror node of MEMB-7 (same bay, column line 2): head count changes from 50N to a value extracted as "63N" and tail from "10V)" to a value extracted as "3Vy)". Rev 3's values are double-confirmed; Rev 4's tail is raster-confirmed ("3V"); Rev 4's head "63N" is text-layer-only. Unlike its sibling, no Rev-4 revision balloon ("4") sits near this node: nearest is (453,822) ~300pt away, and the pixel diff at this node shows glyph change only, no cloud arc — so this reads as a revision-cloud-untagged change (the exact case the skill warns about: a changed value with no cloud drawn).

## Why it matters
material=yes — connection weld/bolt count at a named beam node. The untagged-cloud status is itself the point: a tool that triages only clouded regions misses this change. Confidence UNSURE because the new head digits ("63N", and the "3Vy)" tail's middle glyph) have not been read on the render at ≥60 confidence by the author's OCR channel; a second reader with the 500-dpi sw63hi crop should settle it. Also flagged: this and MEMB-7 sit within the repeated-callout ambiguity set (identical "SW(50N 10V)" text at 8 surviving nodes — alignment here is by coordinate only).
