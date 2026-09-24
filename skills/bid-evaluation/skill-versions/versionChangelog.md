# Version changelog — bid-evaluation skill

Maintained per `bootstrap.md` §9.1: a strictly evidence-based, consecutive-version
account of what changed in `skills/bid-evaluation/skill.md`. Every row is derived from a
direct comparison of the two named snapshot files (`skill-versions/v<N-1>.md` vs.
`v<N>.md`, or the live `skill.md` for the current version), corroborated where possible
against `patternLog.md`'s promotion records and `prompt-log/bid-evaluation/promptLog.md`.
The live `skill.md` is currently **v6** (no `skill-versions/v6.md` snapshot exists yet — per
§9 step 1 it is written only immediately before the next material change; the v6 rows
below are therefore compared against the live `skill.md`). v5 is preserved at
`skill-versions/v5.md`, v4 at `skill-versions/v4.md`.

**Data-integrity note (resolved):** `skill-versions/v1.md` and `v2.md` were found on
2026-09-22 to contain fragmentary, truncated prose (large sections reduced to isolated
words). This was corruption, not an early draft — both files were restored to their
verified original content from two independent, byte-identical, pre-corruption backups
(cross-checked via SHA-256 against digests already recorded in `manifest.md`; see
`prompt-log/bid-evaluation/promptLog.md` Entry 53 for the full restoration record). The
comparisons below reflect the restored, complete files.

## Change table

| Version | Previous version | Change | Type of change | Details / impact |
|---|---|---|---|---|
| v2 | v1 | Eligibility line: added explicit wording that this line reports each criterion's compliance status as recorded, never a status computed by counting failed criteria — and that the bidder's overall determination (not the Eligibility line) is what states qualified/disqualified. | Modified | Closes a gap where a future evaluator could infer "N failed criteria = disqualified" from the Eligibility line alone; the skill's own principle already forbade this for scores but hadn't said so for eligibility. See patternLog.md Entry 4. |
| v3 | v2 | Front matter: `status`/`supersedes` updated to point at v3/v2 respectively. | Modified | Bookkeeping only — reflects the new live version. |
| v3 | v2 | "The rule" section: added a new paragraph distinguishing "the record states a figure but the copy does not render it legibly" from "not stated in the record" — an illegible/OCR-corrupted figure is reported as not reliably legible and flagged for verification, never guessed, recomputed, or folded into either the stated or not-stated cases. | Added | First rule addressing scanned/OCR-extracted sources; triggered by an OCR-corrupted BOQ line item producing an implausible price total on one bidder. Phrased format-agnostically. See patternLog.md Entry 8. |
| v4 | v3 | Front matter: `status`/`supersedes` updated to point at v4/v3 respectively. | Modified | Bookkeeping only. |
| v4 | v3 | Price line rule: added a clarifying sentence — when a record separates a base (pre-tax) figure from a tax-inclusive total under any labels, the tax-inclusive total is the price; a narrower base-only figure (however labeled, e.g. "Contract Price") is a component of that price, never a substitute for it. | Modified | Triggered by a bidder whose record named three distinct price figures (base, tax-inclusive total, and a separate normalized/comparison figure), which had caused a mislabeling defect in that bidder's own finding/report (the correct number, wrong label). Validated against every previously-judged bidder's price line — no other bidder's verdict changed. See patternLog.md Entry 21. |
| v5 | v4 | Front matter: `grain` changed from "one bidder" to "one field or section of the bidder's own document … Five fields are always required … Score, Eligibility, Price, Deviations, Basis"; `intent` widened from committee-recorded eligibility/score/price to also cover the bidder's own submission (company/eligibility facts, financial standing, deviations); added `modules:` list; `absence-policy` gained a per-field "not stated in the record" sentence; `world-knowledge` wording "committee's record" → "record". | Modified | Grain change is behavioral: findings move from one file per bidder to one file per field. See patternLog.md Entry 24; prompt-log Entries 59–60. |
| v5 | v4 | Body restructured from v4's "Steps / The rule / What the report must show" sections into six modules: Core rules, Workflow, Required fields, Validation, Ranking, Edge-case handling. v4's rule text (this-bidder-only, read-never-computed, OCR-legibility, score-total, eligibility-as-evidence, price base-vs-total, tie, silence, register, no-corpus-column-names) carried into the modules. | Modified | Structural reorganization; per Entry 59 the five required fields keep v4's rule text, so no previously recorded Score/Eligibility/Price verdict was contradicted. |
| v5 | v4 | Module 3: added informational (non-ranked) fields — any other section a document carries (company profile, financial standing, project experience, team/equipment, certifications, statutory declarations, checklist) is answered field/fact/location but never scored or ranked. Module 2 workflow table replaces v4's `grain=row, id=bidder …` parameter table. Added a Module 4 validation checklist. | Added | New capability: self-declared submissions now yield informational findings (applied to the 10 Tender-Qualification samples, Entry 60). |
| v6 | v5 | Front matter: `version`/`status`/`supersedes` bumped to v6/v5; `finding-format` added to `modules:`. | Modified | Bookkeeping. |
| v6 | v5 | New Module 4 "Finding format": fixed front-matter schema (item, question, group, addressed, verdict, source, section, cites, for-document, skill-version, verified-by, verified-on), fixed body order (heading, bolded question, verdict line, What the record says, Why this verdict, Evidence), and a single verdict vocabulary (STATED / PARTIALLY STATED / NOT STATED / NOT RELIABLY LEGIBLE / NOT APPLICABLE) with definitions, plus the rule that every required field gets a file whatever its verdict and informational files exist only for sections the document carries. | Added | Output/schema change; every finding file was re-filed to this shape (prompt-log Entries 62–63; patternLog.md Entry 25). |
| v6 | v5 | Validation renumbered Module 4 → 5, and its checklist reworded to the new verdict vocabulary (NOT RELIABLY LEGIBLE vs NOT STATED; informational fields limited to STATED/PARTIALLY STATED/NOT STATED), plus a new check that every finding follows Module 4's front-matter/body shape. Ranking renumbered 5 → 6, Edge cases 6 → 7, with every internal cross-reference updated. | Modified | Validation change plus renumbering. No ranking or absence logic changed. |

## v1 → v2

**What changed:** the Eligibility bullet under "The rule" gained an explicit statement
that this line reports each named criterion's compliance status exactly as the committee
recorded it — never a status computed by counting how many criteria failed — and that
the bidder's overall determination (quoted at the top of the answer) is what actually
states qualified/disqualified/qualified-with-deviations; the Eligibility line is evidence
for that determination, not a recomputation of it.

**What existed previously:** v1's Eligibility bullet read only "the committee's
determination, with the criteria that failed and why, quoted" — it did not say how the
number of failed criteria relates, if at all, to the overall outcome.

**Impact:** per patternLog.md Entry 4, this was surfaced comparing two same-tender
bidders where one had a single failed criterion and was not disqualified, while another
had four failed criteria and was disqualified — proving criterion-count alone never
determines the outcome. Promoted under Bootstrap.md's structural-necessity bar (an
extension of the skill's existing "read, never computed" principle, already stated for
scores). No prior sample's recorded verdict needed correction.

## v2 → v3

**What changed (documented):** a new paragraph was added addressing OCR/scan legibility
failures — see the change table above. This is the one change for this version
transition with a specific, dated promotion record (patternLog.md Entry 8).

**What existed previously:** v2's Price-line rule handled exactly one figure (the final
evaluated price as stated, with a normalized/comparison figure mentioned as the
committee's working) and had no provision for a figure that is present in the record but
rendered illegibly by scan/extraction — such a case would previously have had no defined
handling.

**Confirmed by the restored files (Entry 53):** with `v1.md`/`v2.md` now restored to
their complete content, a full diff of `v2.md` against `v3.md` shows the OCR-legibility
paragraph above is the *only* body-text difference between the two versions (plus routine
front-matter bookkeeping — `status`/`supersedes`). The earlier draft of this changelog,
written before the restoration, treated most of "The rule" as an unexplained addition at
this boundary because the on-disk `v2.md` was truncated at the time; that was a
data-integrity artifact, not a real v2→v3 change, and is corrected here.

**Impact:** per patternLog.md Entry 8, triggered by an OCR-corrupted BOQ line item
producing an implausible price total on one bidder in a scanned-document sample. Promoted
as a format-agnostic rule (not specific to OCR or any one document type). Validated
against every previously-judged bidder — no other bidder's verdict changed, since none of
the prior samples used a non-text-native source.

## v3 → v4

**What changed:** the Price-line rule gained one clarifying sentence: where a record
separates a base (pre-tax) figure from a tax-inclusive total — regardless of what each
is labeled ("Contract Price," "Base Price," "Total Bid Value," or otherwise) — the
tax-inclusive total is the price, and a narrower base-only figure is a component of that
same price, never a separate lower price substituted for it.

**What existed previously:** v3's Price-line rule handled exactly two figures (a quoted
price and a separate normalized/comparison figure) but said nothing about a record that
further splits the quoted figure itself into a base and a tax-inclusive total under
distinct labels.

**Impact:** per patternLog.md Entry 21, this was triggered by a user-directed re-check of
one bidder's price line, where a base "Contract Price" label had been conflated with the
record's separate, GST-inclusive "Total Bid Value" — a labeling defect, not a magnitude
error (the reported number was already correct). Validated against every previously
judged bidder's price line (ELECTRICAL, WATER_SCANNED, and the rest of the same SOLAR
batch) — no other bidder's price line shared this three-figure shape, so no other
verdict changed; only the one bidder's own finding and its cross-bidder report needed
correcting.
