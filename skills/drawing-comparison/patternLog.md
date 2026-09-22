# Pattern log — drawing-comparison

## Entry 1

```yaml
observed-in: AD-3010-C-330030-SHT-004
timestamp: 2026-09-15 (documented retroactively 2026-09-21, see pivot.md note below)
observation: >
  version-compare's unit rule ("one clause of the source document... id = section
  mnemonic + running number") and its writing rules assume headings/paragraphs/tables.
  This sample's source document is a single-sheet CAD drawing whose "clauses" are
  figure-embedded member/connection labels identified by grid position, not by position
  in a text flow — version-compare's grain does not fit it.
occurrence-count: 1
promotion-bar-check:
  cross-sample-confirmation: "no — only one sample observed so far"
  explicit-user-generalization: "no"
  structural-necessity: "yes — a grid-position-identified callout cannot be judged under
    a skill whose grain and mapping rules assume clause/heading structure; no amount of
    per-sample tuning of version-compare closes this gap"
decision: promoted
rationale: >
  Structural necessity alone justifies this without a second sample: version-compare's
  Module 2 MAP stage explicitly maps by content/label within a shared document structure,
  which this sheet does not have. A new skill was required to produce any finding at all.
skill-change: >
  skills/drawing-comparison/skill.md created (v1), adapted from version-compare's shape
  (ADDED/REMOVED/CHANGED/UNCHANGED scale, source-is-newer/supporting-is-older convention,
  finding shape) with a grid-position-based unit rule and drawing-specific Module 6 rows
  (revision-cloud-untagged, already-communicated marker, reformat control case,
  repeated-callout ambiguity) in place of version-compare's text-flow-based ones.
```

## Entry 2

```yaml
observed-in: AD-3010-C-330030-SHT-004
timestamp: 2026-09-15
observation: >
  The source revision (Rev 4) self-annotates its own changed/added callouts with a
  hand-drawn revision cloud, and its Notes box defines an asterisk (*) marker meaning "this
  clouded change was already communicated to the fabricator outside the formal revision."
  Two connection callouts (MEMB-4, MEMB-5) changed value between revisions with no
  revision cloud drawn around them at all — the cloud marking was not a complete change
  list.
occurrence-count: 1 sample; 2 independent instances of the untagged-change pattern within
  it (MEMB-4, MEMB-5)
promotion-bar-check:
  cross-sample-confirmation: "no — only one sample observed so far"
  explicit-user-generalization: "no"
  structural-necessity: "yes — directly parallels version-compare's own confirmed
    self-annotation edge case (that skill's Module 6): an annotation scheme that marks
    some changes cannot be trusted as a complete list without independent verification"
decision: promoted
rationale: >
  Structural necessity via direct analogy to an already-promoted rule in a sibling skill
  (version-compare Module 6, "Self-annotation"). Recorded as two distinct Module 6 rows
  here (revision-cloud-untagged; already-communicated marker) since a CAD sheet's cloud
  convention carries two separable facts a text document's tracked-changes marker does
  not: presence of a change marker, and a second, drawing-specific layer (the asterisk)
  distinguishing already-known from newly-issued clouded changes.
skill-change: >
  skills/drawing-comparison/skill.md Module 6 rows "revision-cloud-untagged" and
  "already-communicated marker" (v1, initial content — not a later amendment).
```

## Entry 3

```yaml
observed-in: AD-3010-C-330030-SHT-004
timestamp: 2026-09-15
observation: >
  Several callouts on this sheet share byte-identical member-size and connection-code
  text at different grid positions (e.g. the same UB457x191x74 weld/bolt count string
  recurs at multiple nodes). Aligning a changed callout to its counterpart by text match
  alone risks pairing it with the wrong grid position.
occurrence-count: observed across the sheet generally, not isolated to one pair of units
promotion-bar-check:
  cross-sample-confirmation: "no — only one sample observed so far"
  explicit-user-generalization: "no"
  structural-necessity: "yes — follows directly from this skill's own grid-position-is-
    part-of-identity core rule (Module 1); without this Module 6 row the workflow's ALIGN
    stage has no explicit guard against the obvious failure mode that rule exists to
    prevent"
decision: promoted
rationale: >
  Structural necessity: a direct, unavoidable consequence of Module 1's grid-position
  identity rule, not a new judgment. Recorded explicitly in Module 6 rather than left
  implicit, mirroring how version-compare's Entry 2 recorded a structurally-necessary
  consequence of its own grain rule for clarity even though "already covered."
skill-change: >
  skills/drawing-comparison/skill.md Module 6 row "repeated-callout ambiguity" (v1,
  initial content).
```

## Entry 4

```yaml
observed-in: AD-3010-C-330030-SHT-004
timestamp: 2026-09-15
observation: >
  Three callouts (later filed as MEMB-10, MEMB-11, MEMB-12) were confirmed CHANGED by a
  text-layer diff between the two revisions' extracted text, but the diff did not preserve
  enough spatial information to pin which grid row each occurrence sits on — the PDF
  content stream does not reliably carry position for every text run on this sheet.
occurrence-count: 3 units within 1 sample
promotion-bar-check:
  cross-sample-confirmation: "no — only one sample observed so far"
  explicit-user-generalization: "no"
  structural-necessity: "yes — this skill's absence-policy explicitly forbids fabricating
    a value or position to close out a finding; a rule was needed for what to do instead
    of either guessing or silently dropping the finding"
decision: promoted
rationale: >
  Structural necessity: without an explicit rule, an implementer would face a choice
  between guessing (forbidden by absence-policy) or dropping a confirmed-real change
  (worse — it would suppress a fabrication-relevant fact). confidence: UNSURE is the
  honest middle path already used elsewhere in this pack's finding front matter.
skill-change: >
  skills/drawing-comparison/skill.md Module 6 row "grid-row uncertain from text-layer
  diff alone" (v1, initial content).
```

## Entry 5

```yaml
observed-in: AD-3010-C-330030-SHT-004
timestamp: 2026-09-17
observation: >
  A second, independently-run attempt at the same document pair (kept outside this
  managed tree — see _agent-comparison/) flagged that this sample's CTRL-1 finding
  ("nothing changed at this node") had missed a real dimension change on two adjacent
  callouts at the same grid node, plus a second, mirrored occurrence of the same pattern
  at a different grid node entirely. Re-verification against both PDFs (an independent
  text-occurrence count across two extraction modes, `-raw` and `-layout`, plus a
  matched-position pixel-diff crop) confirmed both were real and had been missed by the
  first pass's -raw-only extraction, which surfaced only one of the two real occurrences
  of the changed values.
occurrence-count: 1 sample; the underlying miss recurred at 2 independent grid nodes
promotion-bar-check:
  cross-sample-confirmation: "partial — the second attempt functions as an independent
    check on the same sample, not a second independently-selected sample; not full
    cross-sample confirmation in version-compare's sense"
  explicit-user-generalization: "no"
  structural-necessity: "yes — mirrors version-compare's own Module 1 'No verdict from
    one side' rule, applied one level up: a correction claim from a second source is not
    itself sufficient evidence either, and needs the same both-sides verification an
    original finding needs"
decision: promoted
rationale: >
  Structural necessity via direct analogy to Module 1's existing "no verdict from one
  side" rule, extended to cover verification of a *correction*, not just an original
  finding — a correction accepted on a second pack's word alone would violate the same
  principle that rule already protects. Not logged in root pivot.md, since this was
  resolved within this run as a same-sample correction, not an unresolved cross-use-case
  dispute.
skill-change: >
  skills/drawing-comparison/skill.md Module 6 row "absence detected by a second,
  independently-run attempt at the same document pair" (v1, initial content — the skill
  was still unversioned/pre-v1-snapshot at the time of the original correction on
  2026-09-17; folded into v1 when this skill was migrated into the bootstrap.md framework
  on 2026-09-21). Corrected findings: findings/drawing-comparison/AD-3010-C-330030-SHT-004-
  REV4/ctrl1.md (verdict unchanged, note added), plus 5 new findings
  (MEMB-13, MEMB-14, MEMB-15, MEMB-16, CTRL-3).
```

## Entry 6

```yaml
observed-in: cross-skill (drawing-comparison + bom-extraction)
timestamp: 2026-09-22
observation: >
  Comparing this skill's Module 1/6 against skills/bom-extraction/skill.md (written
  independently, for a genuinely different output shape) shows the two skills converged,
  without coordination, on materially the same discipline for a recurring set of
  failure modes: position/tag is part of identity (this skill's grid-position rule and
  repeated-callout-ambiguity edge case; bom-extraction's tag-exactly-as-printed rule and
  legend-dependent-tag edge case), a drawing's own legend is the sole classification
  authority, a sheet's own marker/convention (revision cloud, dashed line) is a hint never
  proof, absence/negative facts need active search not inference, a contradiction between
  two sources is recorded not silently resolved, figures are the default answer location
  not a named exception, and world knowledge only decodes a legend rather than filling a
  gap. Independently-arrived-at duplication across two skills, on a domain both skills
  actually share (reading an engineering drawing), is itself evidence a shared layer
  should exist.
occurrence-count: 7 rules, each independently present in both skills before this entry
promotion-bar-check:
  cross-sample-confirmation: "yes — the clearest form of it: not a second sample under
    the same skill, but the same rule independently reinvented by a second, differently-
    shaped skill in the same domain"
  explicit-user-generalization: "yes — the user explicitly asked for this branch's
    architecture to be genuinely designed for its own use cases rather than copied from
    main, and to identify what could be reused conceptually vs. redesigned; a shared base
    layer for the two related use cases is a direct answer to that request"
  structural-necessity: "yes — without a shared layer, a future correction to one of
    these rules (as already happened once, to the absence/contradiction rule, via the
    2026-09-17 CTRL-1 correction) has no mechanism to reach the other skill, which shares
    the same underlying risk"
decision: promoted
rationale: >
  All three promotion-bar conditions hold independently, which is stronger than any
  single prior promotion in either skill's patternLog.md. This is not a new rule so much
  as a relocation of seven existing, already-confirmed rules to a place where both
  skills reference the same statement instead of maintaining two copies that can drift.
skill-change: >
  Created skills/_shared/engineeringDrawingReading.md (v1), stating the 7 shared rules.
  skills/drawing-comparison/skill.md enhanced to v2 (v1 snapshotted immutably first):
  added `builds-on` front matter, removed the restated forms of shared rules 1 and 4 from
  Module 1 (grid-position-is-identity, no-verdict-from-one-side), replacing them with a
  short pointer to the shared layer plus only what remains skill-specific (the four-verdict
  scale, the material field, unchanged-is-a-finding framed as this skill's own instance of
  the shared absence rule). Module 6 rows that are directly instances of a shared rule
  (revision-cloud-untagged, already-communicated marker, repeated-callout-ambiguity,
  figure-answer, grid-row-uncertain, absence-detected-by-a-second-attempt) now cross-
  reference the relevant shared-layer rule number rather than standing alone; rows that
  are not covered by the shared layer (reformat control case, out-of-pack cross-reference,
  superseded-document) are left as this skill's own. No verdict-relevant behavior changed
  for findings already produced under v1 — this is a restructuring for maintainability,
  not a new judging rule; the existing 22 findings remain valid under v2 and were not
  re-judged.
```
