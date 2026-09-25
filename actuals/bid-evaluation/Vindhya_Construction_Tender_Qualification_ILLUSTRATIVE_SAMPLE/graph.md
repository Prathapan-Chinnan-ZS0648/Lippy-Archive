---
purpose: Traces this document's 10 findings back to their evidence in the twin, and forward to the report that cites them.
version: 6
verification: verified
confidence: HIGH
---

# Graph — Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE

## Nodes

| Node | Type | Notes |
|---|---|---|
| `actuals/bid-evaluation/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/findings/basis.md` | finding | required field |
| `actuals/bid-evaluation/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/findings/companyProfile.md` | finding | informational field |
| `actuals/bid-evaluation/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/findings/deviations.md` | finding | required field |
| `actuals/bid-evaluation/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/findings/eligibility.md` | finding | required field |
| `actuals/bid-evaluation/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/findings/equipmentAndCertifications.md` | finding | informational field |
| `actuals/bid-evaluation/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/findings/financialStanding.md` | finding | informational field |
| `actuals/bid-evaluation/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/findings/price.md` | finding | required field |
| `actuals/bid-evaluation/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/findings/projectExperienceAndTeam.md` | finding | informational field |
| `actuals/bid-evaluation/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/findings/score.md` | finding | required field |
| `actuals/bid-evaluation/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/findings/statutoryDeclarationsAndChecklist.md` | finding | informational field |
| `actuals/bid-evaluation/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/twin/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/page-001.md` | twin (page 1 of 6) | evidence source for: companyProfile, price |
| `actuals/bid-evaluation/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/twin/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/page-002.md` | twin (page 2 of 6) | evidence source for: companyProfile, financialStanding |
| `actuals/bid-evaluation/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/twin/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/page-003.md` | twin (page 3 of 6) | evidence source for: projectExperienceAndTeam |
| `actuals/bid-evaluation/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/twin/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/page-004.md` | twin (page 4 of 6) | evidence source for: projectExperienceAndTeam |
| `actuals/bid-evaluation/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/twin/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/page-005.md` | twin (page 5 of 6) | evidence source for: equipmentAndCertifications, statutoryDeclarationsAndChecklist |
| `actuals/bid-evaluation/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/twin/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/page-006.md` | twin (page 6 of 6) | evidence source for: statutoryDeclarationsAndChecklist |
| `actuals/bid-evaluation/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/twin/Tender_Qualification_Document_ILLUSTRATIVE_SAMPLE/base.md` | twin (base/context document) | context only, never quoted as evidence |
| `reports/bid-evaluation/RankingSummary-TenderQualification/report.md` | report | group-level synthesis explaining the absence of ranking across this 10-document batch — this document is NOT ADDRESSED, not ranked |

## Relationships

| From | To | Edge type |
|---|---|---|
| `findings/companyProfile.md` | `twin/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/page-001.md` | retrieved from |
| `findings/companyProfile.md` | `twin/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/page-002.md` | retrieved from |
| `findings/price.md` | `twin/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/page-001.md` | retrieved from |
| `findings/financialStanding.md` | `twin/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/page-002.md` | retrieved from |
| `findings/projectExperienceAndTeam.md` | `twin/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/page-003.md` | retrieved from |
| `findings/projectExperienceAndTeam.md` | `twin/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/page-004.md` | retrieved from |
| `findings/equipmentAndCertifications.md` | `twin/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/page-005.md` | retrieved from |
| `findings/statutoryDeclarationsAndChecklist.md` | `twin/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/page-005.md` | retrieved from |
| `findings/statutoryDeclarationsAndChecklist.md` | `twin/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/page-006.md` | retrieved from |
| `findings/score.md` | (no citation — NOT STATED, per skill.md's required-field rule) | not applicable |
| `findings/eligibility.md` | (no citation — NOT STATED, per skill.md's required-field rule) | not applicable |
| `findings/deviations.md` | (no citation — NOT STATED, per skill.md's required-field rule) | not applicable |
| `findings/basis.md` | `actuals/bid-evaluation/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/detection.md` | retrieved from (reasoning field, not a twin page) |
| (all findings above) | `actuals/bid-evaluation/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/twin/Tender_Qualification_Document_ILLUSTRATIVE_SAMPLE/base.md` | context only — never quoted as evidence |
| (all 10 findings above) | `reports/bid-evaluation/RankingSummary-TenderQualification/report.md` | cited by |

## Dependencies

| Finding | Depends on | Notes |
|---|---|---|
| (none) | — | Every field's verdict rests on an independent retrieval from this document's own twin pages (or detection.md for basis); no finding here depends on another finding's evidence. |

## Evidence flow

| Finding | Twin source | Report destination |
|---|---|---|
| `findings/companyProfile.md` | `twin/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/page-001.md, twin/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/page-002.md` | `reports/bid-evaluation/RankingSummary-TenderQualification/report.md` |
| `findings/price.md` | `twin/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/page-001.md` | `reports/bid-evaluation/RankingSummary-TenderQualification/report.md` |
| `findings/financialStanding.md` | `twin/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/page-002.md` | `reports/bid-evaluation/RankingSummary-TenderQualification/report.md` |
| `findings/projectExperienceAndTeam.md` | `twin/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/page-003.md, twin/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/page-004.md` | `reports/bid-evaluation/RankingSummary-TenderQualification/report.md` |
| `findings/equipmentAndCertifications.md` | `twin/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/page-005.md` | `reports/bid-evaluation/RankingSummary-TenderQualification/report.md` |
| `findings/statutoryDeclarationsAndChecklist.md` | `twin/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/page-005.md, twin/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/page-006.md` | `reports/bid-evaluation/RankingSummary-TenderQualification/report.md` |
| `findings/score.md` | (no citation — NOT STATED) | `reports/bid-evaluation/RankingSummary-TenderQualification/report.md` |
| `findings/eligibility.md` | (no citation — NOT STATED) | `reports/bid-evaluation/RankingSummary-TenderQualification/report.md` |
| `findings/deviations.md` | (no citation — NOT STATED) | `reports/bid-evaluation/RankingSummary-TenderQualification/report.md` |
| `findings/basis.md` | `actuals/bid-evaluation/Vindhya_Construction_Tender_Qualification_ILLUSTRATIVE_SAMPLE/detection.md` | `reports/bid-evaluation/RankingSummary-TenderQualification/report.md` |
