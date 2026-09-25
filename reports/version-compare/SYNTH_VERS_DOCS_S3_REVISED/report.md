---
sample: SYNTH_VERS_DOCS_S3
use-case: version-compare
skill-version: v5 (current — see skills/version-compare/patternLog.md Entry 12; findings below were judged under v4, content-compatible, not re-run)
based-on: actuals/version-compare/SYNTH_VERS_DOCS_S3_REVISED/findings/ (16 unit files, per actuals/version-compare/SYNTH_VERS_DOCS_S3_REVISED/plan.md)
source: documents/source/SYNTH_VERS_DOCS_S3_REVISED.docx
supporting: documents/supporting/SYNTH_VERS_DOCS_S3_ORIGINAL.docx
state: draft — pending HITL review, not yet signed off in manifest.md
---

# Version comparison report — SYNTH_VERS_DOCS_S3

## What this covers

Northfield University's original dining services RFP (RFP-NU-2026-0115, issued
January 20, 2026) versus its revised reissue (RFP-NU-2026-0115-R1, issued April 6, 2026),
which expands the program to add a campus catering operation and a new Winthrop Commons
dining hall. The full clause-by-clause account is in
`actuals/version-compare/SYNTH_VERS_DOCS_S3_REVISED/findings/` (one file per unit, per
`actuals/version-compare/SYNTH_VERS_DOCS_S3_REVISED/plan.md`); this report summarizes it.

## Verdict counts

| Verdict | Count |
|---|---|
| CHANGED | 41 |
| ADDED | 15 |
| REMOVED | 0 |
| UNCHANGED | 37 |
| **Total clauses examined** | **93** |

## What changed, by theme

- **New catering scope added:** the revision adds a full campus catering workstream — a
  new Project Objective (food recovery/donation program), three new Scope of Work items
  (catering services, catering staff/portal, food recovery program), a new Operational
  Requirement (catering event-management staff/portal), a new Deliverable ("Catering
  Services Launch Plan"), a new Project Timeline milestone ("Catering Program Launch"), a
  new Evaluation Criteria line ("Catering Program Design," 10 points), a new Insurance
  Requirement (Liquor Liability, $2M), and catering scope folded into the Eligibility
  Criteria (reference accounts must now include at least one catering program).
- **New Winthrop Commons dining hall scope added:** a sixth dining hall (opening fall
  2027) drives a new Deliverable ("Winthrop Commons Dining Hall Design & Staffing Plan"),
  a new Timeline milestone ("Winthrop Commons Dining Hall Opening"), an expanded kitchen
  equipment maintenance obligation, a new Pricing Form line item (A-5, build-out
  investment), and a new liquidated-damages clause tied specifically to opening this hall
  on time.
- **Scale increase:** student enrollment (8,200→8,900), dining staffing (180→205 FTE),
  and the local/sustainable sourcing target (20%→30% of food spend) all increased.
- **Tightened eligibility and risk terms:** minimum years of experience (5→7), minimum
  annual revenue ($20M→$30M), reference count (3→4, now requiring at least one catering
  reference), and insurance minimums (GL $5M→$8M, professional liability $2M→$3M) all
  increased.
- **Commercial terms restructured:** contract term extended (5 years/two 2-year
  renewals→7 years/one 3-year renewal), minimum guaranteed annual commission increased
  ($450,000→$650,000), payment remittance date moved earlier (15th→10th of the following
  month), and a liquidated-damages clause now applies where none did before (the
  original's explicit "No liquidated damages clause applies to this engagement." is
  replaced by a $5,000/day clause specific to the Winthrop Commons opening date — judged
  CHANGED, since a counterpart clause on this exact subject exists in both documents).
- **Evaluation weighting reallocated**, not merely added to: Culinary Quality (25→20
  points) and Vendor Experience (20→15 points) both decreased to make room for the new
  10-point Catering Program Design criterion, while Cost/Commission Structure and
  Nutrition & Allergen Accommodation stayed at their original weights; the total remains
  100 points in both versions.
- **Timeline pushed out roughly ten weeks** across every shared milestone (RFP
  reissue → Contract Award), consistent with the later reissue date, in addition to the
  two wholly new catering- and Winthrop-Commons-specific milestones.
- **Points to flag before submission:**
  - The Issuing Officer, their title, email, and phone number all changed together
    (Karen Whitfield, Director → Marcus Ellery, Senior Director) — worth confirming this
    is an intentional personnel change and not a transcription error, since all four
    contact fields moved in lockstep.
  - The submission email address changed (auxiliaryservices@northfield.edu →
    procurement@northfield.edu) — vendors relying on the original address should be
    redirected before the new deadline.
  - Every clause in Section 12 (Terms & Conditions), Section 4's non-catering items, and
    the core Eligibility/Operational baseline not tied to catering or Winthrop Commons
    remained UNCHANGED — the revision is additive/scale-driven, not a wholesale rewrite.

## Cross-reference to skill development

This is the first sample processed under this use case in Word (`.docx`) format. Per
`skills/version-compare/patternLog.md` Entry 12, this run's `ENHANCE-SKILL` step
broadened the live skill's Module 6 wording (v4 → v5) so an explicit "this provision does
not apply" statement, replaced by a stated provision, is recognized as CHANGED (not
REMOVED + ADDED) — the same reasoning already applied to a placeholder/blank/zero value
being replaced by a real one. That same §8.4 validation pass found this sample's own
liquidated-damages clause is a second, independent occurrence of exactly this shape — the
first was in `SYNTH_VERS_DOCS_S1_REVISED`, whose existing finding predates this rule and
recorded it as REMOVED + ADDED. That prior finding is flagged for re-judgment (see
`promptLog.md`); it is a documented, pending correction, not a discrepancy in this report.
