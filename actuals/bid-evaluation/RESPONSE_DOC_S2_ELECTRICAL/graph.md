---
purpose: Traces this document's 5 findings back to their evidence in the twin, and forward to the report that cites them.
version: 6
verification: verified
confidence: HIGH
---

# Graph — RESPONSE_DOC_S2_ELECTRICAL

## Nodes

| Node | Type | Notes |
|---|---|---|
| `actuals/bid-evaluation/RESPONSE_DOC_S2_ELECTRICAL/findings/basis.md` | finding | required field |
| `actuals/bid-evaluation/RESPONSE_DOC_S2_ELECTRICAL/findings/deviations.md` | finding | required field |
| `actuals/bid-evaluation/RESPONSE_DOC_S2_ELECTRICAL/findings/eligibility.md` | finding | required field |
| `actuals/bid-evaluation/RESPONSE_DOC_S2_ELECTRICAL/findings/price.md` | finding | required field |
| `actuals/bid-evaluation/RESPONSE_DOC_S2_ELECTRICAL/findings/score.md` | finding | required field |
| `actuals/bid-evaluation/RESPONSE_DOC_S2_ELECTRICAL/twin/RESPONSE_DOC_S2_ELECTRICAL/record.md` | twin (this bidder's own record) | evidence source for every finding above |
| `actuals/bid-evaluation/RESPONSE_DOC_S2_ELECTRICAL/twin/BASE_DOC_ELECTRICAL/base.md` | twin (base/context document) | context only, never quoted as evidence |
| `reports/bid-evaluation/RankingSummary/report.md` | report | group-level cross-bidder ranking synthesis, built from Score/Eligibility/Price/Deviations/Basis only |

## Relationships

| From | To | Edge type |
|---|---|---|
| `findings/basis.md` | `twin/RESPONSE_DOC_S2_ELECTRICAL/record.md` | retrieved from |
| `findings/deviations.md` | `twin/RESPONSE_DOC_S2_ELECTRICAL/record.md` | retrieved from |
| `findings/eligibility.md` | `twin/RESPONSE_DOC_S2_ELECTRICAL/record.md` | retrieved from |
| `findings/price.md` | `twin/RESPONSE_DOC_S2_ELECTRICAL/record.md` | retrieved from |
| `findings/score.md` | `twin/RESPONSE_DOC_S2_ELECTRICAL/record.md` | retrieved from |
| (all findings above) | `actuals/bid-evaluation/RESPONSE_DOC_S2_ELECTRICAL/twin/BASE_DOC_ELECTRICAL/base.md` | context only — never quoted as evidence |
| (all 5 findings above) | `reports/bid-evaluation/RankingSummary/report.md` | cited by |

## Dependencies

| Finding | Depends on | Notes |
|---|---|---|
| (none) | — | Every field's verdict rests on an independent retrieval from this document's own twin/record.md; no finding here depends on another finding's evidence. |

## Evidence flow

| Finding | Twin source | Report destination |
|---|---|---|
| `findings/basis.md` | `twin/RESPONSE_DOC_S2_ELECTRICAL/record.md` | `reports/bid-evaluation/RankingSummary/report.md` |
| `findings/deviations.md` | `twin/RESPONSE_DOC_S2_ELECTRICAL/record.md` | `reports/bid-evaluation/RankingSummary/report.md` |
| `findings/eligibility.md` | `twin/RESPONSE_DOC_S2_ELECTRICAL/record.md` | `reports/bid-evaluation/RankingSummary/report.md` |
| `findings/price.md` | `twin/RESPONSE_DOC_S2_ELECTRICAL/record.md` | `reports/bid-evaluation/RankingSummary/report.md` |
| `findings/score.md` | `twin/RESPONSE_DOC_S2_ELECTRICAL/record.md` | `reports/bid-evaluation/RankingSummary/report.md` |
