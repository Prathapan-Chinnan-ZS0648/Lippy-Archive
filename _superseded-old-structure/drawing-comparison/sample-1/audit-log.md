# audit-log.md

One entry per pass through one of `skills/drawing-comparison.md`'s own `Steps` (UNDERSTAND, ALIGN, CLASSIFY, JUDGE, RETRIEVE, GENERATE), in the order it happened. Cross-references `pivot.md` for the reasoning behind any judgment call made during a step, rather than repeating it here.

## Run 1 · 2026-09-15 · this session (Claude) · initial build

| step | started | what it touched | what it produced | status |
|---|---|---|---|---|
| UNDERSTAND | 2026-09-15 | Both source PDFs (found corrupted, repaired) | Repaired PDFs; a full read of both sheets | complete |
| ALIGN | 2026-09-15 | Text-layer diff + pixel-level image diff | Bounding-box list of every changed region | complete |
| CLASSIFY | 2026-09-15 | Each candidate region | ADDED/CHANGED/UNCHANGED per candidate | complete |
| JUDGE | 2026-09-15 | Each classified candidate | material: true/false per candidate | complete, 1 item left open |
| RETRIEVE | 2026-09-15 | Old/new quotes and grid positions | Citations for every finding | complete, 3 items left UNSURE |
| GENERATE | 2026-09-15 | Steps above | Full pack, 17 findings | complete |

### Step detail

#### UNDERSTAND — 2026-09-15
- The two files at `/home/.../Downloads/Assent/.../AD-3010-C-330030-SHT-004-REV3.pdf` and `-REV4.pdf` failed to open (`missing %PDF- header`). Inspected raw bytes with `xxd`; found each is an HTTP `multipart/form-data` body — a `--<boundary>` line and `Content-Disposition`/`Content-Type` headers wrapped around the real PDF bytes.
- Repaired both with a Python script slicing each file from its `%PDF-` marker to its final `%%EOF` line (inclusive). Verified with `file`: both report "PDF document, version 1.5". Computed digests: REV4 `sha256:e2c1629b…`, REV3 `sha256:d8afdded…` — recorded in `file-index.md`.
- Extracted text layers two ways: `pdftotext -layout` (`rev3.txt`/`rev4.txt`, spatial reading order) and `pdftotext -raw` (`rev3_raw.txt`/`rev4_raw.txt`, content-stream order) — kept both, since each surfaces different things (this mattered later, see Run 2).
- Rendered both to 300dpi PNG (`pdftoppm -r 300 -png`) and read the full page of each. Surveyed: title block (drawing no. `AD-3010-C-330030-SHT-004`, both plan views `PLAN EL. 111.500 (T.O.S.)` and `PLAN EL. 112.800 (T.O.S.)` on the one sheet), Notes box, revision-history table, grid 1–2 x A–F on the main plan.
- Feeds every finding in this run.

#### ALIGN — 2026-09-15
- `diff -u` on the `-layout` extraction was too noisy (poppler reflows text differently once a revision cloud is cleared) — abandoned in favour of the `-raw` extraction, where `diff rev3_raw.txt rev4_raw.txt` gave a clean, short hunk list.
- That diff surfaced, in one pass: the title-block text change, the new Rev 4 revision-table row, the new SYMBOLOGY note, `T171x178x26 (-120)`→`(-175)`, several `SW`→`SW(30N 10V)` occurrences, two new `T171x178x34 (-120)` brace lines, and the two `UB457x191x74` weld-count changes.
- Computed a pixel-level image diff between the two 300dpi renders in Python (`PIL.ImageChops.difference`), downscaled with a BOX filter (cell size 25px) and thresholded, then clustered adjacent significant cells with a breadth-first search — produced a list of bounding boxes of every region that visually changed, independent of the text-layer diff (a cross-check, not a duplicate).
- Cropped specific regions at full resolution to pin exact grid position: `clusterC` (x4600–5400, y4600–5500 — the El 112.800 ladder-cage area) and `clusterD1`/`D2`/`D3` (x1950–3250, y2100–5750 in three bands — the El 111.500 midpoint column).
- Feeds ALIGN's output directly into CLASSIFY below; the `clusterC` crop in particular is what got read (incompletely, see Run 2) as "just a label reflow, `CTRL-1`."

#### CLASSIFY — 2026-09-15
- Assigned a verdict to each region ALIGN located: `TITLE-1` CHANGED, `REV-1` ADDED, `NOTE-1` ADDED, `MEMB-1` (brace depth) CHANGED, `MEMB-2`/`3`/`8`/`9` (weld counts added) CHANGED, `MEMB-4`/`5` (weld counts changed, no cloud) CHANGED, `MEMB-6`/`7` (new braces) ADDED, `MEMB-10`/`11`/`12` (weld counts added, position unconfirmed) CHANGED, `CTRL-1` UNCHANGED (reformat only — later found incomplete, Run 2), `CTRL-2` UNCHANGED (plain, byte-identical).
- Feeds JUDGE and RETRIEVE below.

#### JUDGE — 2026-09-15
- `material: true` on every `MEMB-*` finding and `TITLE-1`; `material: false` on `REV-1`, `NOTE-1`, `CTRL-1`, `CTRL-2`.
- `TITLE-1`'s materiality call left as an open judgment call for a second reader (`pivot.md` § 3) — a defensible alternative reading (administrative simplification, not material) was noted rather than silently resolved.

#### RETRIEVE — 2026-09-15
- Pinned every finding's exact old/new quote and grid position by cross-referencing the ALIGN crops against the text-layer diff — e.g. `T171x178x26 (-120)` → `(-175)` at Grid 1–2/A–B; `UB457x191x74 SW(50N 10V)` → `SW(58N 2Vy)`/`SW(63N 3Vy)` at the Grid D node (column 1 and 2 respectively).
- The `-raw` text diff found 7 total instances of `SW` → `SW(30N 10V)` across the sheet; only 4 were independently pinned to a grid position via image crops in this run (`MEMB-2`, `MEMB-3`, `MEMB-8`, `MEMB-9`). The remaining 3 were recorded as `MEMB-10`/`11`/`12`, `confidence: UNSURE`, location stated as "midpoint column, exact grid row not yet confirmed" rather than guessed — this session's effort budget was reached before a second crop-and-confirm cycle (`pivot.md` § 4).

#### GENERATE — 2026-09-15
- Wrote: `bootstrap.md`, `prompting.md`, `pivot.md`, `file-index.md`, `skills/drawing-comparison.md`, `documents/source/AD-3010-C-330030-SHT-004-REV4.pdf`, `documents/supporting/AD-3010-C-330030-SHT-004-REV3.pdf` (both repaired), `actuals/detection.md`, `actuals/plan.md`, `actuals/twin/AD-3010-C-330030-SHT-004-REV3.pdf/page-001.md`, `actuals/twin/AD-3010-C-330030-SHT-004-REV4.pdf/page-001.md`, `actuals/twin/derived/AD-3010-C-330030-SHT-004-REV3.pdf.md`, `actuals/twin/derived/AD-3010-C-330030-SHT-004-REV4.pdf.md`, `actuals/twin/section-map.md`, `actuals/findings/{TITLE-1,REV-1,NOTE-1,MEMB-1,MEMB-2,MEMB-3,MEMB-4,MEMB-5,MEMB-6,MEMB-7,MEMB-8,MEMB-9,MEMB-10,MEMB-11,MEMB-12,CTRL-1,CTRL-2}.md` (17 files), `actuals/report/report.md`.

This run produced the pack's first 17 findings (4 ADDED, 11 CHANGED, 2 UNCHANGED). No second human reader touched this run — see `pivot.md` § Method.

## Run 2 · 2026-09-17 · this session (Claude) · correction after sample-2 flagged a gap

Re-entered the workflow after an independent second pack (`drawing-comparison/sample-2`) reported a dimension change this run's Run 1 had missed at the node `CTRL-1` describes, and a second, un-examined occurrence of the same pattern elsewhere on the sheet.

| step | started | what it touched | what it produced | status |
|---|---|---|---|---|
| UNDERSTAND | 2026-09-17 | `sample-2`'s report.md, pivot.md, bootstrap.md in full | Understood the specific claim to check | complete |
| ALIGN | 2026-09-17 | Re-extraction and re-cropping at both flagged locations | Independent confirmation of both | complete |
| CLASSIFY | 2026-09-17 | The two confirmed locations | 4 new CHANGED units, 1 new UNCHANGED control case, 1 correction | complete |
| JUDGE | 2026-09-17 | The 4 new CHANGED units | All marked material: true | complete |
| RETRIEVE | 2026-09-17 | Old/new values for the 4 new units | Exact citations, all SURE | complete |
| GENERATE | 2026-09-17 | Steps above | 5 new/updated findings + 8 summary files updated | complete |

### Step detail

#### UNDERSTAND — 2026-09-17
- Read `drawing-comparison/sample-2/actuals/report/report.md`, `pivot.md`, and `bootstrap.md` in full. Sample-2's report claimed two locations for the same `420`→`500` / `545`→`515` change (its `MEMB-12`/`13` at "LADDER-1/2" and `MEMB-16`/`17` at "LADDER-3/4"), while this pack's Run 1 had only examined one location and folded it into `CTRL-1` as "no value change."

#### ALIGN — 2026-09-17
- First check used a `^`-anchored `grep` (`grep -n "^545\|^420"` etc.) against `rev3_raw.txt`/`rev4_raw.txt` — found only **one** occurrence of each value, seemingly contradicting sample-2's claim.
- Switched to the `-layout` extraction (`rev3.txt`/`rev4.txt`) and re-grepped without the `-raw` mode's line-splitting: found `545` at lines 134 and 532, `420` at lines 92 and 478 (rev3.txt); `500` at lines 90 and 489, `515` at lines 136 and 544 (rev4.txt) — each value genuinely occurs **twice**. The original `-raw` pass had silently suppressed the second occurrence; the `-layout` pass did not.
- Cropped two regions at full resolution on both 300dpi renders: (4400,4400)–(5600,5700) — the location already examined in Run 1 — and (4400,900)–(5600,2200) — the second, previously unexamined location. Both show `420`→`500` and `545`→`515`, both inside a Rev 4 cloud marked `(*)`.
- Cropped two wider views, (4300,600)–(6200,2300) and (4300,4300)–(6200,6000), to read the `CL LADDER-n` text labels alongside each location's grid circle: confirmed Grid A = `CL LADDER-1`/`LADDER-2`, Grid E = `CL LADDER-3`/`LADDER-4`.

#### CLASSIFY — 2026-09-17
- New units: `MEMB-13` (Grid A, upper dimension, CHANGED), `MEMB-14` (Grid A, lower dimension, CHANGED), `MEMB-15` (Grid E, upper dimension, CHANGED), `MEMB-16` (Grid E, lower dimension, CHANGED), `CTRL-3` (Grid E label reflow, UNCHANGED — mirrors `CTRL-1`).
- `CTRL-1`'s existing text was corrected: it had said "nothing changed in wording or value" at that node, which was true only for the two labels it was actually describing, not for the whole node.

#### JUDGE — 2026-09-17
- `material: true` on all 4 new `MEMB-*` findings — a physical dimension change on a ladder/handrail detail is fabrication-relevant, not cosmetic.

#### RETRIEVE — 2026-09-17
- All 4 citations confirmed `SURE` (not `UNSURE`) — both the text-layer occurrence count and a matched-position image crop agreed on each value, independently of sample-2's own claim.

#### GENERATE — 2026-09-17
- Wrote: `actuals/findings/MEMB-13.md`, `MEMB-14.md`, `MEMB-15.md`, `MEMB-16.md`, `CTRL-3.md`.
- Updated: `actuals/findings/CTRL-1.md` (correction note added), `bootstrap.md` (profile line), `pivot.md` (§ 8), `prompting.md`, `actuals/plan.md`, `actuals/report/report.md`, both twin pages, `actuals/twin/derived/AD-3010-C-330030-SHT-004-REV4.pdf.md`, `file-index.md`.

This run brought the pack from 17 to 22 findings. See `pivot.md` § 8 for the full correction record.
