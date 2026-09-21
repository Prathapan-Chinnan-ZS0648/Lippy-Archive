---
run: AD-3010-C-330030-SHT-004
use-case: drawing-comparison
skill-version: v1
unit: MEMB-15 — Plan EL. 112.800 (T.O.S.), Grid E ladder cage (CL LADDER-3/LADDER-4), upper vertical dimension
kind: CHANGED
material: true
cites: AD-3010-C-330030-SHT-004-REV3.pdf, page 1; AD-3010-C-330030-SHT-004-REV4.pdf, page 1
verified-by: single-reader cross-check
verified-on: 2026-09-17
confidence: SURE
---

# MEMB-15

Source: `documents/drawing-comparison/source/AD-3010-C-330030-SHT-004-REV4.pdf`
Supporting: `documents/drawing-comparison/supporting/AD-3010-C-330030-SHT-004-REV3.pdf`
Twin: `actuals/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/twin/derived/AD-3010-C-330030-SHT-004-REV3.md` (older), `actuals/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/twin/derived/AD-3010-C-330030-SHT-004-REV4.md` (newer)

**Plan EL. 112.800 (T.O.S.), Grid E ladder cage (CL LADDER-3/LADDER-4), upper vertical dimension** — CHANGED (material)

## Old
> 420
> — AD-3010-C-330030-SHT-004-REV3.pdf, page 1

## New
> 500
> — AD-3010-C-330030-SHT-004-REV4.pdf, page 1

## What changed
The Grid E ladder cage (the `CL LADDER-3` / `CL LADDER-4` detail, the sheet's other ladder tower, mirroring Grid A's) carries the same change as `MEMB-13`: its upper vertical dimension figure changes from 420 to 500. Marked with a Rev 4 cloud carrying the `(*)` symbol, same pattern as the Grid A instance.

## Why it matters
This is a second, independent occurrence of the exact same dimension change, on the drawing's other ladder cage — not a duplicate of `MEMB-13`. Missed entirely in the first pass (which only examined the Grid A ladder cage's label text via `CTRL-1` and never looked at the Grid E instance at all). Corrected 2026-09-17 after `sample-2` flagged the pattern; confirmed by an independent text-occurrence count (`420`/`500` each appear twice across the two files, not once) and a matched-position image crop at Grid E. See `prompt-log/drawing-comparison/promptLog.md`'s 2026-09-17 correction entry.
