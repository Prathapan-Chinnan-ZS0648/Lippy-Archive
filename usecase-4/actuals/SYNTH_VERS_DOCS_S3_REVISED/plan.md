---
skill: version-docs
confidence: HIGH
candidates: version-docs (HIGH); question-answer (LOW)
verified-by: automated cross-check pass
verified-on: 2026-09-15
---
# Plan of Action · version 1

| # | Operation | What it does on this project | Example |
| 1 | UNDERSTAND | Read every clause of the source, 74 units, by the source's own section numbering, grouped by top-level section | Section 10's liquidated-damages bullet becomes unit `COMM-6` |
| 2 | ALIGN | Match each source clause to its counterpart in the supporting document by content, not by section number or table row position | Source row 7 of the Deliverables table (`DEL-7`) aligns to the supporting document's row 5, despite the position shift |
| 3 | CLASSIFY | Assign ADDED, REMOVED, CHANGED or UNCHANGED to each unit | `ELIG-1` (years' experience, 5 → 7) is CHANGED; `SCOPE-7` (catering services) is ADDED |
| 4 | JUDGE | Mark material yes/no: does the change affect eligibility, price, or technical response | `ELIG-1` is material yes; `TC-1` (unchanged governing law) is material no |
| 5 | RETRIEVE | Locate the old clause's exact page and quote in the supporting document for every CHANGED unit | `COMM-6`'s old text is on supporting p.7: "No liquidated damages clause applies to this engagement." |
| 6 | GENERATE | Write one finding per unit in the version-docs finding shape | `actuals/findings/COMM-6.md` |

74 units in total, all drawn from the source document — the supporting document has no clause without a source counterpart, so this pack has no REMOVED units, unlike the ABB-style register packs where whole sections can be withdrawn. The reissue instead adds units (a sixth dining hall, catering services, food recovery) and changes existing ones (eligibility thresholds, insurance minimums, commercial terms, evaluation weights) without deleting any original obligation outright — with the single exception of the liquidated-damages statement at `COMM-6`, which is classified CHANGED rather than REMOVED-then-ADDED, since one clause replaces the other in the same position.
