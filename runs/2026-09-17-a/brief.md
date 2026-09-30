---
kind: brief
written-at: 2026-09-17
written-by: operator
---

# BOM extraction — 260374 Combined P&ID Set, Rev B

## What this is for

A 13-page combined Piping & Instrumentation Diagram (P&ID) set, prepared by 3S Services,
LLC for project 260374 ("Issued for Approval", Rev B, 06/01/2026), needs a structured Bill
of Materials extracted from it: every tagged piece of physical equipment, every
pressure-safety/relief valve, and every control/shutdown valve with a stated set-point.

## The document

- **Source — the only input:** `260374 COMBINED PID SET 6-1-26.pdf`
- **Supporting:** none — this is a single-document extraction task, not a comparison; see
  `skills/bom-extraction.md`.

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
