---
skill: drawing-comparison
version: 1
status: current — live copy; snapshot preserved at skills/drawing-comparison/skill-versions/v1.md
supersedes: none (first version)
title: Drawing comparison
intent: Classify every callout of a reissued engineering drawing against its earlier
  revision, and say what changed and why it matters to fabrication — for a single
  large-format CAD sheet, where "the document" is a figure, not running prose.
shape: CALLOUT_DIFF
grain: one callout (a title-block field, a note, or a member/connection annotation) —
  see Module 3
declines-with: the drawing poses no question to be answered from supporting evidence
  (not applicable to this skill's shape — every callout is compared, none is asked a
  question it may leave unaddressed)
absence-policy: Not applicable in `version-compare`'s sense — this skill does not ask
  questions that can go unaddressed. A callout present on one revision and absent from the
  other is ADDED or REMOVED, never silently omitted. A callout the comparison could not
  locate a grid row for is recorded CHANGED with confidence UNSURE, never guessed.
world-knowledge: Not permitted.
modules:
  - core-rules
  - workflow
  - domain-guidance
  - validation
  - output
  - edge-cases
---

# Drawing comparison

Adapted from `skills/version-compare/Skill.md` (see `context.md` §5) to a domain where the
"document" is a single large-format CAD sheet rather than running prose: a clause becomes
a callout, and a section becomes a view on the sheet. It is organized as independent
modules so a user of this skill can extend one module (e.g. domain guidance for a new
sheet type) without touching the others. Nothing in Modules 2–6 may contradict Module 1 —
they specialize how Module 1 is applied, they do not replace it.

---

## Module 1 — Core rules (invariant across every use of this skill)

These rules do not change per sample or sheet. They are what "changed", "added",
"removed", and "unchanged" mean for a drawing callout, full stop.

### The four verdicts

Begin every finding with exactly one of: **CHANGED**, **ADDED**, **REMOVED**, or
**UNCHANGED** (this skill has no NOT ADDRESSED verdict — every callout in scope is
compared, not asked a question it may leave unaddressed).

After the verdict, show both sides in the same finding — the callout's exact printed text
or value on each revision, quoted verbatim, never paraphrased — "T171x178x26 (-120)" where
the sheet says that, never "the notch depth". A reworded or summarized callout can no
longer be matched against the sheet, and a finding nobody can check is worse than none
because it will be believed anyway.

The source drawing is the later, reissued sheet; the supporting drawing is the earlier,
superseded one — the same source-is-newer/supporting-is-older convention as
`version-compare`. A callout in the older revision with no counterpart in the newer one is
**REMOVED**. A callout in the newer revision only is **ADDED**.

**No verdict from one side.** Every verdict needs evidence from both revisions. UNCHANGED
asserted from one revision's callout alone claims the other revision reads the same
without having checked it. REMOVED needs the callout's own text quoted from the older
sheet **and** the newer sheet actively searched with nothing matching at that grid
position — a callout not yet examined is not the same fact as a callout confirmed absent.

**Unchanged is a finding.** A control case (`CTRL-n`) that reports UNCHANGED lets a reader
tell "this node was checked and did not change" apart from "this node was not examined" —
those are different facts when the difference controls what gets re-fabricated.

**Grid position is part of a callout's identity, not a display choice.** Two callouts with
byte-identical text at different grid positions on the same sheet are two different units,
exactly as `version-compare`'s unit rule treats a register's own grouping as part of the
truth. A callout must never be aligned to its counterpart by text match alone when the
sheet repeats the same member size and connection code at many grid positions — see
Module 6, "repeated-callout ambiguity".

**A callout's on-sheet position moving is not the same fact as its value changing.** A
callout is CHANGED only when its printed value differs — not when only its position on the
sheet moved because a neighbouring callout's revision cloud was cleared and the two text
blocks reflowed. See Module 6, "reformat control case".

**This skill describes what changed on the sheet. It does not evaluate the change.** It
does not say whether the change is a good design decision or what caused it — only that it
occurred, where, and whether it is fabrication-relevant (Module 1's `material` field, next).

### The `material` field

Every finding also records `material: true` or `material: false` — does the change affect
fabrication (member size, connection design, grid geometry) or is it presentational/
administrative only (a title-block field, a revision-table row, a note's wording). This is
a second, independent judgment from the four-verdict classification, not a fifth verdict:
an ADDED callout can be material or not; a CHANGED callout can be material or not.

---

## Module 2 — Workflow (the shared processing pipeline)

| # | Stage | What happens | Notes |
|---|---|---|---|
| 1 | UNDERSTAND | Read every callout of the source sheet by area (title block / notes / plan view) and grid position. Grain = one callout; id = area mnemonic + running number (Module 3). | Grain fixed before comparison starts, per `Bootstrap.md`'s NORMALIZE step. |
| 2 | ALIGN | Match each source callout to its counterpart in the supporting sheet by grid position **and** member/field identity — never by revision-cloud presence or text alone. | An unclouded callout can still have changed silently; a clouded callout can be a pure reformat. See Module 6. |
| 3 | CLASSIFY | Assign one of the four verdicts (Module 1) to each unit. | — |
| 4 | JUDGE | Assign `material` (Module 1). | — |
| 5 | RETRIEVE | Locate the old callout's exact grid position and printed value in the supporting drawing, for every CHANGED or REMOVED unit. | Retrieval comes from the twin extraction (`actuals/drawing-comparison/<doc>/twin/`), never from memory of a similar callout seen elsewhere on the sheet. |
| 6 | VALIDATE | Run the Module 4 checklist before treating any output as final. | — |
| 7 | GENERATE | Write one finding per unit, per Module 5. | `findings/drawing-comparison/<doc>/<unit>.md` |

---

## Module 3 — Domain guidance (how to choose the grain, applied per sheet type)

This module is illustrative, not exhaustive, and never overrides Module 1. A single-sheet
shop/fabrication drawing — the only sheet type this skill has processed so far — uses the
following unit ids, each built from a short area mnemonic and a running number:

| Prefix | Covers | Example |
|---|---|---|
| `TITLE-n` | A title-block field outside the revision table (drawing title, drawing number, project title, scale) | `TITLE-1` — drawing title wording |
| `REV-n` | One row of the title block's own revision-history table | `REV-1` — new Rev 4 row |
| `NOTE-n` | A callout in the Notes box, including any legend the drawing defines for its own revision-cloud/marker conventions | `NOTE-1` — SYMBOLOGY legend |
| `MEMB-n` | A member, connection, or dimension callout on a plan/elevation view, identified by view (e.g. "Plan EL. 111.500") and grid position | `MEMB-4` — Grid D col.1 weld/bolt count |
| `CTRL-n` | A callout kept deliberately as an UNCHANGED (or reformat-only) control case, per Module 6 | `CTRL-1` — handrail/BW label reflow |

A "page" for a drawing follows `context.md`'s PDF-page rule (one physical sheet is one
page); a multi-sheet set would carry one page per sheet, but a single-sheet drawing — the
common case for a shop/fabrication drawing — has exactly one page per revision. A future
sample with a different sheet type (a multi-sheet set, a P&ID, a reinforcement drawing)
adds a row here once validated on real input, per the promotion bar (`Bootstrap.md` §8.2)
— this table grows only through that mechanism, not by editing it freely per sample.

The great majority of a plan view's member callouts are typically UNCHANGED and visually
indistinguishable in text from one another; exhaustively classifying every one of a sheet's
~100+ callouts is not required — a fully-verified set of the callouts that actually differ,
plus a small number of explicit UNCHANGED control cases, is sufficient scope for one run.
This scoping choice is recorded per-run in that run's `Plan.md`, not fixed here.

---

## Module 4 — Validation and quality checks

Run this checklist before treating any comparison as finished. Each item traces back to a
Module 1 rule.

- [ ] Every unit in scope has exactly one verdict — none skipped, none double-counted.
- [ ] Every non-UNCHANGED verdict shows both sides' exact printed text/value, quoted
      verbatim.
- [ ] No verdict was assigned from evidence in only one revision (Module 1, "No verdict
      from one side").
- [ ] Every unit was aligned by grid position **and** member/field identity, never by text
      match alone — re-verify explicitly wherever the sheet repeats a member size or
      connection code at multiple grid positions (Module 6, "repeated-callout ambiguity").
- [ ] Every callout was checked against the supporting sheet regardless of whether it
      carries a revision cloud — a cloud is a starting draft of what changed, never a
      verified classification (Module 6, "self-annotation").
- [ ] A callout whose on-sheet position changed but whose value did not was **not** marked
      CHANGED (Module 6, "reformat control case").
- [ ] `material` was judged independently of the four-verdict classification for every
      unit, per Module 1.
- [ ] No fabrication or design judgment about the change appears in the findings beyond
      `material` and grid-position fact — only what changed and where, per Module 1's
      closing rule.

---

## Module 5 — Output requirements

One finding file per unit: Old (document, page, callout) · New (document, page, callout) ·
What changed · Why it matters. The "callout" in Old/New is the exact text as printed at
that grid position — a member size string, a weld/bolt count, a title-block field value, a
table row — copied verbatim, the drawing equivalent of `version-compare`'s quote.

A finished comparison also states, at minimum: a count of units per verdict and per
`material` value, and — where the comparison surfaces something a reader would otherwise
have to infer (an untagged change with no revision cloud, a reformat control case, an
already-communicated marker) — an explicit call-out, per Module 6.

---

## Module 6 — Edge-case handling

Cases this skill has been confirmed to handle correctly (see
`skills/drawing-comparison/PatternLog.md` for the observation history behind each row).
Only one sample has been processed under this skill so far, so none of these rows has yet
cleared the cross-sample-confirmation leg of the promotion bar (`Bootstrap.md` §8.2) — each
is recorded here because it was structurally necessary to produce this sample's findings at
all (the promotion bar's third path), not because it has been independently reconfirmed.

| Edge case | Handling |
|---|---|
| superseded-document | The earlier revision is kept in `documents/drawing-comparison/supporting/`, distinct from the current, authoritative source revision — a run must never cite the supporting document as current. |
| revision-cloud-untagged | A callout whose value differs between revisions with no revision cloud drawn around it on the source sheet. Trusting the sheet's own cloud markers as a complete change list misses real fabrication-relevant changes — confirmed on this sample's `MEMB-4`/`MEMB-5`, two connection callouts that changed with no cloud. |
| already-communicated marker | A drawing-specific legend (e.g. an asterisk on a cloud) stating that some clouded changes were already communicated to the fabricator outside the formal revision. Every clouded change is not equally "new news" to the reader — the drawing itself distinguishes already-known from newly-issued; this legend is itself a NOTE-shape callout and must be read and reported like any other, not assumed. |
| reformat control case | A callout whose on-sheet position or leader routing changed (typically because an old revision's cloud was cleared and overlapping text reflowed) with no value change. Must not be marked CHANGED for a layout difference alone — confirmed on this sample's `CTRL-1`, where two adjacent dimension callouts *did* change (filed separately as `MEMB-13`/`MEMB-14`) while the label pair itself did not. |
| repeated-callout ambiguity | Many callouts on the same view share identical member-size and connection-code text at different grid positions. Grid position must be read independently, not inferred from text order, or an aligner will match a changed callout to the wrong grid position. |
| out-of-pack cross-reference | A note that refers to another sheet not included in this pack (e.g. "FOR GENERAL NOTES... SEE SHEET 001"). Flag as out of scope, never treat as a silent omission. |
| figure-answer | A value stated only inside the plan/elevation graphic, not in a text-extractable field. On a drawing this is the *default* case, not the exception — nearly every unit is figure-answer, unlike `version-compare`'s prose documents where it is a named exception. |
| grid-row uncertain from text-layer diff alone | A text-layer diff can confirm a callout's value changed without pinning which grid row it sits on, when the sheet's PDF content stream does not preserve spatial position for that text run. Record `confidence: UNSURE` rather than guessing the grid row — never fabricate a position to close out a finding. Confirmed on this sample's `MEMB-10`/`MEMB-11`/`MEMB-12`. |
| absence detected by a second, independently-run attempt at the same document pair | An earlier finding on this sample (`CTRL-1`) originally reported a node as having nothing changed at all; a second, independent attempt at the same document pair flagged that two adjacent dimension figures had in fact changed and had not been searched for at that grid position. Confirmed only after an independent text-occurrence count across both extraction passes, not accepted on the second attempt's word alone — mirrors `version-compare`'s "no verdict from one side" rule applied to the *verification* step itself, not just the original judgment. See `prompt-log/drawing-comparison/PromptLog.md`'s 2026-09-17 correction entry. |
