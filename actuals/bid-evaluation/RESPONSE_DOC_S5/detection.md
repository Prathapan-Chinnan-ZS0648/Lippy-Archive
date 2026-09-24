# Detection — RESPONSE_DOC_S5 (bidder: Apex Solar Constructions)

Quirks noticed while building the twin and reading this record, ahead of judgment.

| Quirk | Where observed | Handling |
|---|---|---|
| No explicit bid-opening register was supplied | fileIndex.md's bid-evaluation entry lists six source paths, all named RESPONSE_DOC_*, against one shared BASE_DOC supporting path — no separate register file | Per skill Module "UNDERSTAND" (`from=supporting, documents=RESPONSE`), the register is built programmatically: one row per RESPONSE-named document, this document is that row's record. |
| No numeric technical score exists because the bid never reached Stage 2 | Section 3 states "NOT EVALUATED" | Per skill's rule for a committee determination without a number: opens with the committee's own overall determination, quoted, and this bidder is not ranked. |
