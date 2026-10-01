---
skill: bom-extraction
version: 1
steps: 5
confidence: HIGH
candidates: bom-extraction (HIGH); drawing-comparison (LOW); question-answer (LOW)
verified-by: single-reader cross-check
verified-on: 2026-09-17
---
# Plan of Action · version 1

Steps as declared in `skills/bom-extraction.md`, made concrete for this project.

| # | Operation | What it does on this project | Example |
| 1 | UNDERSTAND | Read every sheet of the 13-page set; identify every tagged item, grouped by sheet and category | Sheet `-011`/page 12 carries 6 EQUIPMENT tags in one boxed header row |
| 2 | CLASSIFY | Assign EQUIPMENT, SAFETY-RELIEF-VALVE, CONTROL-VALVE or INSTRUMENT per this set's own Legend1/Legend2 tag grammar | `V-200` classifies EQUIPMENT (equipment-number scheme); `PSV-200` classifies SAFETY-RELIEF-VALVE (ISA instrument-letter scheme) |
| 3 | RETRIEVE | Read every stated field for each extracted tag from its home sheet's datasheet block | `EQUIP-CA-800`'s fields (type, mfg/model, capacity, motor) come from sheet `-011`'s boxed header |
| 4 | JUDGE | Mark confidence: SURE only when every field is read off a legible block | 33 of 35 findings are SURE; 2 are UNSURE (`KV-800`, `KV-805`) — see pivot.md Entries 8, 9, and 10 |
| 5 | GENERATE | Write one finding per unit in the bom-extraction finding shape | `actuals/findings/V-200.md` |

35 units extracted across all passes: 10 EQUIPMENT, 10 SAFETY-RELIEF-VALVE, 15 CONTROL-VALVE, 0 INSTRUMENT (the instrument population is counted and located by sheet in `actuals/twin/derived/` but not individually extracted as findings — see `actuals/report/report.md`'s "Coverage" section and `pivot.md` Entry 3). Original 2026-09-17 pass produced 27 (7 CONTROL-VALVE); the 2026-09-30 cross-check with Hermes/qwen3.8-flash added 8 more (5 LCVs + KV-800 + KV-805 + PCV-602A). See `actuals/report/report.md` for the full row-by-row Bill of Materials and `actuals/twin/derived/` for the per-sheet tag inventory this plan operates over.

Unlike `version-compare`/`drawing-comparison`, this plan has no ALIGN step (nothing to align a single document's tags against) and no materiality JUDGE (a BOM line's relevance is that the drawing tags it at all, not a change's impact) — see `skills/bom-extraction.md` § The rule for why this skill's step sequence differs from the comparison skills it was adapted from.
