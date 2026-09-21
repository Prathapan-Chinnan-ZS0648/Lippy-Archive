# Detection

Document quirks and edge cases detected while building the twin and reading these
documents, ahead of judgment. Recorded here per-run; anything that recurs across
independent samples is a candidate for `skills/drawing-comparison/PatternLog.md` (see
`Bootstrap.md` §8.2, the promotion bar).

| Quirk | Where observed | Handling |
|---|---|---|
| Both source files arrived as raw HTTP `multipart/form-data` bodies (a DocuSign export artifact), not valid PDFs — no `%PDF-` header at byte 0, trailing MIME boundary after `%%EOF`. | Both `AD-3010-C-330030-SHT-004-REV3.pdf` and `-REV4.pdf` as originally supplied. | Repaired by extracting the byte span from the first `%PDF-` marker to the final `%%EOF` line before any extraction was attempted. The repaired files are what `documents/drawing-comparison/` holds; the corruption and repair are logged in `prompt-log/drawing-comparison/PromptLog.md`, not silently fixed. |
| Self-annotation via revision cloud | The source (Rev 4) marks its own changed/added callouts with a hand-drawn revision cloud, and Rev 4's Notes box adds a "SYMBOLOGY" legend explaining a new asterisk marker used alongside some clouds. | Used only as a cross-check, never as the sole basis for a verdict — every clouded and un-clouded callout was independently compared against the supporting (Rev 3) drawing's text per `skills/drawing-comparison/Skill.md`. An untagged/uncoded change (no cloud, no asterisk) is exactly what the skill's `revision-cloud-untagged` and `already-communicated marker` pack-profile entries exist to catch. |
| Grid-position identity, not text-stream order | Member callouts are figure-embedded labels positioned on a structural grid, not clauses in a document flow — the same member-size string (e.g. `UB457x191x74`) recurs many times across the sheet at different grid nodes. | Every unit was aligned to its counterpart by grid position and connection/field identity, never by text-content match alone, to avoid pairing two visually-identical but physically-different callouts. |
| Absence without a marker | A real dimension change existed at two grid nodes sharing the same ladder-cage pattern; the source's first extraction pass (`pdftotext -raw`) surfaced only one of the two occurrences of the changed values because of PDF content-stream ordering. | Caught only after an independent second pack flagged the gap; re-extracting with `pdftotext -layout` surfaced both occurrences, and a full independent text-occurrence count (`grep -c`) across both extraction modes confirmed there were exactly two, not one. Neither pack's claim was taken at face value — see `prompt-log/drawing-comparison/PromptLog.md`. |
| No printed page numbers | The sheet carries no printed page number (it is a single A1 CAD sheet, not a paginated document). | Both documents treated as 1 page each, per `context.md`'s PDF-page convention. |

`version-compare` (the only other skill configured in `FileIndex.md` at the time this
document was first judged) was considered and rejected as the skill for this use case: its
unit rule ("one clause of the source document... id = section mnemonic + running number")
and its writing rules assume headings/paragraphs/tables, not a sheet whose "clauses" are
figure-embedded labels identified by grid position. `skills/drawing-comparison/Skill.md`
was written instead — it keeps `version-compare`'s ADDED/REMOVED/CHANGED/UNCHANGED scale,
its source-is-later/supporting-is-earlier convention, and its finding shape, but redefines
the unit rule around grid position and adds pack-profile entries specific to CAD revision
clouds. This skill-selection reasoning is recorded here because it precedes and motivates
`Plan.md`'s unit list below; the skill's own content lives only in `Skill.md`, never here.
