---
skill: bid-evaluation
version: 6
steps: 5
verified-by: Prathapan C approved this plan's parameters, recorded in `HITL/bid-evaluation/RESPONSE_DOC_S5/manualValidate.md`
verified-on: 2026-09-21
confidence: CONFIRMED
---

# Plan of Action · version 6

| # | Operation | What it does on this project | Example |
|---|---|---|---|
| 1 | UNDERSTAND | Identify the bidder (via the buyer's register if supplied; otherwise one bidder per RESPONSE-named document, its own first page read for its name). Read the whole document once to identify its own distinct fields/sections. | Apex Solar Constructions's own document read for its 5 fields: basis, deviations, eligibility, price, score |
| 2 | RETRIEVE | For each identified field/section, retrieve the exact wording from this bidder's own document/record — never from memory of a similar field seen in another bidder's document. | Score retrieved from `RESPONSE_DOC_S5.docx`, Section 3 (Technical Evaluation Summary) |
| 3 | ANSWER | Apply Module 1's per-field rule to every field identified in stage 1, plus every one of Module 3's five required fields even if stage 1 did not surface it as its own section. | Score answered `STATED` per Module 1's 'score is read, never computed' rule |
| 4 | VALIDATE | Run Module 5's checklist before treating any bidder's findings as final. | `manifest/bid-evaluation/manifest.md`'s own checklist section for RESPONSE_DOC_S5 |
| 5 | RANK | Assemble the ranking view (Module 6) from the five required fields only — informational fields never enter the ranking. | Apex Solar Constructions's row in `reports/bid-evaluation/RankingSummary-Solar/report.md`, built from Score/Eligibility/Price/Deviations/Basis only |
