---
run: AD-3010-C-330030-SHT-004
use-case: drawing-comparison
skill-version: v1
unit: MEMB-13 — Plan EL. 112.800 (T.O.S.), Grid A ladder cage (CL LADDER-1/LADDER-2), upper vertical dimension
kind: CHANGED
material: true
cites: AD-3010-C-330030-SHT-004-REV3.pdf, page 1; AD-3010-C-330030-SHT-004-REV4.pdf, page 1
verified-by: single-reader cross-check
verified-on: 2026-09-17
confidence: SURE
---

# MEMB-13

Source: `documents/drawing-comparison/source/AD-3010-C-330030-SHT-004-REV4.pdf`
Supporting: `documents/drawing-comparison/supporting/AD-3010-C-330030-SHT-004-REV3.pdf`
Twin: `actuals/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/twin/derived/AD-3010-C-330030-SHT-004-REV3.md` (older), `actuals/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/twin/derived/AD-3010-C-330030-SHT-004-REV4.md` (newer)

**Plan EL. 112.800 (T.O.S.), Grid A ladder cage (CL LADDER-1/LADDER-2), upper vertical dimension** — CHANGED (material)

## Old
> 420
> — AD-3010-C-330030-SHT-004-REV3.pdf, page 1

## New
> 500
> — AD-3010-C-330030-SHT-004-REV4.pdf, page 1

## What changed
A rotated vertical dimension figure next to the Grid A ladder cage (the `CL LADDER-1` / `CL LADDER-2` detail, column-2 side) changes from 420 to 500. Marked with a Rev 4 revision cloud (triangle "4") carrying the `(*)` already-communicated symbol — the same cloud that encloses the adjacent `SW / UC152x152x30` callout.

## Why it matters
A dimension change on a ladder-cage detail is fabrication-relevant. This finding was missed in this pack's first pass — it sits immediately next to `CTRL-1` (the handrail/BW label reflow at the same node), and the first pass checked only the label wording there, not the adjacent dimension figures. Corrected 2026-09-17 after a second, independently-run pack (`sample-2`) flagged this pattern and it was verified directly against both PDFs (text-layer occurrence count and a matched-position image crop); see `prompt-log/drawing-comparison/promptLog.md`'s 2026-09-17 correction entry.
