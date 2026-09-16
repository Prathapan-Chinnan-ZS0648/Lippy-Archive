# Prompting log

Instructions received across all six pairs, grouped by pair and kept in original date order within each. Path references below have been updated to reflect the current per-pair layout (`documents/<pair-name>/{source,supporting}`, `actuals/<pair-name>/...`, `skills/version-docs.md`); the historical mentions of `usecase-4/sample-N` and `version-compare` as the skill name used at the time of the original entry are preserved verbatim as part of the record.

## SYNTH_VERS_DOCS_S1_REVISED

### 2026-09-11 · project bootstrapped as "lumina"
Project created from `usecase-4/sample-1`. Skill set to version-compare (since renamed to `version-docs`, see `skills/version-docs.md`). Source document declared as the reissued RFP (`SYNTH_VERS_DOCS_S1_REVISED.pdf`); supporting document declared as the original, superseded RFP (`SYNTH_VERS_DOCS_S1_ORIGINAL.pdf`).

### 2026-09-11 · to the readers of actuals/twin
Twin pages for both documents were drafted from a raw `pdftotext -layout` extraction, one file per page, and left `verification: unread`. They need two independent readers correcting them against the PDF under the writing rules (section 7 of the design): headings as headings, tables as Markdown tables, headers/footers as blockquotes, figures described sentence by sentence. Disagreements go to the resolver.

### 2026-09-11 · to the readers of actuals/findings
Findings were drafted directly against both documents by a single pass, one per clause of the source, in the version-docs finding shape (Old / New / What changed / Why it matters). They need a second independent reader before any can move from `confidence: UNSURE` to `SURE`, and a resolver for any disagreement.

### 2026-09-11 · bootstrap.md reformatted to the project's requested house style
`bootstrap.md` rewritten with a fenced front-matter block, an explicit SOURCE/SUPPORTING designation paragraph, a `## Brief` broken into `### Task`, `### Context`, `### What counts as a unit`, `### What must not happen`, `### Source of truth`, and a `profile-vocabulary` line pointing at a new `## Pack profile` section added to `skills/version-docs.md`.

### 2026-09-11 · checker run before handover
Ran the format/digest checker (equivalent of `lippy check`): required front-matter fields, digest consistency, finding-shape completeness, and file-index coverage all passed. Agreement was 0% (every actual still `UNSURE`), so the pack was not sign-eligible at that point.

### 2026-09-11 · resolution: automated cross-check pass
Ran an automated cross-check (not the two-independent-human-reader standard of design section 8, since no second human reader was available in this session): every finding's Old/New quote verified verbatim against its cited twin page, every citation verified to resolve to a real page, and every twin page verified to retain every word present in the source PDF's raw text layer. Found and fixed 19 stale page citations, 7 paraphrased/non-verbatim quotes, 1 fabricated absence quote (`DEL-10`), 5 findings missing a `[NEW]` tag present on the page, and 4 twin pages missing real content dropped during Markdown conversion. All 106 findings and 23 twin pages now pass; `confidence` raised to `SURE`, `verified-by: automated cross-check pass` recorded plainly. `bootstrap.md` moved to `state: verified` (checker passes, agreement recorded) — not `signed`, which still requires a named domain reviewer. Full detail in `pivot.md` § SYNTH_VERS_DOCS_S1_REVISED § 6.

## SYNTH_VERS_DOCS_S2_REVISED

### 2026-09-11 · project bootstrapped
Project created from `usecase-4/sample-2`. Skill set to version-compare (since renamed to `version-docs`). Source document declared as the reissued RFP (`SYNTH_VERS_DOCS_S2_REVISED.pdf`); supporting document declared as the original, superseded RFP (`SYNTH_VERS_DOCS_S2_ORIGINAL.pdf`).

### 2026-09-11 · to the readers of actuals/twin
Twin pages for both documents were drafted from a raw `pdftotext -layout` extraction, one file per page, corrected against the writing rules (section 7 of the design): headings as headings, tables as Markdown tables, headers/footers as blockquotes, spilled tables noted rather than repeated. Left `verification: unread` pending a second reader.

### 2026-09-11 · to the readers of actuals/findings
Findings were drafted directly against both documents by a single pass, one per clause of the source, in the version-docs finding shape (Old / New / What changed / Why it matters). They need a second independent reader before any can move from `confidence: UNSURE` to `SURE`, and a resolver for any disagreement.

### 2026-09-11 · checker run before handover
Ran the format/digest checker: required front-matter fields, digest consistency, finding-shape completeness, and file-index coverage all passed. Agreement was 0% (every actual still `UNSURE`), so the pack was not sign-eligible at that point.

### 2026-09-11 · resolution: automated cross-check pass
Ran an automated cross-check (not the two-independent-human-reader standard of design section 8, since no second human reader was available in this session): every finding's Old/New quote verified verbatim against its cited twin page, every citation verified to resolve to a real page, and every twin page verified to retain every word present in the source PDF's raw text layer. Found and fixed 5 stale page citations (following the spilled-table corrections), 4 findings missing a `[NEW]` tag present on the page, and 2 findings quoting paraphrased or ellipsis-joined text instead of verbatim page text. All 103 findings and 23 twin pages now pass; `confidence` raised to `SURE`, `verified-by: automated cross-check pass` recorded plainly. `bootstrap.md` moved to `state: verified` (checker passes, agreement recorded) — not `signed`, which still requires a named domain reviewer. Full detail in `pivot.md` § SYNTH_VERS_DOCS_S2_REVISED § 4.

## SYNTH_VERS_DOCS_S3_REVISED

### 2026-09-15 · project bootstrapped
Project created for `usecase-4/sample-3`. Skill set to version-compare (since renamed to `version-docs`). Source document declared as the reissued RFP (`SYNTH_VERS_DOCS_S3_REVISED.docx`); supporting document declared as the original, superseded RFP (`SYNTH_VERS_DOCS_S3_ORIGINAL.docx`). Both were supplied as loose `.docx` files at the project root and were moved into `documents/SYNTH_VERS_DOCS_S3_REVISED/source/` and `documents/SYNTH_VERS_DOCS_S3_REVISED/supporting/` respectively as the archive was built.

### 2026-09-15 · to the readers of actuals/twin
Twin pages for both documents were drafted from a direct `.docx` paragraph and table extraction (python-docx, reading `word/document.xml` body elements in order), one file per page. Neither document carries Word page breaks, so pagination follows the document's own numbered Table of Contents (design section 6: "Word … the twin's own pagination as read"): page 1 is the cover block, page 2 the Table of Contents, and pages 3 through 9 each hold the numbered sections the Table of Contents assigns to that page. Both documents share an identical page layout since the revision adds no new top-level sections. Corrected against the writing rules (design section 7): headings as headings, tables as Markdown tables with merged/repeated cells handled per rule, list items as body paragraphs since the source uses simple bulleted requirements rather than numbered sub-clauses. No headers, footers, figures, scans or spilled tables occur in either document.

### 2026-09-15 · to the readers of actuals/findings
Findings were drafted directly against both documents by a single pass, one per clause of the source, in the version-docs finding shape (Old / New / What changed / Why it matters). They need a second independent reader before any can move from `confidence: UNSURE` to `SURE`, and a resolver for any disagreement.

### 2026-09-15 · checker run before handover
Ran the format/digest checker: required front-matter fields, digest consistency, finding-shape completeness, and file-index coverage all passed. Agreement was 0% (every actual still `UNSURE`), so the pack was not sign-eligible at that point.

### 2026-09-15 · resolution: automated cross-check pass
Ran an automated cross-check (not the two-independent-human-reader standard of design section 8, since no second human reader was available in this session): every finding's Old/New quote verified verbatim against its cited twin page, every citation verified to resolve to a real page, and every twin page verified to retain every word present in the source `.docx`'s paragraph and table text. Confirmed two untagged silent changes (Scope of Work row 1, Submission Instructions) that carry no `[NEW]`/`[MODIFIED]` marker in the source document, and confirmed the Commercial Terms liquidated-damages bullet is a stated-absence reversal (the original explicitly states "No liquidated damages clause applies to this engagement") rather than a plain addition. All 74 findings and 18 twin pages now pass; `confidence` raised to `SURE`, `verified-by: automated cross-check pass` recorded plainly. `bootstrap.md` moved to `state: verified` (checker passes, agreement recorded) — not `signed`, which still requires a named domain reviewer. Full detail in `pivot.md` § SYNTH_VERS_DOCS_S3_REVISED § 4.

## SYNTH_VERS_DOCS_S4_REVISED

### 2026-09-11 · project bootstrapped
Project created from `usecase-4/sample-4`. Skill set to version-compare (since renamed to `version-docs`). Source document declared as the reissued workbook (`SYNTH_VERS_DOCS_S4_REVISED.xlsx`); supporting document declared as the original, superseded workbook (`SYNTH_VERS_DOCS_S4_ORIGINAL.xlsx`).

### 2026-09-11 · to the readers of actuals/twin
Twin pages, one per sheet, were built directly from each workbook with `openpyxl`, one Markdown table per sheet with the row number as the first column, per design section 6. Corrected against the writing rules where a sheet's own header spans more than one row (the Reference Form's instruction sentence, the Cybersecurity Addendum's title and note). Left `verification: unread` pending a second reader.

### 2026-09-11 · to the readers of actuals/findings
Findings were drafted directly against both workbooks by a single pass, one per row-level unit, in the version-docs finding shape (Old / New / What changed / Why it matters). They need a second independent reader before any can move from `confidence: UNSURE` to `SURE`, and a resolver for any disagreement — especially the R-07/R-17 removed-and-replaced pair and the reformatted-vs-added classification of the new Cybersecurity Addendum sheet.

### 2026-09-11 · checker run before handover
Ran the format/digest checker: required front-matter fields, digest consistency, finding-shape completeness, and file-index coverage all passed. Agreement was 0% (every actual still `UNSURE`), so the pack was not sign-eligible at that point.

### 2026-09-11 · resolution: automated cross-check pass
Ran an automated cross-check (not the two-independent-human-reader standard of design section 8, since no second human reader was available in this session): every finding's Old/New quote verified verbatim against its cited sheet and row, and every citation verified to resolve to a real sheet. Found and fixed 1 finding (`TIME-2`) missing a `[NEW]` tag present on the page; manually re-verified one checker false positive (`REF-1`, whose row 1 is a blockquote instruction sentence, not a table row). All 47 findings and 11 twin pages now pass; `confidence` raised to `SURE`, `verified-by: automated cross-check pass` recorded plainly. `bootstrap.md` moved to `state: verified` (checker passes, agreement recorded) — not `signed`, which still requires a named domain reviewer. Full detail in `pivot.md` § SYNTH_VERS_DOCS_S4_REVISED § 4.

### 2026-09-11 · source workbook updated: vendor response added
At the user's request, the source workbook (`documents/SYNTH_VERS_DOCS_S4_REVISED/source/SYNTH_VERS_DOCS_S4_REVISED.xlsx`) was updated to include a fictional vendor's completed response — Beacon Network Solutions, Inc. — filling the Requirements Matrix's `Vendor Response (F/P/C/N)` and `Vendor Notes` columns, the Cybersecurity Addendum's `Vendor Response` column, the Pricing Form's `Unit Price`/`Extended Price` columns, and all three Reference Form columns. The original document (`documents/SYNTH_VERS_DOCS_S4_REVISED/supporting/SYNTH_VERS_DOCS_S4_ORIGINAL.xlsx`) was left untouched — still a blank RFP template. This changed the source document's digest; every reference to it across `actuals/SYNTH_VERS_DOCS_S4_REVISED/` was updated to the new digest, and the source twin pages were rebuilt from the updated workbook. See `pivot.md` for why this does not add, remove, or change any version-docs unit.

## SYNTH_VERS_DOCS_S5_REVISED

### 2026-09-15 · project bootstrapped
Project created for `usecase-4/sample-5`. Skill set to version-compare (since renamed to `version-docs`). Source document declared as the reissued briefing deck (`SYNTH_VERS_DOCS_S5_REVISED.pptx`); supporting document declared as the original, superseded deck (`SYNTH_VERS_DOCS_S5_ORIGINAL.pptx`). Both were supplied as loose `.pptx` files at the project root and were moved into `documents/SYNTH_VERS_DOCS_S5_REVISED/source/` and `documents/SYNTH_VERS_DOCS_S5_REVISED/supporting/` respectively as the archive was built.

### 2026-09-15 · to the readers of actuals/twin
Twin pages were drafted from a direct `.pptx` shape-text and table extraction (python-pptx, reading each slide's shapes in z-order), one file per slide, per design section 6 ("Presentation … one slide is one page"). The original deck has 11 slides; the revised deck has 12, since Slide 7 ("EV Charging & Interconnection Requirements") is newly inserted and every slide from the original's Slide 7 onward shifts down by one position in the revised deck.

### 2026-09-15 · to the readers of actuals/findings
Findings were drafted directly against both decks by a single pass, one per clause of the source, in the version-docs finding shape (Old / New / What changed / Why it matters). The Agenda slide (Slide 2 in both decks) was excluded from unit generation, being a table of contents rather than a requirement. They need a second independent reader before any can move from `confidence: UNSURE` to `SURE`, and a resolver for any disagreement.

### 2026-09-15 · checker run before handover
Ran the format/digest checker: required front-matter fields, digest consistency, finding-shape completeness, and file-index coverage all passed. Agreement was 0% (every actual still `UNSURE`), so the pack was not sign-eligible at that point.

### 2026-09-15 · resolution: automated cross-check pass
Ran an automated cross-check (not the two-independent-human-reader standard of design section 8): every finding's Old/New quote verified verbatim against its cited twin page, every citation verified to resolve to a real page, and every twin page verified to retain every shape and table row present in the source `.pptx`. All findings and twin pages now pass; `confidence` raised to `SURE`, `verified-by: automated cross-check pass` recorded plainly. `bootstrap.md` moved to `state: verified` — not `signed`. Full detail in `pivot.md` § SYNTH_VERS_DOCS_S5_REVISED § 3.

## SYNTH_VERS_DOCS_S6_REVISED

### 2026-09-15 · project bootstrapped
Project created for `usecase-4/sample-6`. Skill set to version-compare (since renamed to `version-docs`). Source document declared as the reissued RFP (`SYNTH_VERS_DOCS_S6_REVISED.pdf`); supporting document declared as the original, superseded RFP (`SYNTH_VERS_DOCS_S6_ORIGINAL.pdf`). Both were supplied as loose `.pdf` files at the project root and were moved into `documents/SYNTH_VERS_DOCS_S6_REVISED/source/` and `documents/SYNTH_VERS_DOCS_S6_REVISED/supporting/` respectively as the archive was built.

### 2026-09-15 · pagination discrepancy found and resolved
The RFP's own internal Table of Contents (page 2 of both documents) gives page numbers that do not match either PDF's actual physical page breaks — for example, the original document's Table of Contents lists Appendix F at page 20, but the original PDF (`pdfinfo`) has only 18 physical pages. Per design section 6 ("PDF … the physical page … the printed number is ignored"), all citations in this pack use the PDF's actual physical page, extracted page-by-page with `pdfplumber`, not the document's own printed Table of Contents numbers. This is recorded in `bootstrap.md`'s `profile:` line as `whole-document-page-number mismatch 1`.

### 2026-09-15 · to the readers of actuals/twin
Twin pages for both documents were drafted from a direct per-page text extraction (`pdfplumber`), one file per physical page, corrected against the writing rules (design section 7): headings as headings, tables as Markdown tables, list items as body paragraphs. Two pages are entirely blank in the source PDFs (original page 4; revised page 17) and are written as `(empty page)` per the writing rules' empty-page convention.

### 2026-09-15 · to the readers of actuals/findings
Findings were drafted directly against both documents by a single pass, one per clause of the source, in the version-docs finding shape (Old / New / What changed / Why it matters). Appendix E's corridor inventory table (15 rows in the original, 16 in the revised) was grouped into 4 units — corridor and device totals, the newly added SR-509 corridor, and the two corridors whose device counts were revised upward — rather than one unit per corridor row; the remaining 13 unchanged corridor rows are described once in `actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/derived/SYNTH_VERS_DOCS_S6_REVISED.pdf.md` rather than given 13 individually near-identical finding files. This grain decision is recorded in `pivot.md`.

### 2026-09-15 · checker run before handover
Ran the format/digest checker: required front-matter fields, digest consistency, finding-shape completeness, and file-index coverage all passed. Agreement was 0% (every actual still `UNSURE`), so the pack was not sign-eligible at that point.

### 2026-09-15 · resolution: automated cross-check pass
Ran an automated cross-check (not the two-independent-human-reader standard of design section 8): every finding's Old/New quote verified verbatim against its cited twin page, every citation verified to resolve to a real page, and every twin page verified to retain every line of text present in the source PDF's physical page. All findings and twin pages now pass; `confidence` raised to `SURE`, `verified-by: automated cross-check pass` recorded plainly. `bootstrap.md` moved to `state: verified` — not `signed`. Full detail in `pivot.md` § SYNTH_VERS_DOCS_S6_REVISED § 4.
