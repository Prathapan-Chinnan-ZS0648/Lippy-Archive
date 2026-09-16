---
skill: version-docs
confidence: HIGH
candidates: version-docs (HIGH); question-answer (LOW)
verified-by: automated cross-check pass
verified-on: 2026-09-11
---
# Plan of Action · version 1

| # | Operation | What it does on this project | Example |
| 1 | UNDERSTAND | Read every data row of every sheet in the source, 47 units, grouped by sheet | Requirements Matrix row 16 becomes unit `R-16` |
| 2 | ALIGN | Match each source row to its counterpart in the supporting workbook by row id where one exists, or by content where it does not | Source `R-17` aligns to no supporting row — it is the replacement for supporting `R-07`, which the source removes |
| 3 | CLASSIFY | Assign ADDED, REMOVED, CHANGED or UNCHANGED to each unit | `R-07` is REMOVED; `R-17` is ADDED; they are not merged into one CHANGED unit |
| 4 | JUDGE | Mark material yes/no: does the change affect eligibility, price, or technical response | `R-11` (warranty 3yr → 5yr) is material yes; `P-02`/`P-06`/`P-08` (unchanged pricing-line descriptions) are material no |
| 5 | RETRIEVE | Locate the old row's exact sheet and row number in the supporting workbook for every CHANGED or REMOVED unit | `R-07`'s old text is on supporting sheet Requirements Matrix, row 8: "On-premise network monitoring dashboard…" |
| 6 | GENERATE | Write one finding per unit in the version-docs finding shape | `actuals/findings/R-16.md` |

47 units in total (46 source rows plus 1 REMOVED row, `R-07`) across 6 sheets — one sheet, Cybersecurity Addendum, exists only in the source workbook and is entirely ADDED, per `skills/version-docs.md`'s `sheet-added` pack-profile case.
