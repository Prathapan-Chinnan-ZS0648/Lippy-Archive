---
skill: drawing-comparison
title: Drawing comparison
intent: Classify every callout of a reissued engineering drawing against its earlier revision, and say what changed and why it matters to fabrication.
shape: CALLOUT_DIFF
grain: one callout (a title-block field, a note, or a member/connection annotation)
scale: ADDED, REMOVED, CHANGED, UNCHANGED
recommend-when: ADDED, REMOVED, CHANGED with material=yes
absence-policy: Not applicable — every callout of the source drawing is compared to the supporting drawing, not asked a question it may leave unaddressed.
reading-needs: figures
world-knowledge: Not permitted.
---
# Drawing comparison

Adapted from `version-compare` (see the Lippy Archive design, `context.md` section 5) to a domain where the "document" is a single large-format CAD sheet rather than running prose: a clause becomes a callout, and a section becomes a view on the sheet. Everything in `version-compare` that assumes text paragraphs is restated here for a title block, a notes box, and a plan view built from member and connection labels.

## Steps

| # | Operation | Parameters |
| 1 | UNDERSTAND | grain=callout, id=view mnemonic + grid position + running number, group=title block / notes / plan view |
| 2 | ALIGN | match each source callout to its counterpart in the supporting drawing by grid position and member/field identity, not by revision-cloud presence alone (an unclouded callout can still have changed silently) |
| 3 | CLASSIFY | into=ADDED, REMOVED, CHANGED, UNCHANGED |
| 4 | JUDGE | field=material, guide=does the change affect fabrication (member size, connection design, grid geometry) or is it presentational/administrative only |
| 5 | RETRIEVE | query=callout text or value, over=supporting drawing, to locate the old value for CHANGED and REMOVED callouts |
| 6 | GENERATE | — |

## The rule

The source drawing is the later, reissued sheet; the supporting drawing is the earlier, superseded one. A callout is CHANGED only when its value differs — not when only its on-sheet position moved because a neighbouring callout's cloud was cleared and text was reflowed for clarity. A callout is ADDED when no counterpart exists anywhere on the supporting drawing's corresponding view, not merely under the same grid line. A callout is REMOVED when the supporting drawing states it and the source no longer does.

A revision cloud and its adjacent triangle number are a starting draft of what changed, never a verified classification — every callout is checked against the supporting drawing regardless of whether it carries a cloud, since a value can change with no cloud drawn around it at all (see `MEMB-4`/`MEMB-5` in the sample pack: two connection callouts changed with no cloud). Conversely, a drawing may define its own extended meaning for a cloud marker in its Notes box (e.g. an asterisk `(*)` meaning "already communicated to the fabricator outside the formal revision") — that definition is itself a NOTE-shape callout and must be read and reported like any other, not assumed.

A drawing's own revision-history table (the "REV / DATE / DESCRIPTION" block in the title block) is read like an RFP's administrative date fields: a new row is an ADDED callout in its own right, tracked even though it is not a fabrication fact, exactly as `version-compare`'s "administrative/date fields" rule requires.

## Units

One unit per callout of the source drawing. A "page" for a drawing follows the Lippy Archive design section 6 PDF rule (one physical sheet is one page); a multi-sheet set would carry one page per sheet, but a single-sheet drawing — the common case for a shop/fabrication drawing — has exactly one page per revision.

Within that one page, a unit's id is built from a short area mnemonic and a running number:

- `TITLE-n` — a title-block field outside the revision table (drawing title, drawing number, project title, scale, etc.)
- `REV-n` — one row of the title block's own revision-history table
- `NOTE-n` — a callout in the Notes box, including any legend the drawing defines for its own revision-cloud or marker conventions
- `MEMB-n` — a member, connection, or dimension callout on a plan/elevation view, identified by view (e.g. "Plan EL. 111.500") and grid position (grid line, or the position between two named grid lines where an unlabelled intermediate line carries its own members)
- `CTRL-n` — a callout kept deliberately as an UNCHANGED (or reformat-only) control case, per the pack profile below

Grid position is part of a unit's identity, not a display choice, exactly as `version-compare`'s unit rule treats a register's own grouping as part of the truth: two callouts with byte-identical text at different grid positions on the same sheet are two different units, and a callout must not be aligned to its counterpart by text match alone when the sheet repeats that same member size and connection code at many grid positions (see "repeated-callout ambiguity" in the pack profile).

## Labels

- `TITLE-BLOCK` — a callout in the drawing's title block (including its own revision-history table)
- `NOTES` — a callout in the drawing's Notes / Symbology box
- `STRUCTURAL-MEMBER` — a callout on a plan or elevation view: a member size, a connection weld/bolt count, a dimension, or a grid/orientation marker

## Finding shape

Old (document, page, callout) · New (document, page, callout) · What changed · Why it matters

The "callout" in Old/New is the exact text as printed at that position (a member size string, a weld/bolt count, a title-block field value, a table row) — copied verbatim, the drawing equivalent of `version-compare`'s quote.

## Pack profile

Adapted from `version-compare`'s pack-profile table (itself adapted from the Lippy Archive design section 10) to the failure modes specific to comparing two revisions of the same CAD sheet.

| name | what it is | what it catches |
|---|---|---|
| superseded-document | the earlier revision, kept in `documents/supporting/` so a run can be checked for not citing it as current | citing the wrong revision as authoritative |
| revision-cloud-untagged | a callout whose value differs between revisions with no revision cloud drawn around it on the source sheet | trusting the drawing's own cloud markers as a complete change list, and missing a real fabrication-relevant change |
| already-communicated marker | a drawing-specific legend (e.g. an asterisk on a cloud) stating that some clouded changes were already communicated to the fabricator outside the formal revision | treating every clouded change as equally "new news" to the reader, when the drawing itself distinguishes already-known from newly-issued |
| reformat control case | a callout whose on-sheet position or leader routing changed (typically because an old revision's cloud was cleared and overlapping text was reflowed) with no value change | marking a callout CHANGED for a layout difference alone |
| repeated-callout ambiguity | many callouts on the same view share identical member-size and connection-code text at different grid positions | an aligner matching a changed callout to the wrong grid position because the text alone is not unique; grid position must be read independently, not inferred from text order |
| near-miss | a callout that resembles but is not the same member (same size, adjacent grid position) | matching a source unit to the wrong supporting callout |
| contradiction | two callouts on the same sheet version that disagree with each other | picking one without flagging the conflict |
| stated-absence | a callout that explicitly states a requirement does not apply, rather than omitting it | treating an explicit non-applicability as silent removal |
| spilled-table | a table (e.g. a revision-history table) that spans a page break | a reader treating the continuation as a new table or missing its rows — not applicable to a single-sheet pack, kept for a multi-sheet set |
| figure-answer | a value stated only inside the plan/elevation graphic, not in a text-extractable field | figures dropped by a text-only reader; on a drawing this is the *default* case, not the exception, since nearly every unit is figure-answer |
| out-of-pack cross-reference | a note that refers to another sheet not included in this pack (e.g. "FOR GENERAL NOTES... SEE SHEET 001") | treating an unreadable cross-reference as a silent omission rather than flagging it as out of scope |
| packed-cell | a single register cell holding more than one requirement | not applicable to this skill |
| placeholder-question | a register cell left blank or marked Nil, falling back to a control's own text | not applicable to this skill |
| not-the-vendor's | a unit describing the customer's or a third party's own obligation | not applicable to this skill in its current sample pack — a shop drawing pack for a single fabricator |
| answer-sheet | a document that answers most units by design, requiring suppression | not applicable to this skill |
