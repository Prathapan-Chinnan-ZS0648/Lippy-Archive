---
skill: bom-extraction
version: 1
status: current — live copy; snapshot preserved at skills/bom-extraction/skill-versions/v1.md
supersedes: none (first version)
title: BOM extraction
intent: Read every tagged equipment, safety-relief, and control item on a P&ID (or
  similar engineering drawing) and extract it as one structured Bill of Materials line,
  citing exactly where on the drawing it was read.
shape: BOM_LINE
document-pairing: single-document — this skill reads and processes only the source
  document(s); it has no supporting-document role to fill, per `bootstrap.md` §2's
  `supporting_document_path: "n/a"` allowance
grain: one procurable/installable tagged item (equipment, a safety-relief valve, or a
  control valve) named on the drawing — see Module 3
declines-with: not applicable — this skill has no question to decline; a tag is either
  named on the drawing (extracted) or it is not (not in scope for this pass, per Module 3's
  coverage-scoping rule)
absence-policy: A unit is extracted only when the drawing itself names or tags it. Nothing
  is inferred from generic P&ID convention or from a symbol alone with no legible tag; an
  illegible or unconfirmed tag is recorded with confidence UNSURE and the raw fragment
  quoted, never guessed into a clean tag number.
world-knowledge: Permitted only to decode the drawing's own published legend/nomenclature
  (e.g. "PSV" = Pressure Safety [Relief] Valve, per that drawing's own Legend sheets) —
  never to supply a spec, rating, or manufacturer the drawing itself does not state.
modules:
  - core-rules
  - workflow
  - domain-guidance
  - validation
  - output
  - edge-cases
---

# BOM extraction

Adapted from `skills/version-compare/skill.md` and `skills/drawing-comparison/skill.md`
to a genuinely different task shape: reading **one** engineering drawing and producing a
structured Bill of Materials from it, rather than diffing two revisions or evaluating one
document against a base. There is no `source`/`supporting` document pair for this skill —
`fileIndex.md`'s `bom-extraction` entry declares `supporting_document_path: "n/a"` per
`bootstrap.md` §2, since this skill's own shape has no supporting-document role to fill.
It is organized as independent modules so a user of this skill can extend one module
(e.g. domain guidance for a new drawing type) without touching the others. Nothing in
Modules 2–6 may contradict Module 1 — they specialize how Module 1 is applied, they do
not replace it.

---

## Module 1 — Core rules (invariant across every use of this skill)

These rules do not change per sample or drawing. They are what "extracted", "home sheet",
and "confidence" mean for a BOM line, full stop.

**No verdict scale.** Unlike `version-compare`/`drawing-comparison`, this skill has no
ADDED/REMOVED/CHANGED/UNCHANGED scale and no materiality judgment — there is nothing to
compare against, only "extracted" (the drawing names this tag, with this specification) or
"not yet covered by this pack" (the tag exists on the drawing but this pass did not file it
as an individual finding — see Module 3's coverage-scoping rule). A BOM line's relevance is
that the drawing tags it at all, not a change's impact.

**A unit is extracted once, at its fullest-detail source.** Most tagged items appear on
one "home" sheet with a boxed datasheet header (size, design/operating/MAWP pressure, set
pressure, capacity, material, mfg/model) and then recur as smaller callouts on other
sheets purely as flow-path references. The home sheet's datasheet block is the
authoritative source; other sheets' bare-tag callouts are recorded as "also referenced on"
rather than filed as duplicate or partial units. A tag with no datasheet block anywhere in
the set is extracted from wherever its clearest value appears (typically a "SET @ n
PSI/PSIG" or size callout next to its symbol).

**A tag's grammar is read from the drawing's own legend, never assumed from generic P&ID
convention.** Every drawing set that publishes its own Legend/Instrument Nomenclature
sheet governs its own tag grammar that way — an equipment tag typically follows
`<equipment-identifier letter(s)>-<item number>`, an instrument tag typically follows
ISA-style identification letters — but a project's own legend may define prefixes
generic convention would not predict. Where a drawing set has no legend sheet of its own,
the tag grammar must be confirmed from a stated project standard before extraction, not
assumed from a prior pack's legend.

**A unit id is the tag exactly as printed** — letters, digits, and the drawing's own
suffix convention (e.g. `600A`, `804B`) — never renumbered or normalized, since the tag is
the real-world identifier procurement and construction will use.

**A stated-incomplete value must be reported as stated, never filled.** When a drawing
explicitly marks an item's size, rating, or spec as not yet fixed ("HOLD FOR SIZING",
"HOLD FOR INFO"), the finding records that flag as the item's current state — never a
neighbouring line's value, and never a plausible-looking placeholder.

**This skill extracts what the drawing states. It does not evaluate or complete it.** It
does not supply a spec, rating, or manufacturer the drawing itself omits, and it does not
judge whether an extracted specification is adequate — only what the drawing states, where,
and with what confidence.

---

## Module 2 — Workflow (the shared processing pipeline)

| # | Stage | What happens | Notes |
|---|---|---|---|
| 1 | UNDERSTAND | Read every sheet of the drawing set; identify every tagged item, grouped by sheet and category (grain = one tagged item; id = the drawing's own tag). | No ALIGN stage exists in this skill — there is nothing to align a single document's tags against. |
| 2 | CLASSIFY | Assign EQUIPMENT, SAFETY-RELIEF-VALVE, CONTROL-VALVE, or INSTRUMENT per the drawing set's own Legend/Instrument Nomenclature sheets, never assumed from generic convention. | See Module 3. |
| 3 | RETRIEVE | Read every field the drawing states for that tag (description/service, size, design/operating/MAWP pressure, set pressure, capacity, material, mfg/model) from the sheet the tag appears on and, for equipment named on more than one sheet, every sheet it appears on. | Retrieval must come from the document itself (its text layer and a rendered raster of the sheet — most content on this drawing type exists only in the graphic, not as extractable text), never from memory of a similar tag seen elsewhere. |
| 4 | JUDGE | Assign confidence: SURE only when every extracted field is read directly off a legible drawing block; UNSURE when a value is present but partly illegible, or when the tag is real but its full datasheet block has not yet been located. | No materiality judgment exists in this skill — a BOM line's relevance is that it exists on the drawing at all. |
| 5 | VALIDATE | Run the Module 4 checklist before treating any output as final. | — |
| 6 | GENERATE | Write one finding per unit, per Module 5. | `findings/<usecase>/<source-document-name>/<tag>.md` |

---

## Module 3 — Domain guidance (how to choose the grain and scope coverage, applied per drawing type)

This module is illustrative, not exhaustive, and never overrides Module 1. A P&ID (Piping
& Instrumentation Diagram) — the only drawing type this skill has processed so far — uses
the following unit categories, read from the drawing set's own Legend/Instrument
Nomenclature sheets, never assumed:

| Prefix | Covers | Example |
|---|---|---|
| `EQUIP-<tag>` | A piece of physical equipment with its own boxed datasheet header (a vessel, a packaged skid, a filter/dryer housing) | `EQUIP-V-200` |
| `PSV-<tag>` | A pressure-safety/relief valve | `PSV-200`, `PSV-801A` |
| `PCV-<tag>` (or `FCV-`/`LCV-`/`SDV-` as the drawing's own prefix states) | A control or shutdown valve with a stated set-point or size | `PCV-201` |
| `INST-<tag>` | Any other instrument bubble (transmitter, indicator, switch, analyzer) | declared for completeness — see coverage-scoping below |

A P&ID commonly carries far more instrument bubbles than equipment items. A pack may
reasonably scope a first pass to EQUIPMENT + SAFETY-RELIEF-VALVE + CONTROL-VALVE while
counting, but not individually detailing, the INSTRUMENT population and any other
tagged-but-unspecified items (e.g. a flowline list) — as long as that scoping is stated
plainly in that run's `manifest/<usecase>/manifest.md` sample context, never silently
implied by an incomplete-looking findings set. A future sample with a different drawing
type (an electrical single-line diagram, an isometric, a P&ID from a set with no legend of
its own) adds a row here once validated on real input, per the promotion bar
(`bootstrap.md` §8.2) — this table grows only through that mechanism.

---

## Module 4 — Validation and quality checks

Run this checklist before treating any extraction as finished. Each item traces back to a
Module 1 rule.

- [ ] Every extracted unit's id is the tag exactly as printed on the drawing — never
      renumbered or normalized.
- [ ] Every unit was extracted from its home sheet (the fullest-detail datasheet block),
      not from a bare flow-path callout, when a home sheet exists.
- [ ] Every tag's category (EQUIPMENT/SAFETY-RELIEF-VALVE/CONTROL-VALVE/INSTRUMENT) was
      assigned per the drawing's own legend, never assumed from generic convention.
- [ ] Every "HOLD FOR SIZING"/"HOLD FOR INFO" flag was reported as stated, not filled with
      a neighbouring line's value.
- [ ] `confidence: SURE` was assigned only to a unit whose every extracted field is
      legible; anything partial or illegible is `UNSURE` with the raw fragment quoted, not
      guessed into a clean value.
- [ ] The pack's coverage scope (what was extracted in full vs. counted-but-not-detailed)
      is stated explicitly in that run's `manifest/<usecase>/manifest.md`, not left for a
      reader to infer from an incomplete-looking findings count.
- [ ] No spec, rating, or manufacturer not stated on the drawing was supplied from world
      knowledge, per Module 1's closing rule.

---

## Module 5 — Output requirements

One finding file per unit: Tag · Description · Specification · Source · Also referenced
on · Notes.

- **Tag** — the id, exactly as printed.
- **Description** — the drawing's own service/description text for that tag, quoted, not
  paraphrased.
- **Specification** — every stated field (size, design/operating/MAWP pressure, set
  pressure, capacity, material, mfg/model), each traceable to its exact wording on the
  sheet.
- **Source** — document, page/sheet number, drawing number.
- **Also referenced on** — other sheets/pages the tag appears on as a flow-path callout,
  without its own datasheet block.
- **Notes** — anything a procurement or construction reader needs flagged (e.g. a
  "HOLD FOR SIZING" callout printed directly on the drawing next to the item).

A finished extraction also states, at minimum: a count of units per category, and an
explicit statement of what this pass's coverage does and does not include, per Module 3.

---

## Module 6 — Edge-case handling

Cases this skill has been confirmed to handle correctly (see
`skills/bom-extraction/patternLog.md` for the observation history behind each row). Only
one sample has been processed under this skill so far, so none of these rows has yet
cleared the cross-sample-confirmation leg of the promotion bar (`bootstrap.md` §8.2) —
each is recorded here because it was structurally necessary to produce this sample's
findings at all (the promotion bar's third path), not because it has been independently
reconfirmed.

| Edge case | Handling |
|---|---|
| hold-for-sizing | The drawing explicitly marks an item's size/rating as not yet fixed ("HOLD FOR SIZING", "HOLD FOR INFO"). Report the flag as stated — never a placeholder or a neighbouring line's size, which would misrepresent an unfixed value as final. |
| split-datasheet | One tag's full spec is split across its home sheet's boxed header plus a separate note elsewhere on the same or another sheet. Read both before treating a unit's spec as complete — a boxed header alone can miss part of a tag's stated spec. |
| repeated-tag-no-datasheet | The same tag appears on several sheets as a flow-path callout with no datasheet block on any of them (common for most instrument bubbles). Extract from wherever the tag's clearest value appears; never invent a datasheet's worth of detail for a tag that only ever appears as a bare bubble. |
| non-sequential-sheet-order | The combined PDF's page order does not match its own drawing numbering (a sheet appears out of numeric sequence, or a numbered sheet is missing/blank). Never assume "page N" predicts drawing number N, and never silently skip a sheet whose number seems to duplicate another — record the actual page order as found. |
| legend-dependent-tag | A tag's meaning depends on reading the drawing set's own Legend/Instrument Nomenclature sheet, not on generic P&ID convention. A project-specific two-letter equipment prefix can otherwise be mis-classified as an instrument tag or vice versa. |
| package-sub-item | A tag is one component of a larger vendor-packaged skid whose own boundary is drawn but not separately tagged. Never treat an unlabelled internal component as a missing BOM line, and never fold it into the package tag's own spec as if it were specified there. |
| out-of-pack instrument population | The drawing carries many more instrument bubbles than a pack extracts individually. Never let a pack's EQUIPMENT/SAFETY-RELIEF-VALVE/CONTROL-VALVE coverage be read as if it were also complete instrument coverage — state the scoping explicitly per Module 3, in that run's `manifest/<usecase>/manifest.md`. |
