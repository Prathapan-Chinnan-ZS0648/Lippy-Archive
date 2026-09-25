---
purpose: Traces this document's 73 clause-level findings (across 12 units) back to their evidence in the twin, and forward to the report that cites them.
version: 6
verification: verified
confidence: HIGH
---

# Graph — SYNTH_VERS_DOCS_S5_REVISED

## Nodes

| Node | Type | Notes |
|---|---|---|
| `actuals/version-compare/SYNTH_VERS_DOCS_S5_REVISED/findings/01-Cover-*.md` | finding (unit 1: Cover) | 9 per-clause files (unit-wise split, per `skills/version-compare/skill.md`'s one-clause-one-verdict grain) |
| `actuals/version-compare/SYNTH_VERS_DOCS_S5_REVISED/findings/02-Agenda-*.md` | finding (unit 2: Agenda) | 10 per-clause files (unit-wise split, per `skills/version-compare/skill.md`'s one-clause-one-verdict grain) |
| `actuals/version-compare/SYNTH_VERS_DOCS_S5_REVISED/findings/03-AboutSolsticeEnergyCooperative-*.md` | finding (unit 3: About Solstice Energy Cooperative) | 4 per-clause files (unit-wise split, per `skills/version-compare/skill.md`'s one-clause-one-verdict grain) |
| `actuals/version-compare/SYNTH_VERS_DOCS_S5_REVISED/findings/04-ProjectObjectives-*.md` | finding (unit 4: Project Objectives) | 5 per-clause files (unit-wise split, per `skills/version-compare/skill.md`'s one-clause-one-verdict grain) |
| `actuals/version-compare/SYNTH_VERS_DOCS_S5_REVISED/findings/05-ScopeOfWork-*.md` | finding (unit 5: Scope of Work) | 6 per-clause files (unit-wise split, per `skills/version-compare/skill.md`'s one-clause-one-verdict grain) |
| `actuals/version-compare/SYNTH_VERS_DOCS_S5_REVISED/findings/06-TechnicalRequirementsOverview-*.md` | finding (unit 6: Technical Requirements Overview) | 5 per-clause files (unit-wise split, per `skills/version-compare/skill.md`'s one-clause-one-verdict grain) |
| `actuals/version-compare/SYNTH_VERS_DOCS_S5_REVISED/findings/07-EvChargingAndInterconnectionRequirements-*.md` | finding (unit 7: EV Charging & Interconnection Requirements (new slide, no counterpart)) | 5 per-clause files (unit-wise split, per `skills/version-compare/skill.md`'s one-clause-one-verdict grain) |
| `actuals/version-compare/SYNTH_VERS_DOCS_S5_REVISED/findings/08-EligibilityCriteria-*.md` | finding (unit 8: Eligibility Criteria) | 5 per-clause files (unit-wise split, per `skills/version-compare/skill.md`'s one-clause-one-verdict grain) |
| `actuals/version-compare/SYNTH_VERS_DOCS_S5_REVISED/findings/09-ProjectTimeline-*.md` | finding (unit 9: Project Timeline) | 7 per-clause files (unit-wise split, per `skills/version-compare/skill.md`'s one-clause-one-verdict grain) |
| `actuals/version-compare/SYNTH_VERS_DOCS_S5_REVISED/findings/10-EvaluationCriteria-*.md` | finding (unit 10: Evaluation Criteria) | 6 per-clause files (unit-wise split, per `skills/version-compare/skill.md`'s one-clause-one-verdict grain) |
| `actuals/version-compare/SYNTH_VERS_DOCS_S5_REVISED/findings/11-CommercialTermsAndNextSteps-*.md` | finding (unit 11: Commercial Terms & Next Steps) | 6 per-clause files (unit-wise split, per `skills/version-compare/skill.md`'s one-clause-one-verdict grain) |
| `actuals/version-compare/SYNTH_VERS_DOCS_S5_REVISED/findings/12-QuestionsAndContact-*.md` | finding (unit 12: Questions & Contact) | 5 per-clause files (unit-wise split, per `skills/version-compare/skill.md`'s one-clause-one-verdict grain) |
| `actuals/version-compare/SYNTH_VERS_DOCS_S5_REVISED/twin/SYNTH_VERS_DOCS_S5_REVISED/` | twin (source document, revised) | evidence source (this version) |
| `actuals/version-compare/SYNTH_VERS_DOCS_S5_REVISED/twin/SYNTH_VERS_DOCS_S5_ORIGINAL/` | twin (supporting document, original) | evidence source (prior version) |
| `reports/version-compare/SYNTH_VERS_DOCS_S5_REVISED/report.md` | report | verdict-count summary + thematic rollup, citing findings only |

## Relationships

| From | To | Edge type |
|---|---|---|
| (all 12 units above) | `twin/SYNTH_VERS_DOCS_S5_REVISED/` | retrieved from (this version's wording) |
| (all 12 units above) | `twin/SYNTH_VERS_DOCS_S5_ORIGINAL/` | retrieved from (prior version's wording, where a counterpart exists) |
| (all 12 units above) | `reports/version-compare/SYNTH_VERS_DOCS_S5_REVISED/report.md` | cited by |

## Dependencies

| Finding | Depends on | Notes |
|---|---|---|
| unit with no counterpart | absence confirmed by full-text search / sectionMap.md, not by another finding | Every clause within the uncountered EV Charging & Interconnection Requirements slide is ADDED individually — its ADDED verdict rests on twin/sectionMap.md's independent slide-by-slide absence check, not on the self-annotation's own claim or on any other finding's evidence. |

## Evidence flow

| Unit | Twin source (revised) | Twin source (original) | Report destination |
|---|---|---|---|
| 1. Cover | `twin/SYNTH_VERS_DOCS_S5_REVISED/` | `twin/SYNTH_VERS_DOCS_S5_ORIGINAL/` | `reports/version-compare/SYNTH_VERS_DOCS_S5_REVISED/report.md` |
| 2. Agenda | `twin/SYNTH_VERS_DOCS_S5_REVISED/` | `twin/SYNTH_VERS_DOCS_S5_ORIGINAL/` | `reports/version-compare/SYNTH_VERS_DOCS_S5_REVISED/report.md` |
| 3. About Solstice Energy Cooperative | `twin/SYNTH_VERS_DOCS_S5_REVISED/` | `twin/SYNTH_VERS_DOCS_S5_ORIGINAL/` | `reports/version-compare/SYNTH_VERS_DOCS_S5_REVISED/report.md` |
| 4. Project Objectives | `twin/SYNTH_VERS_DOCS_S5_REVISED/` | `twin/SYNTH_VERS_DOCS_S5_ORIGINAL/` | `reports/version-compare/SYNTH_VERS_DOCS_S5_REVISED/report.md` |
| 5. Scope of Work | `twin/SYNTH_VERS_DOCS_S5_REVISED/` | `twin/SYNTH_VERS_DOCS_S5_ORIGINAL/` | `reports/version-compare/SYNTH_VERS_DOCS_S5_REVISED/report.md` |
| 6. Technical Requirements Overview | `twin/SYNTH_VERS_DOCS_S5_REVISED/` | `twin/SYNTH_VERS_DOCS_S5_ORIGINAL/` | `reports/version-compare/SYNTH_VERS_DOCS_S5_REVISED/report.md` |
| 7. EV Charging & Interconnection Requirements (new slide, no counterpart) | `twin/SYNTH_VERS_DOCS_S5_REVISED/` | `twin/SYNTH_VERS_DOCS_S5_ORIGINAL/` | `reports/version-compare/SYNTH_VERS_DOCS_S5_REVISED/report.md` |
| 8. Eligibility Criteria | `twin/SYNTH_VERS_DOCS_S5_REVISED/` | `twin/SYNTH_VERS_DOCS_S5_ORIGINAL/` | `reports/version-compare/SYNTH_VERS_DOCS_S5_REVISED/report.md` |
| 9. Project Timeline | `twin/SYNTH_VERS_DOCS_S5_REVISED/` | `twin/SYNTH_VERS_DOCS_S5_ORIGINAL/` | `reports/version-compare/SYNTH_VERS_DOCS_S5_REVISED/report.md` |
| 10. Evaluation Criteria | `twin/SYNTH_VERS_DOCS_S5_REVISED/` | `twin/SYNTH_VERS_DOCS_S5_ORIGINAL/` | `reports/version-compare/SYNTH_VERS_DOCS_S5_REVISED/report.md` |
| 11. Commercial Terms & Next Steps | `twin/SYNTH_VERS_DOCS_S5_REVISED/` | `twin/SYNTH_VERS_DOCS_S5_ORIGINAL/` | `reports/version-compare/SYNTH_VERS_DOCS_S5_REVISED/report.md` |
| 12. Questions & Contact | `twin/SYNTH_VERS_DOCS_S5_REVISED/` | `twin/SYNTH_VERS_DOCS_S5_ORIGINAL/` | `reports/version-compare/SYNTH_VERS_DOCS_S5_REVISED/report.md` |
