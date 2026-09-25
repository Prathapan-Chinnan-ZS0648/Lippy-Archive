---
sample: SYNTH_VERS_DOCS_S1
use-case: version-compare
skill-version: v5 (current — see skills/version-compare/patternLog.md Entries 3, 12; findings below were judged under v1, re-judged 2026-09-20 for the "12. Commercial Terms" unit only under v5's explicit-non-applicability-clause rule, remaining units content-compatible and not re-run)
based-on: actuals/version-compare/SYNTH_VERS_DOCS_S1_REVISED/findings/ (19 unit files, per actuals/version-compare/SYNTH_VERS_DOCS_S1_REVISED/plan.md)
source: documents/source/SYNTH_VERS_DOCS_S1_REVISED.pdf
supporting: documents/supporting/SYNTH_VERS_DOCS_S1_ORIGINAL.pdf
state: draft — pending HITL review, not yet signed off in manifest.md
---

# Version comparison report — SYNTH_VERS_DOCS_S1

## What this covers

Brightline Retail Group's original RFP (RFP-BRG-2026-0231, issued March 9, 2026) versus
its revised reissue (RFP-BRG-2026-0231-R1, issued June 2, 2026), following BRG's
acquisition of Meridian Grocers' logistics network. The full clause-by-clause account is
in `actuals/version-compare/SYNTH_VERS_DOCS_S1_REVISED/findings/` (one file per unit, per `actuals/version-compare/SYNTH_VERS_DOCS_S1_REVISED/plan.md`); this report summarizes
it.

## Verdict counts

| Verdict | Count |
|---|---|
| CHANGED | 72 |
| ADDED | 33 |
| REMOVED | 1 |
| UNCHANGED | 48 |
| **Total clauses examined** | **154** |

## What changed, by theme

- **New program scope:** the revision adds an entire Cold Chain Monitoring workstream
  (new Technical Requirements section 5.3, new Definitions for Cold Chain and FSMA, a new
  Project Objective, three new Scope of Work items, three new Functional Requirements
  FR-07–FR-09, two new Deliverables, a new Project Timeline milestone, two new Evaluation
  Criteria, and a new Terms & Conditions clause 14.5).
- **Scale increase:** distribution centers (9→11), fleet size (640→780 trucks), stores
  supplied (1,150→1,400), training population (900→1,150 staff), and support duration
  (18→24 months) all increased, driven by the Meridian Grocers acquisition.
- **Tightened eligibility and risk terms:** minimum years of experience (6→8), minimum
  annual revenue ($10M→$18M), reference count (3→5, with a new cold-chain-specific
  subset), insurance minimums (GL $3M→$6M, E&O $1M→$2M, plus a new $3M cyber liability
  requirement), and performance bond (50%→75%) all increased.
- **Hosting posture narrowed:** the revision removes the on-premise deployment option
  entirely, requiring cloud-only hosting on AWS or GCP with new multi-region redundancy,
  a higher uptime SLA (99.5%→99.9%), and longer data retention (3→5 years).
- **Commercial terms restructured:** contract term extended (24→36 months, one renewal
  option→two), payment schedule re-split across more milestones, warranty extended
  (12→24 months), payment terms tightened (Net 45→Net 30), and two new financial
  protections added for BRG: a liquidated-damages clause (replacing the original's
  explicit statement that none applied) and a 5% retention holdback.
- **Timeline pushed out roughly four months** across every milestone, consistent with the
  later reissue date.
- **Points to flag before submission:**
  - The original's Compliance Certification Checklist line "Proposed WMS supports RFID
    and barcode tracking" has no counterpart in the revised checklist (REMOVED) even
    though RFID/barcode support itself remains a stated technical requirement in section
    5.1 (UNCHANGED) — this is a checklist omission, not a withdrawn requirement, and
    should be confirmed with the issuing officer before relying on the checklist as
    exhaustive. See `actuals/version-compare/SYNTH_VERS_DOCS_S1_REVISED/findings/19-AppendixCComplianceCertificationChecklist.md`
    and `actuals/version-compare/SYNTH_VERS_DOCS_S1_REVISED/findings/06-5TechnicalRequirements.md`.
  - The original's Deliverables table does not include a distinct "WMS Full Rollout —
    Remaining Distribution Centers" row (that milestone appears only in the Project
    Timeline in the original); the revised Deliverables table adds it as an explicit row
    (ADDED). See `actuals/version-compare/SYNTH_VERS_DOCS_S1_REVISED/findings/09-8Deliverables.md`.

## What did not change

48 clauses were confirmed unchanged, including all core WMS technical requirements other
than the new lot/expiration tracking line, the SAP and Zebra integration requirements, the
Cost and Support & Maintenance evaluation weights, encryption requirements, all four
original Terms & Conditions clauses (Governing Law, Confidentiality, Reservation of
Rights, Intellectual Property), and most base definitions (WMS, ERP, Telematics, RFID, DC,
SLA). See `actuals/version-compare/SYNTH_VERS_DOCS_S1_REVISED/findings/` for the complete list with quotes, per unit.

## Provenance

```text
bootstrap.md (generic rules — never changes per sample)
      ↓
fileIndex.md (four resolved inputs: use case name, source, supporting, skill)
      ↓
manifest.md (this sample's governance/context — state, sign-off, deviations, digests)
      ↓
skills/version-compare/skill.md (current version; findings judged under v1)
      ↓
actuals/version-compare/SYNTH_VERS_DOCS_S1_REVISED/detection.md, actuals/version-compare/SYNTH_VERS_DOCS_S1_REVISED/plan.md
      ↓
actuals/version-compare/SYNTH_VERS_DOCS_S1_REVISED/twin/{SYNTH_VERS_DOCS_S1_REVISED,SYNTH_VERS_DOCS_S1_ORIGINAL}/page-###.md
      ↓
actuals/version-compare/SYNTH_VERS_DOCS_S1_REVISED/findings/*.md (19 unit files)
      ↓
this report
```

Logged in `promptLog.md`. Not yet reviewed under `HITL/` or validated against
`manifest.md` — not an accepted deliverable until both are complete.
