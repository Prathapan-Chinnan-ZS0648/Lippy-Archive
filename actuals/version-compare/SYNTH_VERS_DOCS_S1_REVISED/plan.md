---
skill: version-compare
version: 6
steps: 6
verified-by: Prathapan C approved this plan's parameters, recorded in `HITL/version-compare/SYNTH_VERS_DOCS_S1_REVISED/manualValidate.md`
verified-on: 2026-09-21
confidence: CONFIRMED
---

# Plan of Action · version 6

| # | Operation | What it does on this project | Example |
|---|---|---|---|
| 1 | UNDERSTAND | Determine this document's grain — the atomic unit that gets one verdict each — and whether the two documents share a common structure or must be aligned by content. | SYNTH_VERS_DOCS_S1_REVISED.pdf (19 sections, 154 clauses total) — grain fixed at one clause per verdict |
| 2 | MAP | Build a mapping from each unit in the newer document to its counterpart (if any) in the older document, by content/label, not position, ID, or presentation format. | all 19 units mapped 1:1 by identical section structure |
| 3 | RETRIEVE | For each mapped (or unmapped) unit, retrieve the exact wording from each document it appears in. | each of the 19 sections' exact wording retrieved from both SYNTH_VERS_DOCS_S1_REVISED.pdf and its supporting original — never from memory of a similar section seen elsewhere |
| 4 | JUDGE | Apply Module 1's verdict rules to each unit using only what was retrieved — CHANGED/ADDED/REMOVED/UNCHANGED/NOT ADDRESSED, both sides quoted. | the pricing form's unit-price row: CHANGED — old wording quoted from SYNTH_VERS_DOCS_S1_ORIGINAL, new wording quoted from SYNTH_VERS_DOCS_S1_REVISED |
| 5 | VALIDATE | Run the Module 4 checklist before treating any output as final. | `manifest/version-compare/manifest.md`'s own checklist section for SYNTH_VERS_DOCS_S1_REVISED |
| 6 | REPORT | Assemble the output per Module 5 — verdict-count summary and thematic rollup, citing findings only. | `reports/version-compare/SYNTH_VERS_DOCS_S1_REVISED/report.md`'s verdict-count summary: 72 CHANGED, 33 ADDED, 1 REMOVED, 48 UNCHANGED |
