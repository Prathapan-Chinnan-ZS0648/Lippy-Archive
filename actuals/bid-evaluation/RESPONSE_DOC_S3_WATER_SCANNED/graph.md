---
purpose: Traces this document's 5 findings back to their evidence in the twin, and forward to the report that cites them.
version: 6
verification: verified
confidence: HIGH
---

# Graph — RESPONSE_DOC_S3_WATER_SCANNED

## Nodes

| Node | Type | Notes |
|---|---|---|
| `actuals/bid-evaluation/RESPONSE_DOC_S3_WATER_SCANNED/findings/eligibility.md` | finding | required field |
| `actuals/bid-evaluation/RESPONSE_DOC_S3_WATER_SCANNED/findings/deviations.md` | finding | required field |
| `actuals/bid-evaluation/RESPONSE_DOC_S3_WATER_SCANNED/findings/price.md` | finding | required field |
| `actuals/bid-evaluation/RESPONSE_DOC_S3_WATER_SCANNED/findings/score.md` | finding | required field |
| `actuals/bid-evaluation/RESPONSE_DOC_S3_WATER_SCANNED/findings/basis.md` | finding | required field |
| `actuals/bid-evaluation/RESPONSE_DOC_S3_WATER_SCANNED/twin/RESPONSE_DOC_S3_WATER_SCANNED/page-004.md` | twin (page 4 of 51) | evidence source for: eligibility |
| `actuals/bid-evaluation/RESPONSE_DOC_S3_WATER_SCANNED/twin/RESPONSE_DOC_S3_WATER_SCANNED/page-040.md` | twin (page 40 of 51) | evidence source for: deviations |
| `actuals/bid-evaluation/RESPONSE_DOC_S3_WATER_SCANNED/twin/RESPONSE_DOC_S3_WATER_SCANNED/page-041.md` | twin (page 41 of 51) | evidence source for: deviations |
| `actuals/bid-evaluation/RESPONSE_DOC_S3_WATER_SCANNED/twin/RESPONSE_DOC_S3_WATER_SCANNED/page-043.md` | twin (page 43 of 51) | evidence source for: price |
| `actuals/bid-evaluation/RESPONSE_DOC_S3_WATER_SCANNED/twin/RESPONSE_DOC_S3_WATER_SCANNED/page-051.md` | twin (page 51 of 51) | evidence source for: score, basis |
| `actuals/bid-evaluation/RESPONSE_DOC_S3_WATER_SCANNED/twin/BASE_DOC_WATER_SCANNED/base.md` | twin (base/context document) | context only, never quoted as evidence |
| `reports/bid-evaluation/RankingSummary-Water/report.md` | report | group-level cross-bidder ranking synthesis, built from Score/Eligibility/Price/Deviations/Basis only |

## Relationships

| From | To | Edge type |
|---|---|---|
| `findings/eligibility.md` | `twin/RESPONSE_DOC_S3_WATER_SCANNED/page-004.md` | retrieved from |
| `findings/deviations.md` | `twin/RESPONSE_DOC_S3_WATER_SCANNED/page-040.md` | retrieved from |
| `findings/deviations.md` | `twin/RESPONSE_DOC_S3_WATER_SCANNED/page-041.md` | retrieved from |
| `findings/price.md` | `twin/RESPONSE_DOC_S3_WATER_SCANNED/page-043.md` | retrieved from |
| `findings/score.md` | `twin/RESPONSE_DOC_S3_WATER_SCANNED/page-051.md` | retrieved from |
| `findings/basis.md` | `twin/RESPONSE_DOC_S3_WATER_SCANNED/page-051.md` | retrieved from |
| (all findings above) | `actuals/bid-evaluation/RESPONSE_DOC_S3_WATER_SCANNED/twin/BASE_DOC_WATER_SCANNED/base.md` | context only — never quoted as evidence |
| (all 5 findings above) | `reports/bid-evaluation/RankingSummary-Water/report.md` | cited by |

## Dependencies

| Finding | Depends on | Notes |
|---|---|---|
| (none) | — | Every field's verdict rests on an independent retrieval from this document's own twin pages; no finding here depends on another finding's evidence. |

## Evidence flow

| Finding | Twin source | Report destination |
|---|---|---|
| `findings/eligibility.md` | `twin/RESPONSE_DOC_S3_WATER_SCANNED/page-004.md` | `reports/bid-evaluation/RankingSummary-Water/report.md` |
| `findings/deviations.md` | `twin/RESPONSE_DOC_S3_WATER_SCANNED/page-040.md, twin/RESPONSE_DOC_S3_WATER_SCANNED/page-041.md` | `reports/bid-evaluation/RankingSummary-Water/report.md` |
| `findings/price.md` | `twin/RESPONSE_DOC_S3_WATER_SCANNED/page-043.md` | `reports/bid-evaluation/RankingSummary-Water/report.md` |
| `findings/score.md` | `twin/RESPONSE_DOC_S3_WATER_SCANNED/page-051.md` | `reports/bid-evaluation/RankingSummary-Water/report.md` |
| `findings/basis.md` | `twin/RESPONSE_DOC_S3_WATER_SCANNED/page-051.md` | `reports/bid-evaluation/RankingSummary-Water/report.md` |
