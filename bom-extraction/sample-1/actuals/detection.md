---
skill: bom-extraction
confidence: HIGH
candidates: bom-extraction (HIGH); drawing-comparison (LOW); question-answer (LOW)
verified-by: single-reader cross-check
verified-on: 2026-09-17
---
# Detection

The input is a single 13-page "Piping & Instrumentation" drawing set (title block: "PIPING & INSTRUMENTATION", drawing numbers `D-260374-11-LEGEND1/LEGEND2/001/002/003/005/006/007/008/009/010/011/004`), issued once ("ISSUED FOR APPROVAL", Rev B, 06/01/2026) with no second revision supplied. There is nothing to compare it against — `drawing-comparison` was considered and rejected because that skill's entire shape exists to diff two revisions of the same drawing, and only one revision exists here. The task, per the user's explicit brief, is to read this one drawing set and produce a structured Bill of Materials from it: a single-document extraction task.

`question-answer` was considered (its shape — one question, one answer, in-documents yes/no — is the closest existing skill in `context.md`'s skill table to a single-document read) and also rejected: the task isn't answering a supplied list of questions against the drawing, it's enumerating every tagged item the drawing itself names, which is closer to `context.md`'s `parts-costing` skill shape ("one part or line; id = the part number or line number; Value · Unit · Evidence · Conflicts") than to `question-answer`. Neither existing skill fits cleanly, so a new skill, `bom-extraction`, was written — see `skills/bom-extraction.md` and `pivot.md` § 1.
