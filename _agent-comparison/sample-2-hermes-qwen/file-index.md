# File index — drawing-comparison/sample-2

Every file: role, version, digest, verified-by, dates, size, description. Digs shown are sha256, truncated to 16 hex chars; the full digest of each document is recorded once here and twin/finding actuals name `for-document:` by it. Updated at every stage; rows for `actuals/` files are appended as they are written. Grouped under `../bootstrap.md` (the skill-level bootstrap, shared across every sample of `drawing-comparison` — this sample has no bootstrap.md of its own, see § "Pack facts" below).

## Pack facts

The facts a per-sample `bootstrap.md` used to carry in its front-matter block, before `drawing-comparison/bootstrap.md` became the one shared skill-level bootstrap (2026-09-21, see `pivot.md` § 14):

| field | value |
|---|---|
| source | `documents/source/AD-3010-C-330030-SHT-004-REV4.pdf` |
| supporting | `documents/supporting/AD-3010-C-330030-SHT-004-REV3.pdf` |
| pages | 1 physical sheet per document (PDF rule) |
| state | verified (self-check, two-channel agreement recorded) — NOT signed: design §8 two-reader standard not met, and UNSURE share 3/27 = 11% exceeds the proposed 10% signing budget |
| signed-by | — |
| classification | customer-confidential; not public-synthetic |
| profile | superseded-document 1; revision-cloud-untagged 1 (`MEMB-8`); already-communicated marker 1 (`NOTE-2`); reformat control case 3 (`CTRL-1`, `CTRL-2`, `CTRL-3`); repeated-callout ambiguity 9; near-miss 2; contradiction 0; stated-absence 0; spilled-table 0; figure-answer 17 of 22 diff findings; out-of-pack cross-reference 1 (`NOTE-1`); packed-cell/placeholder-question/not-the-vendor's/answer-sheet — not applicable |
| profile-vocabulary | see `skills/drawing-comparison.md` § Pack profile |

## Root files

| file | role | version | digest | superseded-by | verified-by | created | modified | size | description |
|---|---|---|---|---|---|---|---|---|---|
| prompting.md | ACTUAL | 5 | sha256 not recomputed this edit | — | author + Claude (external edits, 2026-09-18, 2026-09-21) | 2026-09-16 | 2026-09-21 | 6,874 B | all instructions logged: pack brief, Stage-2 raster instruction, two stage-advance replies, plus 3 external structural edits |
| pivot.md | ACTUAL | 6 | sha256 not recomputed this edit | — | author + Claude (external edits, 2026-09-18, 2026-09-21) | 2026-09-16 | 2026-09-21 | 14,495 B | Method, Agreement, Context, Coverage, decisions 1–17 |
| audit-log.md | ACTUAL | 2 | sha256 not recomputed this edit | — | reconstructed by Claude, 2026-09-21, from this pack's own pivot.md/report.md | 2026-09-21 | 2026-09-21 | 7,960 B | workflow step log — one entry per pass through a skill Step, with per-step detail (exact zones, coordinates, values, not just a summary row); see templates/audit-log.md |
| file-index.md | ACTUAL(index) | 2 | — (this file; self-hash not recorded) | — | author | 2026-09-16 | 2026-09-21 | — | this index |
| documents/source/AD-3010-C-330030-SHT-004-REV4.pdf | SOURCE | 4 | sha256:e2c1629b3536b5f2c773200403c11edb73f1f0678931f2f3db1becad130034d1 | — | — | 2026-09-16 (copied) | 2026-09-16 | 202,322 B | Rev 4 IFC 27.07.2026; the current sheet being answered; copied byte-identical from sample-1/documents/source/ |
| documents/supporting/AD-3010-C-330030-SHT-004-REV3.pdf | SUPPORTING | 3 | sha256:d8afdded2146507660d5f0e2de55790f13c910472e63f2a1adb47a628a65cbe6 | documents/source/AD-3010-C-330030-SHT-004-REV4.pdf | — | 2026-09-16 (copied) | 2026-09-16 | 212,452 B | Rev 3 IFC 20.04.2026, superseded; the comparison baseline; copied byte-identical from sample-1/documents/supporting/ |
| skills/drawing-comparison.md | SKILL | 1 | sha256:c8170aec586cbe1a668017bbd097a7d59e42dfdffec94eddd8657b3f8b420e35 | — | reused from sample-1 unchanged per brief | 2026-09-16 | 2026-09-16 | 9,009 B | drawing-comparison skill: steps, rule, units/labels/finding-shape, pack profile; byte-identical to sample-1's |

| actuals/detection.md | ACTUAL | 1 | sha256:adca126d868ad4e5… | — | author cross-check (method: pivot §Method/§10) | 2026-09-16 | 2026-09-16 | 1,310 B | — |
| actuals/plan.md | ACTUAL | 1 | sha256:d65caad5ae87d299… | — | author cross-check (method: pivot §Method/§10) | 2026-09-16 | 2026-09-16 | 2,302 B | — |
| actuals/twin/section-map.md | ACTUAL | 1 | sha256:7f897f271026779f… | — | author cross-check (method: pivot §Method/§10) | 2026-09-16 | 2026-09-16 | 2,998 B | — |
| actuals/twin/AD-3010-C-330030-SHT-004-REV3.pdf/page-001.md | ACTUAL | 1 | sha256:cd96e516485eafcc… | — | author cross-check (method: pivot §Method/§10) | 2026-09-16 | 2026-09-16 | 8,609 B | — |
| actuals/twin/derived/AD-3010-C-330030-SHT-004-REV3.md | ACTUAL | 1 | sha256:69d78b2425a17637… | — | author cross-check (method: pivot §Method/§10) | 2026-09-16 | 2026-09-16 | 3,232 B | — |
| actuals/twin/derived/AD-3010-C-330030-SHT-004-REV4.md | ACTUAL | 1 | sha256:880a5e614b24dc19… | — | author cross-check (method: pivot §Method/§10) | 2026-09-16 | 2026-09-16 | 5,799 B | — |
| actuals/twin/derived/derived-full-inventory.md | ACTUAL | 1 | sha256:e0eb798a48aa7766… | — | author cross-check (method: pivot §Method/§10) | 2026-09-16 | 2026-09-16 | 10,596 B | — |
| actuals/twin/AD-3010-C-330030-SHT-004-REV4.pdf/page-001.md | ACTUAL | 1 | sha256:a2d5dde85e83d923… | — | author cross-check (method: pivot §Method/§10) | 2026-09-16 | 2026-09-16 | 10,411 B | — |

| actuals/findings/CTRL-1.md | ACTUAL | 1 | sha256:dde53b9c2cd4279d… | — | author cross-check (2 channels; see front matter) | 2026-09-16 | 2026-09-16 | 2,057 B | UNCHANGED, material=no, confidence=SURE |
| actuals/findings/CTRL-2.md | ACTUAL | 1 | sha256:c26033150f42e79c… | — | author cross-check (2 channels; see front matter) | 2026-09-16 | 2026-09-16 | 2,002 B | UNCHANGED, material=no, confidence=SURE |
| actuals/findings/CTRL-3.md | ACTUAL | 1 | sha256:979607e8a299d77c… | — | author cross-check (2 channels; see front matter) | 2026-09-16 | 2026-09-16 | 1,917 B | UNCHANGED, material=no, confidence=SURE |
| actuals/findings/CTRL-4.md | ACTUAL | 1 | sha256:7138825308d2c309… | — | author cross-check (2 channels; see front matter) | 2026-09-16 | 2026-09-16 | 2,215 B | UNCHANGED, material=no, confidence=SURE |
| actuals/findings/MEMB-1.md | ACTUAL | 1 | sha256:a9f3e431324312c9… | — | author cross-check (2 channels; see front matter) | 2026-09-16 | 2026-09-16 | 2,144 B | CHANGED, material=yes, confidence=SURE |
| actuals/findings/MEMB-11.md | ACTUAL | 1 | sha256:939619efcfd41c2d… | — | author cross-check (2 channels; see front matter) | 2026-09-16 | 2026-09-16 | 2,023 B | CHANGED, material=yes, confidence=SURE |
| actuals/findings/MEMB-12.md | ACTUAL | 1 | sha256:bad3f4e8af2cde1f… | — | author cross-check (2 channels; see front matter) | 2026-09-16 | 2026-09-16 | 2,191 B | CHANGED, material=yes, confidence=SURE |
| actuals/findings/MEMB-13.md | ACTUAL | 1 | sha256:25488279c9fc60d7… | — | author cross-check (2 channels; see front matter) | 2026-09-16 | 2026-09-16 | 1,864 B | CHANGED, material=yes, confidence=SURE |
| actuals/findings/MEMB-14.md | ACTUAL | 1 | sha256:19d5a050d5cf3c3b… | — | author cross-check (2 channels; see front matter) | 2026-09-16 | 2026-09-16 | 2,420 B | ADDED, material=yes, confidence=UNSURE |
| actuals/findings/MEMB-15.md | ACTUAL | 1 | sha256:eeeedde56ba4d133… | — | author cross-check (2 channels; see front matter) | 2026-09-16 | 2026-09-16 | 1,749 B | ADDED, material=yes, confidence=UNSURE |
| actuals/findings/MEMB-16.md | ACTUAL | 1 | sha256:ba49fe310de2649a… | — | author cross-check (2 channels; see front matter) | 2026-09-16 | 2026-09-16 | 1,701 B | CHANGED, material=yes, confidence=SURE |
| actuals/findings/MEMB-17.md | ACTUAL | 1 | sha256:81eeb0990b0d365d… | — | author cross-check (2 channels; see front matter) | 2026-09-16 | 2026-09-16 | 1,733 B | CHANGED, material=yes, confidence=SURE |
| actuals/findings/MEMB-18.md | ACTUAL | 1 | sha256:fe70322afcb2e932… | — | author cross-check (2 channels; see front matter) | 2026-09-16 | 2026-09-16 | 2,648 B | CHANGED, material=no, confidence=SURE |
| actuals/findings/MEMB-2.md | ACTUAL | 1 | sha256:94b3e6aa73651b90… | — | author cross-check (2 channels; see front matter) | 2026-09-16 | 2026-09-16 | 1,539 B | CHANGED, material=yes, confidence=SURE |
| actuals/findings/MEMB-3.md | ACTUAL | 1 | sha256:92473e41e7aea2d2… | — | author cross-check (2 channels; see front matter) | 2026-09-16 | 2026-09-16 | 1,541 B | CHANGED, material=yes, confidence=SURE |
| actuals/findings/MEMB-4.md | ACTUAL | 1 | sha256:5ed71b74aa69344d… | — | author cross-check (2 channels; see front matter) | 2026-09-16 | 2026-09-16 | 1,500 B | CHANGED, material=yes, confidence=SURE |
| actuals/findings/MEMB-5.md | ACTUAL | 1 | sha256:1a267eba910940b6… | — | author cross-check (2 channels; see front matter) | 2026-09-16 | 2026-09-16 | 1,532 B | CHANGED, material=yes, confidence=SURE |
| actuals/findings/MEMB-6.md | ACTUAL | 1 | sha256:d132ffa1fc546944… | — | author cross-check (2 channels; see front matter) | 2026-09-16 | 2026-09-16 | 1,501 B | CHANGED, material=yes, confidence=SURE |
| actuals/findings/MEMB-7.md | ACTUAL | 1 | sha256:45b7f5da4d691923… | — | author cross-check (2 channels; see front matter) | 2026-09-16 | 2026-09-16 | 2,222 B | CHANGED, material=yes, confidence=SURE |
| actuals/findings/MEMB-8.md | ACTUAL | 1 | sha256:3759f4a286177710… | — | author cross-check (2 channels; see front matter) | 2026-09-16 | 2026-09-16 | 2,443 B | CHANGED, material=yes, confidence=UNSURE |
| actuals/findings/MEMB-9.md | ACTUAL | 1 | sha256:5770e7042d9b3a66… | — | author cross-check (2 channels; see front matter) | 2026-09-16 | 2026-09-16 | 1,542 B | CHANGED, material=yes, confidence=SURE |
| actuals/findings/NOTE-1.md | ACTUAL | 1 | sha256:c6ba09e279ae259b… | — | author cross-check (2 channels; see front matter) | 2026-09-16 | 2026-09-16 | 1,393 B | UNCHANGED, material=no, confidence=SURE |
| actuals/findings/NOTE-2.md | ACTUAL | 1 | sha256:4249509cbbfdc283… | — | author cross-check (2 channels; see front matter) | 2026-09-16 | 2026-09-16 | 2,186 B | ADDED, material=no, confidence=SURE |
| actuals/findings/REV-1.md | ACTUAL | 1 | sha256:403f30929fa4ba26… | — | author cross-check (2 channels; see front matter) | 2026-09-16 | 2026-09-16 | 2,084 B | ADDED, material=no, confidence=SURE |
| actuals/findings/TITLE-1.md | ACTUAL | 1 | sha256:f4476a03efcf3737… | — | author cross-check (2 channels; see front matter) | 2026-09-16 | 2026-09-16 | 1,817 B | CHANGED, material=no, confidence=SURE |
| actuals/findings/TITLE-12.md | ACTUAL | 1 | sha256:e096f4cd723452ea… | — | author cross-check (2 channels; see front matter) | 2026-09-16 | 2026-09-16 | 1,524 B | CHANGED, material=no, confidence=SURE |
| actuals/findings/TITLE-2.md | ACTUAL | 1 | sha256:4dfe24338fc57d27… | — | author cross-check (2 channels; see front matter) | 2026-09-16 | 2026-09-16 | 1,498 B | CHANGED, material=no, confidence=SURE |

| actuals/report/report.md | ACTUAL | 1 | sha256:2903118f5fac495a… | — | author cross-check; checker-equivalent pass 2026-09-16: 27 rows = 27 files, 0 problems | 2026-09-16 | 2026-09-16 | 7,240 B | the deliverable: counts, 27 rows, attention list |

Findings summary: ADDED=4, CHANGED=18, UNCHANGED=5

Pack state at hand-over: verified (self-check) — checker-equivalent pass (front matter, verdict scale, finding shape, twin digests, report/file reconciliation) passed with 0 problems; no runs/ folder yet (none produced). (twin pages, derived, detection, plan, findings, report) will be appended here as they are created.
