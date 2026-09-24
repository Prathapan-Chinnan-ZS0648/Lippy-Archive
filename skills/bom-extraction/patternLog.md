# Pattern log — bom-extraction

## Entry 1

```yaml
observed-in: 260374 COMBINED PID SET 6-1-26
timestamp: 2026-09-17
observation: >
  Neither version-compare's nor drawing-comparison's shape fits this task: both exist to
  diff a source document against a supporting/superseded one (a two-document pair), and
  this task is a single-document read with no second revision or answering document to
  compare against at all. question-answer was also considered and rejected (the task
  isn't answering a supplied question list, it's enumerating every tagged item the
  drawing itself names).
occurrence-count: 1
promotion-bar-check:
  cross-sample-confirmation: "no — only one sample observed so far"
  explicit-user-generalization: "no"
  structural-necessity: "yes — a genuinely single-document extraction task cannot be
    forced through a comparison skill's shape without inventing a fictitious supporting
    document or scoring every tag as a meaningless ADDED verdict"
decision: promoted
rationale: >
  Structural necessity alone justifies this without a second sample: no existing skill's
  Module 1 core rules apply to a task with no second document. A new skill was required
  to produce any finding at all.
skill-change: >
  skills/bom-extraction/skill.md created (v1), keeping what transfers from the Lippy
  Archive pattern generally (a documented unit-identity rule, a pack profile of
  drawing-reading failure modes, explicit scoping honesty about coverage) while dropping
  the comparison apparatus entirely (no ALIGN stage, no verdict scale, no materiality
  judgment).
```

## Entry 2

```yaml
observed-in: 260374 COMBINED PID SET 6-1-26
timestamp: 2026-09-17
observation: >
  This drawing set's supporting/comparison document does not exist as a concept at all —
  when this use case was later migrated into bootstrap.md's fileIndex.md framework
  (2026-09-21), the framework's own schema required both a source_document_path and a
  supporting_document_path per entry, with no documented allowance for a genuinely
  single-document use case.
occurrence-count: 1
promotion-bar-check:
  cross-sample-confirmation: "no — only one use case observed with this shape so far"
  explicit-user-generalization: "yes — the user explicitly chose to extend bootstrap.md's
    schema itself (rather than self-pairing source and supporting, or leaving the gap
    unaddressed) when this exact tension was raised"
  structural-necessity: "yes — the framework's own stated goal (bootstrap.md's own
    self-description as use-case-agnostic, generalized across arbitrary document-judgment
    tasks) cannot hold if a genuine task shape it does not yet support has no path to
    being configured at all"
decision: promoted
rationale: >
  Explicit user generalization plus structural necessity together justify this without
  waiting for a second single-document use case. Extending bootstrap.md's own schema
  (rather than a bom-extraction-specific workaround) keeps the fix general, consistent
  with bootstrap.md's rule that it is never edited to special-case one use case.
skill-change: >
  bootstrap.md §2 (fileIndex.md schema) amended to document supporting_document_path:
  "n/a" as a valid, explicit declaration of a single-document use case, conditioned on
  skill_file_path declaring that shape in its own front matter — never silently accepted
  for a skill that actually expects a supporting document. bootstrap.md's RESOLVE command
  definition (§5) updated to match. See prompt-log/bom-extraction/promptLog.md.
```

## Entry 3

```yaml
observed-in: 260374 COMBINED PID SET 6-1-26
timestamp: 2026-09-17
observation: >
  The combined PDF's 13 pages, in file order, do not track their own drawing-number
  sequence: drawing D-260374-11-004 appears last (page 13), after D-260374-11-011 (page
  12), rather than between -003 and -005 as its number would suggest.
occurrence-count: 1
promotion-bar-check:
  cross-sample-confirmation: "no — only one sample observed so far"
  explicit-user-generalization: "no"
  structural-necessity: "yes — a reader citing 'page N' as if it reliably predicts
    drawing number N would misattribute content on any drawing set whose combined-PDF
    assembly order does not track drawing numbering, which this sample already shows is
    a real possibility, not a hypothetical"
decision: promoted
rationale: >
  Structural necessity: without an explicit rule, page-to-drawing-number correspondence
  would silently be assumed rather than checked, which this sample already disproves for
  itself.
skill-change: >
  skills/bom-extraction/skill.md Module 6 row "non-sequential-sheet-order" (v1, initial
  content).
```

## Entry 4

```yaml
observed-in: 260374 COMBINED PID SET 6-1-26
timestamp: 2026-09-17
observation: >
  This drawing carries far more tags than the 27 extracted as findings in this pass — a
  full instrument index (well over 100 tags) and a 12-line well-pad flowline list are
  visible but not individually reviewed. Extracting every tag with its own legible,
  complete specification (27 items) and recording the remainder honestly (counted and
  located by sheet, not individually detailed) was judged higher value than exhaustively
  detailing the full instrument population in the first pass.
occurrence-count: 1
promotion-bar-check:
  cross-sample-confirmation: "no — only one sample observed so far"
  explicit-user-generalization: "no"
  structural-necessity: "yes — mirrors drawing-comparison's own confirmed scoping
    decision for its ~100 unchanged member callouts (skills/drawing-comparison/skill.md
    Module 3's scoping note), applied here to extraction coverage rather than comparison
    coverage"
decision: promoted
rationale: >
  Structural necessity via direct analogy to an already-promoted scoping principle in a
  sibling skill. Recorded explicitly so a pack's coverage scope is always stated, never
  left for a reader to infer from an incomplete-looking findings count.
skill-change: >
  skills/bom-extraction/skill.md Module 3's coverage-scoping paragraph and Module 6 row
  "out-of-pack instrument population" (v1, initial content).
```

## Entry 5

```yaml
observed-in: 260374 COMBINED PID SET 6-1-26
timestamp: 2026-09-17
observation: >
  DR-3001 is labelled "DESICCANT AIR DRYER (f)" on sheet -011, separate from DR-804 (the
  compressed-air train's own desiccant dryer, which carries a full MFG/MODEL/CAPACITY row
  on the same sheet). The "(f)" flag, per this set's own Legend1 abbreviation table, means
  "furnished with associated equipment or by others" — i.e. outside this drawing's own
  scope to specify.
occurrence-count: 1
promotion-bar-check:
  cross-sample-confirmation: "no — only one sample observed so far"
  explicit-user-generalization: "no"
  structural-necessity: "yes — this skill's absence-policy explicitly forbids inferring a
    value not stated by the drawing; a rule was needed for a tag that is real and
    distinct but whose spec is explicitly delegated elsewhere, rather than either
    dropping the tag or silently borrowing a neighbouring tag's spec"
decision: promoted
rationale: >
  Structural necessity: without an explicit rule, an implementer would face a choice
  between treating DR-3001 as a duplicate of DR-804 (wrong — it is drawn as its own box,
  a real distinct item) or filling its spec from DR-804's data (fabrication, forbidden by
  Module 1's absence-policy). Extracting the tag with an explicit, stated spec gap is the
  honest middle path.
skill-change: >
  Not a new Module 6 row (this is a specific instance of Module 1's existing
  absence-policy rule, not a new edge case) — recorded here as an explicit reminder, and
  referenced directly from findings/bom-extraction/260374 COMBINED PID SET
  6-1-26/dr3001.md and dr804.md, mirroring how skills/version-compare/patternLog.md
  Entry 2 recorded a structurally-necessary consequence of an existing rule for clarity
  rather than adding a redundant new row.
```

## Entry 6

```yaml
observed-in: Prepurchase Elect Dwgs_10-30-2024
timestamp: 2026-09-21
observation: >
  This second bom-extraction sample is a set of electrical one-line diagrams, elevations,
  and a physical power/grounding plan for a generator/switchgear/transformer prepurchase
  package — not a P&ID. skills/bom-extraction/skill.md v1's Module 3 had only one
  domain-guidance row (P&ID), with unit categories (EQUIPMENT/SAFETY-RELIEF-VALVE/
  CONTROL-VALVE/INSTRUMENT) that do not semantically fit generators, switchgear, and
  transformers.
occurrence-count: 1 (a second drawing type, not a repeat of the first)
promotion-bar-check:
  cross-sample-confirmation: "not applicable to this row itself — this is what a second,
    differently-shaped sample is for: extending Module 3, not confirming an existing row"
  explicit-user-generalization: "no"
  structural-necessity: "yes — an electrical one-line set cannot be classified under the
    P&ID-specific category set at all; a new Module 3 row was required to produce any
    finding for this sample"
decision: promoted
rationale: >
  Structural necessity, exactly mirroring Entry 1's original justification for creating
  this skill in the first place, one level down (a new domain-guidance row within the
  existing skill, not a whole new skill, since Module 1's core rules — extraction, no
  verdict scale, home-sheet rule, absence-policy — apply unchanged to this drawing type).
skill-change: >
  skills/bom-extraction/skill.md enhanced to v2, after snapshotting its pre-enhancement
  v1 content to skills/bom-extraction/skill-versions/v1.md (already immutable, unchanged)
  and archiving the v2 content at skills/bom-extraction/skill-versions/v2.md, per
  bootstrap.md §9. Added a Module 3 row for "electrical one-line diagram set" (single
  EQUIPMENT category, read against the drawing's own tagging table; future-vs-current
  status as a required classification step). Generalized Module 2 stage 2 (CLASSIFY) and
  the front matter's `grain` field to reference "the applicable category set for this
  drawing type" instead of hardcoding the P&ID categories. Folded this entry and Entries
  7-8 into Module 6 as two new edge-case rows (future-vs-current equipment convention;
  contradictory rating across sheets for the same tag), and marked three existing rows
  (legend-dependent-tag, package-sub-item, out-of-pack instrument/relay population) as
  "confirmed across 2 samples" since this sample independently reproduced each pattern.
```

## Entry 7

```yaml
observed-in: Prepurchase Elect Dwgs_10-30-2024
timestamp: 2026-09-21
observation: >
  Equipment reserved for a later project phase, not part of this pre-purchase scope, is
  drawn with a visibly lighter line weight and/or dashed outline throughout this set —
  sometimes with an explicit "(FUTURE)" text label (GEN-G6, confirmed on Drawing E15's
  elevation), sometimes with no such label at all (the entire DC Battery System block,
  dashed on Drawing E07 with no "FUTURE" text anywhere on that sheet). Relying on a
  single sheet's line-weight alone would have been insufficient for at least one unit.
occurrence-count: observed at 6+ distinct locations across the sample (GEN-G6/NGR-G6, the
  DC battery system, 4 future VFDs)
promotion-bar-check:
  cross-sample-confirmation: "no — first electrical-drawing sample; not yet seen in a
    second sample of this drawing type"
  explicit-user-generalization: "no"
  structural-necessity: "yes — this skill's absence-policy and Module 1's home-sheet rule
    give no guidance on which of two visually-different-but-similarly-labelled versions
    of a tag (dashed vs. solid) is the one to extract; a rule was needed"
decision: promoted
rationale: >
  Structural necessity: without an explicit rule, a reader could extract a future
  provision as if it were current scope (over-stating the BOM) or, less likely, discount
  a real current item that happened to be drawn lightly for an unrelated reason. Requiring
  cross-sheet confirmation before either including or excluding a unit is the safer
  default given the observed inconsistency in labelling.
skill-change: >
  skills/bom-extraction/skill.md Module 6 row "future-vs-current equipment convention"
  (v2). Module 3's new electrical-one-line-set row and Module 4's checklist also updated.
```

## Entry 8

```yaml
observed-in: Prepurchase Elect Dwgs_10-30-2024
timestamp: 2026-09-21
observation: >
  Drawing E07 states MVSWGR-E and MVSWGR-F's bus as "3Ø, 4W ... TIN PLATED COPPER BUS";
  each unit's own dedicated detail sheet (E08, E09) states "3Ø, 3W ... INSULATED COPPER
  BUS" for the same equipment. Voltage, amperage, and SCCR agree across all three sheets;
  wire count and bus material/plating description do not.
occurrence-count: 2 (both MVSWGR-E and MVSWGR-F show the identical pattern)
promotion-bar-check:
  cross-sample-confirmation: "no — first electrical-drawing sample"
  explicit-user-generalization: "no"
  structural-necessity: "yes — mirrors version-compare's Module 1 'no verdict from one
    side' principle and drawing-comparison's 'contradiction' pack-profile entry, applied
    to a skill with no verdict scale: silently preferring one sheet's number over
    another's, with no evidence either is more authoritative, would misstate a real
    fabrication-relevant fact (bus wire count/material) with false confidence"
decision: promoted
rationale: >
  Structural necessity via direct analogy to already-promoted rules in sibling skills.
  Confidence: UNSURE on the specific contested field, both readings quoted, is the honest
  middle path — matches this skill's own DR-3001 precedent (Entry 5) of recording a gap
  rather than guessing, applied here to a genuine two-sided contradiction rather than a
  one-sided gap.
skill-change: >
  skills/bom-extraction/skill.md Module 6 row "contradictory rating across sheets for the
  same tag" (v2). Findings mvswgre.md and mvswgrf.md both carry this flag.
```

## Entry 9

```yaml
observed-in: cross-skill (bom-extraction + drawing-comparison)
timestamp: 2026-09-22
observation: >
  This skill's Module 1/6 and skills/drawing-comparison/skill.md's Module 1/6 (written
  independently, for a different output shape) converged, without coordination, on the
  same discipline for a recurring set of failure modes across this domain — see
  skills/drawing-comparison/patternLog.md Entry 6 for the full comparison. In summary:
  position/tag-is-identity, legend-is-sole-authority, a marker/convention is a hint never
  proof, absence needs active search not inference, a contradiction is recorded not
  resolved, figures are the default answer location, and world knowledge only decodes.
occurrence-count: 7 rules, each independently present in both skills before this entry
promotion-bar-check:
  cross-sample-confirmation: "yes — the same rule independently reinvented by a second,
    differently-shaped skill in the same domain, the strongest form available"
  explicit-user-generalization: "yes — the user explicitly asked for this branch's
    architecture to be genuinely designed for its own use cases, not copied from main,
    and to identify what's reusable conceptually vs. what should differ"
  structural-necessity: "yes — this skill's own Entries 7-8 (future-vs-current
    convention; contradictory rating across sheets) are close cousins of rules this
    skill's sibling had already confirmed under different names (self-annotation,
    absence-detected-by-a-second-attempt) — without a shared layer, the same lesson has
    to be independently relearned per skill, which is exactly what happened here"
decision: promoted
rationale: >
  All three promotion-bar conditions hold independently. This relocates 7 already-
  confirmed rules (this skill's own no-verdict-scale absence-policy language and world-
  knowledge limits included) to one place both skills reference, rather than maintaining
  copies that can drift apart under separate corrections.
skill-change: >
  skills/_shared/engineeringDrawingReading.md (v1) created — see
  skills/drawing-comparison/patternLog.md Entry 6 for its full content. This skill
  enhanced v2 -> v3 (v2 snapshotted immutably first): added `builds-on` front matter,
  removed the restated form of shared rule 2 (legend-is-authority) from Module 1, kept
  the home-sheet rule and stated-incomplete-value rule but reframed each as this skill's
  own specialization of shared rules 1 and 7 respectively. Module 6 rows
  legend-dependent-tag, future-vs-current-equipment-convention, and
  contradictory-rating-across-sheets now cross-reference the relevant shared-layer rule
  number. Rows not covered by the shared layer (hold-for-sizing, split-datasheet,
  repeated-tag-no-datasheet, non-sequential-sheet-order, package-sub-item, out-of-pack
  instrument/relay population) are left as this skill's own. No verdict/extraction-
  relevant behavior changed for either existing sample's findings (27 P&ID, 23
  electrical) — restructuring for maintainability, not a new judging rule; neither
  sample's findings were re-judged.
```

## Entry 10

```yaml
observed-in: not sample-driven — direct user instruction
timestamp: 2026-09-23
observation: >
  The user explicitly instructed that skills/drawing-comparison/skill.md's AKU-driven
  retrieval approach (added there for a comparison-shaped skill with a supporting
  document to ask questions against) should generalize to every use case, explicitly
  including single-document ones: "Ask those questions against the relevant document(s),
  even when there is only one document available." This directly resolves the reason
  this project's shared layer had not yet absorbed that rule — it had looked
  supporting-document-specific, and this skill (which has none) is exactly the case that
  proves it isn't.
occurrence-count: not applicable — explicit generalization request
promotion-bar-check:
  cross-sample-confirmation: "yes, immediately — skills/drawing-comparison/skill.md was
    updated to build on the same generalized rule in the same action; see that skill's
    patternLog.md Entry 8 for the full record"
  explicit-user-generalization: "yes — see observation above, quoting the user directly"
  structural-necessity: "not applicable — the generalization was explicit"
decision: promoted
rationale: >
  Explicit user generalization is sufficient alone, reinforced by immediate cross-skill
  confirmation (both of this project's use cases updated together). This use case is the
  one that specifically demonstrates the rule's generality: a "relevant document" can be
  the same document an AKU came from, not necessarily a second one.
skill-change: >
  skills/_shared/engineeringDrawingReading.md enhanced v1 -> v2 — see
  skills/drawing-comparison/patternLog.md Entry 8 for the shared layer's full content.
  This skill enhanced v3 -> v4 (v3 snapshotted immutably first): added a
  `retrieval-model` front-matter field and a Module 1 "AKU-driven retrieval" subsection
  specific to this skill (with no supporting document, a tag's classification question
  is asked of the drawing's own legend/tagging table, and its specification question is
  asked of its home sheet and every other sheet it appears on — both are still questions
  asked of "the relevant document(s)" per shared rule 8, just of the source document
  itself). Restructured Module 2's workflow table: CLASSIFY + RETRIEVE + JUDGE replaced
  by FORMULATE -> ASK -> DERIVE. Updated Module 4's checklist and Module 5's output shape
  (added Classification/Specification Question and Answer as explicit finding fields,
  alongside Tag/Description/Specification). The existing 50 findings across this skill's
  two documents (27 P&ID, 23 electrical), produced under v1-v3, are explicitly left as
  pre-v4 records and are **not** retrofitted with reconstructed questions, for the same
  reason skills/drawing-comparison/skill.md's Entry 7 gave: composing a question after
  its answer is already known is exactly what shared rule 8 forbids. Whether to re-run
  either document's extraction under v4's methodology is an open decision, not made here.
```
