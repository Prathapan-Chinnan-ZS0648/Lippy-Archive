---
skill: drawing-comparison
confidence: HIGH
candidates: drawing-comparison (HIGH); version-compare (LOW)
verified-by: single-reader cross-check
verified-on: 2026-09-15
---
# Detection

Both input files are a single-sheet A1 CAD drawing, `AD-3010-C-330030-SHT-004`, at two revisions: Rev 3 (issued for construction 20.04.2026) and Rev 4 (issued for construction 27.07.2026). The later issue's own title block records a new revision-history row and its Notes box adds a "SYMBOLOGY" legend explaining an asterisk marker on revision clouds — the drawing declares itself a reissue of the same sheet, not a new drawing. Almost all of its content is graphical: two structural steel plan views built from member-size and connection-weld/bolt-count callouts positioned on a grid, plus a title block and a Notes box, with no register, no question list, and no running prose of the kind `version-compare`'s existing packs (`usecase-4`) are built from.

`version-compare` was considered and rejected as-is: its unit rule ("one clause of the source document... id = section mnemonic + running number") and its writing rules (design section 7, aimed at headings/paragraphs/tables) do not fit a sheet whose "clauses" are figure-embedded labels identified by grid position, not text position in a document flow. A new skill, `drawing-comparison`, was written instead — it keeps `version-compare`'s ADDED/REMOVED/CHANGED/UNCHANGED scale, its source-is-later/supporting-is-earlier convention, and its finding shape, but redefines the unit rule around grid position and adds pack-profile entries specific to CAD revision clouds (`revision-cloud-untagged`, `already-communicated marker`, `repeated-callout ambiguity`). See `skills/drawing-comparison.md` and `bootstrap.md`.

question-answer was not seriously considered: neither drawing poses questions to be answered from supporting evidence.
