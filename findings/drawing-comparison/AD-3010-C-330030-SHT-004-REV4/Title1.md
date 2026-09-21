---
run: AD-3010-C-330030-SHT-004
use-case: drawing-comparison
skill-version: v1
unit: TITLE-1 — title block, drawing title field
kind: CHANGED
material: true
cites: AD-3010-C-330030-SHT-004-REV3.pdf, page 1; AD-3010-C-330030-SHT-004-REV4.pdf, page 1
verified-by: single-reader cross-check
verified-on: 2026-09-15
confidence: SURE
---

# TITLE-1

Source: `documents/drawing-comparison/source/AD-3010-C-330030-SHT-004-REV4.pdf`
Supporting: `documents/drawing-comparison/supporting/AD-3010-C-330030-SHT-004-REV3.pdf`
Twin: `actuals/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/twin/derived/AD-3010-C-330030-SHT-004-REV3.md` (older), `actuals/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/twin/derived/AD-3010-C-330030-SHT-004-REV4.md` (newer)

**title block, drawing title field** — CHANGED (material)

## Old
> UTILITIES (NITROGEN SYSTEM, INSTRUMENT/PLANT AIR, POTABLE WATER)-UNIT 3010
> — AD-3010-C-330030-SHT-004-REV3.pdf, page 1

## New
> UTILITIES - UNIT 3010
> — AD-3010-C-330030-SHT-004-REV4.pdf, page 1

## What changed
The drawing title's explicit list of systems (Nitrogen System, Instrument/Plant Air, Potable Water) is dropped in favour of the shorter generic title "UTILITIES".

## Why it matters
The title is the reader's first statement of which systems this steel structure supports; a fabricator or reviewer working from the title block alone loses the explicit system list, even though the steel scope on both plan views is otherwise unchanged by this edit. Flagged as a judgment call for a second reader in `skills/drawing-comparison/PatternLog.md` — an alternative reading is that this is a purely administrative simplification and should be material: false.
