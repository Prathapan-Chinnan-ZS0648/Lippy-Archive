---
skill: version-compare
confidence: HIGH
candidates: version-compare (HIGH); question-answer (LOW)
verified-by: automated cross-check pass
verified-on: 2026-09-11
---
# Plan of Action · version 1

| # | Operation | What it does on this project | Example |
| 1 | UNDERSTAND | Read every clause of the source, 103 units (98 source clauses plus 5 REMOVED), by the source's own section numbering, grouped by top-level section | Section 15.5 "Major Incident Reporting Obligation" becomes unit `TC-2` |
| 2 | ALIGN | Match each source clause to its counterpart in the supporting document by content, not by section number or format | Source 5.5's table rows 1–5 align to the supporting document's five 5.5 bullets, despite the format change |
| 3 | CLASSIFY | Assign ADDED, REMOVED, CHANGED or UNCHANGED to each unit | `ELIG-1` (minimum years' experience, 5 → 7) is CHANGED; `ONB-1` through `ONB-5` are REMOVED |
| 4 | JUDGE | Mark material yes/no: does the change affect eligibility, price, or technical response | `ELIG-1` is material yes; `DEF-1` (six unchanged glossary terms) is material no |
| 5 | RETRIEVE | Locate the old clause's exact page and quote in the supporting document for every CHANGED or REMOVED unit | `ONB-1`'s old text is on supporting p.6: "All vendor personnel with access to AFG systems…" |
| 6 | GENERATE | Write one finding per unit in the version-compare finding shape | `actuals/findings/ELIG-1.md` |

103 units in total (98 source clauses, plus 5 REMOVED clauses that exist only in the supporting document) — every clause of the supporting document has a counterpart in the source, even if only as an unchanged carry-over, except Section 6's five onboarding bullets, which the source removes outright.
