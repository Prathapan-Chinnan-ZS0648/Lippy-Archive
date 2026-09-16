## Method
Source = revised RFP (`SYNTH_VERS_DOCS_S6_REVISED.pdf`); supporting = original RFP (`SYNTH_VERS_DOCS_S6_ORIGINAL.pdf`), marked superseded. Skill = version-compare. — yes, project bootstrap, 2026-09-15

## Agreement
| stage | files | both readers agreed | resolved by resolver | resolved by automated cross-check | still UNSURE |
|---|---|---|---|---|---|
| twin | 37 | 0 | 0 | 37 | 0 |
| derived / section-map | 3 | 0 | 0 | 3 | 0 |
| findings | 178 | 0 | 0 | 178 | 0 |

No second human reader or human resolver has touched this pack. The "resolved by automated cross-check" column (2026-09-15, see entry 4 below) is a distinct method from the design's two-independent-reader standard (section 8).

## 1 · The document's own Table of Contents page numbers do not match the PDF's physical pages
Both documents' internal Table of Contents (page 2) give printed page numbers that do not correspond to the PDF's actual page breaks: the original's Table of Contents lists Appendix F at printed page 20, but the original PDF has only 18 physical pages (confirmed by `pdfinfo`). Every citation in this pack uses the physical page, extracted page-by-page with `pdfplumber`, per design section 6 ("PDF … the physical page … the printed number is ignored"). Counted in `bootstrap.md`'s `profile:` line as `whole-document-page-number mismatch 1`. — yes, single-pass draft, 2026-09-15

## 2 · Appendix E's corridor inventory table is grouped into 4 units, not one per row
Appendix E lists 15 highway corridors in the original and 16 in the revised document (adding SR-509 as C-16), each with CCTV, DMS, and ramp meter counts. Of these, only the totals row, the new C-16 row, and two rows with revised device counts (C-04, C-10) actually differ between documents; the remaining 13 rows are byte-for-byte identical. Rather than writing 15 or 16 near-identical finding files — 13 of which would say nothing but "UNCHANGED" — this pack groups the table into 4 units: `APPE-1` (totals), `APPE-2` (the new C-16 corridor), `APPE-3` (C-04's revised device counts), and `APPE-4` (C-10's revised ramp meter count). The 13 unchanged rows are listed once, for completeness, in `actuals/twin/derived/SYNTH_VERS_DOCS_S6_REVISED.pdf.md` rather than given individual finding files. This is a deliberate grain decision under the design's own principle that "the units of a source are its knowledge units, and their grouping is part of the truth, not a display choice" (design section 4) — a device-inventory appendix's rows are data, not separately negotiated requirements, unlike a compliance register's rows. Counted in `bootstrap.md`'s `profile:` line as `packed-appendix-row-grouping 1`. — yes, single-pass draft, 2026-09-15

## 3 · FR-07 and FR-08 changing priority is CHANGED, not ADDED/REMOVED/a new row
The Functional Requirements Matrix (Section 6) keeps every requirement's ID and text identical between documents; the only difference for FR-07 ("Role-based dashboard customization") and FR-08 ("Mobile app for field technician device diagnostics") is that their Priority column moves from "Desired" to "Mandatory". Both are tracked as CHANGED, material yes, rather than being mistaken for new rows (they existed in the original) or removed rows (they still exist in the revision) — the skill's own rule (`skills/version-compare.md`, "The rule") that a clause is CHANGED "only when its substance differs" applies here to the priority field, not just prose text. — yes, single-pass draft, 2026-09-15

## 4 · Automated cross-check pass, 2026-09-15: what it was and what it found
Not the two-independent-reader standard of design section 8. A scripted pass checked: (1) every finding's `Old`/`New` quote appears verbatim on its cited twin page, and every citation resolves to a real page; (2) every twin page's Markdown conversion retains every line of text present in the source PDF's physical page, extracted independently with `pdfplumber`. All 178 findings and 37 twin pages pass both checks; `confidence` raised from `UNSURE` to `SURE` accordingly, `verified-by: automated cross-check pass` recorded plainly.

The first run of this check found 3 defects, all fixed before the pass above:
- **`COMM-3`'s Old and New quotes** had been written as single pipe-joined lines summarizing the whole 6- and 7-line payment schedule, rather than one line per payment milestone as the twin pages actually show the table; fixed to quote each milestone line separately.
- **`INTRO-1`'s Old and New quotes** used curly quotation marks ("CDOT") copied from the source PDF's own typography, while the twin pages had been transcribed with straight quotation marks per this project's transcription convention; fixed by aligning the finding quotes to the twin pages' straight-quote convention, since the twin page — not the finding — is the citable record of a page's text.
- **`TC-9`'s New quote** included a trailing "[NEW]" tag that appears on the clause's heading ("14.9 Cybersecurity Incident Notification [NEW]") but not in the paragraph of body text actually quoted; fixed by removing the tag from the quoted body text.

None of this changes what a second human reader still needs to check: whether each ADDED/REMOVED/CHANGED/UNCHANGED call and each materiality judgment is the *right* call — including, for this pack specifically, whether the grouped Appendix E units in entry 2 above should instead be split further (e.g., a dedicated unit for the statewide network-mileage figure at `INTRO-1` cross-referenced against the device totals at `APPE-1`), and whether `COMM-2`'s contract-term extension (6 to 7 years) should be marked material yes rather than no given how much larger the resulting total contract value becomes. — yes, 2026-09-15
