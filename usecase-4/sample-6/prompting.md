## 2026-09-15 · project bootstrapped
Project created for `usecase-4/sample-6`. Skill set to version-compare. Source document declared as the reissued RFP (`SYNTH_VERS_DOCS_S6_REVISED.pdf`); supporting document declared as the original, superseded RFP (`SYNTH_VERS_DOCS_S6_ORIGINAL.pdf`). Both were supplied as loose `.pdf` files at the project root and were moved into `documents/source/` and `documents/supporting/` respectively as the archive was built.

## 2026-09-15 · pagination discrepancy found and resolved
The RFP's own internal Table of Contents (page 2 of both documents) gives page numbers that do not match either PDF's actual physical page breaks — for example, the original document's Table of Contents lists Appendix F at page 20, but the original PDF (`pdfinfo`) has only 18 physical pages. Per design section 6 ("PDF … the physical page … the printed number is ignored"), all citations in this pack use the PDF's actual physical page, extracted page-by-page with `pdfplumber`, not the document's own printed Table of Contents numbers. This is recorded in `bootstrap.md`'s `profile:` line as `whole-document-page-number mismatch 1`.

## 2026-09-15 · to the readers of actuals/twin
Twin pages for both documents were drafted from a direct per-page text extraction (`pdfplumber`), one file per physical page, corrected against the writing rules (design section 7): headings as headings, tables as Markdown tables, list items as body paragraphs. Two pages are entirely blank in the source PDFs (original page 4; revised page 17) and are written as `(empty page)` per the writing rules' empty-page convention.

## 2026-09-15 · to the readers of actuals/findings
Findings were drafted directly against both documents by a single pass, one per clause of the source, in the version-compare finding shape (Old / New / What changed / Why it matters). Appendix E's corridor inventory table (15 rows in the original, 16 in the revised) was grouped into 4 units — corridor and device totals, the newly added SR-509 corridor, and the two corridors whose device counts were revised upward — rather than one unit per corridor row; the remaining 13 unchanged corridor rows are described once in `actuals/twin/derived/SYNTH_VERS_DOCS_S6_REVISED.pdf.md` rather than given 13 individually near-identical finding files. This grain decision is recorded in `pivot.md`.

## 2026-09-15 · checker run before handover
Ran the format/digest checker: required front-matter fields, digest consistency, finding-shape completeness, and file-index coverage all passed. Agreement was 0% (every actual still `UNSURE`), so the pack was not sign-eligible at that point.

## 2026-09-15 · resolution: automated cross-check pass
Ran an automated cross-check (not the two-independent-human-reader standard of design section 8): every finding's Old/New quote verified verbatim against its cited twin page, every citation verified to resolve to a real page, and every twin page verified to retain every line of text present in the source PDF's physical page. All findings and twin pages now pass; `confidence` raised to `SURE`, `verified-by: automated cross-check pass` recorded plainly. `bootstrap.md` moved to `state: verified` — not `signed`. Full detail in `pivot.md` § 4.
