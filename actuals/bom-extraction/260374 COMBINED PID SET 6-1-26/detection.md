# Detection

Document quirks and edge cases detected while building the twin and reading this
document, ahead of extraction. Recorded here per-run; anything that recurs across
independent samples is a candidate for `skills/bom-extraction/patternLog.md` (see
`bootstrap.md` §8.2, the promotion bar).

| Quirk | Where observed | Handling |
|---|---|---|
| Single document, no comparison pair | This is a single 13-page P&ID set, issued once ("ISSUED FOR APPROVAL", Rev B, 06/01/2026), with no second revision or answering document supplied at all. | `version-compare` and `drawing-comparison` were both considered and rejected — their entire shape exists to diff a source against a supporting document, and no supporting document exists here. `question-answer` was also considered and rejected (the task isn't answering a supplied question list, it's enumerating every tagged item the drawing itself names). A new skill, `bom-extraction`, was written instead. `fileIndex.md`'s `supporting_document_path: "n/a"` declares this explicitly, per `bootstrap.md` §2. |
| Non-sequential sheet order | The combined PDF's 13 pages, in file order, carry drawing numbers LEGEND1, LEGEND2, -001, -002, -003 (blank), -005, -006 (blank), -007, -008 (blank), -009, -010, -011, -004 (blank) — `-004` appears last, after `-011`, not between `-003` and `-005` as its number would suggest. | Recorded as fact, not assumed away: both `-003` and `-004` are intentionally blank, so this ordering quirk has no BOM content consequence in this pack, but a future pack over a different drawing set must not assume page order tracks drawing-number order. |
| Legend-dependent tag grammar | This set publishes two Legend sheets (`D-260374-11-LEGEND1`, `LEGEND2`) declaring exactly how to read a tag: an equipment tag is `<equipment-identifier letter(s)>-<item number>` (legend table "TYPICAL EQUIPMENT NUMBER"); an instrument tag follows ISA-style identification letters (legend table "CODING OF IDENTIFICATION LETTERS"). | Both grammars read from this set's own legend sheets, not assumed from generic P&ID convention — this project's own two-letter equipment prefixes (`CA`, `DR`) are its own choice, not a standard abbreviation list. |
| Sparse text layer | The overwhelming majority of this drawing's content exists only in the plan/schematic graphic and small hand-placed text, not as extractable running text — `pdftotext -layout` yields only 187 lines across all 13 pages. | Every extracted value cross-checked against a rendered raster image of its home sheet at readable resolution, not relied on from the text layer alone. |
| `DR-3001` — acknowledged spec gap, not guessed | `DR-3001` is labelled "DESICCANT AIR DRYER (f)" on sheet `-011`, separate from `DR-804` (which carries a full MFG/MODEL/CAPACITY row on the same sheet). The `(f)` flag, per this set's own Legend1 abbreviation table, means "furnished with associated equipment or by others." | Extracted as a real, distinct tag (its own box on the drawing, feeding the vent mufflers, not merely a duplicate label for `DR-804`), with its finding stating plainly that no independent size/capacity is given for it on this sheet — not assumed to share `DR-804`'s spec. |

`question-answer` and `drawing-comparison` (the only other skills configured at the time
this document was first judged) were both rejected as the skill for this use case — see
the "Single document, no comparison pair" row above.
