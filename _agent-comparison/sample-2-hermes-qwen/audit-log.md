# audit-log.md

One entry per pass through one of `skills/drawing-comparison.md`'s own `Steps` (UNDERSTAND, ALIGN, CLASSIFY, JUDGE, RETRIEVE, GENERATE), in the order it happened. Reconstructed from this pack's own `pivot.md` (§§1–13), `actuals/report/report.md`'s "Method recap", and this pack's own live stage-by-stage narration to the user during its build session — not invented where this pack's own records are silent. Cross-references `pivot.md` for the reasoning behind any judgment call rather than repeating it.

## Run 1 · 2026-09-16 · Hermes Agent (qwen/qwen3.8-flash) · independent build

| step | started | what it touched | what it produced | status |
|---|---|---|---|---|
| UNDERSTAND | 2026-09-16 | `context.md`; `sample-1/skills/drawing-comparison.md` and `bootstrap.md` (format only, per brief restriction); both PDFs' word-coordinate text layers | Skill file reused; documents copied and re-verified; word layers extracted | complete |
| ALIGN | 2026-09-16 | Coordinate cell-diff of the two word layers | 22 candidate change zones | complete |
| CLASSIFY / JUDGE | 2026-09-16 | Each of the 22 zones, cross-checked via raster crops + pixel diff | Verdict + materiality per zone | complete, 3 left UNSURE |
| RETRIEVE | 2026-09-16 | Old/new quotes and positions per zone | Citations for all 27 findings | complete |
| GENERATE | 2026-09-16 | Steps above | Full pack, 27 findings | complete |

### Step detail

#### UNDERSTAND — 2026-09-16
- Read `context.md` in full. From `sample-1`, read only `skills/drawing-comparison.md` (to reuse) and `bootstrap.md` (format reference only) — explicitly did not read `sample-1/actuals/`, `pivot.md`, `prompting.md` or `file-index.md`, per the brief's restriction against copying a worked answer (`pivot.md` § 1).
- Copied `skills/drawing-comparison.md` from `sample-1` byte-for-byte unchanged (digest `sha256:c8170aec…`, `pivot.md` § 2).
- Copied both PDFs from `sample-1/documents/` (already-repaired copies, not re-derived) and re-verified with `pdfinfo`: both open, one page each, A1 1684×2384pt, rotation 90° (`pivot.md` § 3).
- Extracted both PDFs' text layers with `pdftotext -bbox` — a coordinate-precise word-list format, not plain reading-order text — specifically because a plain `-layout` diff was expected to be noisy once a revision cloud is cleared and text reflows (`pivot.md` § 5).
- Feeds every finding in this run.

#### ALIGN — 2026-09-16
- Ran a coordinate-based diff of the two `-bbox` word layers: the two sorted word streams compared both by token multiset and by (token, rounded position) match, rather than a plain sequential text diff (`pivot.md` § 5).
- This surfaced 22 candidate change zones — more granular than a page-level diff, since each zone is pinned to an approximate (x,y) region on the rotated A1 sheet.
- Separately built a node-pairing model for every `SW`-prefixed connection callout: each head token (`SW(*N`, bare `SW`, `SW-`, `-SW`) paired with its weld/bolt-count tail (`10V)`/`2Vy)`/`3Vy)`) by nearest-distance greedy matching (tail within 45pt above the head), independently per revision, then the two revisions' node sets position-paired at a 60pt tolerance. Result: 53 nodes in Rev 3, 53 in Rev 4, one-to-one, 9 DIFF (2 weld-count changes + 7 bare→`SW(30N 10V)` completions), 0 ADDED/REMOVED nodes (`pivot.md` § 10) — this is the method behind `MEMB-1` through `MEMB-9`.

#### CLASSIFY / JUDGE — 2026-09-16
- Logged as one combined step because this pack's own records verify a zone's ADDED/CHANGED/UNCHANGED call and its materiality together, in the same raster cross-check pass, not as two separately timestamped activities.
- Each of the 22 zones was cross-checked by (a) matched-region raster crops at 150–500dpi with `tesseract.js` OCR, run at 0°/+90°/−90° rotation passes to handle the sheet's own 90° rotation, and (b) pure-pixel PNG diffing of matched crop pairs for graphics (clouds), reading only local `/tmp/lippy-s2/` files, never the repo (`pivot.md` § 8, § 11).
- A `delegate_task` sub-agent was spawned partway through to help with raster verification; it reported "NO VISION CHANNEL" (never actually received the attached crop images) and, before being stopped, had read parts of `sample-1/actuals/` — the very material this pack was told not to read. Its result was discarded entirely and no content from it appears anywhere in this pack; the leaked lines visible to the parent session were sheet-level metadata already independently re-derived from the PDF text layers before the incident. Verification continued afterward using the OCR + pixel-diff channel described above (`pivot.md` § 9, disclosed transparently rather than silently worked around).
- Pixel-diff confirmation of the three candidates the user had specifically named mid-build: changed pixels located at (1334,1268)/(1334,1348) and (1334,313–325)/(1334,382–388) — the two ladder-band dimension pairs, `420`→`500` and `545`→`515` — plus a cloud-arc footprint at (1253–1397, 285–423); a grating-line balloon at (1347,344)→(1355,402)+`(*)`, which resolved "3 AT EL. 112.830" as a revision-cloud balloon artefact, not a removed quantity (no finding written for it — `pivot.md` § 12, matches `report.md`'s "Method recap" corrections list); the title-string area (2047–2123,1494); and the REV.-box digit (2310,1592).
- Mid-build open gap, later closed: clean rotated-OCR reads of the *new* digits `500`/`515` and of the `SW(63N` connection head were initially unconfirmed (old values read cleanly — `SW(50N` at OCR confidence c88 — but the new "63N"/"3Vy)" tail read weakly, c44) — a queued tighter 200dpi re-crop was blocked once by this session's own command-approval gate timing out, then re-run after explicit user approval. By Stage-4 closure, `500` (digit-clean raster pair, confidence c94/c95) resolved to `SURE`; `MEMB-8`'s "63N" digit and `MEMB-14`/`MEMB-15`'s brace-label text remained `UNSURE` (`pivot.md` § 12–13, § 1 "Findings that need attention" in `report.md`).
- `MEMB-8` (the untagged `63N` change) was additionally cross-checked against this sheet's own revision-cloud inventory (`MEMB-18`, 12×"3" balloons in Rev 3 → 7×"4" balloons in Rev 4, 3 carrying `(*)`) and found to disagree — no cloud or pixel-diff arc near it — escalated as a real open item rather than silently resolved either way (`pivot.md` § 13c).

#### RETRIEVE — 2026-09-16
- A finding is only written once both evidence channels — the word-coordinate text layer and the rendered-raster crop — agree on both the old and the new value (`pivot.md` § 5). This is why 24 of 27 findings landed `SURE` in one pass and the remaining 3 were left `UNSURE` rather than forced.

#### GENERATE — 2026-09-16
- Wrote: `bootstrap.md`, `prompting.md`, `pivot.md`, `file-index.md`, `actuals/detection.md`, `actuals/plan.md`, `actuals/twin/AD-3010-C-330030-SHT-004-REV3.pdf/page-001.md`, `actuals/twin/AD-3010-C-330030-SHT-004-REV4.pdf/page-001.md`, `actuals/twin/derived/AD-3010-C-330030-SHT-004-REV3.md`, `actuals/twin/derived/AD-3010-C-330030-SHT-004-REV4.md`, `actuals/twin/derived/derived-full-inventory.md`, `actuals/twin/section-map.md`, 27 files under `actuals/findings/`, `actuals/report/report.md`.
- Stage-4 closure decisions recorded separately: profile line finalised from the written findings; pack state set to `verified`, not `signed` (design §8 two-reader standard not met, and UNSURE share 3/27 = 11% exceeds the pack's own proposed 10% signing budget); the `MEMB-8`/`MEMB-18` disagreement escalated in the report rather than resolved by author choice; no `graph.md` written (optional per design §4) (`pivot.md` § 13a–d).

This run produced all 27 of this pack's findings in one sitting (4 ADDED, 18 CHANGED, 5 UNCHANGED). No second human reader touched this run — `pivot.md` § Method states this plainly, and `bootstrap.md`'s `state: verified` (not `signed`) reflects the same.
