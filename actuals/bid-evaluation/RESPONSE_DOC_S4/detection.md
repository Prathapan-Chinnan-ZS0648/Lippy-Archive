# Detection — RESPONSE_DOC_S4 (bidder: Suryodaya Renewables Pvt. Ltd.)

Quirks noticed while building the twin and reading this record, ahead of judgment.

| Quirk | Where observed | Handling |
|---|---|---|
| No explicit bid-opening register was supplied | fileIndex.md's bid-evaluation entry lists six source paths, all named RESPONSE_DOC_*, against one shared BASE_DOC supporting path — no separate register file | Per skill Module "UNDERSTAND" (`from=supporting, documents=RESPONSE`), the register is built programmatically: one row per RESPONSE-named document, this document is that row's record. |
| A numeric technical score IS recorded for this bidder (65 / 100) | Section 3, Technical Evaluation Summary | Unlike the ELECTRICAL/WATER_SCANNED samples previously processed under this use case (which carried no numeric score), this tender's committee records one directly — read as-is per skill's "score is read, never computed" rule; opens the answer as a bare number. |
| An EMD shortfall was cured within the tender's stated cure period, leaving the bidder "CONDITIONALLY COMPLIANT" rather than disqualified | Section 2 Eligibility Compliance Statement, Section 5 Clarifications | The committee's own overall determination (quoted) is what states the outcome, not a count of how many criteria initially failed — applied per skill's existing rule that the Eligibility line reports the committee's own determination, never a recomputed one. |
