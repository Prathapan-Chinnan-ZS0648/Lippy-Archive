---
sample: SYNTH_VERS_DOCS_S5
use-case: version-compare
skill-version: v6 (current — see skills/version-compare/patternLog.md Entry 13; findings below were judged under v5, content-compatible, not re-run — the v5→v6 enhancement only broadened Module 6 wording, it did not change any verdict logic this sample's findings depend on)
based-on: actuals/version-compare/SYNTH_VERS_DOCS_S5_REVISED/findings/ (12 unit files, per actuals/version-compare/SYNTH_VERS_DOCS_S5_REVISED/plan.md)
source: documents/source/SYNTH_VERS_DOCS_S5_REVISED.pptx
supporting: documents/supporting/SYNTH_VERS_DOCS_S5_ORIGINAL.pptx
state: draft — pending HITL review, not yet signed off in manifest.md
---

# Version comparison report — SYNTH_VERS_DOCS_S5

## What this covers

Solstice Energy Cooperative's original vendor pre-bid briefing deck for its Community
Solar & Battery Storage Program (RFP-SEC-2026-0029, issued March 3, 2026) versus its
revised reissue (RFP-SEC-2026-0029-R1, issued May 19, 2026), which expands the program to
add a public EV fast-charging hub alongside the original solar and battery-storage scope.
The full clause-by-clause account is in `actuals/version-compare/SYNTH_VERS_DOCS_S5_REVISED/findings/`
(one file per slide, per `actuals/version-compare/SYNTH_VERS_DOCS_S5_REVISED/plan.md`); this report
summarizes it.

## Verdict counts

| Verdict | Count |
|---|---|
| CHANGED | 38 |
| ADDED | 11 |
| REMOVED | 0 |
| UNCHANGED | 24 |
| **Total clauses examined** | **73** |

## What changed, by theme

- **New EV charging workstream added:** the revision adds a wholly new slide, "EV
  Charging & Interconnection Requirements" (4 substantive requirements — stall
  count/rating, protocol compliance, expansion capability, dedicated metering — all
  ADDED, see `findings/07-EvChargingAndInterconnectionRequirements.md`), a matching new
  Agenda line pointing at that slide (`findings/02-Agenda.md`), a new Project Objective
  and Scope of Work item to deploy/install the charging hub, a new Technical Requirements
  cybersecurity bullet (NERC CIP alignment), a new Evaluation Criteria line ("EV Charging
  Design," 10 points), and an EV-charging reference-project requirement folded into
  Eligibility Criteria.
- **Scale increase:** solar generation capacity (12 MW→14 MW), battery storage capacity
  (8 MWh→10 MWh), battery discharge duration (4-hour→6-hour minimum), member count
  (~38,000→~41,000), and service territory (5-county→6-county, following the Hartwell
  service-area addition) all increased.
- **Tightened eligibility and risk terms:** minimum years of EPC experience (5→7),
  minimum annual revenue ($25M→$40M), reference-project count (3→4, now requiring at
  least one including EV charging), insurance minimums (general/professional liability
  $5M/$2M→$8M/$3M), and performance bond (50%→65% of contract value) all increased.
- **Commercial terms increased, not restructured:** estimated total project cost
  ($28M–$34M→$38M–$46M) and warranty period (2 years→3 years) both increased; the
  liquidated-damages provision still applies in both versions, now with an added
  qualifier ("at an increased daily rate reflecting the expanded scope") — judged
  CHANGED, since the same provision persists with an added detail, not a
  removed-and-replaced clause.
- **Evaluation weighting reallocated**, not merely added to: Technical Solution & Design
  (30→25 points) and Vendor Experience & References (20→15 points) both decreased to make
  room for the new 10-point EV Charging Design criterion, while Cost, Schedule, and O&M
  Plan stayed at their original weights; the total remains 100 points in both versions.
- **Timeline pushed out and reshaped:** every shared milestone date moved roughly two to
  three months later, and the second milestone itself changed in kind, not just date — a
  physical "Optional Site Visit" became a "Virtual Site Walkthrough (recorded,
  on-demand)."
- **Points to flag before submission:**
  - The Issuing Officer, their title, email, and phone number all changed together
    (Derek Simmons, Director of Power Supply → Priya Patel, Senior Director of Power
    Supply & Grid Modernization) — worth confirming this is an intentional personnel
    change and not a transcription error, since all four contact fields moved in
    lockstep.
  - The revision's own new slide self-annotates itself as new ("This slide is new in
    this revision — no equivalent content existed in the original briefing deck.") — this
    was used only as a cross-check pointer; the ADDED verdict itself rests on the
    independent slide-by-slide absence confirmation in
    `actuals/version-compare/SYNTH_VERS_DOCS_S5_REVISED/twin/sectionMap.md`, per skill Module 6, this
    being the fourth sample in this project to self-annotate and the first to do so in a
    full sentence rather than a bracketed tag.
  - Slide numbering shifts by one from "Eligibility Criteria" onward once the new EV
    Charging slide is inserted (source slide 8 = supporting slide 7, and so on); every
    finding in this report maps slides by title/topic, not position, per
    `actuals/version-compare/SYNTH_VERS_DOCS_S5_REVISED/twin/sectionMap.md`.
  - Every clause in the Technical Requirements Overview not tied to battery duration or
    cybersecurity, and both the Contract Structure and Payment Milestones bullets in
    Commercial Terms, remained UNCHANGED — the revision is additive/scale-driven, not a
    wholesale rewrite.

## Cross-reference to skill development

This is the first sample processed under this use case in presentation (`.pptx`) format.
Per `skills/version-compare/patternLog.md` Entry 13, this run's `ENHANCE-SKILL` step
broadened the live skill (v5 → v6) in two places, both wording refinements rather than
new rules: Module 6's self-annotation row now names an explicit prose statement (not just
a bracketed tag or tracked change) as an equivalent self-annotation form, and its
checklist-line row was retitled and reworded to cover any reference/index line (a
checklist item, table-of-contents entry, or agenda line) versus the substantive unit it
references — generalizing from this sample's new Agenda-line-vs.-new-slide instance. The
accompanying `bootstrap.md` §8.4 validation found no prior sample's findings contradicted
by either change; both are wording clarifications of rules every earlier sample's
findings already followed in practice, so no re-judgment was required.
