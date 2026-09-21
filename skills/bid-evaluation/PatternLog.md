# Pattern log — bid-evaluation

## Entry 1

```yaml
observed-in: RESPONSE_DOC_S1_ELECTRICAL, RESPONSE_DOC_S2_ELECTRICAL, RESPONSE_DOC_S3_ELECTRICAL (first-ever samples for this use case, processed together as one FileIndex.md fan-out entry)
timestamp: 2026-09-20 (bid-evaluation START run)
observation: >
  No separate bid-opening register document was supplied in this run's FileIndex.md
  entry — only three RESPONSE-named source documents and one shared BASE_DOC supporting
  document. The register had to be built programmatically: one row per RESPONSE-named
  document, that document itself as the record.
occurrence-count: 1 (first sample; this is sample #1 for the use case, so cross-sample
  confirmation is impossible by definition — noted explicitly per Bootstrap.md §8.2)
promotion-bar-check:
  cross-sample-confirmation: "not applicable — this is the first sample ever processed
    under this use case; no second sample exists to confirm against"
  explicit-user-generalization: "no"
  structural-necessity: "not applicable to promotion — the skill ALREADY states this
    exact rule verbatim ('Where no register is supplied ... the register is written by a
    program from the supporting documents whose names carry RESPONSE'). There is nothing
    to promote; this observation confirms the skill's existing rule behaved correctly on
    real input, not a gap."
decision: already-covered — no skill-change action
rationale: >
  Skill.md already states this rule explicitly and it applied correctly on real input.
  Logged per Bootstrap.md §8.3: an already-covered observation is exactly as valuable to
  log as one that changes the skill, since it confirms the rule generalizes correctly and
  stops a future sample from re-triggering the same analysis from scratch.
skill-change: none
```

## Entry 2

```yaml
observed-in: RESPONSE_DOC_S1_ELECTRICAL, RESPONSE_DOC_S2_ELECTRICAL, RESPONSE_DOC_S3_ELECTRICAL
timestamp: 2026-09-20 (bid-evaluation START run)
observation: >
  None of the three bidders' records carries an awarded numeric technical score, even
  though the supporting document (BASE_DOC) defines a 100-mark technical evaluation scale
  with a 60-mark qualifying minimum. Each record instead carries only a qualitative
  overall determination from the Evaluation Committee (e.g. "TECHNICALLY QUALIFIED - Price
  Bid Opened", "DISQUALIFIED AT ELIGIBILITY SCREENING").
occurrence-count: 3 of 3 samples in this run show this shape
promotion-bar-check:
  cross-sample-confirmation: "not applicable for promotion purposes — cannot confirm
    across independently-authored samples on sample #1, though notably all 3 documents in
    this single run show the same shape"
  explicit-user-generalization: "no"
  structural-necessity: "not applicable to promotion — the skill ALREADY states this exact
    rule verbatim ('Where the committee awarded no numeric score, open with the
    committee's own overall determination, quoted ... A determination without a number
    ranks nowhere'). Nothing to promote."
decision: already-covered — no skill-change action
rationale: >
  Skill.md's existing rule for the unscored case applied correctly and consistently across
  all three bidders in this run, including the disqualified one. No bidder was ranked, per
  the skill's own instruction that a determination without a number ranks nowhere rather
  than being forced into a ranking via an invented score.
skill-change: none
```

## Entry 3

```yaml
observed-in: RESPONSE_DOC_S3_ELECTRICAL
timestamp: 2026-09-20 (bid-evaluation START run)
observation: >
  This bidder's price bid was opened as part of the standard two-envelope process (per
  the tender's own procedure) even though the bidder was disqualified at eligibility
  screening — the record itself states the opened price "does not enter the L1
  comparison." The price is real (highest of the three received) but explicitly
  out-of-scope for ranking.
occurrence-count: 1
promotion-bar-check:
  cross-sample-confirmation: "no — only one sample shows this specific shape so far"
  explicit-user-generalization: "no"
  structural-necessity: "yes — this is a direct application of the skill's existing rule
    that ranking is computed 'from the scores alone' and that a disqualified/unscored bid
    is 'not ranked either' (absence-policy, front matter). The price being opened but
    explicitly excluded from comparison does not change eligibility or ranking outcome;
    the skill's Price line already instructs reporting 'the final evaluated price as the
    record states it' regardless of whether that price is used in the L1 comparison."
decision: not-promoted (no change needed — already covered by existing rule)
rationale: >
  The skill's existing rules for absence-policy (disqualified bidders are not ranked) and
  for the Price line (report the record's stated price) together already produce the
  correct result without needing a new rule distinguishing "price opened but excluded from
  comparison" as its own case. Logged for visibility as a concrete illustration, mirroring
  how the version-compare use case logs structurally-necessary-but-already-covered
  observations (see that use case's PatternLog.md for the pattern this project follows).
skill-change: none
```

## Entry 4

```yaml
observed-in: RESPONSE_DOC_S2_ELECTRICAL, RESPONSE_DOC_S3_ELECTRICAL (cross-checked
  against each other, not caught by per-sample analysis at the original START run since
  Entries 1-3 analyzed each bidder against the skill individually, not against each other)
timestamp: 2026-09-20 (ENHANCE-SKILL bid-evaluation run)
observation: >
  Comparing the two bidders with a NON-COMPLIANT eligibility finding side by side: S2
  (Powerline Switchgear) is NON-COMPLIANT on exactly one of eight criteria (EC-6, OEM
  approval) yet the committee's overall determination is "TECHNICALLY QUALIFIED WITH
  MAJOR DEVIATIONS" — not disqualified, the failure instead treated as a deviation
  pending adjudication. S3 (Circuit Breakers) is NON-COMPLIANT on four of eight criteria
  and the committee's overall determination is "DISQUALIFIED AT ELIGIBILITY SCREENING."
  The skill's existing wording for the Eligibility line ("the committee's determination,
  with the criteria that failed and why, quoted") does not itself say whether a bid with
  a failed criterion is disqualified or not — that only comes from separately quoting the
  committee's own overall determination string, per the skill's opening-line rule. Read
  together, the skill already prevents an evaluator from computing "1+ failed criteria =
  disqualified" as its own rule (since the count of failures is never what determines the
  opening line — the committee's own words are), but the skill never states this
  explicitly; a future evaluator could plausibly read the Eligibility line in isolation
  and assume more failures always means a more severe outcome, which these two records
  together disprove (S2's single failure did not disqualify; a future record could
  conceivably have one failure that DOES disqualify, or several that don't).
occurrence-count: 2 of 3 samples in this run show a NON-COMPLIANT eligibility finding
  (S1 is fully compliant); the two that do show materially different eligibility-failure
  counts producing different overall outcomes, within the same tender/committee/template
promotion-bar-check:
  cross-sample-confirmation: "partial — S2 and S3 are two records from the SAME tender,
    committee, and response template (not independently authored/originated), so this
    does not meet the strict 'two samples that do not share an author, template, or
    origin' bar on its own"
  explicit-user-generalization: "no"
  structural-necessity: "yes — this is a direct extension of the skill's own core
    principle, already stated for the numeric-score case ('The score is read, never
    computed: no adding of per-criterion marks, no correcting of the committee's
    arithmetic') and for the opening line ('open with the committee's own overall
    determination, quoted'). The same 'read, never compute' principle governs the
    Eligibility line's relationship to the overall determination — nothing about it is
    specific to this tender's own criteria or bidders."
decision: promoted
rationale: >
  Structural necessity alone justifies this without needing independent cross-sample
  confirmation: it is the same governing principle the skill already applies explicitly
  to scores, now made explicit for eligibility determinations too, closing a real gap
  where a future evaluator could otherwise infer a disqualification rule the skill never
  actually states and this tender's own two records would contradict. This is the same
  pattern as "correct behavior via an existing general principle, but never made
  explicit in the skill's own text" seen in the version-compare use case's history
  (skills/version-compare/PatternLog.md Entry 10) — not a new judging rule, a
  clarification of one already in force.
skill-change: >
  skills/bid-evaluation/Skill.md enhanced v1 → v2. Snapshotted v1's content to
  skills/bid-evaluation/skill-versions/v1.md (first-ever creation of this use case's
  skill-versions/ directory, status set to "superseded by v2.md"); new immutable
  snapshot written to skills/bid-evaluation/skill-versions/v2.md. Change: the
  Eligibility bullet under "The rule" gained explicit wording stating this line reports
  each criterion's compliance status as recorded, never a status computed by counting
  failed criteria, and that the bidder's overall determination (not the Eligibility line
  itself) is what states qualified/disqualified — the Eligibility line is evidence for
  that determination, never a recomputation of it.
```

## Entry 5

```yaml
observed-in: RESPONSE_DOC_S2_ELECTRICAL
timestamp: 2026-09-20 (ENHANCE-SKILL bid-evaluation run)
observation: >
  This bidder's record states a base quoted price and separately a higher
  "conforming-alternate" price (a 6.2% increase) to be used only if the non-compliant
  items are rejected by the committee. The finding reported the quoted base price as
  the Price line and mentioned the alternate figure only as the committee's working,
  per the skill's existing rule for a normalized/comparison figure standing beside a
  quoted one.
occurrence-count: 1 (only S2 has this shape; S1 and S3 have a single unambiguous price
  each)
promotion-bar-check:
  cross-sample-confirmation: "no — only one sample shows this specific shape"
  explicit-user-generalization: "no"
  structural-necessity: "not applicable to promotion — the skill already states this
    exact rule verbatim ('Where a normalized or comparison figure stands beside the
    quoted one, the quoted contract price is the price and the normalization is
    mentioned as the committee's working'). Nothing to promote."
decision: already-covered — no skill-change action
rationale: >
  The skill's existing Price-line rule applied correctly to a real, non-obvious instance
  of a conditional/alternate price. Logged for visibility per Bootstrap.md §8.3, since a
  confirmed-but-unpromoted observation is exactly as valuable as one that changes the
  skill.
skill-change: none
```

## Entry 6

```yaml
observed-in: not sample-driven — re-examination of an already-flagged item from the
  original START run
timestamp: 2026-09-20 (ENHANCE-SKILL bid-evaluation run)
observation: >
  prompt-log/bid-evaluation/PromptLog.md's original START-run entry already flagged an
  architectural tension: Skill.md's `shape: RANKED_COMPARISON` inherently wants a
  cross-bidder comparison view, while Bootstrap.md's REPORT command (non-negotiable
  rule 17) strictly scopes one report to one source document's own findings. This was
  resolved procedurally (a separate reports/bid-evaluation/RankingSummary/Report.md
  synthesis, clearly labeled as citing all three bidders rather than being one more
  source document's own report), not by any skill change.
occurrence-count: not applicable — a re-examination, not a new observation
promotion-bar-check:
  cross-sample-confirmation: "not applicable"
  explicit-user-generalization: "not applicable"
  structural-necessity: "not applicable — this is an orchestration-layer (Bootstrap.md)
    question, not a skill-content question; Bootstrap.md changes are outside
    ENHANCE-SKILL's scope (Bootstrap.md §8/§9 only govern skills/<usecase>/Skill.md)"
decision: not-promoted (out of scope for this command)
rationale: >
  Re-checked during this ENHANCE-SKILL pass to confirm it was not something the skill
  itself should resolve (it is not — Skill.md's RANKED_COMPARISON shape and its "one row
  per bidder in the register" report requirement are correctly and generically stated;
  the tension is entirely about how Bootstrap.md's per-document REPORT scope interacts
  with that shape, not about anything the skill file could word differently). Logged here
  only to confirm this was considered and correctly left alone by ENHANCE-SKILL, not
  overlooked. Still open at the Bootstrap.md/orchestration level per the original
  flagged entry — a decision for whoever owns that file, not this skill.
skill-change: none
```

## Entry 7

```yaml
observed-in: RESPONSE_DOC_S1_WATER_SCANNED, RESPONSE_DOC_S2_WATER_SCANNED,
  RESPONSE_DOC_S3_WATER_SCANNED (first scanned-PDF samples for this use case; the
  supporting document BASE_DOC_WATER_SCANNED.pdf is likewise a scanned PDF)
timestamp: 2026-09-20 (bid-evaluation START run)
observation: >
  Unlike the ELECTRICAL samples (native .docx, embedded text), these three source
  documents and their shared supporting document have no embedded text layer at all —
  pure scanned images requiring OCR (tesseract, 200 DPI rasterization) to extract a twin.
  This is the first time this use case has processed a non-text-native format.
occurrence-count: 3 of 3 samples in this run share this shape (plus the shared supporting
  document)
promotion-bar-check:
  cross-sample-confirmation: "not applicable to promotion — the observation is about
    format handling, which Bootstrap.md §1/§18 already governs generically ('Any file
    format is accepted... Format only determines *how* a document's content is extracted
    into its twin... never *whether* the document can be processed at all')"
  explicit-user-generalization: "no"
  structural-necessity: "not applicable to promotion — this is an extraction-mechanics
    question already resolved at the Bootstrap.md orchestration layer, not a
    skill-content/judging-rule question; Skill.md's own rules (grain=one bidder,
    reading-needs=tables, absence-policy) apply unchanged regardless of source format"
decision: already-covered — no skill-change action
rationale: >
  Bootstrap.md already generalizes extraction-format handling; nothing about Skill.md's
  judging rules needed to change to accommodate a scanned-PDF source. Logged per
  Bootstrap.md §8.3 to confirm the skill correctly required no change when the input
  format changed underneath it.
skill-change: none
```

## Entry 8

```yaml
observed-in: RESPONSE_DOC_S2_WATER_SCANNED
timestamp: 2026-09-20 (bid-evaluation START run)
observation: >
  OCR extraction of this bidder's priced BOQ (Sections 26-28) corrupted one line item
  ("RGF civil works (16 beds)") into an internally-inconsistent quantity/rate/amount
  combination, which cascaded into implausible printed Stage 1/Stage 2 grand totals, GST,
  and Combined Evaluated Cost figures — inconsistent in scale with this bidder's own
  individually-legible line items and with the other two bidders' equivalent totals in
  the same run. Every other section of this bidder's record (eligibility, deviations,
  committee remarks, O&M price schedule) OCR'd cleanly and consistently. The existing
  skill wording only anticipates two states for a price line: stated in the record, or
  "not stated in the record" after the whole record is read. Neither cleanly describes
  this case — the record does state a price, but this scanned copy does not render it
  legibly. Applying "not stated in the record" here would misrepresent an extraction
  failure as the committee's own silence; inventing/recomputing a corrected total from
  the other line items would violate the skill's own "read, never computed" principle
  for the same reason it already forbids recomputing a score.
occurrence-count: 1 (only S2 shows this OCR failure; S1 and S3's price sections OCR'd
  cleanly and consistently in the same run)
promotion-bar-check:
  cross-sample-confirmation: "no — only one sample in this run shows this specific
    legibility failure; no independently-authored second sample confirms it yet"
  explicit-user-generalization: "no"
  structural-necessity: "yes — this is a direct extension of the skill's own existing
    'read, never computed' principle (already stated for scores: 'no adding of
    per-criterion marks, no correcting of the committee's arithmetic') and its existing
    absence-policy distinction between different reasons a line might be missing (a
    rejected-before-scoring bid vs. a truly unaddressed bidder are 'different facts' per
    the front matter). A scan-legibility failure is a third, previously-unstated case:
    neither 'the record doesn't say this' nor 'the record says this and it's readable.'
    Without an explicit rule, a future evaluator processing scanned documents could
    plausibly either invent a corrected figure (violating 'read, never computed') or
    mislabel it 'not stated in the record' (misrepresenting an extraction problem as the
    committee's own silence) — both are real, structurally-predictable failure modes now
    that this use case processes non-text-native formats at all."
decision: promoted
rationale: >
  Structural necessity alone justifies this without needing independent cross-sample
  confirmation, for the same reason Entry 4 (eligibility/score read-never-compute
  extension) did not need it: the skill already commits to the governing principle, and
  this closes a real gap the previous ELECTRICAL-only samples never exposed since no
  ELECTRICAL sample used a non-text-native source format. This is now structurally
  necessary given Bootstrap.md's format-agnostic input handling: any future sample in any
  use case that reads a scanned/rasterized source is one OCR error away from this exact
  ambiguity.
skill-change: >
  skills/bid-evaluation/Skill.md enhanced v2 → v3. Snapshotted v2's content to
  skills/bid-evaluation/skill-versions/v2.md (status updated to "superseded by v3.md");
  new immutable snapshot written to skills/bid-evaluation/skill-versions/v3.md. Change:
  "The rule" section gained a new paragraph immediately after the existing
  "read, never computed" / "not stated in the record" paragraph, stating that a figure
  the record states but the copy does not render legibly is reported as not reliably
  legible from the copy provided — distinct from "not stated in the record" — and
  flagged for verification, never guessed, recomputed, or folded into either the "stated"
  or "not stated" cases. Phrased generically (not naming OCR, tesseract, this tender, or
  this bidder) so it applies to any future extraction-legibility failure regardless of
  format or cause.
```

## Entry 9

```yaml
observed-in: RESPONSE_DOC_S3_WATER_SCANNED (cross-checked against RESPONSE_DOC_S3_ELECTRICAL,
  a different tender, different bidder, different committee, different document
  template/origin)
timestamp: 2026-09-20 (ENHANCE-SKILL bid-evaluation run)
observation: >
  Like RESPONSE_DOC_S3_ELECTRICAL (PatternLog.md Entry 3), this bidder is disqualified at
  eligibility screening before technical scoring, and its price bid was opened per the
  tender's standard two-envelope process for audit-trail purposes only, with the record
  itself stating the price "does not enter the Combined Cost comparison." The skill's
  existing absence-policy and Price-line rules already produced the correct result here:
  price reported as the record states it, bidder not ranked, disqualification stated via
  the committee's own quoted determination.
occurrence-count: 2 independent samples now show this exact shape — RESPONSE_DOC_S3_ELECTRICAL
  (GSETCL tender, electrical-substation bid template) and RESPONSE_DOC_S3_WATER_SCANNED
  (GWSSB tender, water-treatment-plant bid template) — different tenders, different
  committees, different document templates/origins, meeting the strict cross-sample
  confirmation bar this time (contrast Entry 3, where S2/S3-ELECTRICAL shared one
  tender/template and could not meet it alone)
promotion-bar-check:
  cross-sample-confirmation: "yes — two independently-originated samples (different
    tender, different template, different committee) now confirm this exact pattern"
  explicit-user-generalization: "no"
  structural-necessity: "also yes, redundantly — see Entry 3's original structural-necessity
    finding, which still holds"
decision: already-covered — no skill-change action (confirmed, not newly promoted)
rationale: >
  The skill's existing rules already handle this correctly and needed no change; this
  observation upgrades Entry 3's confirmation status from "structural necessity only" to
  "structural necessity AND independent cross-sample confirmation," which is worth
  recording per Bootstrap.md §8.3 even though it changes no wording, since it materially
  strengthens confidence that this is a genuine cross-tender pattern rather than an
  artifact of one tender's own template.
skill-change: none
```

## Entry 10

```yaml
observed-in: RESPONSE_DOC_S2_WATER_SCANNED
timestamp: 2026-09-21 (manual verification per user request, outside a normal JUDGE run)
observation: >
  A prior JUDGE pass flagged this bidder's priced BOQ (Section 26/27) as "OCR legibility
  failure" per skill's rule for a figure the copy does not render legibly, on the basis
  that one line item's quantity/rate/amount ("RGF civil works (16 beds)": 900 |
  ₹13,05,00,000 | ₹1,17,45,00,00,000) "did not reconcile." Manual verification — rendering
  `documents/bid-evaluation/source/RESPONSE_DOC_S2_WATER_SCANNED.pdf` pages 42-46 at 250 DPI
  and reading them directly — found the figures fully legible and arithmetically exact:
  900 × ₹13,05,00,000 = ₹1,17,45,00,00,000, and this reconciles through Stage 1/Stage 2
  totals, GST, Bid Value, and the Combined Evaluated Cost without discrepancy. The
  "does not reconcile" claim in the original JUDGE pass was never actually checked by
  performing the multiplication — it was an assumption made because the resulting total
  was implausibly large (a ~48x outlier vs. the other two bidders), not because the
  scan was genuinely illegible or the arithmetic genuinely failed. The real, distinct
  substantive issue is a bidder-side pricing anomaly (a Lump Sum unit item carrying
  quantity 900 rather than the implied 1), and separately, this price also conflicts with
  the committee's own Section 32 remark that this bidder holds the "lowest quoted Combined
  Cost among all bidders" — both are now recorded in the findings file as flags for the
  Evaluation Committee, not resolved by this skill.
occurrence-count: 1 sample (first time this specific error mode — a skill-conformance
  process error, not a document-content pattern — has been observed)
promotion-bar-check:
  cross-sample-confirmation: "no — single occurrence so far"
  explicit-user-generalization: "no"
  structural-necessity: "no — the skill's existing 'internally inconsistent... against the
    surrounding, cleanly-extracted figures' legibility rule is correctly worded; the
    failure was in applying it (not verifying the arithmetic before concluding
    inconsistency), not in the rule's own text"
decision: not-promoted — logged as a process observation, not a skill-content gap
rationale: >
  This is not evidence the skill's price/legibility rule (§ on "a figure the record
  states but the copy does not render legibly") is wrong or incomplete — the rule already
  requires the figure to actually be "internally inconsistent... against the surrounding,
  cleanly-extracted figures" before it may be called illegible, which necessarily implies
  checking the arithmetic, not eyeballing the magnitude. The gap was in execution
  discipline during JUDGE, not in the skill's text, so no skill-version change is
  warranted per Bootstrap.md §8.2 (none of cross-sample confirmation, explicit
  generalization, or structural necessity apply to a wording change here). Logged per
  §8.3 as a confirmed-error observation so a future JUDGE pass on a similarly
  large/unusual figure knows to perform the reconciliation arithmetic before concluding
  scan-legibility failure, without changing the skill's live text on a single occurrence.
skill-change: none
```
