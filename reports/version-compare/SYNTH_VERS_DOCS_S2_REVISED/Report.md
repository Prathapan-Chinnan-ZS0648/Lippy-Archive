---
source-document: SYNTH_VERS_DOCS_S2_REVISED.pdf
use-case: version-compare
skill-version: v2
based-on: findings/version-compare/SYNTH_VERS_DOCS_S2_REVISED/ (20 unit files, per actuals/version-compare/SYNTH_VERS_DOCS_S2_REVISED/Plan.md)
source: documents/source/SYNTH_VERS_DOCS_S2_REVISED.pdf
supporting: documents/supporting/SYNTH_VERS_DOCS_S2_ORIGINAL.pdf
state: draft — pending HITL review, not yet signed off in Manifest.md
---

# Version comparison report — SYNTH_VERS_DOCS_S2_REVISED

## What this covers

Ashford Financial Group's original RFP (RFP-AFG-2026-0064, issued February 16, 2026)
versus its revised reissue (RFP-AFG-2026-0064-R1, issued May 11, 2026), following AFG's
acquisition of Colonial Trust Bank and a rise in Severity 1 outages that drove the
addition of a formal Major Incident Response program. The full clause-by-clause account
is in `findings/version-compare/SYNTH_VERS_DOCS_S2_REVISED/` (one file per unit, per `Plan.md`);
this report summarizes it.

## Verdict counts

| Verdict | Count |
|---|---|
| CHANGED | 58 |
| ADDED | 25 |
| REMOVED | 6 |
| UNCHANGED | 59 |
| **Total clauses examined** | **148** |

## What changed, by theme

- **New Major Incident Response program:** the revision adds an entire Major Incident
  Management capability — a new Project Objective, a new Scope of Work item, new
  Technical Requirements (Major Incident workflow templates), two new Functional
  Requirements (FR-07, FR-08), a new eligibility requirement (prior Major Incident
  Management experience with a financial services client), two new Deliverables (Runbook,
  and an implicit go-live milestone), a new Evaluation Criterion (15 points), a new
  Commercial Terms payment milestone, a new Terms & Conditions clause (15.5 CISO
  notification obligation), and two new Compliance Checklist lines.
- **Scale increase from the Colonial Trust acquisition:** branch locations (46→55),
  states served (5→6, adding Maryland), employees (2,300→2,650), training population
  (60→75 IT staff) all increased; data migration scope now explicitly includes Colonial
  Trust's legacy ticketing system.
- **An entire section's content removed, not just individual clauses:** Section 6,
  "Vendor Onboarding & Staffing Requirements," is retitled "[Reserved]" and its five
  substantive requirements (background checks, security training, staffing roster
  notification, physical access control, subcontracting approval) are all REMOVED, with
  a note that they are now governed by the Master Services Agreement instead — a document
  not available for this comparison. See
  `findings/version-compare/SYNTH_VERS_DOCS_S2_REVISED/07-6Reserved.md`.
- **Helpdesk coverage significantly expanded:** from business-hours-only (7 AM–7 PM,
  Mon–Fri) to full 24/7/365 coverage — reflected consistently across the technical
  requirement, the reformatted support-responsibilities table, and the compliance
  checklist.
- **Hosting posture narrowed and hardened:** the revision removes the on-premise
  deployment option entirely (cloud-only now), raises the uptime SLA (99.5%→99.9%),
  extends data retention (3→5 years), and adds a new SOC 2 Type II certification
  requirement with its own deliverable, checklist line, and pricing line item.
- **Tightened eligibility and risk terms:** minimum years of experience (5→7), minimum
  annual revenue ($8M→$12M), and a new requirement for prior Major Incident Management
  experience — general liability, professional liability, and cyber liability minimums
  are UNCHANGED.
- **Vendor Support Responsibilities reformatted from prose to a table** with explicit,
  quantified SLA targets added to five previously-qualitative obligations (e.g. knowledge
  base articles 200→300, updated quarterly→monthly), plus one wholly new obligation
  (Major Incident Response / Major Incident Commander).
- **Commercial terms restructured:** contract term extended (24→36 months, one
  renewal→two), payment schedule re-split across more milestones including a new Major
  Incident go-live payment, warranty extended (12→24 months), payment terms tightened
  (Net 45→Net 30), and two new financial protections added for AFG: a liquidated-damages
  clause (replacing the original's explicit statement that none applied) and an entirely
  new Service Level Credit Schedule (§13.3) covering ticket response time, Sev-1
  resolution time, and platform uptime.
- **Timeline pushed out roughly three months** across every milestone, consistent with
  the later reissue date.
- **Points to flag before submission:**
  - Section 6's removed requirements are asserted to now live in the MSA, but the MSA
    itself was not available for this comparison — this claim is reported as the
    revision's own assertion, not independently verified. Confirm the MSA actually covers
    the removed content before assuming no gap exists.
  - The reformatted Vendor Support Responsibilities table (§5.5) restates five existing
    obligations with added quantified SLA targets rather than introducing new
    obligations outright — judged CHANGED, not ADDED, since a counterpart plainly exists
    for each; only the "Major Incident Response" row is genuinely new.

## What did not change

59 clauses were confirmed unchanged, including all six Definitions, all four Insurance
Requirements, all four Terms & Conditions clauses (15.1–15.4), most Functional
Requirements (FR-01–FR-06), the Cost and Support & Maintenance evaluation weights, core
technical requirements (ITIL v4 alignment, CMDB, self-service portal, encryption, Azure
AD SSO, FIS integration), and Appendix B in full. See
`findings/version-compare/SYNTH_VERS_DOCS_S2_REVISED/` for the complete list with quotes, per
unit.

## Provenance

```text
Bootstrap.md (generic rules — never changes per document)
      ↓
FileIndex.md (four resolved inputs: use case name, source, supporting, skill)
      ↓
Manifest.md (this document's governance/context — state, sign-off, deviations, digests)
      ↓
skills/version-compare/Skill.md (current version, v2)
      ↓
actuals/version-compare/SYNTH_VERS_DOCS_S2_REVISED/Detection.md, Plan.md
      ↓
actuals/version-compare/SYNTH_VERS_DOCS_S2_REVISED/twin/{SYNTH_VERS_DOCS_S2_REVISED,SYNTH_VERS_DOCS_S2_ORIGINAL}/page-###.md
      ↓
findings/version-compare/SYNTH_VERS_DOCS_S2_REVISED/*.md (20 unit files)
      ↓
this report
```

Not yet reviewed under `HITL/version-compare/SYNTH_VERS_DOCS_S2_REVISED/` or
validated against `Manifest.md` — not an accepted deliverable until both are complete.
