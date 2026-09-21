# file-index.md

Every file in this archive: role, version, digest, verified-by, dates, size, description. Grouped by the folder structure declared in `../bootstrap.md` (the skill-level bootstrap, shared across every sample of `drawing-comparison` — this sample has no bootstrap.md of its own), so the index reads as a map of the archive rather than one flat table.

Roles: SOURCE, SUPPORTING, SKILL, ACTUAL, RUN, TEMPLATE, OUTPUT, ARCHIVE.

`runs/`, `templates/`, `Doc/`, `Deck/`, `Excel/` are empty — no engine run has been produced for this project yet, so there is nothing to index there.

## Pack facts

The facts a per-sample `bootstrap.md` used to carry in its front-matter block, before `drawing-comparison/bootstrap.md` became the one shared skill-level bootstrap (2026-09-21, see `pivot.md` § 12):

| field | value |
|---|---|
| source | `documents/source/AD-3010-C-330030-SHT-004-REV4.pdf` |
| supporting | `documents/supporting/AD-3010-C-330030-SHT-004-REV3.pdf` |
| pages | 1 physical sheet per document (PDF rule) |
| state | verified — checker-equivalent pass done by hand, see `pivot.md` § Agreement and § Method; not the two-independent-human-reader standard of design section 8. Not signed. Corrected 2026-09-17, see `pivot.md` § 8 |
| signed-by | — |
| classification | customer-confidential — supplied by Assent Steel for this project; not public-synthetic like the `usecase-4` samples |
| profile | superseded-document 1 (REV3 itself, kept in `supporting/`); revision-cloud-untagged 2 (`MEMB-4`, `MEMB-5`); already-communicated marker 1 (`NOTE-1`); reformat control case 2 (`CTRL-1`, `CTRL-3`); repeated-callout ambiguity 3 (`MEMB-10`, `MEMB-11`, `MEMB-12`, see `pivot.md` § 4); near-miss 0; contradiction 0; stated-absence 0; spilled-table 0; figure-answer 19 of 22 findings; out-of-pack cross-reference 1 (`NOTE-1` item 1, "SEE SHEET 001") |
| profile-vocabulary | see `skills/drawing-comparison.md` § Pack profile |

## Root files

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| prompting.md | ARCHIVE | 4 | — | — | — | 2026-09-15 | 2026-09-21 | 8.0 KB | instruction log |
| pivot.md | ARCHIVE | 4 | — | — | — | 2026-09-15 | 2026-09-21 | 20 KB | decision log, agreement record, Context, Coverage |
| audit-log.md | ARCHIVE | 2 | — | — | — | 2026-09-21 | 2026-09-21 | 12 KB | workflow step log — one entry per pass through a skill Step, with per-step detail (exact commands, coordinates, values, not just a summary row); see templates/audit-log.md |
| file-index.md | ARCHIVE | 4 | — | — | — | 2026-09-15 | 2026-09-21 | — | this file; no longer indexes a bootstrap.md — see ../bootstrap.md and this file's own "Pack facts" header |

## documents/

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| documents/source/AD-3010-C-330030-SHT-004-REV4.pdf | SOURCE | 1 | sha256:e2c1629b3536b5f2c773200403c11edb73f1f0678931f2f3db1becad130034d1 | — | — | 2026-09-15 | 2026-09-15 | 200 KB | Rev 4, issued for construction 27.07.2026; 1 page (A1); repaired from a multipart-wrapped DocuSign download, see pivot.md § 1 |
| documents/supporting/AD-3010-C-330030-SHT-004-REV3.pdf | SUPPORTING | 1 | sha256:d8afdded2146507660d5f0e2de55790f13c910472e63f2a1adb47a628a65cbe6 | — | — | 2026-09-15 | 2026-09-15 | 208 KB | Rev 3, issued for construction 20.04.2026; 1 page (A1); superseded by source; repaired from a multipart-wrapped DocuSign download, see pivot.md § 1 |

## skills/

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| skills/drawing-comparison.md | SKILL | 1 | — | — | — | 2026-09-15 | 2026-09-15 | 12 KB | drawing-comparison skill file: units, labels, finding shape, pack profile; new skill, adapted from version-compare |

## actuals/twin/

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| actuals/twin/AD-3010-C-330030-SHT-004-REV4.pdf/page-001.md | ACTUAL | 2 | for sha256:e2c1629b… | — | single-reader cross-check | 2026-09-15 | 2026-09-17 | 9.1 KB | twin page, corrected Markdown, SURE; table extended 2026-09-17 |
| actuals/twin/AD-3010-C-330030-SHT-004-REV3.pdf/page-001.md | ACTUAL | 2 | for sha256:d8afdded… | — | single-reader cross-check | 2026-09-15 | 2026-09-17 | 9.1 KB | twin page, corrected Markdown, SURE; table extended 2026-09-17 |
| actuals/twin/section-map.md | ACTUAL | 1 | — | — | single-reader cross-check | 2026-09-15 | 2026-09-15 | 4.0 KB | section map, both documents |
| actuals/twin/derived/AD-3010-C-330030-SHT-004-REV4.pdf.md | ACTUAL | 2 | for sha256:e2c1629b… | — | single-reader cross-check | 2026-09-15 | 2026-09-17 | 4.6 KB | 22 callout units, source document |
| actuals/twin/derived/AD-3010-C-330030-SHT-004-REV3.pdf.md | ACTUAL | 2 | for sha256:d8afdded… | — | single-reader cross-check | 2026-09-15 | 2026-09-17 | 4.2 KB | area list, supporting document |

## actuals/ (detection, plan)

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| actuals/detection.md | ACTUAL | 1 | — | — | single-reader cross-check | 2026-09-15 | 2026-09-15 | 4.0 KB | skill detection: drawing-comparison |
| actuals/plan.md | ACTUAL | 2 | — | — | single-reader cross-check | 2026-09-15 | 2026-09-17 | 4.4 KB | plan of action, 6 steps |

## actuals/findings/ (22 files)

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| actuals/findings/TITLE-1.md | ACTUAL | 1 | — | — | single-reader cross-check | 2026-09-15 | 2026-09-15 | 4.0 KB | finding, TITLE-1 |
| actuals/findings/REV-1.md | ACTUAL | 1 | — | — | single-reader cross-check | 2026-09-15 | 2026-09-15 | 4.0 KB | finding, REV-1 |
| actuals/findings/NOTE-1.md | ACTUAL | 1 | — | — | single-reader cross-check | 2026-09-15 | 2026-09-15 | 4.0 KB | finding, NOTE-1 |
| actuals/findings/MEMB-1.md | ACTUAL | 1 | — | — | single-reader cross-check | 2026-09-15 | 2026-09-15 | 4.0 KB | finding, MEMB-1 |
| actuals/findings/MEMB-2.md | ACTUAL | 1 | — | — | single-reader cross-check | 2026-09-15 | 2026-09-15 | 4.0 KB | finding, MEMB-2 |
| actuals/findings/MEMB-3.md | ACTUAL | 1 | — | — | single-reader cross-check | 2026-09-15 | 2026-09-15 | 4.0 KB | finding, MEMB-3 |
| actuals/findings/MEMB-4.md | ACTUAL | 1 | — | — | single-reader cross-check | 2026-09-15 | 2026-09-15 | 4.0 KB | finding, MEMB-4 |
| actuals/findings/MEMB-5.md | ACTUAL | 1 | — | — | single-reader cross-check | 2026-09-15 | 2026-09-15 | 4.0 KB | finding, MEMB-5 |
| actuals/findings/MEMB-6.md | ACTUAL | 1 | — | — | single-reader cross-check | 2026-09-15 | 2026-09-15 | 4.0 KB | finding, MEMB-6 |
| actuals/findings/MEMB-7.md | ACTUAL | 1 | — | — | single-reader cross-check | 2026-09-15 | 2026-09-15 | 4.0 KB | finding, MEMB-7 |
| actuals/findings/MEMB-8.md | ACTUAL | 1 | — | — | single-reader cross-check | 2026-09-15 | 2026-09-15 | 4.0 KB | finding, MEMB-8 |
| actuals/findings/MEMB-9.md | ACTUAL | 1 | — | — | single-reader cross-check | 2026-09-15 | 2026-09-15 | 4.0 KB | finding, MEMB-9 |
| actuals/findings/MEMB-10.md | ACTUAL | 1 | — | — | single-reader cross-check | 2026-09-15 | 2026-09-15 | 4.0 KB | finding, MEMB-10; confidence UNSURE |
| actuals/findings/MEMB-11.md | ACTUAL | 1 | — | — | single-reader cross-check | 2026-09-15 | 2026-09-15 | 4.0 KB | finding, MEMB-11; confidence UNSURE |
| actuals/findings/MEMB-12.md | ACTUAL | 1 | — | — | single-reader cross-check | 2026-09-15 | 2026-09-15 | 4.0 KB | finding, MEMB-12; confidence UNSURE |
| actuals/findings/CTRL-1.md | ACTUAL | 2 | — | — | single-reader cross-check | 2026-09-15 | 2026-09-17 | 4.4 KB | finding, CTRL-1 (reformat control case); corrected 2026-09-17, see pivot.md § 8 |
| actuals/findings/CTRL-2.md | ACTUAL | 1 | — | — | single-reader cross-check | 2026-09-15 | 2026-09-15 | 4.0 KB | finding, CTRL-2 (plain control case) |
| actuals/findings/MEMB-13.md | ACTUAL | 1 | — | — | single-reader cross-check | 2026-09-17 | 2026-09-17 | 4.0 KB | finding, MEMB-13; added 2026-09-17, see pivot.md § 8 |
| actuals/findings/MEMB-14.md | ACTUAL | 1 | — | — | single-reader cross-check | 2026-09-17 | 2026-09-17 | 4.0 KB | finding, MEMB-14; added 2026-09-17 |
| actuals/findings/MEMB-15.md | ACTUAL | 1 | — | — | single-reader cross-check | 2026-09-17 | 2026-09-17 | 4.0 KB | finding, MEMB-15; added 2026-09-17 |
| actuals/findings/MEMB-16.md | ACTUAL | 1 | — | — | single-reader cross-check | 2026-09-17 | 2026-09-17 | 4.0 KB | finding, MEMB-16; added 2026-09-17 |
| actuals/findings/CTRL-3.md | ACTUAL | 1 | — | — | single-reader cross-check | 2026-09-17 | 2026-09-17 | 4.0 KB | finding, CTRL-3 (reformat control case, mirrors CTRL-1); added 2026-09-17 |

## actuals/report/

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| actuals/report/report.md | ACTUAL | 2 | — | — | single-reader cross-check | 2026-09-15 | 2026-09-17 | 4.8 KB | 22-row deliverable: counts and callout-by-callout rows |
