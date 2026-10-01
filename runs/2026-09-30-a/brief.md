---
kind: brief
written-at: 2026-09-30
written-by: operator
---

# BOM extraction — 260374 Combined P&ID Set, Rev B (Claude's independent pass)

## What this is for

Claude's own independent pass over `documents/source/260374 COMBINED PID SET 6-1-26.pdf`,
to sit alongside Hermes/qwen3.8-flash's blind independent pass (`runs/2026-09-29-a/`) for
cross-model comparison. The pass itself was carried out 2026-09-29 (see `prompting.md`
Entry 6 and `pivot.md` Entry 7); this run folder records it as a dated comparison artifact.

## The document

- **Source — the only input:** `260374 COMBINED PID SET 6-1-26.pdf`
- **Supporting:** none — single-document extraction; see `skills/bom-extraction.md`.

## How to extract

Per `skills/bom-extraction.md`: grain is one procurable/installable tagged item, identified
by the tag exactly as printed. A tag is extracted once, at its fullest-detail "home" sheet;
other sheets' bare-tag callouts are recorded as cross-references, not duplicate units. A
"HOLD FOR SIZING"/"HOLD FOR INFO" callout is reported as stated, never filled in from a
neighbouring line.

## What to produce

One finding per unit (tag, description, specification, source, cross-references, notes),
then a report rolling those up into equipment/PSV/PCV tables, counts, and an explicit
coverage statement for what this pass does and does not individually detail.

This folder is Claude's side of the cross-model comparison only — `actuals/` holds the
merged, corrected result after both runs' discrepancies were resolved.
