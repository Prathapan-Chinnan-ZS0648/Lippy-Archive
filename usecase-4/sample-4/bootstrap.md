# Meridian Public School District network, Wi-Fi & cybersecurity RFP version comparison

skill: version-compare
domain: K-12 public sector IT procurement · RFP reissue comparison
source: documents/source/SYNTH_VERS_DOCS_S4_REVISED.xlsx (RFP-MPSD-2026-0053-R1, issued April 27, 2026, 6 sheets — now also carries a completed fictional vendor response, Beacon Network Solutions, Inc.; see pivot.md § 5)
supporting: documents/supporting/SYNTH_VERS_DOCS_S4_ORIGINAL.xlsx (RFP-MPSD-2026-0053, issued February 9, 2026, 5 sheets — superseded)
scale: ADDED, REMOVED, CHANGED, UNCHANGED
absence: not applicable to this skill — every clause of the source (revised) is classified against the supporting (original)
labels: not used by this skill
pages: not applicable — this pack's documents are spreadsheets; one sheet is one page, and rows are cited by their own row number within a sheet, per design section 6
state: verified                        checker passes and agreement is recorded; see pivot.md § Agreement and § 4 — verified by an automated cross-check pass, not the two-independent-human-reader standard of design section 8. Not signed.
signed-by: —
profile: superseded-document 1 (the original is the superseded revision); renumbering control case 0; reformat control case 0; reletter control case 0; near-miss 0; contradiction 0; stated-absence 0; spilled-table 0 (not applicable — spreadsheet rows do not spill across a page break the way a PDF table does); figure-answer 0; scan 0; sheet-added 1 (Cybersecurity Addendum, not present in the original workbook); id-reused-as-replacement 1 (R-07 removed, R-17 added as its replacement)

## Brief

Meridian Public School District (MPSD) reissued its Request for Proposal for a district-wide network and Wi-Fi infrastructure refresh roughly two and a half months after the original issue, following a district-wide cybersecurity assessment completed in March 2026 and the opening of a new elementary school (Fallbrook) that added a fifteenth building to the district. The reissue adds a wholly new "Cybersecurity Addendum" sheet to the workbook, not present in the original at all, and folds cybersecurity requirements into the existing Requirements Matrix and Pricing Form as well. It removes one existing requirement outright — R-07, an on-premise-only network monitoring dashboard — and replaces it with a new requirement, R-17, for cloud-managed monitoring with mobile alerting; the revised workbook's own note says as much, but the row id is not reused, so this is a REMOVED unit and an ADDED unit, not one CHANGED unit. What is answered is every row of every sheet in the revised workbook (`documents/source/SYNTH_VERS_DOCS_S4_REVISED.xlsx`), classified as ADDED, REMOVED, CHANGED or UNCHANGED against the original workbook (`documents/supporting/SYNTH_VERS_DOCS_S4_ORIGINAL.xlsx`), so a bid or proposal team can see exactly what changed since the original without re-reading both workbooks end to end. The revised workbook marks many of its own changes inline as `[NEW]`, `[MODIFIED]`, or `[UPDATED]` — a useful starting draft, not a verified fact; every row is checked against the original regardless of whether it carries a tag, since unmarked rows can still have changed silently in a quantity, a priority, or a date. A row is CHANGED only if its substance differs, not merely because a summary count elsewhere on the same sheet changed as a side effect. A row is ADDED if no counterpart exists anywhere in the original workbook, including an entirely new sheet's own heading and every data row within it — the Cybersecurity Addendum's five requirements (`CS-01` through `CS-05`) are each their own ADDED unit, not one unit for the whole sheet. A row is REMOVED when the original states it and the revised no longer does, even where the revised workbook explicitly says what replaced it. Material yes/no marks whether the change affects a vendor's eligibility, price, or technical response, not just wording. What to produce is one finding per unit, in the version-compare finding shape: Old (document, page, quote) · New (document, page, quote) · What changed · Why it matters, where "page" for this pack means a sheet and a row number, per `skills/version-compare.md`'s spreadsheet unit rule. What not to do: do not treat the original as the truth and the revised as the deviation — the source is the revised workbook, and the original is supporting evidence for what changed; do not rely solely on the revised workbook's own inline tags; and do not treat R-07's removal and R-17's addition as a single CHANGED requirement just because the revised workbook's own note links them — they are two units.

## Operational guidelines

1. Every instruction goes in prompting.md, dated.
2. Every decision goes in pivot.md with a yes or no, who, and when.
3. file-index.md is kept current; a document's digest is recorded when it is added.
4. Pages are read from the workbook; quotes are copied exactly, cell for cell.
5. A run never edits actuals/; a person never edits runs/.
6. Every actual carries verified-by, verified-on and confidence in its front matter.
