---
skill: version-compare
title: Version compare
intent: Classify every clause of a reissued document against its earlier revision, and say what changed and why it matters.
shape: CLAUSE_DIFF
grain: one clause
scale: ADDED, REMOVED, CHANGED, UNCHANGED
recommend-when: ADDED, REMOVED, CHANGED with material=yes
absence-policy: Not applicable — every clause of the source has a classification, since the source is compared against the supporting document, not asked a question it may leave unaddressed.
reading-needs: tables
world-knowledge: Not permitted.
---
# Version compare

## Steps

| # | Operation | Parameters |
| 1 | UNDERSTAND | grain=clause, id=the source document's own section numbering, group=top-level section |
| 2 | ALIGN | match each source clause to its counterpart in the supporting document by content, not by section number (numbering shifts with insertions) |
| 3 | CLASSIFY | into=ADDED, REMOVED, CHANGED, UNCHANGED |
| 4 | JUDGE | field=material, guide=does the change affect a vendor's eligibility, price, or technical response |
| 5 | RETRIEVE | query=clause text, over=supporting document, to locate the old text for CHANGED and REMOVED clauses |
| 6 | GENERATE | — |

## The rule

The source document is the later, reissued document; the supporting document is the earlier, superseded one. A clause is CHANGED only when its substance differs — not when only its section number moved because of an insertion elsewhere in the document. A clause is ADDED when no counterpart exists anywhere in the supporting document, not merely under the same heading. A clause is REMOVED when the supporting document states it and the source no longer does. Inline change markers the source document places on itself (e.g. `[NEW]`, `[MODIFIED]`) are a starting draft, never a verified classification — every clause is checked against the supporting document regardless of whether it carries a marker, since unmarked clauses can still have changed silently (a number, a date, a name).

## Units

One unit per clause of the source document. Id is built from a short section mnemonic and a running number within that section (e.g. `SCOPE-6`, `ELIG-3`), assigned in the order the clause appears in the source. Where the source splits one clause of the supporting document into several, or merges several into one, each resulting source clause is its own unit, and the finding's "Old" cites every supporting clause it draws from. Table rows (e.g. the Functional Requirements Matrix, the Pricing Form) are units keyed by their own row id (`FR-07`, `A-7`) rather than a mnemonic-number pair.

For a spreadsheet source (per design section 6, one sheet is one page), each sheet's own data rows are its units, keyed by the row's own id column where one exists (`R-07`, `P-09`, `CS-01`), and by a section mnemonic plus running number where a sheet has no id column of its own (e.g. `COVER-3`, `TIME-2`, a Reference Form's field list). A row whose id is deleted outright and replaced by a new id for the same purpose (e.g. `R-07` removed, `R-17` added as its replacement) is two units, REMOVED and ADDED, not one CHANGED unit — an id is not reused across a REMOVED/ADDED pair. An entire new sheet not present in the supporting workbook is ADDED sheet-wide (one unit for the sheet's own heading/intro, plus one unit per data row within it), not folded into the sheet that precedes or follows it in workbook order.

## Labels

Not used by this skill.

## Finding shape

Old (document, page, quote) · New (document, page, quote) · What changed · Why it matters

## Pack profile

The failure modes a version-compare pack should carry, named for a `bootstrap.md` `profile:` line to count against. Adapted from the general pack-profile list in the Lippy Archive design (section 10) to the failure modes specific to comparing two document revisions rather than assessing one document against a register.

| name | what it is | what it catches |
|---|---|---|
| superseded-document | the earlier revision, kept in `documents/supporting/` so a run can be checked for not citing it as current | citing the wrong revision as authoritative |
| renumbering control case | a clause whose section number moved because of an insertion elsewhere, with no wording change | marking a clause CHANGED when only its number moved |
| reformat control case | a clause whose layout changed (e.g. prose to a table) with no wording change | marking a clause CHANGED for a formatting difference alone |
| reletter control case | a clause whose sub-item letter or numbering scheme changed with no wording change | same as renumbering, for letter/roman-numeral schemes |
| control-row grouping | several table rows that must be read as one control's sub-questions, not independent units | double-counting or mis-splitting a grouped requirement |
| near-miss | a clause in the supporting document that resembles but does not match a source clause | matching a source unit to the wrong supporting clause |
| contradiction | two clauses within the same document version that disagree with each other | picking one without flagging the conflict |
| stated-absence | a clause the supporting document explicitly says does not apply, rather than omits | treating an explicit non-applicability as silent removal |
| spilled-table | a table that spans a page break, with rows continuing on the next page | a reader treating the continuation as a new table or missing its rows |
| figure-answer | an answer or requirement stated only inside a diagram, not in text | figures dropped by a text-only reader |
| packed-cell | a single cell or clause holding more than one requirement | not applicable to this skill — version-compare units are clauses, not register cells split by a separator rule |
| placeholder-question | a register cell left blank or marked Nil, falling back to a control's own text | not applicable to this skill — there is no register or placeholder convention in an RFP's own prose |
| not-the-vendor's | a unit describing the customer's or a third party's own obligation, not the vendor's | mislabeling whose obligation a clause states |
| answer-sheet | a document that answers most units by design, requiring suppression | not applicable to this skill — neither RFP issue is itself an answer key to the other |
| sheet-added | a whole workbook sheet present in the source with no counterpart sheet in the supporting workbook | folding a new sheet's rows into an adjacent sheet, or missing the sheet's own heading/intro as a unit |
| id-reused-as-replacement | a row id removed from the source and a different row id added elsewhere for the same purpose (e.g. `R-07` removed, `R-17` added) | treating the pair as one CHANGED unit instead of a REMOVED unit and an ADDED unit |
