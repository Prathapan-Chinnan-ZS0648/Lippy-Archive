---
skill: version-docs
confidence: HIGH
candidates: version-docs (HIGH); question-answer (LOW)
verified-by: automated cross-check pass
verified-on: 2026-09-11
---
# Plan of Action · version 1

Steps as declared in `skills/version-docs.md`, made concrete for this project.

| # | Operation | What it does on this project | Example |
| 1 | UNDERSTAND | Read every clause of the source, 106 units, by the source's own section numbering, grouped by top-level section | Section 5.3 "Cold Chain Monitoring" becomes unit `TECH-5` |
| 2 | ALIGN | Match each source clause to its counterpart in the supporting document by content, not by section number | Source 5.4 "Hosting, Availability & Security" aligns to supporting 5.3, same heading, shifted by the inserted 5.3 Cold Chain Monitoring section |
| 3 | CLASSIFY | Assign ADDED, REMOVED, CHANGED or UNCHANGED to each unit | `ELIG-1` (minimum years' experience, 6 → 8) is CHANGED; `DEF-1` "Cold Chain" is ADDED |
| 4 | JUDGE | Mark material yes/no: does the change affect eligibility, price, or technical response | `ELIG-1` is material yes; `DEL-10` (a deliverable row split out of an existing timeline milestone) is material no, per `pivot.md` § 2 |
| 5 | RETRIEVE | Locate the old clause's exact page and quote in the supporting document for every CHANGED or REMOVED unit | `ELIG-1`'s old text is on supporting p.6: "Minimum of 6 years of experience…" |
| 6 | GENERATE | Write one finding per unit in the version-docs finding shape | `actuals/findings/ELIG-1.md` |

106 units in total: 29 ADDED, 53 CHANGED, 24 UNCHANGED, 0 REMOVED — every clause of the supporting document has a counterpart in the source, even if only as an unchanged carry-over. See `actuals/report/report.md` for the full row-by-row breakdown and `actuals/twin/derived/SYNTH_VERS_DOCS_S1_REVISED.pdf.md` for the unit list this plan operates over.
