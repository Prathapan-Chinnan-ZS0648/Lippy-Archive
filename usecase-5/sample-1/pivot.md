## Method

Source = REV4, `documents/source/AD-3010-C-330030-SHT-004-REV4.pdf`; supporting = REV3, `documents/supporting/AD-3010-C-330030-SHT-004-REV3.pdf`, marked superseded. Skill = drawing-comparison, declared in `skills/drawing-comparison.md`. Verification method: a single reader (this session), not two independent human readers plus a resolver — recorded honestly as a distinct, weaker method, exactly as `usecase-4/sample-1`'s automated cross-check pass is kept in its own agreement-table column rather than folded into "both readers agreed". Every reported change was cross-checked against (1) a `pdftotext -raw` text-layer diff between REV3 and REV4, and (2) a pixel-level image diff between 300dpi renders of both pages, clustered into bounding boxes and inspected at full resolution to confirm exact grid position. — yes, project bootstrap, 2026-09-15

## Agreement

| stage | files | both readers agreed | resolved by resolver | resolved by single-reader cross-check | still UNSURE |
|---|---|---|---|---|---|
| twin | 2 | 0 | 0 | 2 | 0 |
| derived / section-map | 3 | 0 | 0 | 3 | 0 |
| findings | 17 | 0 | 0 | 14 | 3 |

No second human reader or human resolver has touched this pack. The "resolved by single-reader cross-check" column is a distinct method from the design's two-independent-reader standard (section 8) and is recorded as its own column, and the 3 `findings` rows left in "still UNSURE" are exactly `MEMB-10`, `MEMB-11`, `MEMB-12` (see § 4) — real, text-confirmed changes whose exact grid row is not yet independently pinned, not a claim of human agreement that did not happen.

## 1 · Supplied PDFs were HTTP multipart bodies, not valid PDFs

Both `AD-3010-C-330030-SHT-004-REV3.pdf` and `-REV4.pdf`, as found under `/home/kowsalya.nachimuthu@zucisystems.com/Downloads/Assent/Intics 03.09.26/Drawings comparison/Shop drawing comparison/`, are raw `multipart/form-data` HTTP bodies (DocuSign envelope download artifacts) rather than PDF files: each begins with a `--<boundary>` line and `Content-Disposition`/`Content-Type` headers before the real `%PDF-1.5` bytes start, and ends with a second boundary after the PDF's own `%%EOF`. Repaired by slicing each file from its `%PDF-` marker to its `%%EOF` line (inclusive) before use; the repaired files are what `documents/source/` and `documents/supporting/` now hold. Not a decision about drawing content, but recorded here because it blocked every downstream step until fixed. — yes, single-pass draft, 2026-09-15

## 2 · Unit id scheme: view + grid position, not text match

This sheet repeats several member sizes and connection codes (`UC203x203x46 (-120)`, `UB305x165x46`, `SW`/`BW`/`MW` connection-type tags) at many grid positions across both plan views. Aligning a source callout to its supporting counterpart by text alone would silently mismatch two unrelated positions that happen to carry the same label. Every `MEMB-*` unit id and finding therefore states its grid position (the lettered grid line(s) it falls between, and which of the three column lines — Grid 1, the unlabelled midpoint column, or Grid 2) rather than relying on the callout text to be unique. Recorded in `skills/drawing-comparison.md` as the `repeated-callout ambiguity` pack-profile entry. — yes, single-pass draft, 2026-09-15

## 3 · Drawing title change (`TITLE-1`) judged material: true

Rev 3's drawing title, "UTILITIES (NITROGEN SYSTEM, INSTRUMENT/PLANT AIR, POTABLE WATER)-UNIT 3010", is shortened in Rev 4 to "UTILITIES - UNIT 3010". Judged material because the title is the reader's first statement of which systems this steel structure supports, and a fabricator or reviewer working from the title alone would lose the explicit system list; the underlying steel scope on the two plan views is unchanged by this edit. Flagged as a judgment call for a second reader: an alternative reading is that this is a purely administrative simplification (the systems are still identifiable from the project title and reference drawings) and should be material: false. — no, not settled by a second reader, 2026-09-15

## 4 · `MEMB-10`, `MEMB-11`, `MEMB-12` — changed, grid row not yet pinned

The REV3→REV4 text-layer diff shows exactly 7 instances of a weld/bolt count `(30N 10V)` being added where REV3 printed a bare `SW` connection tag with no count, all on `UC203x203x46 (-120)` columns or (once) a `UB305x165x46` beam on the Plan EL. 111.500 view's unlabelled midpoint column line. Four of the seven were independently located by grid position via the pixel-diff-and-crop method and are reported as `MEMB-2`, `MEMB-3`, `MEMB-8`, `MEMB-9`. The remaining three (all on `UC203x203x46 (-120)`, at raw-text-layer positions distinct from the four located ones) are confirmed to exist and to have changed — the text-layer diff is exact — but this session's single pass did not reach a second, independent crop-and-confirm cycle to pin each one's grid row among the sheet's many visually identical midpoint-column panels before its effort budget was reached. Recording them as `MEMB-10`/`MEMB-11`/`MEMB-12`, `confidence: UNSURE`, with the grid location field stating "midpoint column, between grid 1 and 2, exact grid row not yet confirmed" rather than a guessed grid letter, per `bootstrap.md`'s "what must not happen". A second reader should locate each via the same pixel-diff-cluster method (see `prompting.md`) and either confirm a grid row (moving `confidence` to `SURE`) or split/merge against `MEMB-2/3/8/9` if re-inspection shows an overlap. — no, not settled, 2026-09-15

## 5 · `CTRL-1` — El 112.800 plan reformat, not a content change

On the Plan EL. 112.800 view, Grid A, at the column-2 (east) node, REV3 carries two Rev-3 revision clouds: one around "MW / UB356x171x51", one around "HANDRAIL (TYP.)" and the "BW / L80x80x8 (-50) / (TYP.) U.N.O." label below it. In REV4 both clouds are cleared (normal practice once a revision cloud's content is no longer the latest change) and, with the clouds gone, the "HANDRAIL (TYP.)" and "BW / L80x80x8 (-50) / (TYP.) U.N.O." labels swap vertical order — the leader lines still point at the same two physical items, only the text block position changed to avoid the reflow overlapping. No wording differs. Classified UNCHANGED and kept as `CTRL-1`, this pack's reformat control case (the drawing-comparison equivalent of `version-compare`'s renumbering control case, `TECH-12` in `usecase-4/sample-1`). — yes, single-pass draft, 2026-09-15

## 6 · `MEMB-6`/`MEMB-7` — two new braces reported as one pair, not merged

REV4 adds two new diagonal bracing members, both `T171x178x34 (-120)`, both meeting at the same node (Plan EL. 111.500, midpoint column line at Grid D) — one bracing up toward Grid 2, one bracing down toward Grid 1 — inside a single revision cloud. Reported as two separate ADDED units (`MEMB-6`, `MEMB-7`) rather than one, because each is an independent structural member with its own end connections, following `version-compare`'s precedent (`usecase-4/sample-4`'s `id-reused-as-replacement` rule: a shared cloud or a shared note does not make two distinct members one unit). — yes, single-pass draft, 2026-09-15

## 7 · Checker-equivalent pass, 2026-09-15: what it was and what it found

No `lippy check`/`lippy compare` tooling is available in this environment. Its checks were applied by hand: (1) every finding's front matter has the fields `skills/drawing-comparison.md`'s finding shape and the design's verification standard require; (2) every `for-document` digest matches `file-index.md`; (3) every finding id appears exactly once in `actuals/report/report.md`'s row table, and the report's counts-by-kind table was cross-footed against that row table. All 17 findings and both twin pages pass. `confidence` is `SURE` for 14 findings and 3 twin/derived/section-map actuals, and `UNSURE` for `MEMB-10`/`MEMB-11`/`MEMB-12` per § 4 above; `bootstrap.md` set to `state: verified`, not `signed` (no named domain reviewer from Assent Steel or the project team has reviewed this pack). — yes, 2026-09-15
