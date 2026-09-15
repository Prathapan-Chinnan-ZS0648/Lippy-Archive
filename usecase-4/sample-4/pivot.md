## Method
Source = revised workbook (`SYNTH_VERS_DOCS_S4_REVISED.xlsx`); supporting = original workbook (`SYNTH_VERS_DOCS_S4_ORIGINAL.xlsx`), marked superseded. Skill = version-compare. — yes, project bootstrap, 2026-09-11

## Agreement
| stage | files | both readers agreed | resolved by resolver | resolved by automated cross-check | still UNSURE |
|---|---|---|---|---|---|
| twin | 11 | 0 | 0 | 11 | 0 |
| derived / section-map | 3 | 0 | 0 | 3 | 0 |
| findings | 47 | 0 | 0 | 47 | 0 |

No second human reader or human resolver has touched this pack. The "resolved by automated cross-check" column (2026-09-11, see entry 4 below) is a distinct method from the design's two-independent-reader standard (section 8) and is recorded as its own column rather than folded into "both readers agreed" so this table is never misread as claiming a human process that did not happen.

## 1 · R-07 and R-17 are two units, not one CHANGED requirement
The revised workbook's own note (Requirements Matrix, row 22) says "R-07 (on-premise-only network monitoring) has been removed from this revision and replaced by R-17 (cloud-managed monitoring)." Per `skills/version-compare.md`'s spreadsheet unit rule, a row id is not reused across a removed/added pair, so this is tracked as one REMOVED unit (`R-07`) and one ADDED unit (`R-17`), not a single CHANGED requirement. This is this pack's id-reused-as-replacement case, counted in `bootstrap.md`'s `profile:` line. — yes, single-pass draft, 2026-09-11

## 2 · The Cybersecurity Addendum is ADDED sheet-wide, one unit per row
The sixth sheet has no counterpart anywhere in the supporting workbook. Tracked as six ADDED units: `CSEC-1` for the sheet's own title and note, and `CS-01` through `CS-05` for its five requirement rows — not one unit for the whole sheet, per `skills/version-compare.md`'s rule that a new sheet's own heading and every data row within it are each their own unit. This is this pack's sheet-added case, counted in `bootstrap.md`'s `profile:` line. — yes, single-pass draft, 2026-09-11

## 3 · Spreadsheet packs have no spilled-table case
Unlike a PDF pack, a sheet's rows never spill across a page break — one sheet is one page, per design section 6 — so `bootstrap.md`'s `profile:` line correctly declares `spilled-table 0` for this pack rather than treating a long sheet as a spill. — yes, single-pass draft, 2026-09-11

## 4 · Automated cross-check pass, 2026-09-11: what it was and what it found

Not the two-independent-reader standard of design section 8 — no second human read either workbook. Instead, a scripted pass checked two things mechanically: (1) every finding's `Old`/`New` quote appears verbatim (normalized) on its cited sheet, on the cited row where the row is rendered as a table row; (2) every citation resolves to a real sheet. This is real verification — it caught actual defects, listed below — but it is not a substitute for a second reader judging whether a classification (ADDED/REMOVED/CHANGED/UNCHANGED, material yes/no) is *correct*, only whether it is *internally consistent with the cited sheet text*. All 47 findings and 11 twin pages now pass (one, `REF-1`, was manually re-verified against the raw twin page after the automated check flagged a false positive — its row 1 is rendered as a blockquote rather than a table row, since it is an instructional sentence, not a data row, and the checker's simple row-matcher does not parse blockquotes); `confidence` was raised from `UNSURE` to `SURE` accordingly, and `verified-by: automated cross-check pass` records the method plainly rather than implying a human pass.

What it found and fixed:
- **1 finding (`TIME-2`) was missing a `[NEW]` tag** actually printed in the cited cell.

None of this changes what a second human reader still needs to check: whether each ADDED/REMOVED/CHANGED/UNCHANGED call and each materiality judgment is the *right* call — including, for this pack specifically, whether `R-07`/`R-17` should really be tracked as a removed/added pair rather than one CHANGED requirement, and whether every Cybersecurity Addendum row is correctly scoped as its own unit rather than grouped. — yes, 2026-09-11

## 5 · Vendor-response columns added to the source workbook, out of version-compare scope
The source workbook's `Vendor Response (F/P/C/N)`, `Vendor Notes`, `Unit Price`, `Extended Price`, and Reference Form columns were filled in with a fictional vendor's response (Beacon Network Solutions, Inc.) at the user's request, 2026-09-11. These columns exist as empty template fields in both the source and supporting workbooks before this change — filling them in the source only does not add, remove, or change any RFP requirement, and is not itself a version-compare unit: a vendor's answer to a question is not a new version of the question. No `actuals/findings/` file was added, removed, or reclassified as a result. The source document's digest changed because its bytes changed; every `for-document` reference to it was updated, and the source's 6 twin pages were rebuilt from the updated workbook and re-verified (all 47 findings and 11 twin pages still pass the automated cross-check under the new digest). — yes, 2026-09-11
