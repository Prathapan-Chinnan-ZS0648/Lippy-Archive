# Pattern log — version-compare

## Entry 1

```yaml
observed-in: SYNTH_VERS_DOCS_S1
timestamp: 2026-09-18 13:05 IST
observation: >
  The revised document in this sample self-annotated its own changes with bracketed
  markers (e.g. a tag after new or modified text) rather than requiring the comparison to
  detect changes purely by text diffing.
occurrence-count: 1
promotion-bar-check:
  cross-sample-confirmation: "no — only one sample observed so far"
  explicit-user-generalization: "no"
  structural-necessity: "no — a document choosing to self-annotate is a document-authoring
    choice, not something true of every version-comparison task by definition"
decision: not-promoted
rationale: >
  Only one sample shows this. Self-annotation cannot be assumed present in future
  samples — the skill must remain able to detect changes by direct comparison alone.
  Revisit if a second, independently authored sample also self-annotates; if so, add a
  skill rule to *use* self-annotation as a cross-check when present, while still requiring
  independent verification against both documents' text.
skill-change: none
```

## Entry 2

```yaml
observed-in: SYNTH_VERS_DOCS_S1
timestamp: 2026-09-18 13:05 IST
observation: >
  A checklist-style section in the sample dropped a line item between versions with no
  replacement, even though the underlying requirement the line certified remained present
  elsewhere in the document (i.e., a checklist entry can be REMOVED while the requirement
  it certifies is UNCHANGED elsewhere).
occurrence-count: 1
promotion-bar-check:
  cross-sample-confirmation: "no — only one sample observed so far"
  explicit-user-generalization: "no"
  structural-necessity: "yes — this follows from the skill's own grain-of-one-clause rule:
    a checklist line and the requirement it certifies are two distinct clauses, so they
    must be judged independently rather than assumed to move together"
decision: promoted
rationale: >
  Structural necessity alone justifies this without needing a second sample: it is a
  direct consequence of the skill's existing "one clause, one verdict" grain rule, not a
  new judging rule. Recorded here as an explicit reminder rather than a skill.md edit,
  since skill.md's existing grain/verdict rules already cover it correctly.
skill-change: none — already covered by skill.md's existing grain rule; logged for clarity
```

## Entry 3

```yaml
observed-in: not sample-driven — direct user instruction
timestamp: 2026-09-18 13:22 IST
observation: >
  The user directly instructed that this skill be made "more generic, modular, reusable,
  and extensible for handling all version-comparison-related documents," with modular
  instructions, reusable workflows, domain-specific guidance kept separate from core
  rules, explicit validation/quality checks, output requirements, and edge-case handling
  as distinct, independently extensible sections — rather than a skill shaped around the
  one sample processed so far.
occurrence-count: not applicable — this is an explicit generalization request, not a
  pattern observed across samples
promotion-bar-check:
  cross-sample-confirmation: "not applicable"
  explicit-user-generalization: "yes — the user directly requested this restructuring and
    generalization, independent of any single sample's content"
  structural-necessity: "not applicable"
decision: promoted
rationale: >
  Explicit user generalization alone is sufficient per bootstrap.md §A.6 condition 2 — no
  second sample or structural argument is needed when the user states the generalization
  directly.
skill-change: >
  skills/version-compare/skill.md (the live file) enhanced to v2, after snapshotting its
  pre-enhancement v1 content to skills/skill-versions/version-comparev1.md and archiving
  the v2 content itself at skills/skill-versions/version-comparev2.md, per bootstrap.md
  §A.7. Restructured v1's single flat rule set into six modules (Core rules, Workflow,
  Domain guidance, Validation, Output requirements, Edge-case handling). Generalized
  "grain=row" (v1) into a configurable, document-type-dependent grain chosen in a new
  explicit UNDERSTAND stage (Module 3 provides illustrative, non-exhaustive guidance per
  document type). Formalized "map units by content/label, not position" as an explicit
  workflow stage (Module 2, stage MAP), generalizing what v1 only handled implicitly
  through its verdict rules. Folded this pattern-log's own Entries 1 and 2 into Module 6
  (Edge-case handling) as generalized, reusable table rows
  (self-annotation-as-cross-check-only; checklist-line-vs-requirement distinctness), plus
  three additional edge cases not yet observed in any sample but anticipated as
  structurally necessary for a general-purpose version-comparison skill (no shared
  structure between documents, more than two versions/multiple supporting documents,
  mixed/converted formats) — these three are flagged in v2's own Module 6 framing as
  extensible-by-future-evidence, not asserted as sample-confirmed.
```

## Entry 4

```yaml
observed-in: SYNTH_VERS_DOCS_S2_REVISED
timestamp: 2026-09-18 (S2 START run)
observation: >
  Self-annotation (bracketed markers for additions/changes) recurred in a second,
  independently authored sample (a different business domain — financial services ITSM
  procurement — from S1's retail/logistics RFP), confirming the pattern already promoted
  into skill v2 Module 6 from S1 alone plus explicit user generalization.
occurrence-count: 2 (independent)
promotion-bar-check:
  cross-sample-confirmation: "yes — now satisfied independently of the original
    explicit-user-generalization basis"
  explicit-user-generalization: "not needed this time — already promoted"
  structural-necessity: "not applicable"
decision: already-promoted — confirming evidence only, no further skill-change action
rationale: >
  The rule already exists in skill v2 Module 6 and required no change; this entry records
  that a second sample now independently confirms it would have met the promotion bar on
  cross-sample evidence alone, strengthening confidence in the rule without altering it.
skill-change: none
```

## Entry 5

```yaml
observed-in: SYNTH_VERS_DOCS_S2_REVISED
timestamp: 2026-09-18 (S2 START run)
observation: >
  An entire section's substantive content was removed while its section number and
  table-of-contents slot persisted unchanged across versions (Section 6, retitled
  "[Reserved]"), with every original bullet judged REMOVED individually and the new
  explanatory note judged ADDED.
occurrence-count: 1
promotion-bar-check:
  cross-sample-confirmation: "no — only one sample so far"
  explicit-user-generalization: "no"
  structural-necessity: "yes — this is a section-level application of the existing REMOVED
    rule (Module 1) applied to every clause within the emptied section; no new rule is
    needed, since 'a unit with no counterpart is REMOVED' already covers an entire
    section's units having no counterpart"
decision: not-promoted (no change needed — already covered by existing rule)
rationale: >
  Structural necessity means this required no skill.md edit: the existing per-clause
  REMOVED rule, applied consistently, already produces the correct result when every
  clause in a section is removed at once. Logged for visibility, not because a rule was
  missing.
skill-change: none
```

## Entry 6

```yaml
observed-in: SYNTH_VERS_DOCS_S2_REVISED
timestamp: 2026-09-18 (S2 START run)
observation: >
  A subsection was reformatted from bullet-point prose into a table between versions,
  with the revision's own note confirming most rows restate existing bullets in tabular
  form with added quantified SLA targets, plus one genuinely new row. Matched by content
  rather than position, five of six rows judged CHANGED (quantified target added to an
  existing obligation) and one judged ADDED (no bullet counterpart at all).
occurrence-count: 1
promotion-bar-check:
  cross-sample-confirmation: "no — only one sample so far"
  explicit-user-generalization: "no"
  structural-necessity: "yes — this is a direct application of the existing map-by-content
    rule (Module 2, stage MAP) across a format change (prose to table); the format a
    clause is presented in is not itself part of what defines a unit's identity under
    that rule"
decision: not-promoted (no change needed — already covered by existing rule)
rationale: >
  The existing MAP-by-content rule already handles a format change correctly once framed
  as 'match by content, not position or presentation.' No skill.md edit required. Logged
  for visibility, and as a candidate to make the wording of Module 2 stage MAP explicitly
  mention format changes (not just position/renumbering) if a second sample surfaces the
  same reformatting pattern.
skill-change: none
```

## Entry 7

```yaml
observed-in: SYNTH_VERS_DOCS_S4_REVISED
timestamp: 2026-09-18 (S4 START run)
observation: >
  First sample in a genuinely new document format: a multi-sheet Excel workbook (.xlsx),
  not a paginated document. The unit of location is a sheet, not a page.
occurrence-count: 1 (first of this format)
promotion-bar-check:
  cross-sample-confirmation: "no — first sample of this format"
  explicit-user-generalization: "no"
  structural-necessity: "yes — skill v2 Module 6 already anticipated 'mixed or converted
    formats' generically (normalize to extracted text before applying grain and
    verdicts); a spreadsheet is simply another format that rule already covers"
decision: not-promoted (no change needed — already covered by existing rule)
rationale: >
  Module 6's existing format-agnostic normalization rule required no change to handle
  this format; only bootstrap.md's twin-file naming convention needed a non-skill-file
  adaptation (sheet-<name>.md instead of page-###.md), which is an actuals/ convention,
  not a skill rule.
skill-change: none
```

## Entry 8

```yaml
observed-in: SYNTH_VERS_DOCS_S4_REVISED
timestamp: 2026-09-18 (S4 START run)
observation: >
  A whole unit (here, an entire spreadsheet sheet) existed in the source document with
  NO counterpart at all in the supporting document — not a same-numbered/titled unit with
  emptied content (as in S2's "[Reserved]" case), but a unit with no corresponding slot
  whatsoever.
occurrence-count: 1
promotion-bar-check:
  cross-sample-confirmation: "no — only one sample so far"
  explicit-user-generalization: "no"
  structural-necessity: "yes — this is the same per-clause ADDED rule (Module 1) applied
    at the largest possible scope (every clause in an entirely new unit is ADDED); no new
    rule is needed, since 'a unit with no counterpart is ADDED' already covers a whole
    unit having no counterpart at all, just as the equivalent REMOVED case did for S2's
    whole-section removal"
decision: not-promoted (no change needed — already covered by existing rule)
rationale: >
  Structural necessity means no skill.md edit was required — the existing per-clause
  ADDED rule, applied consistently at every scope, already produces the correct result
  whether the new content is one row, a paragraph, an entire section, or an entire sheet.
  Logged for visibility, mirroring S2's Entry 5 for the REMOVED-side equivalent.
skill-change: none
```

## Entry 9

```yaml
observed-in: SYNTH_VERS_DOCS_S4_REVISED
timestamp: 2026-09-18 (S4 START run)
observation: >
  A document's own self-annotation note claimed one requirement was "removed... and
  replaced by" another (R-07 replaced by R-17), but the two requirements' actual content
  differed substantively (on-premise vs. cloud-managed monitoring) — the note's framing,
  if trusted, would have produced a single CHANGED verdict; independent content-mapping
  produced REMOVED + ADDED instead.
occurrence-count: 1
promotion-bar-check:
  cross-sample-confirmation: "no — only one sample so far"
  explicit-user-generalization: "no"
  structural-necessity: "yes — this is a direct application of two already-existing
    rules together: self-annotation is a cross-check only, never the sole basis for a
    verdict (Module 6), and units are mapped by content, not by the document's own
    stated relationship between them (Module 2, stage MAP)"
decision: not-promoted (no change needed — already covered by existing rules)
rationale: >
  No skill.md edit required — this is exactly the failure mode the self-annotation
  cross-check rule exists to prevent (trusting a document's own claim about what changed
  without verifying against actual content), applied to a new specific shape (a claimed
  "replacement" that turns out to be an unrelated removal plus an unrelated addition).
  Logged as a concrete illustration of why the existing rule matters, not as a gap.
skill-change: none
```

## Entry 10

```yaml
observed-in: SYNTH_VERS_DOCS_S1_REVISED, SYNTH_VERS_DOCS_S2_REVISED, SYNTH_VERS_DOCS_S4_REVISED (cumulative — direct ENHANCE-SKILL invocation, not a single new sample)
timestamp: 2026-09-18 (ENHANCE-SKILL run)
observation: >
  Re-reviewed Entries 5, 6, 8, and 9 together: each was individually judged
  "structural necessity: yes, no skill-change needed" because the applicable rule
  (Module 1's ADDED/REMOVED, Module 2's map-by-content) already produced the correct
  result — but none of the four scenarios was ever written into skill.md's own text as
  an explicit, generalized case. A future reader (or a future run) would have had to
  re-derive the same reasoning from scratch for a fifth sample rather than finding it
  already stated.
occurrence-count: 4 confirmed structural-necessity cases across 3 independent samples,
  none previously made explicit in skill text
promotion-bar-check:
  cross-sample-confirmation: "yes for two of the four (self-annotation-adjacent
    reasoning; format-agnostic mapping) — confirmed across S1/S2/S4; the other two
    (whole-unit-no-counterpart; document's-own-relationship-claim-not-authoritative)
    are each single-sample so far but were already independently qualified as
    structural necessity in their own entries"
  explicit-user-generalization: "yes — the user directly invoked ENHANCE-SKILL, which
    per bootstrap.md §8.1 requires analyzing the current sample and pattern-log against
    the skill and generalizing whatever clears the bar, rather than leaving confirmed
    structural-necessity cases implicit indefinitely"
  structural-necessity: "yes, for all four — already established individually in
    Entries 5, 6, 8, 9"
decision: promoted
rationale: >
  Multiple conditions of the promotion bar are independently satisfied. Making
  already-structurally-necessary reasoning explicit in the skill's own text is not a
  behavior change (verified against every previous sample's findings, below) — it is
  exactly what "preserve what's valid, refine what's narrow" (bootstrap.md §8.1) calls
  for: the underlying rule was always correct, only its statement was incomplete.
skill-change: >
  skills/version-compare/skill.md enhanced v2 → v3. Snapshotted v3's own content to
  skills/skill-versions/version-comparev3.md (marked as the current snapshot);
  skills/skill-versions/version-comparev2.md's status field updated to "superseded by
  version-comparev3.md" (its content otherwise untouched, per bootstrap.md §9). Changes:
  (1) Module 1 gained an explicit paragraph stating ADDED/REMOVED apply at any
  granularity — one clause up to an entire top-level unit (sheet/slide/section) with no
  counterpart — judged per-clause, never as one aggregate verdict (generalizes Entry 8,
  and the ADDED side of Entry 5). (2) Module 2 stage MAP's row explicitly now includes
  format changes and a document's own relationship claims as things to map by content
  through, not defer to (generalizes Entries 6 and 9). (3) Module 6 gained two new rows:
  "A unit's slot persists but its content is emptied or replaced" (generalizes Entry 5,
  distinguishing it explicitly from "no slot at all") and "A document's own stated
  relationship between two units... is not authoritative" (generalizes Entry 9). (4) The
  existing "No shared structure" row's wording tightened to explicitly cover the case
  where *most* structure matches and only one unit is missing (generalizes Entry 8's
  specific shape, where 5 of 6 sheets did map cleanly). (5) The "Mixed or converted
  formats" row's wording updated to state it is now confirmed in practice (PDF and
  .xlsx), not only anticipated (generalizes Entry 7).
```

## Entry 11

```yaml
observed-in: SYNTH_VERS_DOCS_S4_REVISED (direct ENHANCE-SKILL invocation against this
  sample's Detection.md and findings, cross-checked against Entries 1-10)
timestamp: 2026-09-20 (ENHANCE-SKILL run)
observation: >
  Three quirks recorded in this sample's Detection.md were never individually checked
  against the promotion bar or logged here: (a) an entire table column ("Vendor Response",
  "Vendor Notes") present only in the newer workbook was reported as a single column-level
  ADDED note rather than one ADDED verdict per cell; (b) a placeholder/zero value in the
  older workbook's Pricing Form cells, replaced by real figures in the newer one, was
  judged CHANGED (not ADDED) because a counterpart row plainly existed; (c) the Cover
  sheet's "Category" field was judged UNCHANGED independently of the "Title" field on the
  same sheet being judged CHANGED.
occurrence-count: 1 each (first sample surfacing all three within a tabular/spreadsheet
  context)
promotion-bar-check:
  (a) whole-column addition:
    cross-sample-confirmation: "no — first sample with a column-level structural addition"
    explicit-user-generalization: "no"
    structural-necessity: "yes — Module 1's existing granularity rule ('judge every clause
      within a larger-scope addition individually... never as one aggregate verdict')
      already governs this by extension of the sheet/section/row axis to the column axis
      of a table, and Module 3's tabular grain already treats a cell as the atomic unit
      when a row carries multiple independently-changeable values; the rule was correct in
      principle but did not yet say so for a column with no counterpart, and the S4 finding
      that aggregated it into one note is the kind of drift this ambiguity invites"
  (b) placeholder/blank value replaced by a real value:
    cross-sample-confirmation: "no — first sample with this shape"
    explicit-user-generalization: "no"
    structural-necessity: "yes — mirrors the already-promoted 'slot persists but content
      emptied or replaced' row (v3 Module 6, generalized from Entry 5) in the opposite
      direction: a counterpart cell/field that already exists (even holding a placeholder,
      zero, or blank value) is CHANGED when its value differs, never ADDED, since ADDED is
      reserved for a unit with no counterpart at all"
  (c) independent field-level verdicts on the same sheet:
    cross-sample-confirmation: "yes — same reasoning as Entries 5/6/8's grain
      applications, now on a third axis (fields on one sheet moving independently)"
    explicit-user-generalization: "no"
    structural-necessity: "yes — direct restatement of Module 1's core per-clause grain
      rule; no new wording needed"
decision: (a) promoted, (b) promoted, (c) not-promoted — already covered, no change needed
rationale: >
  (a) and (b) are structurally necessary generalizations of rules already in the skill,
  exactly the kind of case Entry 10 flagged as worth making explicit rather than leaving
  each future reader (or run) to re-derive — and (a) additionally corrects a real
  ambiguity that let a past finding aggregate a verdict Module 1 says must not be
  aggregated. (c) needs no new text: Module 1's grain rule already states each clause is
  judged on its own wording, and this sample's Cover-sheet behavior is a plain instance of
  that, not a new fact about the rule.
skill-change: >
  skills/version-compare/skill.md enhanced v3 → v4. Snapshotted v3's final content at
  skills/version-compare/skill-versions/v3.md, status field updated to "superseded by
  VersionCompareV4.md" (content otherwise untouched, per Bootstrap.md §9); new immutable
  snapshot written to skills/version-compare/skill-versions/v4.md. Changes: (1) Module 1's
  granularity paragraph extended to state explicitly that a table's columns are the same
  kind of structural axis as its rows, sheets, or sections — a column with no counterpart
  is ADDED/REMOVED at the level of each cell within it, never summarized as one note
  spanning many rows (generalizes this entry's item (a), and corrects the ambiguity S4's
  own finding fell into). (2) Module 6 gained one new row, "A field or cell holds a
  placeholder, blank, or zero value in one version and a real value in the other" →
  CHANGED, explicitly distinguished from ADDED because a counterpart unit exists
  (generalizes item (b), and is stated as the mirror image of the already-existing
  "slot persists but content emptied or replaced" row).
```

## Entry 12

```yaml
observed-in: SYNTH_VERS_DOCS_S3_REVISED (first sample under this use case in Word/.docx
  format; direct ENHANCE-SKILL analysis composed into this run's START invocation)
timestamp: 2026-09-20 (START run, ENHANCE-SKILL step)
observation: >
  Four things surfaced while processing this sample against live skill v4: (a) a third
  independent document format (.docx, no fixed physical pagination, unlike PDF or a
  rendered page) required normalizing to a section-based twin unit instead of a page-
  based one; (b) a fourth independent occurrence of self-annotation (`[NEW]`/`[MODIFIED]`
  bracketed tags), now inside a Word document's own prose and table cells; (c) a clause
  in Section 10 (Commercial Terms) explicitly stating "No liquidated damages clause
  applies to this engagement" in the older document was replaced by a clause stating a
  specific liquidated-damages figure and trigger in the newer one — judged CHANGED, since
  a counterpart clause on the same subject exists in both documents, but the "old side"
  here is an explicit negative statement rather than a placeholder/blank/zero value (the
  shape the currently-live Module 6 row covers); (d) a Project Timeline milestone row's
  own label changed ("RFP Issue Date" → "RFP Reissue Date") alongside its date value,
  mapped as the same milestone by shared subject matter rather than treated as REMOVED +
  ADDED.
occurrence-count: (a) 1 (third format); (b) 1 (fourth occurrence); (c) 1; (d) 1
promotion-bar-check:
  (a) third document format:
    cross-sample-confirmation: "yes — third independent format (PDF, .xlsx, now .docx)
      confirming the already-promoted format-agnostic normalization rule"
    explicit-user-generalization: "no"
    structural-necessity: "not needed — already promoted in skill v2/v3 Module 6"
  (b) fourth self-annotation occurrence:
    cross-sample-confirmation: "yes — fourth independent confirmation"
    explicit-user-generalization: "no"
    structural-necessity: "not needed — already promoted in skill v2 Module 6"
  (c) explicit "does not apply" clause replaced by a stated provision:
    cross-sample-confirmation: "yes, discovered during this entry's own §8.4 validation
      pass — SYNTH_VERS_DOCS_S1_REVISED's findings (actuals/version-compare/SYNTH_VERS_DOCS_S1_REVISED/
      findings/13-12CommercialTerms.md, line 31-32) already contains this exact shape
      (an explicit 'No liquidated damages clause applies to this engagement.' replaced
      by a real liquidated-damages clause), independently of S3's occurrence of the same
      shape — two independent samples, not one"
    explicit-user-generalization: "no"
    structural-necessity: "yes — this is the same 'counterpart exists, only its
      content/value differs, therefore CHANGED not ADDED' reasoning the currently-live
      Module 6 row already states for a placeholder/blank/zero value; an explicit
      negative statement is a different concrete shape of the same underlying fact
      (a counterpart unit whose content does not yet describe the substantive
      provision), so the existing row's wording is narrower than the principle it is
      already meant to express"
  (d) milestone row relabeled alongside its value:
    cross-sample-confirmation: "yes — same reasoning as Entry 10 item (2)/Entries 6 and
      9's format-and-relationship-claim generalization of Module 2 stage MAP"
    explicit-user-generalization: "no"
    structural-necessity: "yes — direct application of the already-generalized
      map-by-content rule (v3 Module 2 stage MAP explicitly covers format changes; a
      relabeling is a smaller case of the same principle)"
decision: (a) already-promoted — confirming evidence only; (b) already-promoted —
  confirming evidence only; (c) promoted (wording refinement, not a new row); (d)
  not-promoted — already covered, no change needed
rationale: >
  (a) and (b) need no skill-file change, only this log entry, since they are further
  confirmations of rules already live. (d) needs no change either — it is a plain
  instance of the MAP-by-content rule already generalized in v3. (c) is promoted, but as
  a *refinement* of the existing placeholder/blank/zero row's wording rather than a new
  row, per Bootstrap.md §8.1's "update, refine, or generalize an existing instruction...
  don't leave both the old and new phrasing side by side": the existing row's underlying
  principle already covered this case, but its wording named only "placeholder, blank,
  or zero" values, which would not obviously have told a future reader that an explicit
  negative statement ("no X applies") counts as the same shape. Left unstated, this is
  exactly the kind of gap Entry 10 warned against leaving implicit for a future sample to
  re-derive from scratch.
skill-change: >
  skills/version-compare/skill.md enhanced v4 → v5. Snapshotted v4's final content at
  skills/version-compare/skill-versions/v4.md, status field updated to "superseded by
  VersionCompareV5.md" (content otherwise untouched, per Bootstrap.md §9); new immutable
  snapshot written to skills/version-compare/skill-versions/v5.md. Change: Module 6's
  "A field or cell holds a placeholder, blank, or zero value..." row's wording broadened
  to also name "an explicit statement that a provision, clause, or obligation does not
  apply" as the same shape of counterpart-exists-but-content-differs fact, still CHANGED
  and still distinguished from ADDED, without altering the row's existing placeholder/
  blank/zero coverage or its "mirror image" framing against the emptied-slot row.
validation-against-previous-samples: >
  Per Bootstrap.md §8.4: re-read S1, S2, and S4's findings for any clause recording an
  explicit "does not apply"/negative-provision statement replaced by a real provision.
  S2 and S4 contain none. **S1 does**, and it contradicts the new rule:
  findings/version-compare/SYNTH_VERS_DOCS_S1_REVISED/13-12CommercialTerms.md judged the
  original's "No liquidated damages clause applies to this engagement." as REMOVED, and
  the revision's affirmative liquidated-damages clause as a separate ADDED row — two
  verdicts — where the new v5 wording says this should be one CHANGED verdict (a
  counterpart clause on the same subject exists in both documents). Per §8.4, this is not
  silently left stale: flagged in PromptLog.md as needing re-judgment (collapse those two
  rows in 13-12CommercialTerms.md into a single CHANGED row, and correspondingly update
  reports/version-compare/SYNTH_VERS_DOCS_S1_REVISED/Report.md's verdict counts and its own callout that
  currently describes this as "replacing the original's explicit statement that none
  applied" under a REMOVED+ADDED framing). The new wording is stated generically (any
  provision/clause/obligation, not any one sample's specifics) and would apply the same
  way to a sample not yet seen; the direction of the fix is toward the new rule, since
  S1's REMOVED+ADDED framing is the one Module 1's "counterpart exists → CHANGED" logic
  was already meant to rule out, once the explicit-negative-statement shape is named.
```

## Entry 13

```yaml
observed-in: SYNTH_VERS_DOCS_S5_REVISED
timestamp: 2026-09-20 (S5 START run)
observation: >
  Five things surfaced in this sample's Detection.md: (a) a new document format for this
  project (multi-slide .pptx deck); (b) a fourth independent self-annotation occurrence,
  but for the first time as a full prose sentence ("This slide is new in this
  revision...") rather than a bracketed tag; (c) a table-of-contents-style "Agenda" line
  added alongside the substantive new slide it references — the same
  reference-line-vs-referenced-unit shape already generalized for checklist
  lines/requirements, now in a different concrete form; (d) an Evaluation Criteria table
  gaining one new row while five existing rows' point values were simultaneously
  redistributed; (e) two Project Timeline milestone rows relabeled alongside their date
  values changing.
occurrence-count: (a) 1st of this format; (b) 4th self-annotation occurrence, 1st in
  prose-sentence form; (c) 1 (new concrete shape of an existing pattern); (d) 1; (e) 2
  rows in 1 sample
promotion-bar-check:
  (a) new format (.pptx):
    cross-sample-confirmation: "not applicable — first occurrence"
    explicit-user-generalization: "no"
    structural-necessity: "yes — already covered by v3's format-agnostic 'mixed or
      converted formats' Module 6 row; no skill change needed, only a factual update to
      that row's own confirmed-formats list"
  (b) self-annotation as prose rather than a tag:
    cross-sample-confirmation: "yes — 4th independent sample confirming self-annotation
      recurs across independently authored documents, now also confirming the annotation
      convention itself varies in form (tag vs. full sentence) across samples"
    explicit-user-generalization: "no"
    structural-necessity: "yes — Module 6's self-annotation row's own wording named only
      'bracketed tags or tracked changes' as example forms, which would not obviously
      have told a future reader that a plain prose sentence counts as the same shape;
      the underlying principle (cross-check only, never sole basis for a verdict) already
      covers any self-annotation form, but the row's wording was narrower than the
      principle it was meant to express — the same kind of gap Entry 10 and Entry 12(c)
      already flagged as worth closing rather than leaving implicit"
  (c) reference-line vs. referenced-unit, in a new concrete shape (agenda line vs. slide):
    cross-sample-confirmation: "yes — same underlying principle as the
      checklist-line-vs-requirement row (S1), now confirmed in a structurally different
      but conceptually identical shape (an index/agenda entry vs. the substantive unit it
      points to, rather than a certification line vs. the requirement it certifies)"
    explicit-user-generalization: "no"
    structural-necessity: "yes — the checklist-line row's title and wording name only
      'checklist/certification' lines, which does not obviously extend to a
      table-of-contents/agenda entry; the reasoning is identical (two distinct units even
      when adjacent or textually similar), so this is the same kind of narrower-than-
      necessary wording gap as (b)"
  (d) table row added alongside redistributed existing values:
    cross-sample-confirmation: "no — first sample with this exact shape"
    explicit-user-generalization: "no"
    structural-necessity: "yes — already covered by the v4 column/row per-clause
      granularity generalization (never one aggregate verdict for a structural change
      spanning multiple cells/rows); no skill-file change needed"
  (e) milestone relabeling alongside its value changing:
    cross-sample-confirmation: "yes — same reasoning as Entry 10 item (2) and Entries 6/9's
      map-by-content generalization of Module 2 stage MAP"
    explicit-user-generalization: "no"
    structural-necessity: "yes — direct application of the already-generalized
      map-by-content rule; no new wording needed"
decision: (a) not-promoted — already covered, factual update only; (b) promoted (wording
  broadened, not a new row); (c) promoted (wording broadened, not a new row); (d)
  not-promoted — already covered, no change needed; (e) not-promoted — already covered,
  no change needed
rationale: >
  (a), (d), and (e) need no skill-file change — each is a plain instance of a rule already
  generalized in a prior version. (b) and (c) are promoted as wording refinements, per
  Bootstrap.md §8.1's "update, refine, or generalize an existing instruction... don't
  leave both the old and new phrasing side by side": in both cases the underlying
  principle already covered the new shape, but the row's own wording named only a
  narrower example set, which is exactly the kind of gap Entry 10 and Entry 12(c) already
  established this project treats as worth closing rather than leaving for a future
  sample to re-derive from scratch.
skill-change: >
  skills/version-compare/skill.md enhanced v5 → v6. Snapshotted v5's final content at
  skills/version-compare/skill-versions/v5.md, status field updated to "superseded by
  VersionCompareV6.md" (content otherwise untouched, per Bootstrap.md §9); new immutable
  snapshot written to skills/version-compare/skill-versions/v6.md. Changes: (1) Module 6's
  self-annotation row broadened to name "bracketed tags, tracked changes, or an explicit
  prose statement" as equivalent forms, all subject to the same cross-check-only rule.
  (2) Module 6's checklist-line row retitled and reworded to "A reference/index line
  (a checklist item, table-of-contents entry, or agenda line) vs. the substantive unit it
  references or certifies," generalizing the existing certification-line reasoning to any
  reference-line shape, without altering its underlying handling. (3) The "Mixed or
  converted formats" row's confirmed-formats list updated to add presentation decks
  (`.pptx`), alongside the already-listed PDF and spreadsheet confirmations.
validation-against-previous-samples: >
  Per Bootstrap.md §8.4: re-read S1, S2, S3, and S4's findings for any self-annotation or
  reference-line clause the broadened wording might affect. All four samples' existing
  verdicts already followed the broadened wording's own logic (self-annotation used only
  as cross-check regardless of form; reference lines already judged as distinct units
  from what they reference, e.g. S1's checklist-line-vs-requirement finding, S4's TOC-style
  Cover-sheet section list). No prior finding is contradicted or needs re-judgment — this
  enhancement only makes explicit what every previous sample's findings already did in
  practice. The new wording is stated generically (any reference-line shape, any
  self-annotation form) and applies the same way to a sample not yet seen.
```
