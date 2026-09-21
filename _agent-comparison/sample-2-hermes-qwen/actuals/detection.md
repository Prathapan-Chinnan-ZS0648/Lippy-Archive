---
skill: drawing-comparison
confidence: HIGH
candidates: drawing-comparison (HIGH); version-compare (LOW)
verified-by: author cross-check (text layer + raster OCR + pixel diff); see pivot.md § Method
verified-on: 2026-09-16
verification: corrected
---
# Detection

Both input files are the same single-sheet A1 shop drawing, `AD-3010-C-330030-SHT-004`, at two revisions: Rev 3 (issued for construction 20.04.2026) and Rev 4 (issued for construction 27.07.2026). The task is a reissue comparison: classify each callout of the later issue against the earlier one, ADDED / REMOVED / CHANGED / UNCHANGED, with a fabrication-materiality judgement.

That is `drawing-comparison`, not plain `version-compare`: the documents are CAD sheets whose content is callouts in a title block, a revision-history table, a Notes box, and two plan views — not running prose clauses. `version-compare` (LOW) is only the generic parent skill; the domain-specific skill's unit rule (view + position, not text match) and its pack profile (revision clouds, already-communicated markers, repeated-callout ambiguity) are what this project exercises.

Why not `compliance-assessment` or others: no requirement register, no question list; there is exactly one source document and one superseded supporting document of the same sheet.
