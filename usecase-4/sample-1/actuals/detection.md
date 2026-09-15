---
skill: version-compare
confidence: HIGH
candidates: version-compare (HIGH); question-answer (LOW)
verified-by: automated cross-check pass
verified-on: 2026-09-11
---
# Detection

The source document (`documents/source/SYNTH_VERS_DOCS_S1_REVISED.pdf`) declares itself, on its cover page, "REVISED ISSUE – SUPERSEDES RFP-BRG-2026-0231" and carries the R1 suffix of the supporting document's RFP number (RFP-BRG-2026-0231-R1 vs. RFP-BRG-2026-0231). It marks most of its own clauses inline as `[NEW]`, `[MODIFIED]` or `[NEW SECTION]`. This is a reissue of the same procurement, not a new RFP and not a question list to be answered from evidence — the task is to say what changed between the two issues and why it matters to a vendor, which is exactly the version-compare skill's shape, as declared in `skills/version-compare.md`.

question-answer was considered and rejected: nothing in either document poses questions to be answered from supporting evidence; both are RFP text. See `bootstrap.md` for the full brief and `pivot.md` § Method for how source/supporting were assigned.
