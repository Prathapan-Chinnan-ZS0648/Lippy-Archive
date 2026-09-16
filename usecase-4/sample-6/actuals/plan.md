---
skill: version-compare
confidence: HIGH
candidates: version-compare (HIGH); question-answer (LOW); compliance-assessment (LOW)
verified-by: automated cross-check pass
verified-on: 2026-09-15
---
# Plan of Action · version 1

| # | Operation | What it does on this project | Example |
| 1 | UNDERSTAND | Read every clause of the source, 178 units, by the source's own section numbering, grouped by section and subsection | Section 5.7's SOC monitoring bullet becomes unit `TECH-24` |
| 2 | ALIGN | Match each source clause to its counterpart in the supporting document by content, not by the document's own (unreliable) internal Table of Contents page numbers or by table row position | Appendix C's PE-licensure row aligns to the supporting document's same row despite shifting from page 14 to page 15 |
| 3 | CLASSIFY | Assign ADDED, REMOVED, CHANGED or UNCHANGED to each unit | `TECH-16` (removing the on-premise hosting option) is CHANGED; `TECH-24` (new SOC monitoring requirement) is ADDED |
| 4 | JUDGE | Mark material yes/no: does the change affect eligibility, price, or technical response | `ELIG-1` is material yes; `TC-1` through `TC-8` (unchanged legal boilerplate) are material no |
| 5 | RETRIEVE | Locate the old clause's exact page and quote in the supporting document for every CHANGED unit | `COMM-6`'s old text is on supporting p.11: "Liquidated damages: 0.25% of total contract value per week…" |
| 6 | GENERATE | Write one finding per unit in the version-compare finding shape | `actuals/findings/TECH-24.md` |

178 units in total, all drawn from the source document. Appendix E's 15/16-row corridor inventory table is a deliberate exception to one-unit-per-clause: it is grouped into 4 units (totals, the new corridor, and the two revised corridors) rather than one unit per row, since it is a supporting data table rather than a set of separately negotiated requirements — this grain decision is recorded in `pivot.md` rather than left implicit.
