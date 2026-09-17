---
skill: bom-extraction
title: BOM extraction
intent: Read every tagged equipment, safety-relief, and control item on a P&ID (or similar engineering drawing) and extract it as one structured Bill of Materials line, citing exactly where on the drawing it was read.
shape: BOM_LINE
grain: one procurable/installable tagged item (equipment, a safety-relief valve, or a control valve) named on the drawing
scale: n/a — this is a single-document extraction, not a two-revision comparison; there is no ADDED/REMOVED/CHANGED/UNCHANGED verdict, only "extracted" vs "not yet covered by this pack" (see § Pack coverage)
recommend-when: n/a
absence-policy: A unit is only extracted when the drawing itself names or tags it. Nothing is inferred from general P&ID convention or from a symbol alone with no legible tag; an illegible or unconfirmed tag is recorded with `confidence: UNSURE` and the raw fragment quoted, never guessed into a clean tag number.
reading-needs: figures
world-knowledge: Permitted only to decode the drawing's own published legend/nomenclature (e.g. "PSV" = Pressure Safety [Relief] Valve, per this drawing's own Legend sheets) — never to supply a spec, rating, or manufacturer the drawing itself does not state.
---
# BOM extraction

Adapted from the Lippy Archive's comparison skills (`version-compare`, `drawing-comparison`) to a different task shape: reading **one** engineering drawing and producing a structured Bill of Materials from it, rather than diffing two revisions. There is no `source`/`supporting` document pair here — `documents/source/` holds the one drawing set; `documents/supporting/` is unused for this skill (see `bootstrap.md`).

## Steps

| # | Operation | Parameters |
| 1 | UNDERSTAND | grain=tagged item, id=the drawing's own tag (e.g. `V-200`, `PSV-600A`), group=sheet + item category |
| 2 | CLASSIFY | into=EQUIPMENT, SAFETY-RELIEF-VALVE, CONTROL-VALVE, INSTRUMENT (per the drawing's own Legend/Instrument Nomenclature sheets, not assumed) |
| 3 | RETRIEVE | query=every field the drawing states for that tag (description/service, size, design/operating/MAWP pressure, set pressure, capacity, material, mfg/model), over=the sheet the tag appears on and, for equipment named on more than one sheet, every sheet it appears on |
| 4 | JUDGE | field=confidence, guide=SURE only when every extracted field is read directly off a legible drawing block; UNSURE when a value is present but partly illegible, or when the tag is real but the pack has not yet located its full datasheet block |
| 5 | GENERATE | — |

Unlike `version-compare`/`drawing-comparison`, there is no ALIGN step (nothing to align a unit against) and no materiality JUDGE (a BOM line's relevance is that it exists on the drawing at all, not a change's impact).

## The rule

A unit is extracted once, at its fullest-detail source: most equipment tags appear on one "home" sheet with a boxed datasheet header (size, design pressure, operating pressure, MAWP, and — for a packaged item — type/mfg-model/capacity) and then recur as smaller callouts on other sheets purely as flow-path references; the home sheet's datasheet block is the authoritative source, and other sheets' bare-tag callouts are recorded as `also referenced on` rather than duplicate units. A tag with no datasheet block anywhere in the set (most instrument bubbles) is extracted from wherever its clearest value appears (typically a "SET @ n PSI/PSIG" or size callout next to the bubble).

Every drawing's own legend defines its tag grammar — this pack's source drawing publishes two Legend sheets (`D-260374-11-LEGEND1`, `LEGEND2`) declaring exactly how to read a tag: an **equipment** tag is `<equipment-identifier letter(s)>-<item number>` (e.g. `V-200` = Pressure Vessel, item 200; legend table "TYPICAL EQUIPMENT NUMBER"), while an **instrument** tag follows ISA-style identification letters (first letter = measured/initiating variable, succeeding letters = readout/output function; e.g. `PSV` = Pressure + Safety + Valve; legend table "CODING OF IDENTIFICATION LETTERS" / "TYPICAL IDENTIFIERS FOR P&ID'S"). A new drawing set's own legend sheet (if it has one) governs the same way; where a drawing has no legend sheet of its own, the tag grammar must be confirmed from a stated project standard before extraction, not assumed from this pack's.

## Units

One unit per tagged item, grouped by category:

- `EQUIP-<tag>` — a piece of physical equipment with its own boxed datasheet header (a vessel, a packaged skid, a filter/dryer housing) — e.g. `EQUIP-V-200`, `EQUIP-CA-800`
- `PSV-<tag>` — a pressure-safety/relief valve — e.g. `PSV-200`, `PSV-801A`
- `PCV-<tag>` (or `FCV-`/`LCV-`/`SDV-` as the drawing's own prefix states) — a control or shutdown valve with a stated set-point or size
- `INST-<tag>` — any other instrument bubble (transmitter, indicator, switch, analyzer) — declared as a category in this skill for completeness, but see `bootstrap.md`'s `profile:` line for how much of this category a given pack actually covers; a P&ID commonly carries far more instrument bubbles than equipment items, and a pack may reasonably scope a first pass to equipment + safety/control valves while counting, but not individually detailing, the instrument population — as long as that scoping is stated plainly, not silently implied.

A unit id is the tag exactly as printed (letters, digits, and the drawing's own suffix convention, e.g. `600A`, `804B`) — never renumbered or normalised, since the tag is the real-world identifier procurement and construction will use.

## Labels

- `EQUIPMENT` — a physical vessel, skid, or package with its own datasheet header
- `SAFETY-RELIEF-VALVE` — a PSV
- `CONTROL-VALVE` — a PCV/LCV/FCV/SDV or similar
- `INSTRUMENT` — any other instrument bubble

## Finding shape

Tag · Description · Specification · Source · Also referenced on · Notes

- **Tag** — the id, exactly as printed.
- **Description** — the drawing's own service/description text for that tag (e.g. "INTERMEDIATE PRESSURE BULK SEPARATOR"), quoted, not paraphrased.
- **Specification** — every stated field (size, design/operating/MAWP pressure, set pressure, capacity, material, mfg/model), each cited to its exact wording on the sheet.
- **Source** — document, page/sheet number, drawing number (e.g. `D-260374-11-005`).
- **Also referenced on** — other sheets/pages the tag appears on as a flow-path callout, without its own datasheet block.
- **Notes** — anything a procurement or construction reader needs flagged (e.g. "HOLD FOR SIZING" printed directly on the drawing next to the item — the designer has not yet fixed this value; do not treat the nearby line size as the item's own rating).

## Pack profile

Failure modes specific to extracting a Bill of Materials from a P&ID, adapted from the Lippy Archive design section 10 and from `drawing-comparison`'s pack profile.

| name | what it is | what it catches |
|---|---|---|
| hold-for-sizing | the drawing explicitly marks an item's size/rating as not yet fixed ("HOLD FOR SIZING", "HOLD FOR INFO") | recording a placeholder or a neighbouring line's size as if it were the item's own final spec |
| split-datasheet | one tag's full spec is split across its home sheet's boxed header plus a separate note elsewhere on the same or another sheet | missing part of an item's spec by reading only the boxed header |
| repeated-tag-no-datasheet | the same tag appears on several sheets as a flow-path callout with no datasheet block on any of them (common for most instrument bubbles) | inventing a datasheet's worth of detail for a tag that only ever appears as a bare bubble |
| non-sequential-sheet-order | the combined PDF's page order does not match its own drawing numbering (a sheet appears out of numeric sequence, or a numbered sheet is missing/blank) | citing "page N" as if it reliably predicts drawing number N, or silently skipping a sheet whose number seems to duplicate another |
| legend-dependent-tag | a tag's meaning depends on reading the drawing set's own Legend/Instrument Nomenclature sheet, not on generic P&ID convention | mis-classifying a project-specific two-letter equipment prefix (e.g. this set's `CA`, `DR`) as an instrument tag or vice versa |
| package-sub-item | a tag is one component of a larger vendor-packaged skid whose own boundary is drawn but not separately tagged (e.g. an aftercooler inside `CA-800`) | treating an unlabelled internal component as a missing BOM line, or conversely folding it into the package tag's own spec |
| out-of-pack instrument population | the drawing carries many more instrument bubbles than this pack extracts individually | treating a pack's `EQUIPMENT`/`SAFETY-RELIEF-VALVE`/`CONTROL-VALVE` coverage as if it were also complete instrument coverage, when `bootstrap.md`'s profile line says otherwise |
