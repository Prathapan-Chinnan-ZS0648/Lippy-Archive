# Detection — RESPONSE_DOC_S2 (bidder: GreenVolt Power Systems Ltd.)

Quirks noticed while building the twin and reading this record, ahead of judgment.

| Quirk | Where observed | Handling |
|---|---|---|
| No explicit bid-opening register was supplied | fileIndex.md's bid-evaluation entry lists six source paths, all named RESPONSE_DOC_*, against one shared BASE_DOC supporting path — no separate register file | Per skill Module "UNDERSTAND" (`from=supporting, documents=RESPONSE`), the register is built programmatically: one row per RESPONSE-named document, this document is that row's record. |
| A numeric technical score IS recorded for this bidder (58 / 100) | Section 3, Technical Evaluation Summary | Unlike the ELECTRICAL/WATER_SCANNED samples previously processed under this use case (which carried no numeric score), this tender's committee records one directly — read as-is per skill's "score is read, never computed" rule; opens the answer as a bare number. |
| A numeric score (58 / 100) is recorded on a bid the committee ultimately disqualified | Section 3 explicitly states the score was "computed for record purposes only" | Per skill's explicit rule: "A score the committee marked 'for record purposes only' on a bid it disqualified still opens the answer, disqualification following." Applied as written — the score opens the answer, the disqualification follows, and the bidder is not ranked (absence-policy: a rejected bid is not ranked). |
