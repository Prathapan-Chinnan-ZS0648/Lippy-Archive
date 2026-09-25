---
purpose: Traces this document's 98 clause-level findings (across 6 units) back to their evidence in the twin, and forward to the report that cites them.
version: 6
verification: verified
confidence: HIGH
---

# Graph — SYNTH_VERS_DOCS_S4_REVISED

## Nodes

| Node | Type | Notes |
|---|---|---|
| `actuals/version-compare/SYNTH_VERS_DOCS_S4_REVISED/findings/01-Cover-*.md` | finding (unit 1: Cover) | 11 per-clause files (unit-wise split, per `skills/version-compare/skill.md`'s one-clause-one-verdict grain) |
| `actuals/version-compare/SYNTH_VERS_DOCS_S4_REVISED/findings/02-RequirementsMatrix-*.md` | finding (unit 2: Requirements Matrix) | 52 per-clause files (unit-wise split, per `skills/version-compare/skill.md`'s one-clause-one-verdict grain) |
| `actuals/version-compare/SYNTH_VERS_DOCS_S4_REVISED/findings/03-PricingForm-*.md` | finding (unit 3: Pricing Form) | 12 per-clause files (unit-wise split, per `skills/version-compare/skill.md`'s one-clause-one-verdict grain) |
| `actuals/version-compare/SYNTH_VERS_DOCS_S4_REVISED/findings/04-ReferenceForm-*.md` | finding (unit 4: Reference Form) | 6 per-clause files (unit-wise split, per `skills/version-compare/skill.md`'s one-clause-one-verdict grain) |
| `actuals/version-compare/SYNTH_VERS_DOCS_S4_REVISED/findings/05-ProjectTimeline-*.md` | finding (unit 5: Project Timeline) | 10 per-clause files (unit-wise split, per `skills/version-compare/skill.md`'s one-clause-one-verdict grain) |
| `actuals/version-compare/SYNTH_VERS_DOCS_S4_REVISED/findings/06-CybersecurityAddendum-*.md` | finding (unit 6: Cybersecurity Addendum (new sheet, no counterpart)) | 7 per-clause files (unit-wise split, per `skills/version-compare/skill.md`'s one-clause-one-verdict grain) |
| `actuals/version-compare/SYNTH_VERS_DOCS_S4_REVISED/twin/SYNTH_VERS_DOCS_S4_REVISED/` | twin (source document, revised) | evidence source (this version) |
| `actuals/version-compare/SYNTH_VERS_DOCS_S4_REVISED/twin/SYNTH_VERS_DOCS_S4_ORIGINAL/` | twin (supporting document, original) | evidence source (prior version) |
| `reports/version-compare/SYNTH_VERS_DOCS_S4_REVISED/report.md` | report | verdict-count summary + thematic rollup, citing findings only |

## Relationships

| From | To | Edge type |
|---|---|---|
| (all 6 units above) | `twin/SYNTH_VERS_DOCS_S4_REVISED/` | retrieved from (this version's wording) |
| (all 6 units above) | `twin/SYNTH_VERS_DOCS_S4_ORIGINAL/` | retrieved from (prior version's wording, where a counterpart exists) |
| (all 6 units above) | `reports/version-compare/SYNTH_VERS_DOCS_S4_REVISED/report.md` | cited by |

## Dependencies

| Finding | Depends on | Notes |
|---|---|---|
| unit with no counterpart | absence confirmed by full-text search / twin/sectionMap.md, not by another finding | Every clause within the uncountered Cybersecurity Addendum sheet is ADDED individually — its ADDED verdict rests on the sheet having no counterpart at all in the supporting workbook, not on any other finding's evidence. |

## Evidence flow

| Unit | Twin source (revised) | Twin source (original) | Report destination |
|---|---|---|---|
| 1. Cover | `twin/SYNTH_VERS_DOCS_S4_REVISED/` | `twin/SYNTH_VERS_DOCS_S4_ORIGINAL/` | `reports/version-compare/SYNTH_VERS_DOCS_S4_REVISED/report.md` |
| 2. Requirements Matrix | `twin/SYNTH_VERS_DOCS_S4_REVISED/` | `twin/SYNTH_VERS_DOCS_S4_ORIGINAL/` | `reports/version-compare/SYNTH_VERS_DOCS_S4_REVISED/report.md` |
| 3. Pricing Form | `twin/SYNTH_VERS_DOCS_S4_REVISED/` | `twin/SYNTH_VERS_DOCS_S4_ORIGINAL/` | `reports/version-compare/SYNTH_VERS_DOCS_S4_REVISED/report.md` |
| 4. Reference Form | `twin/SYNTH_VERS_DOCS_S4_REVISED/` | `twin/SYNTH_VERS_DOCS_S4_ORIGINAL/` | `reports/version-compare/SYNTH_VERS_DOCS_S4_REVISED/report.md` |
| 5. Project Timeline | `twin/SYNTH_VERS_DOCS_S4_REVISED/` | `twin/SYNTH_VERS_DOCS_S4_ORIGINAL/` | `reports/version-compare/SYNTH_VERS_DOCS_S4_REVISED/report.md` |
| 6. Cybersecurity Addendum (new sheet, no counterpart) | `twin/SYNTH_VERS_DOCS_S4_REVISED/` | `twin/SYNTH_VERS_DOCS_S4_ORIGINAL/` | `reports/version-compare/SYNTH_VERS_DOCS_S4_REVISED/report.md` |
