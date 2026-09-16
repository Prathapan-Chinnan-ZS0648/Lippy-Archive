# file-index.md

Every file in this archive: role, version, digest, verified-by, dates, size, description. This use case holds six independent version-docs RFP pairs sharing one skill declaration; root-level archive files (`bootstrap.md`, `prompting.md`, `pivot.md`, `file-index.md`) and the shared skill file cover all six pairs at once and are listed once below, followed by one section per pair for its own `documents/` and `actuals/` files.

Roles: SOURCE, SUPPORTING, SKILL, ACTUAL, RUN, TEMPLATE, OUTPUT, ARCHIVE.

`runs/`, `Doc/`, `Deck/`, `Excel/` are empty — no engine run has been produced for this use case yet, so there is nothing to index there. `templates/` holds the empty skeletons required by design section 12; see below.

## Root files

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| bootstrap.md | ARCHIVE | — | — | — | — | 2026-09-16 | 2026-09-16 | 32 KB | merged project bootstrap for all 6 RFP pairs: brief, declarations, pack profile per pair; shared operational guidelines |
| prompting.md | ARCHIVE | — | — | — | — | 2026-09-16 | 2026-09-16 | 20 KB | merged instruction log for all 6 RFP pairs, one section per pair, dates preserved |
| pivot.md | ARCHIVE | — | — | — | — | 2026-09-16 | 2026-09-16 | 36 KB | merged decision log and agreement record for all 6 RFP pairs, one section per pair |
| file-index.md | ARCHIVE | — | — | — | — | 2026-09-16 | 2026-09-16 | — | this file |

## skills/

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| skills/version-docs.md | SKILL | 2 | — | — | — | 2026-09-11 | 2026-09-16 | 8.0 KB | version-docs skill file (renamed from version-compare): units, labels, finding shape, pack profile, spreadsheet addendum; shared by all 6 pairs |

## templates/

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| templates/README.md | TEMPLATE | 1 | — | — | — | 2026-09-16 | 2026-09-16 | 286 B | what templates/ is for (section 12) |
| templates/twin-page.md | TEMPLATE | 1 | — | — | — | 2026-09-16 | 2026-09-16 | 887 B | empty twin-page skeleton, every front-matter field named |
| templates/derived.md | TEMPLATE | 1 | — | — | — | 2026-09-16 | 2026-09-16 | 409 B | empty derived-list skeleton |
| templates/finding.md | TEMPLATE | 1 | — | — | — | 2026-09-16 | 2026-09-16 | 893 B | empty finding skeleton, in the version-docs finding shape (Old/New/What changed/Why it matters) |
| templates/report.md | TEMPLATE | 1 | — | — | — | 2026-09-16 | 2026-09-16 | 549 B | empty report skeleton, counts-by-kind + narrative |
| templates/converter.md | TEMPLATE | 1 | — | — | — | 2026-09-16 | 2026-09-16 | 313 B | `lippy` converter command reference (section 12) |
| templates/twin-page-sheet.xlsx | TEMPLATE | 1 | — | — | — | 2026-09-16 | 2026-09-16 | 4.9 KB | Excel labelling sheet, twin-page columns, same fields as `twin-page.md` |
| templates/derived-sheet.xlsx | TEMPLATE | 1 | — | — | — | 2026-09-16 | 2026-09-16 | 4.9 KB | Excel labelling sheet, derived-list columns, same fields as `derived.md` |
| templates/finding-sheet.xlsx | TEMPLATE | 1 | — | — | — | 2026-09-16 | 2026-09-16 | 5.0 KB | Excel labelling sheet, finding columns, same fields as `finding.md` |
| templates/report-sheet.xlsx | TEMPLATE | 1 | — | — | — | 2026-09-16 | 2026-09-16 | 4.9 KB | Excel labelling sheet, report columns, same fields as `report.md` |

## SYNTH_VERS_DOCS_S1_REVISED

## documents/

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| documents/SYNTH_VERS_DOCS_S1_REVISED/source/SYNTH_VERS_DOCS_S1_REVISED.pdf | SOURCE | 1 | sha256:8a8bd85ca1f4bd20c8fb8ab36a40b3c1180f03cc76d25f9476b44e82f61a1b6b | — | — | 2026-09-11 | 2026-09-11 | 200.5 KB | RFP-BRG-2026-0231-R1, reissued June 2, 2026; 12 pages |
| documents/SYNTH_VERS_DOCS_S1_REVISED/supporting/SYNTH_VERS_DOCS_S1_ORIGINAL.pdf | SUPPORTING | 1 | sha256:fce2d15c889477818b91ffa42e256b42beaa15e5c9da54323a731f7f10d1f258 | — | — | 2026-09-11 | 2026-09-11 | 172.4 KB | RFP-BRG-2026-0231, issued March 9, 2026; 11 pages; superseded by source |

## actuals/SYNTH_VERS_DOCS_S1_REVISED/twin/

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| actuals/SYNTH_VERS_DOCS_S1_REVISED/twin/SYNTH_VERS_DOCS_S1_REVISED.pdf/page-001.md | ACTUAL | 3 | for sha256:8a8bd85… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/twin/SYNTH_VERS_DOCS_S1_REVISED.pdf/page-002.md | ACTUAL | 3 | for sha256:8a8bd85… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/twin/SYNTH_VERS_DOCS_S1_REVISED.pdf/page-003.md | ACTUAL | 3 | for sha256:8a8bd85… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 3.1 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/twin/SYNTH_VERS_DOCS_S1_REVISED.pdf/page-004.md | ACTUAL | 3 | for sha256:8a8bd85… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.8 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/twin/SYNTH_VERS_DOCS_S1_REVISED.pdf/page-005.md | ACTUAL | 3 | for sha256:8a8bd85… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 2.8 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/twin/SYNTH_VERS_DOCS_S1_REVISED.pdf/page-006.md | ACTUAL | 3 | for sha256:8a8bd85… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/twin/SYNTH_VERS_DOCS_S1_REVISED.pdf/page-007.md | ACTUAL | 3 | for sha256:8a8bd85… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 2.4 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/twin/SYNTH_VERS_DOCS_S1_REVISED.pdf/page-008.md | ACTUAL | 3 | for sha256:8a8bd85… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.7 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/twin/SYNTH_VERS_DOCS_S1_REVISED.pdf/page-009.md | ACTUAL | 3 | for sha256:8a8bd85… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 2.0 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/twin/SYNTH_VERS_DOCS_S1_REVISED.pdf/page-010.md | ACTUAL | 3 | for sha256:8a8bd85… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 2.1 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/twin/SYNTH_VERS_DOCS_S1_REVISED.pdf/page-011.md | ACTUAL | 3 | for sha256:8a8bd85… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 2.2 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/twin/SYNTH_VERS_DOCS_S1_REVISED.pdf/page-012.md | ACTUAL | 3 | for sha256:8a8bd85… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.4 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/twin/SYNTH_VERS_DOCS_S1_ORIGINAL.pdf/page-001.md | ACTUAL | 3 | for sha256:fce2d15… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/twin/SYNTH_VERS_DOCS_S1_ORIGINAL.pdf/page-002.md | ACTUAL | 3 | for sha256:fce2d15… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/twin/SYNTH_VERS_DOCS_S1_ORIGINAL.pdf/page-003.md | ACTUAL | 3 | for sha256:fce2d15… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 2.8 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/twin/SYNTH_VERS_DOCS_S1_ORIGINAL.pdf/page-004.md | ACTUAL | 3 | for sha256:fce2d15… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.7 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/twin/SYNTH_VERS_DOCS_S1_ORIGINAL.pdf/page-005.md | ACTUAL | 3 | for sha256:fce2d15… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 2.4 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/twin/SYNTH_VERS_DOCS_S1_ORIGINAL.pdf/page-006.md | ACTUAL | 3 | for sha256:fce2d15… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 2.2 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/twin/SYNTH_VERS_DOCS_S1_ORIGINAL.pdf/page-007.md | ACTUAL | 3 | for sha256:fce2d15… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.3 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/twin/SYNTH_VERS_DOCS_S1_ORIGINAL.pdf/page-008.md | ACTUAL | 3 | for sha256:fce2d15… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.9 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/twin/SYNTH_VERS_DOCS_S1_ORIGINAL.pdf/page-009.md | ACTUAL | 3 | for sha256:fce2d15… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.3 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/twin/SYNTH_VERS_DOCS_S1_ORIGINAL.pdf/page-010.md | ACTUAL | 3 | for sha256:fce2d15… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.8 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/twin/SYNTH_VERS_DOCS_S1_ORIGINAL.pdf/page-011.md | ACTUAL | 3 | for sha256:fce2d15… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.4 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/twin/section-map.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.7 KB | section map, both documents |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/twin/derived/SYNTH_VERS_DOCS_S1_REVISED.pdf.md | ACTUAL | 3 | for sha256:8a8bd85… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 10.7 KB | 106 clause units, source document |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/twin/derived/SYNTH_VERS_DOCS_S1_ORIGINAL.pdf.md | ACTUAL | 2 | for sha256:fce2d15… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 3.0 KB | section list, supporting document |

## actuals/SYNTH_VERS_DOCS_S1_REVISED/ (detection, plan)

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| actuals/SYNTH_VERS_DOCS_S1_REVISED/detection.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.1 KB | skill detection: version-docs |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/plan.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.8 KB | plan of action, 6 steps |

## actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/ (106 files)

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/APPA-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, APPA-1 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/APPA-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, APPA-2 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/APPA-3.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, APPA-3 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/APPA-4.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, APPA-4 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/APPA-5.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.7 KB | finding, APPA-5 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/APPA-6.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, APPA-6 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/APPA-7.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, APPA-7 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/APPA-8.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, APPA-8 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/APPA-9.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, APPA-9 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/APPB-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, APPB-1 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/APPB-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, APPB-2 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/APPB-3.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, APPB-3 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/APPC-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, APPC-1 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/APPC-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.3 KB | finding, APPC-2 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/APPC-3.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.1 KB | finding, APPC-3 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/APPC-4.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, APPC-4 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/APPC-5.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, APPC-5 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/APPC-6.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, APPC-6 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/COMM-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, COMM-1 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/COMM-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, COMM-2 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/COMM-3.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.2 KB | finding, COMM-3 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/COMM-4.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, COMM-4 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/COMM-5.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, COMM-5 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/COMM-6.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.1 KB | finding, COMM-6 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/COMM-7.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, COMM-7 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/CONTACT-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, CONTACT-1 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/CONTACT-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, CONTACT-2 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/DEF-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, DEF-1 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/DEF-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, DEF-2 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/DEF-3.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.1 KB | finding, DEF-3 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/DEL-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, DEL-1 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/DEL-10.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, DEL-10 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/DEL-11.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, DEL-11 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/DEL-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, DEL-2 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/DEL-3.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, DEL-3 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/DEL-4.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, DEL-4 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/DEL-5.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, DEL-5 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/DEL-6.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, DEL-6 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/DEL-7.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.7 KB | finding, DEL-7 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/DEL-8.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.7 KB | finding, DEL-8 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/DEL-9.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, DEL-9 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/ELIG-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.1 KB | finding, ELIG-1 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/ELIG-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, ELIG-2 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/ELIG-3.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.2 KB | finding, ELIG-3 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/ELIG-4.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, ELIG-4 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/ELIG-5.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.1 KB | finding, ELIG-5 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/ELIG-6.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, ELIG-6 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/EVAL-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, EVAL-1 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/EVAL-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, EVAL-2 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/EVAL-3.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, EVAL-3 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/EVAL-4.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, EVAL-4 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/EVAL-5.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.7 KB | finding, EVAL-5 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/EVAL-6.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, EVAL-6 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/FR-01.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, FR-01 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/FR-02.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, FR-02 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/FR-03.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, FR-03 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/FR-04.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, FR-04 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/FR-05.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, FR-05 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/FR-06.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, FR-06 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/FR-07.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, FR-07 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/FR-08.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, FR-08 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/FR-09.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.7 KB | finding, FR-09 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/INS-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, INS-1 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/INS-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, INS-2 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/INS-3.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, INS-3 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/INS-4.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, INS-4 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/INS-5.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, INS-5 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/INTRO-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.2 KB | finding, INTRO-1 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/INTRO-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.1 KB | finding, INTRO-2 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/INTRO-3.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, INTRO-3 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/OBJ-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, OBJ-1 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/OBJ-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.2 KB | finding, OBJ-2 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/OBJ-3.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, OBJ-3 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/SCOPE-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.2 KB | finding, SCOPE-1 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/SCOPE-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, SCOPE-2 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/SCOPE-3.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, SCOPE-3 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/SCOPE-4.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.1 KB | finding, SCOPE-4 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/SCOPE-5.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, SCOPE-5 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/SCOPE-6.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, SCOPE-6 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/SCOPE-7.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, SCOPE-7 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/SCOPE-8.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, SCOPE-8 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/SCOPE-9.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, SCOPE-9 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/SUB-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, SUB-1 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/SUB-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, SUB-2 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/SUB-3.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, SUB-3 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/TC-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, TC-1 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/TC-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, TC-2 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/TECH-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, TECH-1 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/TECH-10.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, TECH-10 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/TECH-11.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, TECH-11 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/TECH-12.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.1 KB | finding, TECH-12 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/TECH-13.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, TECH-13 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/TECH-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.1 KB | finding, TECH-2 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/TECH-3.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, TECH-3 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/TECH-4.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.1 KB | finding, TECH-4 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/TECH-5.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, TECH-5 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/TECH-6.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.1 KB | finding, TECH-6 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/TECH-7.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.1 KB | finding, TECH-7 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/TECH-8.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, TECH-8 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/TECH-9.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, TECH-9 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/TIME-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.1 KB | finding, TIME-1 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/TIME-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, TIME-2 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/TIME-3.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.7 KB | finding, TIME-3 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/TIME-4.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, TIME-4 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/TIME-5.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, TIME-5 |
| actuals/SYNTH_VERS_DOCS_S1_REVISED/findings/TIME-6.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, TIME-6 |

## actuals/SYNTH_VERS_DOCS_S1_REVISED/report/

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| actuals/SYNTH_VERS_DOCS_S1_REVISED/report/report.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 15.0 KB | 106-row deliverable: counts and clause-by-clause rows |


## SYNTH_VERS_DOCS_S2_REVISED

## documents/

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| documents/SYNTH_VERS_DOCS_S2_REVISED/source/SYNTH_VERS_DOCS_S2_REVISED.pdf | SOURCE | 1 | sha256:3e71f9d61b8bb53a59cb8785f2ef9883111afcfaca15f6ac65713aa4f30ebe21 | — | — | 2026-09-11 | 2026-09-11 | 204.3 KB | RFP-AFG-2026-0064-R1, reissued May 11, 2026; 13 pages |
| documents/SYNTH_VERS_DOCS_S2_REVISED/supporting/SYNTH_VERS_DOCS_S2_ORIGINAL.pdf | SUPPORTING | 1 | sha256:2c24e8c356ab0d65c36eaa0242eb9df857bba6ae9f65ed412fbaebe7e4afd5d0 | — | — | 2026-09-11 | 2026-09-11 | 171.9 KB | RFP-AFG-2026-0064, issued February 16, 2026; 10 pages; superseded by source |

## actuals/SYNTH_VERS_DOCS_S2_REVISED/twin/

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| actuals/SYNTH_VERS_DOCS_S2_REVISED/twin/SYNTH_VERS_DOCS_S2_REVISED.pdf/page-001.md | ACTUAL | 3 | for sha256:3e71f9d… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/twin/SYNTH_VERS_DOCS_S2_REVISED.pdf/page-002.md | ACTUAL | 3 | for sha256:3e71f9d… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/twin/SYNTH_VERS_DOCS_S2_REVISED.pdf/page-003.md | ACTUAL | 3 | for sha256:3e71f9d… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 2.9 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/twin/SYNTH_VERS_DOCS_S2_REVISED.pdf/page-004.md | ACTUAL | 3 | for sha256:3e71f9d… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/twin/SYNTH_VERS_DOCS_S2_REVISED.pdf/page-005.md | ACTUAL | 3 | for sha256:3e71f9d… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 3.3 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/twin/SYNTH_VERS_DOCS_S2_REVISED.pdf/page-006.md | ACTUAL | 3 | for sha256:3e71f9d… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.4 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/twin/SYNTH_VERS_DOCS_S2_REVISED.pdf/page-007.md | ACTUAL | 3 | for sha256:3e71f9d… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.7 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/twin/SYNTH_VERS_DOCS_S2_REVISED.pdf/page-008.md | ACTUAL | 3 | for sha256:3e71f9d… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 2.1 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/twin/SYNTH_VERS_DOCS_S2_REVISED.pdf/page-009.md | ACTUAL | 3 | for sha256:3e71f9d… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.5 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/twin/SYNTH_VERS_DOCS_S2_REVISED.pdf/page-010.md | ACTUAL | 3 | for sha256:3e71f9d… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 2.0 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/twin/SYNTH_VERS_DOCS_S2_REVISED.pdf/page-011.md | ACTUAL | 3 | for sha256:3e71f9d… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 2.2 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/twin/SYNTH_VERS_DOCS_S2_REVISED.pdf/page-012.md | ACTUAL | 3 | for sha256:3e71f9d… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 2.0 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/twin/SYNTH_VERS_DOCS_S2_REVISED.pdf/page-013.md | ACTUAL | 3 | for sha256:3e71f9d… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.4 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/twin/SYNTH_VERS_DOCS_S2_ORIGINAL.pdf/page-001.md | ACTUAL | 3 | for sha256:2c24e8c… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/twin/SYNTH_VERS_DOCS_S2_ORIGINAL.pdf/page-002.md | ACTUAL | 3 | for sha256:2c24e8c… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.1 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/twin/SYNTH_VERS_DOCS_S2_ORIGINAL.pdf/page-003.md | ACTUAL | 3 | for sha256:2c24e8c… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 2.6 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/twin/SYNTH_VERS_DOCS_S2_ORIGINAL.pdf/page-004.md | ACTUAL | 3 | for sha256:2c24e8c… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.5 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/twin/SYNTH_VERS_DOCS_S2_ORIGINAL.pdf/page-005.md | ACTUAL | 3 | for sha256:2c24e8c… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 2.3 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/twin/SYNTH_VERS_DOCS_S2_ORIGINAL.pdf/page-006.md | ACTUAL | 3 | for sha256:2c24e8c… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.7 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/twin/SYNTH_VERS_DOCS_S2_ORIGINAL.pdf/page-007.md | ACTUAL | 3 | for sha256:2c24e8c… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.9 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/twin/SYNTH_VERS_DOCS_S2_ORIGINAL.pdf/page-008.md | ACTUAL | 3 | for sha256:2c24e8c… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.8 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/twin/SYNTH_VERS_DOCS_S2_ORIGINAL.pdf/page-009.md | ACTUAL | 3 | for sha256:2c24e8c… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.3 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/twin/SYNTH_VERS_DOCS_S2_ORIGINAL.pdf/page-010.md | ACTUAL | 3 | for sha256:2c24e8c… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.7 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/twin/section-map.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 2.0 KB | section map, both documents |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/twin/derived/SYNTH_VERS_DOCS_S2_REVISED.pdf.md | ACTUAL | 2 | for sha256:3e71f9d… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 10.3 KB | 98 clause units, source document |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/twin/derived/SYNTH_VERS_DOCS_S2_ORIGINAL.pdf.md | ACTUAL | 1 | for sha256:2c24e8c… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 3.2 KB | section list incl. Section 6's 5 removed clauses, supporting document |

## actuals/SYNTH_VERS_DOCS_S2_REVISED/ (detection, plan)

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| actuals/SYNTH_VERS_DOCS_S2_REVISED/detection.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | skill detection: version-docs |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/plan.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.7 KB | plan of action, 6 steps |

## actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/ (103 files)

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/APPA-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, APPA-1 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/APPA-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, APPA-2 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/APPA-3.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, APPA-3 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/APPA-4.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.7 KB | finding, APPA-4 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/APPA-5.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.7 KB | finding, APPA-5 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/APPA-6.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, APPA-6 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/APPA-7.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, APPA-7 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/APPA-8.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, APPA-8 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/APPB-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, APPB-1 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/APPB-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, APPB-2 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/APPC-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, APPC-1 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/APPC-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.2 KB | finding, APPC-2 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/APPC-3.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, APPC-3 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/APPC-4.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, APPC-4 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/APPC-5.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, APPC-5 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/APPC-6.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, APPC-6 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/COMM-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, COMM-1 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/COMM-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, COMM-2 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/COMM-3.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.1 KB | finding, COMM-3 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/COMM-4.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, COMM-4 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/COMM-5.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, COMM-5 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/COMM-6.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.1 KB | finding, COMM-6 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/CONTACT-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, CONTACT-1 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/CONTACT-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, CONTACT-2 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/DEF-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, DEF-1 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/DEL-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, DEL-1 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/DEL-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, DEL-2 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/DEL-3.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, DEL-3 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/DEL-4.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, DEL-4 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/DEL-5.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, DEL-5 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/DEL-6.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.7 KB | finding, DEL-6 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/DEL-7.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.7 KB | finding, DEL-7 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/DEL-8.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, DEL-8 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/DEL-9.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, DEL-9 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/ELIG-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, ELIG-1 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/ELIG-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, ELIG-2 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/ELIG-3.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, ELIG-3 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/ELIG-4.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, ELIG-4 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/ELIG-5.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, ELIG-5 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/EVAL-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, EVAL-1 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/EVAL-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, EVAL-2 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/EVAL-3.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, EVAL-3 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/EVAL-4.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, EVAL-4 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/EVAL-5.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, EVAL-5 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/FR-01.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, FR-01 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/FR-02.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, FR-02 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/FR-03.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, FR-03 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/FR-04.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, FR-04 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/FR-05.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, FR-05 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/FR-06.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, FR-06 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/FR-07.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, FR-07 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/FR-08.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, FR-08 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/INS-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, INS-1 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/INTRO-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.2 KB | finding, INTRO-1 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/INTRO-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, INTRO-2 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/INTRO-3.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, INTRO-3 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/OBJ-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, OBJ-1 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/OBJ-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, OBJ-2 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/ONB-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, ONB-1 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/ONB-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, ONB-2 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/ONB-3.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, ONB-3 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/ONB-4.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, ONB-4 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/ONB-5.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, ONB-5 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/RES-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.2 KB | finding, RES-1 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/SCOPE-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, SCOPE-1 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/SCOPE-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, SCOPE-2 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/SCOPE-3.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.1 KB | finding, SCOPE-3 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/SCOPE-4.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, SCOPE-4 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/SCOPE-5.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, SCOPE-5 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/SCOPE-6.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, SCOPE-6 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/SCOPE-7.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, SCOPE-7 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/SLC-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, SLC-1 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/SLC-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, SLC-2 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/SLC-3.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, SLC-3 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/SUB-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, SUB-1 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/SUB-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, SUB-2 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/SUB-3.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, SUB-3 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/TC-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.1 KB | finding, TC-1 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/TC-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, TC-2 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/TECH-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, TECH-1 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/TECH-10.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, TECH-10 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/TECH-11.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, TECH-11 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/TECH-12.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, TECH-12 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/TECH-13.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, TECH-13 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/TECH-14.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, TECH-14 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/TECH-15.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, TECH-15 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/TECH-16.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, TECH-16 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/TECH-17.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, TECH-17 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/TECH-18.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.4 KB | finding, TECH-18 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/TECH-19.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, TECH-19 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/TECH-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, TECH-2 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/TECH-3.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, TECH-3 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/TECH-4.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, TECH-4 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/TECH-5.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, TECH-5 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/TECH-6.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, TECH-6 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/TECH-7.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, TECH-7 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/TECH-8.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, TECH-8 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/TECH-9.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, TECH-9 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/TIME-1.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, TIME-1 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/TIME-2.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, TIME-2 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/TIME-3.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.7 KB | finding, TIME-3 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/TIME-4.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, TIME-4 |
| actuals/SYNTH_VERS_DOCS_S2_REVISED/findings/TIME-5.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, TIME-5 |

## actuals/SYNTH_VERS_DOCS_S2_REVISED/report/

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| actuals/SYNTH_VERS_DOCS_S2_REVISED/report/report.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 15.3 KB | 103-row deliverable: counts and clause-by-clause rows |


## SYNTH_VERS_DOCS_S3_REVISED

## documents/

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| documents/SYNTH_VERS_DOCS_S3_REVISED/source/SYNTH_VERS_DOCS_S3_REVISED.docx | SOURCE | 1 | sha256:b224c0a01594d66803f2e1c871b469ccd8b884724b98a308de0d1110a035d52d | — | — | 2026-09-15 | 2026-09-15 | 13.7 KB | RFP-NU-2026-0115-R1, reissued April 6, 2026, current |
| documents/SYNTH_VERS_DOCS_S3_REVISED/supporting/SYNTH_VERS_DOCS_S3_ORIGINAL.docx | SUPPORTING | 1 | sha256:e84e7f2a452511c45eb80025a7afc773d0cf8bff25576efa1ced202856ab6810 | SYNTH_VERS_DOCS_S3_REVISED.docx | — | 2026-09-15 | 2026-09-15 | 12.9 KB | RFP-NU-2026-0115, issued January 20, 2026, superseded |

## actuals/SYNTH_VERS_DOCS_S3_REVISED/twin/

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| actuals/SYNTH_VERS_DOCS_S3_REVISED/twin/SYNTH_VERS_DOCS_S3_REVISED.docx/page-001.md | ACTUAL | 1 | for sha256:b224c0a01594… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.0 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/twin/SYNTH_VERS_DOCS_S3_REVISED.docx/page-002.md | ACTUAL | 1 | for sha256:b224c0a01594… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 888 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/twin/SYNTH_VERS_DOCS_S3_REVISED.docx/page-003.md | ACTUAL | 1 | for sha256:b224c0a01594… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.6 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/twin/SYNTH_VERS_DOCS_S3_REVISED.docx/page-004.md | ACTUAL | 1 | for sha256:b224c0a01594… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.9 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/twin/SYNTH_VERS_DOCS_S3_REVISED.docx/page-005.md | ACTUAL | 1 | for sha256:b224c0a01594… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.6 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/twin/SYNTH_VERS_DOCS_S3_REVISED.docx/page-006.md | ACTUAL | 1 | for sha256:b224c0a01594… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.3 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/twin/SYNTH_VERS_DOCS_S3_REVISED.docx/page-007.md | ACTUAL | 1 | for sha256:b224c0a01594… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.5 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/twin/SYNTH_VERS_DOCS_S3_REVISED.docx/page-008.md | ACTUAL | 1 | for sha256:b224c0a01594… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 979 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/twin/SYNTH_VERS_DOCS_S3_REVISED.docx/page-009.md | ACTUAL | 1 | for sha256:b224c0a01594… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.3 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/twin/SYNTH_VERS_DOCS_S3_ORIGINAL.docx/page-001.md | ACTUAL | 1 | for sha256:e84e7f2a4525… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1013 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/twin/SYNTH_VERS_DOCS_S3_ORIGINAL.docx/page-002.md | ACTUAL | 1 | for sha256:e84e7f2a4525… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 889 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/twin/SYNTH_VERS_DOCS_S3_ORIGINAL.docx/page-003.md | ACTUAL | 1 | for sha256:e84e7f2a4525… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.2 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/twin/SYNTH_VERS_DOCS_S3_ORIGINAL.docx/page-004.md | ACTUAL | 1 | for sha256:e84e7f2a4525… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.4 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/twin/SYNTH_VERS_DOCS_S3_ORIGINAL.docx/page-005.md | ACTUAL | 1 | for sha256:e84e7f2a4525… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.4 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/twin/SYNTH_VERS_DOCS_S3_ORIGINAL.docx/page-006.md | ACTUAL | 1 | for sha256:e84e7f2a4525… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/twin/SYNTH_VERS_DOCS_S3_ORIGINAL.docx/page-007.md | ACTUAL | 1 | for sha256:e84e7f2a4525… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.2 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/twin/SYNTH_VERS_DOCS_S3_ORIGINAL.docx/page-008.md | ACTUAL | 1 | for sha256:e84e7f2a4525… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 986 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/twin/SYNTH_VERS_DOCS_S3_ORIGINAL.docx/page-009.md | ACTUAL | 1 | for sha256:e84e7f2a4525… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.2 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/twin/derived/SYNTH_VERS_DOCS_S3_REVISED.docx.md | ACTUAL | 1 | for sha256:b224c0a01594… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 7.8 KB | 74 units cut from the source document |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/twin/derived/SYNTH_VERS_DOCS_S3_ORIGINAL.docx.md | ACTUAL | 1 | for sha256:e84e7f2a4525… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 2.5 KB | section-by-section states table for the supporting document |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/twin/section-map.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.8 KB | page-range map, both documents |

## actuals/SYNTH_VERS_DOCS_S3_REVISED/ (detection, plan)

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| actuals/SYNTH_VERS_DOCS_S3_REVISED/detection.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 998 B | skill detection, HIGH confidence |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/plan.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 2.0 KB | plan of action, 6 steps, 74 units |

## actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/ (74 files)

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/APPA-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | finding, APPA-1, CHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/APPA-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 956 B | finding, APPA-2, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/APPA-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 870 B | finding, APPA-3, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/APPA-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 957 B | finding, APPA-4, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/APPA-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 944 B | finding, APPA-5, ADDED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/APPB-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 773 B | finding, APPB-1, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/APPB-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 777 B | finding, APPB-2, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/APPB-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 763 B | finding, APPB-3, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/APPB-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 771 B | finding, APPB-4, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/APPB-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 856 B | finding, APPB-5, ADDED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/APPB-6.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 873 B | finding, APPB-6, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/APPB-7.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 800 B | finding, APPB-7, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/COMM-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.2 KB | finding, COMM-1, CHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/COMM-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | finding, COMM-2, CHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/COMM-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 986 B | finding, COMM-3, CHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/COMM-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | finding, COMM-4, CHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/COMM-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | finding, COMM-5, CHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/COMM-6.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.4 KB | finding, COMM-6, CHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/CONTACT-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.2 KB | finding, CONTACT-1, CHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/DEL-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 835 B | finding, DEL-1, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/DEL-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 912 B | finding, DEL-2, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/DEL-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.0 KB | finding, DEL-3, CHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/DEL-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 798 B | finding, DEL-4, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/DEL-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 777 B | finding, DEL-5, ADDED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/DEL-6.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 885 B | finding, DEL-6, ADDED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/DEL-7.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | finding, DEL-7, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/ELIG-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | finding, ELIG-1, CHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/ELIG-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | finding, ELIG-2, CHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/ELIG-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.2 KB | finding, ELIG-3, CHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/ELIG-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | finding, ELIG-4, CHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/EVAL-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 961 B | finding, EVAL-1, CHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/EVAL-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 988 B | finding, EVAL-2, CHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/EVAL-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 898 B | finding, EVAL-3, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/EVAL-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 824 B | finding, EVAL-4, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/EVAL-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.0 KB | finding, EVAL-5, CHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/EVAL-6.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 819 B | finding, EVAL-6, ADDED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/INS-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.0 KB | finding, INS-1, CHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/INS-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 933 B | finding, INS-2, CHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/INS-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 849 B | finding, INS-3, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/INS-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 873 B | finding, INS-4, ADDED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/INS-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 995 B | finding, INS-5, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/INTRO-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 2.2 KB | finding, INTRO-1, CHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/OBJ-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 964 B | finding, OBJ-1, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/OBJ-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 937 B | finding, OBJ-2, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/OBJ-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 867 B | finding, OBJ-3, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/OBJ-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 998 B | finding, OBJ-4, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/OBJ-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 885 B | finding, OBJ-5, ADDED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/OPREQ-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 946 B | finding, OPREQ-1, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/OPREQ-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 955 B | finding, OPREQ-2, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/OPREQ-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 967 B | finding, OPREQ-3, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/OPREQ-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 947 B | finding, OPREQ-4, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/OPREQ-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 924 B | finding, OPREQ-5, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/OPREQ-6.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 917 B | finding, OPREQ-6, ADDED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/SCOPE-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.2 KB | finding, SCOPE-1, CHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/SCOPE-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 921 B | finding, SCOPE-2, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/SCOPE-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.2 KB | finding, SCOPE-3, CHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/SCOPE-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.0 KB | finding, SCOPE-4, CHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/SCOPE-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1017 B | finding, SCOPE-5, CHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/SCOPE-6.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 939 B | finding, SCOPE-6, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/SCOPE-7.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 956 B | finding, SCOPE-7, ADDED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/SCOPE-8.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 851 B | finding, SCOPE-8, ADDED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/SUB-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.6 KB | finding, SUB-1, CHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/TC-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 928 B | finding, TC-1, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/TC-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.0 KB | finding, TC-2, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/TIME-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1018 B | finding, TIME-1, CHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/TIME-10.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 824 B | finding, TIME-10, ADDED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/TIME-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 920 B | finding, TIME-2, CHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/TIME-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 957 B | finding, TIME-3, CHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/TIME-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 886 B | finding, TIME-4, CHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/TIME-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.0 KB | finding, TIME-5, CHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/TIME-6.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 854 B | finding, TIME-6, CHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/TIME-7.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 963 B | finding, TIME-7, CHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/TIME-8.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 853 B | finding, TIME-8, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S3_REVISED/findings/TIME-9.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 770 B | finding, TIME-9, ADDED |

## actuals/SYNTH_VERS_DOCS_S3_REVISED/report/

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| actuals/SYNTH_VERS_DOCS_S3_REVISED/report/report.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 10.8 KB | 74 rows, counts by kind, attention list |

## SYNTH_VERS_DOCS_S4_REVISED

## documents/

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| documents/SYNTH_VERS_DOCS_S4_REVISED/source/SYNTH_VERS_DOCS_S4_REVISED.xlsx | SOURCE | 2 | sha256:d6d90056d5d9e59eadcc31d089689e155db34d0cc3eb1f48c503a136739a9ade | — | — | 2026-09-11 | 2026-09-11 | 14.7 KB | RFP-MPSD-2026-0053-R1, reissued April 27, 2026; 6 sheets; now includes a completed fictional vendor response |
| documents/SYNTH_VERS_DOCS_S4_REVISED/supporting/SYNTH_VERS_DOCS_S4_ORIGINAL.xlsx | SUPPORTING | 1 | sha256:7d0717c828c03d4b9005ef44bae012f3c19bd57806276471285ea69671c7ce07 | — | — | 2026-09-11 | 2026-09-11 | 14.1 KB | RFP-MPSD-2026-0053, issued February 9, 2026; 5 sheets; superseded by source; blank template, unchanged |

## actuals/SYNTH_VERS_DOCS_S4_REVISED/twin/

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| actuals/SYNTH_VERS_DOCS_S4_REVISED/twin/SYNTH_VERS_DOCS_S4_REVISED.xlsx/page-001.md | ACTUAL | 4 | for sha256:d6d9005… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.2 KB | twin sheet page, corrected Markdown table, SURE |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/twin/SYNTH_VERS_DOCS_S4_REVISED.xlsx/page-002.md | ACTUAL | 4 | for sha256:d6d9005… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 4.1 KB | twin sheet page, corrected Markdown table, SURE |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/twin/SYNTH_VERS_DOCS_S4_REVISED.xlsx/page-003.md | ACTUAL | 4 | for sha256:d6d9005… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.4 KB | twin sheet page, corrected Markdown table, SURE |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/twin/SYNTH_VERS_DOCS_S4_REVISED.xlsx/page-004.md | ACTUAL | 4 | for sha256:d6d9005… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.6 KB | twin sheet page, corrected Markdown table, SURE |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/twin/SYNTH_VERS_DOCS_S4_REVISED.xlsx/page-005.md | ACTUAL | 4 | for sha256:d6d9005… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | twin sheet page, corrected Markdown table, SURE |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/twin/SYNTH_VERS_DOCS_S4_REVISED.xlsx/page-006.md | ACTUAL | 4 | for sha256:d6d9005… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.3 KB | twin sheet page, corrected Markdown table, SURE |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/twin/SYNTH_VERS_DOCS_S4_ORIGINAL.xlsx/page-001.md | ACTUAL | 2 | for sha256:7d0717c… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.1 KB | twin sheet page, corrected Markdown table, SURE |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/twin/SYNTH_VERS_DOCS_S4_ORIGINAL.xlsx/page-002.md | ACTUAL | 2 | for sha256:7d0717c… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 2.2 KB | twin sheet page, corrected Markdown table, SURE |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/twin/SYNTH_VERS_DOCS_S4_ORIGINAL.xlsx/page-003.md | ACTUAL | 2 | for sha256:7d0717c… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | twin sheet page, corrected Markdown table, SURE |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/twin/SYNTH_VERS_DOCS_S4_ORIGINAL.xlsx/page-004.md | ACTUAL | 2 | for sha256:7d0717c… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | twin sheet page, corrected Markdown table, SURE |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/twin/SYNTH_VERS_DOCS_S4_ORIGINAL.xlsx/page-005.md | ACTUAL | 2 | for sha256:7d0717c… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | twin sheet page, corrected Markdown table, SURE |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/twin/section-map.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.6 KB | sheet map, both workbooks |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/twin/derived/SYNTH_VERS_DOCS_S4_REVISED.xlsx.md | ACTUAL | 3 | for sha256:d6d9005… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 6.5 KB | 46 row units, source workbook |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/twin/derived/SYNTH_VERS_DOCS_S4_ORIGINAL.xlsx.md | ACTUAL | 2 | for sha256:7d0717c… | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.2 KB | sheet list, supporting workbook |

## actuals/SYNTH_VERS_DOCS_S4_REVISED/ (detection, plan)

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| actuals/SYNTH_VERS_DOCS_S4_REVISED/detection.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | skill detection: version-docs |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/plan.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.6 KB | plan of action, 6 steps |

## actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/ (47 files)

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/COVER-1.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.1 KB | finding, COVER-1 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/COVER-2.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, COVER-2 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/COVER-3.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, COVER-3 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/COVER-4.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, COVER-4 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/CS-01.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, CS-01 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/CS-02.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, CS-02 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/CS-03.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, CS-03 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/CS-04.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, CS-04 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/CS-05.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, CS-05 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/CSEC-1.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, CSEC-1 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/P-01.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, P-01 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/P-02.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, P-02 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/P-03.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, P-03 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/P-04.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, P-04 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/P-05.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, P-05 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/P-06.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, P-06 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/P-07.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, P-07 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/P-08.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, P-08 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/P-09.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, P-09 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/P-10.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.8 KB | finding, P-10 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/P-11.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, P-11 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/PRICE-TOTAL.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, PRICE-TOTAL |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/R-01.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.1 KB | finding, R-01 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/R-02.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.1 KB | finding, R-02 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/R-03.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, R-03 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/R-04.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, R-04 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/R-05.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, R-05 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/R-06.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.2 KB | finding, R-06 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/R-07.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, R-07 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/R-08.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, R-08 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/R-09.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, R-09 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/R-10.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, R-10 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/R-11.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.1 KB | finding, R-11 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/R-12.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.1 KB | finding, R-12 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/R-13.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, R-13 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/R-14.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, R-14 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/R-15.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, R-15 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/R-16.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, R-16 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/R-17.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.1 KB | finding, R-17 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/REF-1.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.3 KB | finding, REF-1 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/REF-2.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.0 KB | finding, REF-2 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/REF-3.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, REF-3 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/REQSUM-1.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.2 KB | finding, REQSUM-1 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/TIME-1.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.1 KB | finding, TIME-1 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/TIME-2.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 0.9 KB | finding, TIME-2 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/TIME-3.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.1 KB | finding, TIME-3 |
| actuals/SYNTH_VERS_DOCS_S4_REVISED/findings/TIME-4.md | ACTUAL | 3 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 1.2 KB | finding, TIME-4 |

## actuals/SYNTH_VERS_DOCS_S4_REVISED/report/

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| actuals/SYNTH_VERS_DOCS_S4_REVISED/report/report.md | ACTUAL | 2 | — | — | automated cross-check pass | 2026-09-11 | 2026-09-11 | 8.4 KB | 47-row deliverable: counts and row-by-row breakdown |


## SYNTH_VERS_DOCS_S5_REVISED

## documents/

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| documents/SYNTH_VERS_DOCS_S5_REVISED/source/SYNTH_VERS_DOCS_S5_REVISED.pptx | SOURCE | 1 | sha256:7b7d85506621b886cee5ec7ab0d57aae64d3f12e589c8e4843b1cbcd82d925cc | — | — | 2026-09-15 | 2026-09-15 | 222.9 KB | RFP-SEC-2026-0029-R1, reissued May 19, 2026, current |
| documents/SYNTH_VERS_DOCS_S5_REVISED/supporting/SYNTH_VERS_DOCS_S5_ORIGINAL.pptx | SUPPORTING | 1 | sha256:82610a45cedc59a2344baf4d783da9481c7b7093f34d6bd9b3dc397bc411ece8 | SYNTH_VERS_DOCS_S5_REVISED.pptx | — | 2026-09-15 | 2026-09-15 | 208.6 KB | RFP-SEC-2026-0029, issued March 3, 2026, superseded |

## actuals/SYNTH_VERS_DOCS_S5_REVISED/twin/

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| actuals/SYNTH_VERS_DOCS_S5_REVISED/twin/SYNTH_VERS_DOCS_S5_REVISED.pptx/page-001.md | ACTUAL | 1 | for sha256:7b7d85506621… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 776 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/twin/SYNTH_VERS_DOCS_S5_REVISED.pptx/page-002.md | ACTUAL | 1 | for sha256:7b7d85506621… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 616 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/twin/SYNTH_VERS_DOCS_S5_REVISED.pptx/page-003.md | ACTUAL | 1 | for sha256:7b7d85506621… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 984 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/twin/SYNTH_VERS_DOCS_S5_REVISED.pptx/page-004.md | ACTUAL | 1 | for sha256:7b7d85506621… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 794 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/twin/SYNTH_VERS_DOCS_S5_REVISED.pptx/page-005.md | ACTUAL | 1 | for sha256:7b7d85506621… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 916 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/twin/SYNTH_VERS_DOCS_S5_REVISED.pptx/page-006.md | ACTUAL | 1 | for sha256:7b7d85506621… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 818 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/twin/SYNTH_VERS_DOCS_S5_REVISED.pptx/page-007.md | ACTUAL | 1 | for sha256:7b7d85506621… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 852 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/twin/SYNTH_VERS_DOCS_S5_REVISED.pptx/page-008.md | ACTUAL | 1 | for sha256:7b7d85506621… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 726 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/twin/SYNTH_VERS_DOCS_S5_REVISED.pptx/page-009.md | ACTUAL | 1 | for sha256:7b7d85506621… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 728 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/twin/SYNTH_VERS_DOCS_S5_REVISED.pptx/page-010.md | ACTUAL | 1 | for sha256:7b7d85506621… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 615 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/twin/SYNTH_VERS_DOCS_S5_REVISED.pptx/page-011.md | ACTUAL | 1 | for sha256:7b7d85506621… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 863 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/twin/SYNTH_VERS_DOCS_S5_REVISED.pptx/page-012.md | ACTUAL | 1 | for sha256:7b7d85506621… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 775 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/twin/SYNTH_VERS_DOCS_S5_ORIGINAL.pptx/page-001.md | ACTUAL | 1 | for sha256:82610a45cedc… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 716 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/twin/SYNTH_VERS_DOCS_S5_ORIGINAL.pptx/page-002.md | ACTUAL | 1 | for sha256:82610a45cedc… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 572 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/twin/SYNTH_VERS_DOCS_S5_ORIGINAL.pptx/page-003.md | ACTUAL | 1 | for sha256:82610a45cedc… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 789 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/twin/SYNTH_VERS_DOCS_S5_ORIGINAL.pptx/page-004.md | ACTUAL | 1 | for sha256:82610a45cedc… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 688 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/twin/SYNTH_VERS_DOCS_S5_ORIGINAL.pptx/page-005.md | ACTUAL | 1 | for sha256:82610a45cedc… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 816 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/twin/SYNTH_VERS_DOCS_S5_ORIGINAL.pptx/page-006.md | ACTUAL | 1 | for sha256:82610a45cedc… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 727 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/twin/SYNTH_VERS_DOCS_S5_ORIGINAL.pptx/page-007.md | ACTUAL | 1 | for sha256:82610a45cedc… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 703 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/twin/SYNTH_VERS_DOCS_S5_ORIGINAL.pptx/page-008.md | ACTUAL | 1 | for sha256:82610a45cedc… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 718 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/twin/SYNTH_VERS_DOCS_S5_ORIGINAL.pptx/page-009.md | ACTUAL | 1 | for sha256:82610a45cedc… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 580 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/twin/SYNTH_VERS_DOCS_S5_ORIGINAL.pptx/page-010.md | ACTUAL | 1 | for sha256:82610a45cedc… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 807 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/twin/SYNTH_VERS_DOCS_S5_ORIGINAL.pptx/page-011.md | ACTUAL | 1 | for sha256:82610a45cedc… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 724 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/twin/derived/SYNTH_VERS_DOCS_S5_REVISED.pptx.md | ACTUAL | 1 | for sha256:7b7d85506621… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 6.3 KB | 52 units cut from the source deck |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/twin/derived/SYNTH_VERS_DOCS_S5_ORIGINAL.pptx.md | ACTUAL | 1 | for sha256:82610a45cedc… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.6 KB | section-by-section states table for the supporting deck |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/twin/section-map.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.2 KB | slide-range map, both decks |

## actuals/SYNTH_VERS_DOCS_S5_REVISED/ (detection, plan)

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| actuals/SYNTH_VERS_DOCS_S5_REVISED/detection.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 841 B | skill detection, HIGH confidence |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/plan.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.5 KB | plan of action, 6 steps, 52 units |

## actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/ (52 files)

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/ABOUT-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.2 KB | finding, ABOUT-1, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/ABOUT-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.2 KB | finding, ABOUT-2, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/ABOUT-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.2 KB | finding, ABOUT-3, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/ABOUT-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | finding, ABOUT-4, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/COMM-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 866 B | finding, COMM-1, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/COMM-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 992 B | finding, COMM-2, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/COMM-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1007 B | finding, COMM-3, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/COMM-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1015 B | finding, COMM-4, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/COMM-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | finding, COMM-5, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/COMM-6.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | finding, COMM-6, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/CONTACT-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.2 KB | finding, CONTACT-1, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/CONTACT-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.2 KB | finding, CONTACT-2, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/COVER-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.0 KB | finding, COVER-1, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/COVER-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | finding, COVER-2, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/ELIG-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 959 B | finding, ELIG-1, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/ELIG-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 909 B | finding, ELIG-2, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/ELIG-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.0 KB | finding, ELIG-3, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/ELIG-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 973 B | finding, ELIG-4, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/ELIG-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 943 B | finding, ELIG-5, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/EV-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 931 B | finding, EV-1, ADDED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/EV-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 881 B | finding, EV-2, ADDED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/EV-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 958 B | finding, EV-3, ADDED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/EV-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 922 B | finding, EV-4, ADDED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/EVAL-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 924 B | finding, EVAL-1, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/EVAL-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 965 B | finding, EVAL-2, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/EVAL-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 769 B | finding, EVAL-3, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/EVAL-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 783 B | finding, EVAL-4, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/EVAL-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 731 B | finding, EVAL-5, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/EVAL-6.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 812 B | finding, EVAL-6, ADDED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/OBJ-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 958 B | finding, OBJ-1, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/OBJ-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 928 B | finding, OBJ-2, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/OBJ-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 921 B | finding, OBJ-3, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/OBJ-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 912 B | finding, OBJ-4, ADDED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/OBJ-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1022 B | finding, OBJ-5, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/SCOPE-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 940 B | finding, SCOPE-1, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/SCOPE-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 896 B | finding, SCOPE-2, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/SCOPE-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 838 B | finding, SCOPE-3, ADDED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/SCOPE-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.0 KB | finding, SCOPE-4, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/SCOPE-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.0 KB | finding, SCOPE-5, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/SCOPE-6.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | finding, SCOPE-6, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/TECH-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 943 B | finding, TECH-1, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/TECH-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 952 B | finding, TECH-2, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/TECH-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | finding, TECH-3, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/TECH-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 960 B | finding, TECH-4, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/TECH-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 944 B | finding, TECH-5, ADDED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/TIME-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 959 B | finding, TIME-1, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/TIME-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.2 KB | finding, TIME-2, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/TIME-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 849 B | finding, TIME-3, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/TIME-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 937 B | finding, TIME-4, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/TIME-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 840 B | finding, TIME-5, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/TIME-6.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 854 B | finding, TIME-6, CHANGED |
| actuals/SYNTH_VERS_DOCS_S5_REVISED/findings/TIME-7.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 953 B | finding, TIME-7, CHANGED |

## actuals/SYNTH_VERS_DOCS_S5_REVISED/report/

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| actuals/SYNTH_VERS_DOCS_S5_REVISED/report/report.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 8.8 KB | 52 rows, counts by kind, attention list |

## SYNTH_VERS_DOCS_S6_REVISED

## documents/

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| documents/SYNTH_VERS_DOCS_S6_REVISED/source/SYNTH_VERS_DOCS_S6_REVISED.pdf | SOURCE | 1 | sha256:268b95136365b80a89a7f5344e4385865526db2d9f356cfad7ca0316e8ef22ae | — | — | 2026-09-15 | 2026-09-15 | 300.0 KB | RFP-CDOT-2026-1187-R1, reissued May 4, 2026, current |
| documents/SYNTH_VERS_DOCS_S6_REVISED/supporting/SYNTH_VERS_DOCS_S6_ORIGINAL.pdf | SUPPORTING | 1 | sha256:264b231246823fd6f42c2815424742e4c3ce8f222ca5534b7fa513ffa941eeed | SYNTH_VERS_DOCS_S6_REVISED.pdf | — | 2026-09-15 | 2026-09-15 | 273.2 KB | RFP-CDOT-2026-1187, issued January 8, 2026, superseded |

## actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_REVISED.pdf/page-001.md | ACTUAL | 1 | for sha256:268b95136365… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_REVISED.pdf/page-002.md | ACTUAL | 1 | for sha256:268b95136365… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.5 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_REVISED.pdf/page-003.md | ACTUAL | 1 | for sha256:268b95136365… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 3.3 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_REVISED.pdf/page-004.md | ACTUAL | 1 | for sha256:268b95136365… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 908 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_REVISED.pdf/page-005.md | ACTUAL | 1 | for sha256:268b95136365… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.7 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_REVISED.pdf/page-006.md | ACTUAL | 1 | for sha256:268b95136365… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 2.7 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_REVISED.pdf/page-007.md | ACTUAL | 1 | for sha256:268b95136365… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 741 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_REVISED.pdf/page-008.md | ACTUAL | 1 | for sha256:268b95136365… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.7 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_REVISED.pdf/page-009.md | ACTUAL | 1 | for sha256:268b95136365… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 2.6 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_REVISED.pdf/page-010.md | ACTUAL | 1 | for sha256:268b95136365… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 912 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_REVISED.pdf/page-011.md | ACTUAL | 1 | for sha256:268b95136365… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 2.1 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_REVISED.pdf/page-012.md | ACTUAL | 1 | for sha256:268b95136365… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 683 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_REVISED.pdf/page-013.md | ACTUAL | 1 | for sha256:268b95136365… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 2.5 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_REVISED.pdf/page-014.md | ACTUAL | 1 | for sha256:268b95136365… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 2.1 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_REVISED.pdf/page-015.md | ACTUAL | 1 | for sha256:268b95136365… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 896 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_REVISED.pdf/page-016.md | ACTUAL | 1 | for sha256:268b95136365… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 2.2 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_REVISED.pdf/page-017.md | ACTUAL | 1 | for sha256:268b95136365… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 422 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_REVISED.pdf/page-018.md | ACTUAL | 1 | for sha256:268b95136365… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 2.5 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_REVISED.pdf/page-019.md | ACTUAL | 1 | for sha256:268b95136365… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_ORIGINAL.pdf/page-001.md | ACTUAL | 1 | for sha256:264b23124682… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_ORIGINAL.pdf/page-002.md | ACTUAL | 1 | for sha256:264b23124682… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.5 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_ORIGINAL.pdf/page-003.md | ACTUAL | 1 | for sha256:264b23124682… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 3.3 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_ORIGINAL.pdf/page-004.md | ACTUAL | 1 | for sha256:264b23124682… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 422 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_ORIGINAL.pdf/page-005.md | ACTUAL | 1 | for sha256:264b23124682… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.4 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_ORIGINAL.pdf/page-006.md | ACTUAL | 1 | for sha256:264b23124682… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 2.7 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_ORIGINAL.pdf/page-007.md | ACTUAL | 1 | for sha256:264b23124682… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 559 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_ORIGINAL.pdf/page-008.md | ACTUAL | 1 | for sha256:264b23124682… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.6 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_ORIGINAL.pdf/page-009.md | ACTUAL | 1 | for sha256:264b23124682… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 2.5 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_ORIGINAL.pdf/page-010.md | ACTUAL | 1 | for sha256:264b23124682… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 673 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_ORIGINAL.pdf/page-011.md | ACTUAL | 1 | for sha256:264b23124682… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.9 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_ORIGINAL.pdf/page-012.md | ACTUAL | 1 | for sha256:264b23124682… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 686 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_ORIGINAL.pdf/page-013.md | ACTUAL | 1 | for sha256:264b23124682… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 2.3 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_ORIGINAL.pdf/page-014.md | ACTUAL | 1 | for sha256:264b23124682… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 2.0 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_ORIGINAL.pdf/page-015.md | ACTUAL | 1 | for sha256:264b23124682… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 660 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_ORIGINAL.pdf/page-016.md | ACTUAL | 1 | for sha256:264b23124682… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.8 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_ORIGINAL.pdf/page-017.md | ACTUAL | 1 | for sha256:264b23124682… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 2.1 KB | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/SYNTH_VERS_DOCS_S6_ORIGINAL.pdf/page-018.md | ACTUAL | 1 | for sha256:264b23124682… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 968 B | twin page, corrected Markdown, SURE |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/derived/SYNTH_VERS_DOCS_S6_REVISED.pdf.md | ACTUAL | 1 | for sha256:268b95136365… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 24.9 KB | 178 units cut from the source document |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/derived/SYNTH_VERS_DOCS_S6_ORIGINAL.pdf.md | ACTUAL | 1 | for sha256:264b23124682… | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 3.1 KB | section-by-section states table for the supporting document |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/twin/section-map.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 2.5 KB | physical-page map, both documents |

## actuals/SYNTH_VERS_DOCS_S6_REVISED/ (detection, plan)

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| actuals/SYNTH_VERS_DOCS_S6_REVISED/detection.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.3 KB | skill detection, HIGH confidence |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/plan.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.9 KB | plan of action, 6 steps, 178 units |

## actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/ (178 files)

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPA-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 828 B | finding, APPA-1, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPA-10.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.0 KB | finding, APPA-10, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPA-11.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 959 B | finding, APPA-11, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPA-12.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 934 B | finding, APPA-12, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPA-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 828 B | finding, APPA-2, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPA-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 989 B | finding, APPA-3, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPA-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 966 B | finding, APPA-4, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPA-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 948 B | finding, APPA-5, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPA-6.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.0 KB | finding, APPA-6, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPA-7.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 800 B | finding, APPA-7, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPA-8.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 934 B | finding, APPA-8, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPA-9.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 869 B | finding, APPA-9, ADDED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPB-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.2 KB | finding, APPB-1, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPB-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 763 B | finding, APPB-2, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPB-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 777 B | finding, APPB-3, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPB-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 763 B | finding, APPB-4, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPB-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 795 B | finding, APPB-5, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPB-6.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 837 B | finding, APPB-6, ADDED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPB-7.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 765 B | finding, APPB-7, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPB-8.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 800 B | finding, APPB-8, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPC-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.0 KB | finding, APPC-1, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPC-10.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 891 B | finding, APPC-10, ADDED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPC-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 983 B | finding, APPC-2, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPC-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 986 B | finding, APPC-3, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPC-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 892 B | finding, APPC-4, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPC-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | finding, APPC-5, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPC-6.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 945 B | finding, APPC-6, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPC-7.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | finding, APPC-7, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPC-8.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 920 B | finding, APPC-8, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPC-9.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 892 B | finding, APPC-9, ADDED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPD-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.5 KB | finding, APPD-1, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPD-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.2 KB | finding, APPD-2, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPD-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.3 KB | finding, APPD-3, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPD-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.6 KB | finding, APPD-4, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPD-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.2 KB | finding, APPD-5, ADDED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPE-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.3 KB | finding, APPE-1, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPE-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.0 KB | finding, APPE-2, ADDED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPE-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.3 KB | finding, APPE-3, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPE-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.2 KB | finding, APPE-4, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPF-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.0 KB | finding, APPF-1, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPF-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | finding, APPF-2, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPF-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 958 B | finding, APPF-3, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPF-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 922 B | finding, APPF-4, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPF-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 936 B | finding, APPF-5, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/APPF-6.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 949 B | finding, APPF-6, ADDED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/COMM-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 965 B | finding, COMM-1, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/COMM-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | finding, COMM-2, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/COMM-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.5 KB | finding, COMM-3, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/COMM-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 940 B | finding, COMM-4, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/COMM-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 921 B | finding, COMM-5, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/COMM-6.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.2 KB | finding, COMM-6, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/CONTACT-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.2 KB | finding, CONTACT-1, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/DEF-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1004 B | finding, DEF-1, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/DEF-10.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 865 B | finding, DEF-10, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/DEF-11.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 895 B | finding, DEF-11, ADDED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/DEF-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 971 B | finding, DEF-2, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/DEF-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 930 B | finding, DEF-3, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/DEF-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 914 B | finding, DEF-4, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/DEF-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 917 B | finding, DEF-5, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/DEF-6.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 927 B | finding, DEF-6, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/DEF-7.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 853 B | finding, DEF-7, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/DEF-8.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 939 B | finding, DEF-8, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/DEF-9.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 862 B | finding, DEF-9, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/DEL-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 786 B | finding, DEL-1, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/DEL-10.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 906 B | finding, DEL-10, ADDED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/DEL-11.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | finding, DEL-11, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/DEL-12.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1023 B | finding, DEL-12, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/DEL-13.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 933 B | finding, DEL-13, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/DEL-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 784 B | finding, DEL-2, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/DEL-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 806 B | finding, DEL-3, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/DEL-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 802 B | finding, DEL-4, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/DEL-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 774 B | finding, DEL-5, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/DEL-6.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 893 B | finding, DEL-6, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/DEL-7.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 776 B | finding, DEL-7, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/DEL-8.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | finding, DEL-8, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/DEL-9.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 836 B | finding, DEL-9, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/ELIG-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | finding, ELIG-1, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/ELIG-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.0 KB | finding, ELIG-2, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/ELIG-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.3 KB | finding, ELIG-3, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/ELIG-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 930 B | finding, ELIG-4, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/ELIG-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 928 B | finding, ELIG-5, ADDED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/ELIG-6.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | finding, ELIG-6, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/ELIG-7.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 961 B | finding, ELIG-7, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/EVAL-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 954 B | finding, EVAL-1, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/EVAL-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 872 B | finding, EVAL-2, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/EVAL-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1020 B | finding, EVAL-3, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/EVAL-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 782 B | finding, EVAL-4, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/EVAL-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.0 KB | finding, EVAL-5, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/EVAL-6.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 954 B | finding, EVAL-6, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/FR-01.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 900 B | finding, FR-01, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/FR-02.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 926 B | finding, FR-02, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/FR-03.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 904 B | finding, FR-03, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/FR-04.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 934 B | finding, FR-04, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/FR-05.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 904 B | finding, FR-05, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/FR-06.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 920 B | finding, FR-06, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/FR-07.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.0 KB | finding, FR-07, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/FR-08.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | finding, FR-08, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/FR-09.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 952 B | finding, FR-09, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/FR-10.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 912 B | finding, FR-10, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/FR-11.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 922 B | finding, FR-11, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/FR-12.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 916 B | finding, FR-12, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/FR-13.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 882 B | finding, FR-13, ADDED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/FR-14.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 859 B | finding, FR-14, ADDED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/INS-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.0 KB | finding, INS-1, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/INS-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.0 KB | finding, INS-2, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/INS-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 944 B | finding, INS-3, ADDED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/INS-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | finding, INS-4, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/INS-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | finding, INS-5, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/INTRO-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 2.0 KB | finding, INTRO-1, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/INTRO-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.7 KB | finding, INTRO-2, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/OBJ-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 904 B | finding, OBJ-1, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/OBJ-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 936 B | finding, OBJ-2, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/OBJ-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 962 B | finding, OBJ-3, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/OBJ-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 942 B | finding, OBJ-4, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/OBJ-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 896 B | finding, OBJ-5, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/OBJ-6.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 900 B | finding, OBJ-6, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/OBJ-7.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 841 B | finding, OBJ-7, ADDED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/SCOPE-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 916 B | finding, SCOPE-1, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/SCOPE-10.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.0 KB | finding, SCOPE-10, ADDED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/SCOPE-11.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.0 KB | finding, SCOPE-11, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/SCOPE-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | finding, SCOPE-2, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/SCOPE-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1004 B | finding, SCOPE-3, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/SCOPE-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 959 B | finding, SCOPE-4, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/SCOPE-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | finding, SCOPE-5, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/SCOPE-6.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 878 B | finding, SCOPE-6, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/SCOPE-7.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 898 B | finding, SCOPE-7, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/SCOPE-8.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 974 B | finding, SCOPE-8, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/SCOPE-9.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 956 B | finding, SCOPE-9, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/SUB-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.7 KB | finding, SUB-1, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TC-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1009 B | finding, TC-1, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TC-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | finding, TC-2, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TC-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | finding, TC-3, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TC-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.3 KB | finding, TC-4, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TC-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.2 KB | finding, TC-5, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TC-6.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.3 KB | finding, TC-6, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TC-7.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.3 KB | finding, TC-7, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TC-8.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.0 KB | finding, TC-8, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TC-9.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.2 KB | finding, TC-9, ADDED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TECH-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 886 B | finding, TECH-1, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TECH-10.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 832 B | finding, TECH-10, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TECH-11.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 876 B | finding, TECH-11, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TECH-12.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 832 B | finding, TECH-12, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TECH-13.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.0 KB | finding, TECH-13, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TECH-14.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 919 B | finding, TECH-14, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TECH-15.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 938 B | finding, TECH-15, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TECH-16.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.2 KB | finding, TECH-16, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TECH-17.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.1 KB | finding, TECH-17, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TECH-18.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 959 B | finding, TECH-18, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TECH-19.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 938 B | finding, TECH-19, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TECH-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 890 B | finding, TECH-2, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TECH-20.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1015 B | finding, TECH-20, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TECH-21.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 936 B | finding, TECH-21, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TECH-22.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 888 B | finding, TECH-22, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TECH-23.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 884 B | finding, TECH-23, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TECH-24.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 947 B | finding, TECH-24, ADDED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TECH-25.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 842 B | finding, TECH-25, ADDED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TECH-26.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 935 B | finding, TECH-26, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TECH-27.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 911 B | finding, TECH-27, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TECH-28.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 949 B | finding, TECH-28, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TECH-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 910 B | finding, TECH-3, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TECH-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 918 B | finding, TECH-4, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TECH-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 997 B | finding, TECH-5, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TECH-6.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 861 B | finding, TECH-6, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TECH-7.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 852 B | finding, TECH-7, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TECH-8.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 872 B | finding, TECH-8, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TECH-9.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 866 B | finding, TECH-9, UNCHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TIME-1.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 967 B | finding, TIME-1, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TIME-10.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 1.0 KB | finding, TIME-10, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TIME-11.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 983 B | finding, TIME-11, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TIME-12.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 943 B | finding, TIME-12, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TIME-2.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 859 B | finding, TIME-2, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TIME-3.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 948 B | finding, TIME-3, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TIME-4.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 868 B | finding, TIME-4, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TIME-5.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 910 B | finding, TIME-5, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TIME-6.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 849 B | finding, TIME-6, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TIME-7.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 920 B | finding, TIME-7, CHANGED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TIME-8.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 843 B | finding, TIME-8, ADDED |
| actuals/SYNTH_VERS_DOCS_S6_REVISED/findings/TIME-9.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 954 B | finding, TIME-9, CHANGED |

## actuals/SYNTH_VERS_DOCS_S6_REVISED/report/

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| actuals/SYNTH_VERS_DOCS_S6_REVISED/report/report.md | ACTUAL | 1 | — | — | automated cross-check pass | 2026-09-15 | 2026-09-15 | 22.7 KB | 178 rows, counts by kind, attention list |

