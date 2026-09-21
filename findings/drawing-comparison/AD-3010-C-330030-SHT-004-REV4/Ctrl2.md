---
run: AD-3010-C-330030-SHT-004
use-case: drawing-comparison
skill-version: v1
unit: CTRL-2 — Plan EL. 111.500 (T.O.S.), Grid A, column line 1
kind: UNCHANGED
material: false
cites: AD-3010-C-330030-SHT-004-REV3.pdf, page 1; AD-3010-C-330030-SHT-004-REV4.pdf, page 1
verified-by: single-reader cross-check
verified-on: 2026-09-15
confidence: SURE
---

# CTRL-2

Source: `documents/drawing-comparison/source/AD-3010-C-330030-SHT-004-REV4.pdf`
Supporting: `documents/drawing-comparison/supporting/AD-3010-C-330030-SHT-004-REV3.pdf`
Twin: `actuals/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/twin/derived/AD-3010-C-330030-SHT-004-REV3.md` (older), `actuals/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/twin/derived/AD-3010-C-330030-SHT-004-REV4.md` (newer)

**Plan EL. 111.500 (T.O.S.), Grid A, column line 1** — UNCHANGED

## Old
> SW
> UC203x203x46 (-120)
> — AD-3010-C-330030-SHT-004-REV3.pdf, page 1

## New
> SW
> UC203x203x46 (-120)
> — AD-3010-C-330030-SHT-004-REV4.pdf, page 1

## What changed
Nothing. Byte-identical callout at this grid position on both revisions, no cloud on either.

## Why it matters
A plain, directly-adjacent control case: this column sits one grid line away from `MEMB-1`'s brace (Grid 1–2/A–B) and shares the same `UC203x203x46 (-120)` member size as the `MEMB-2`/`MEMB-3`/`MEMB-8`/`MEMB-10`–`MEMB-12` group, so a reader (or a drawing-comparison tool) that over-generalises "this size, this area, got a weld count added" has a nearby, real counter-example to check against.
