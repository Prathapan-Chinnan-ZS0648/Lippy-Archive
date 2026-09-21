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
