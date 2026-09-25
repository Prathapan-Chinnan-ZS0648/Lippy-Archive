---
skill: version-compare
version: 6
steps: 6
verified-by: Prathapan C approved this plan's parameters, recorded in `HITL/version-compare/SYNTH_VERS_DOCS_S5_REVISED/manualValidate.md`
verified-on: 2026-09-21
confidence: CONFIRMED
---

# Plan of Action · version 6

| # | Operation | What it does on this project | Example |
|---|---|---|---|
| 1 | UNDERSTAND | Determine this document's grain — the atomic unit that gets one verdict each — and whether the two documents share a common structure or must be aligned by content. | SYNTH_VERS_DOCS_S5_REVISED.pptx (12 slides, 73 clauses total) — grain fixed at one clause per verdict |
| 2 | MAP | Build a mapping from each unit in the newer document to its counterpart (if any) in the older document, by content/label, not position, ID, or presentation format. | 11 of 12 slides mapped 1:1 by title/topic; the "EV Charging & Interconnection Requirements" slide has no counterpart at all |
| 3 | RETRIEVE | For each mapped (or unmapped) unit, retrieve the exact wording from each document it appears in. | each of the 12 slides' exact wording retrieved from both SYNTH_VERS_DOCS_S5_REVISED.pptx and its supporting original — never from memory of a similar slide seen elsewhere |
| 4 | JUDGE | Apply Module 1's verdict rules to each unit using only what was retrieved — CHANGED/ADDED/REMOVED/UNCHANGED/NOT ADDRESSED, both sides quoted. | every clause within the uncountered EV Charging slide is ADDED individually, per the 5 per-clause files `findings/07-EvChargingAndInterconnectionRequirements-*.md` |
| 5 | VALIDATE | Run the Module 4 checklist before treating any output as final. | `manifest/version-compare/manifest.md`'s own checklist section for SYNTH_VERS_DOCS_S5_REVISED |
| 6 | REPORT | Assemble the output per Module 5 — verdict-count summary and thematic rollup, citing findings only. | `reports/version-compare/SYNTH_VERS_DOCS_S5_REVISED/report.md`'s verdict-count summary: 38 CHANGED, 11 ADDED, 0 REMOVED, 24 UNCHANGED |
