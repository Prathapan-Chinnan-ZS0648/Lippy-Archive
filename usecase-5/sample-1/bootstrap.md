# Assent Steel AD-3010-C-330030-SHT-004 shop drawing revision comparison

```
skill: drawing-comparison
domain: offshore steel structure fabrication — shop drawing revision comparison
source: documents/source/AD-3010-C-330030-SHT-004-REV4.pdf
supporting: documents/supporting/AD-3010-C-330030-SHT-004-REV3.pdf
scale: ADDED, REMOVED, CHANGED, UNCHANGED
absence: n/a                            every callout of the source is classified against the supporting drawing; see skills/drawing-comparison.md
labels: TITLE-BLOCK, NOTES, STRUCTURAL-MEMBER
pages: one physical sheet is one page (PDF rule, design section 6); each revision of this drawing is a single sheet, so 1 page per document
state: verified                        checker-equivalent pass done by hand and recorded below; see pivot.md § Agreement and § Method — not the two-independent-human-reader standard of design section 8. Not signed.
signed-by: —
classification: customer-confidential  supplied by Assent Steel for this project; not public-synthetic like the usecase-4 samples
profile: superseded-document 1 (REV3 itself, kept in supporting/); revision-cloud-untagged 2 (MEMB-4, MEMB-5 — connection callouts changed with no cloud drawn); already-communicated marker 1 (the Notes-box "(*)" legend, NOTE-1, itself new in REV4); reformat control case 1 (CTRL-1, El 112.800 plan); repeated-callout ambiguity 3 (MEMB-10, MEMB-11, MEMB-12 — see pivot.md § 4, exact grid row not yet independently confirmed); near-miss 0; contradiction 0; stated-absence 0; spilled-table 0 (single sheet, no table spans a page break); figure-answer 14 of 17 findings (all MEMB-* and CTRL-* units); out-of-pack cross-reference 1 (Notes box item 1, "SEE SHEET 001", not in this pack)
profile-vocabulary: see skills/drawing-comparison.md § Pack profile for the canonical drawing-comparison failure-mode names this line uses
```

**REV4 (`AD-3010-C-330030-SHT-004-REV4.pdf`) is the SOURCE document** — it is the current issue a fabricator would actually build from, and its callouts are what is being answered. **REV3 (`AD-3010-C-330030-SHT-004-REV3.pdf`) is kept as a SUPPORTING document** — it is the prior state a callout is compared against, not itself the thing being fabricated from.

The pack declares its own answer shape. The scale, the absence word, and the unit/label/finding-shape declarations live in `skills/drawing-comparison.md` and are read from there by the scorer, per Lippy Archive design revision 3 section 5.

## Brief

### Task

Compare `AD-3010-C-330030-SHT-004`, Rev 3 (issued for construction 20.04.2026, now SUPPORTING) against the same sheet's Rev 4 (issued for construction 27.07.2026, now SOURCE) — a steel structure plan for Utilities Unit 3010, AL Omairah Island, Lower Zakum Long Term Development, Plan Phase-1 (LZ LTDP-1) EPC Works Package 2, supplied by Assent Steel as the shop-drawing fabricator's working pair.

For every callout that differs between the two revisions, produce a finding (`actuals/findings/<id>.md`, in the shape declared by `skills/drawing-comparison.md`) that states:

- what changed (ADDED, REMOVED, or CHANGED),
- the exact callout and grid position in REV3 (where it existed),
- the exact callout and grid position in REV4 (where it exists),
- whether the change is material to fabrication (yes/no), and
- one line of reasoning for the materiality call.

Callouts that carried forward between revisions with no substantive difference are also reported, marked UNCHANGED, as control cases — the drawing equivalent of `version-compare`'s renumbering control case — so a drawing-comparison tool's false-positive rate can be checked against known cases without transcribing all ~100+ identical member callouts on this sheet.

### Context

Assent Steel is the steel structure fabricator for this package. The drawing shows two plan views on one A1 sheet — Plan EL. 111.500 (T.O.S.) and Plan EL. 112.800 (T.O.S.) — covering a narrow, tall steel platform/walkway structure (grid 1–2 across, grid A–F along, with an unlabelled intermediate column line at the midpoint of grid 1–2). Both Rev 3 and Rev 4 are stamped "ISSUED FOR CONSTRUCTION": Rev 4 is a second, corrective IFC issue carrying a small number of member and connection changes plus one drawing-title simplification, not a full re-design. Rev 4 introduces a "SYMBOLOGY" legend not present in Rev 3, stating that clouds marked with an asterisk `(*)` indicate changes already communicated to the fabricator ahead of the formal reissue.

### What counts as a unit

See `skills/drawing-comparison.md`. In short: a unit is one callout (a title-block field, a revision-table row, a Notes-box item, or a member/connection/dimension label on a plan view) a careful reader would point to independently, identified by its view and grid position, not by its text alone — several callouts on this sheet share identical member-size and connection-code text at different grid positions (see the `repeated-callout ambiguity` pack-profile entry).

### What must not happen

- A callout must not be marked CHANGED because a neighbouring revision cloud was cleared and its label reflowed to a new position on the sheet with no wording change (see `CTRL-1`, the El 112.800 plan's Grid A / column-2 node, where Rev 3's "HANDRAIL (TYP.)" and "BW / L80x80x8 (-50) / (TYP.) U.N.O." labels swap vertical order once their Rev 3 clouds are cleared in Rev 4).
- A callout must not be treated as unchanged just because it carries no revision cloud — `MEMB-4` and `MEMB-5` (the two `UB457x191x74` connection weld/bolt counts at the Grid D node) both changed value in Rev 4 with no cloud drawn around either one.
- Three callouts in this pack (`MEMB-10`, `MEMB-11`, `MEMB-12`) are confirmed CHANGED by the drawing's own text layer — a weld/bolt count `(30N 10V)` was added where Rev 3 printed no count — but this pack's single-pass read has not independently pinned each one's exact grid row among the sheet's many visually identical `UC203x203x46 (-120)` column callouts; they are recorded `confidence: UNSURE` pending a second reader, per `pivot.md` § 4, rather than guessed at.

### Source of truth

The two drawing PDFs themselves are authoritative. Every finding in `actuals/findings/` was checked directly against the page content of the REV3 and REV4 PDFs — both the text layer (`pdftotext`) and a rendered raster image of the sheet, since the great majority of this drawing's content exists only in the plan graphic, not as extractable running text.

### A note on the supplied files

The two PDFs as supplied under `/home/kowsalya.nachimuthu@zucisystems.com/Downloads/Assent/Intics 03.09.26/Drawings comparison/Shop drawing comparison/` were not valid PDF files as saved — each one is a raw HTTP `multipart/form-data` body (a DocuSign download artifact) with a form-data boundary and headers wrapped around the real PDF bytes. Both were repaired by extracting the byte span from `%PDF-` to the final `%%EOF` before they could be opened, checked, or read by any tool; see `prompting.md` and `pivot.md` § Method for the exact repair and the digests of the repaired files now held in `documents/`.

## Operational guidelines

1. Track every instruction received in `prompting.md`.
2. Record every decision with an explicit yes or no in `pivot.md`, including the reader-agreement table required by the Lippy Archive verification standard.
3. Keep `file-index.md` current for every file added or changed, including its digest.
4. Read the sheet from the PDF (text layer and rendered raster), never from a partial extraction alone; count pages from 1 in the file (this pack: 1 page per document).
5. A run never edits `actuals/`; a person never edits `runs/`.
6. Every actual carries `verified-by`, `verified-on` and `confidence` in its front matter; twin pages also carry `verification`.
