# Pivot log — drawing-comparison/sample-2

Every decision, with an explicit yes or no, who and when.

## Method

Single agent (Hermes session, this pack's author) reading both PDFs directly: text layer extracted with `pdftotext -bbox` (coordinate-precise word lists), sheets rendered to raster with `pdftoppm`, and every candidate difference verified against both files — extraction for the value, render for the position. There is no second independent human reader and no resolver: the two-readers standard of the Lippy Archive design section 8 is NOT met by this pack; agreement figures below describe self-consistency of the two evidence channels (text layer vs. rendered sheet), not two humans. Where the two channels do not both settle a fact, or the position cannot be pinned on the render, the finding carries `confidence: UNSURE`. — yes, adopted for this pack, 2026-09-16

## Agreement

| stage | files | both channels agreed | resolved by re-check | still UNSURE |
|---|---|---|---|---|
| twin | 2 | 2 | 0 | 0 |
| findings | 27 | 24 | 0 | 3 |

The two channels are the PDF text layer and the rendered-raster channel (tesseract.js OCR of matched crops + pure-pixel diff footprints); per pivot § Method this is a self-consistency measure between extraction pipelines, not the two-human-reader agreement of design §8 — that standard is NOT claimed and the pack is not signed. The 3 UNSURE findings (MEMB-8, MEMB-14, MEMB-15) are exactly where the raster channel could not confirm the text layer's glyphs at c≥60; their positions and the fact of change are confirmed, the exact new strings are not guessed.

## Context

The sheet (A1, rotated 90° in the PDF) carries two plan views — `PLAN EL. 111.500 (T.O.S.)` and `PLAN EL. 112.800 (T.O.S.)` — of a narrow, tall steel platform/walkway structure, plus a key plan, north/wind symbols, member and connection callouts (UB/UC/T/L sizes with weld/bolt counts like `SW(30N 10V)`), and a Notes box whose first item refers general notes to SHEET 001 (not in this pack). Both revisions are stamped ISSUED FOR CONSTRUCTION; Rev 4 is a corrective reissue, not a redesign. Rev 4's Notes box adds a SYMBOLOGY legend stating that clouds marked with an asterisk `(*)` indicate changes already communicated to the fabricator ahead of the formal reissue. (Per-sample Context that `drawing-comparison/bootstrap.md` — the skill-level shared bootstrap — points here for; moved out of a per-sample bootstrap.md on 2026-09-21, see § 14.)

## Coverage

**Fully covered:** every callout that differs between REV3 and REV4 is reported as a finding (27 total), including the two ladder-cage dimension pairs (`MEMB-12/13`, `MEMB-16/17`) and the untagged connection change (`MEMB-8`) that a text-only or cloud-only reader would miss.

**Scoped down, stated plainly:** the sheet's remaining unchanged connection nodes and member families (44 of them) are reported as one grouped control case, `CTRL-4`, rather than 44 individual findings — position-pinned and coordinate-verified as a set, per § 10, not individually re-transcribed one by one.

**Open, not yet resolved:** three findings carry `confidence: UNSURE` — `MEMB-8` (the "63N" digit on an untagged connection change), and `MEMB-14`/`MEMB-15` (two new brace labels whose exact reconstructed text is not yet raster-confirmed). This is 3/27 = 11%, above the pack's own proposed 10% signing budget, which is why `state: verified`, not `signed` — see "Findings that need attention before submission" in `actuals/report/report.md`.

## 1 · sample-2 is written independently of sample-1's actuals

The user's brief forbids reading sample-1's `actuals/`, `pivot.md`, `prompting.md`, `file-index.md` (they hold a worked answer for the same two drawings). Only `skills/drawing-comparison.md` (to copy) and `bootstrap.md` (format reference only) were opened. — yes, followed; every value below is derived from the two PDFs, and nothing was read from or written to sample-1 beyond read-only copies of the permitted files. 2026-09-16

## 2 · Skill file reused unchanged

`skills/drawing-comparison.md` is a byte-for-byte copy of sample-1's (sha256 c8170aec…), per the brief ("reuse this file as-is"). — yes, 2026-09-16

## 3 · Documents copied, not re-derived or re-fetched

The two PDFs are `cp` copies of the already-repaired files in `sample-1/documents/` (REV4 sha256 e2c1629b…, REV3 sha256 d8afdded…; recorded in `file-index.md`). Verified after copy: both open with `pdfinfo`, one page each, A1 1684×2384 pt, rot 90. The DocuSign multipart repair itself is documented in sample-1 and is not repeated here. — yes, 2026-09-16

## 4 · Page and unit conventions

One physical sheet = one page (design section 6), so each document has exactly one twin page: `actuals/twin/AD-3010-C-330030-SHT-004-REV4.pdf/page-001.md` and the REV3 equivalent. Units follow the skill's mnemonics TITLE-n / REV-n / NOTE-n / MEMB-n / CTRL-n with position part of identity. Rotated page: read as it reads when turned, per design section 7. — yes, 2026-09-16

## 5 · Comparison technique

A raw `diff` of `-layout` text is too noisy (poppler reflows the same words differently when clouds are cleared), so the change hunt runs on word coordinates: two sorted word streams compared by token multiset and by (token, rounded position) match; unmatched/near-matched words are then checked on the rendered sheet crops of both revisions before any finding is written. A finding is only written when both channels agree on the old value and the new value. — yes, 2026-09-16

## 6 · bootstrap profile line provisional

The `profile:` counts (untagged-cloud changes, control cases, ambiguity cases) depend on the final finding set; bootstrap.md carries a PROVISIONAL profile line until Stage 4. — yes, to be finalised with the report, 2026-09-16

## 7 · Pack state

state: draft now; the author's cross-verification pass at Stage 4 moves it to at most `verified` (self-check equivalent, explicitly labelled as not the section-8 two-human standard, exactly as sample-1's bootstrap declares about itself). No signature: `signed-by: —`. — yes, 2026-09-16

## 8 · Scratch work outside the repo

Extraction/render working files (word lists, crops, diffs) live in `/tmp/lippy-s2/`, outside the repository, because the brief forbids writing anything in the repo outside `sample-2/`. Only deliverable actuals are written into the pack. — yes, 2026-09-16

## 9 · Vision-probe incident and channel switch (transparency)

To verify text-layer candidates against rendered rasters, a delegate_task child was spawned with two crop PNGs attached. The child (a) never received the images — it reported "NO VISION CHANNEL", confirming the subagent delivery path here is text-only; and (b) before being steered to stop, it had already read parts of `sample-1/actuals/` (detection.md front matter, a twin page caption) — the very worked answer this pack must not copy. Consequences: (1) the child's result was discarded and no content of it is used anywhere in this pack; (2) the leaked transcript lines visible to the author contained only sheet-level metadata (skill name, issue dates, view titles) all independently re-derivable from the PDF text layers already extracted at 16:57, before the child existed — every candidate value in this pack predates the incident; (3) raster verification is now done with an OCR channel (tesseract.js in a real browser over locally-served crops) plus pure-pixel PNG diffing of matched crop pairs for graphics (clouds), which read only /tmp files, never the repo. — yes, adopted, 2026-09-16

Extraction/render working files (word lists, crops, diffs) live in `/tmp/lippy-s2/`, outside the repository, because the brief forbids writing anything in the repo outside `sample-2/`. Only deliverable actuals are written into the pack. — yes, 2026-09-16

## 10 · Node-pairing method for connection callouts

Every "SW…" token (heads `SW(*N` plus bare `SW`/`SW-`/`-SW`) was reconstructed by pairing each head with its weld/bolt-count tail (`10V)`/`2Vy)`/`3Vy)`) via global nearest-distance greedy (tail sits within 45pt above the head), independently per revision; the two resulting node sets were then position-paired (tolerance 60pt). Result: 53 nodes in Rev 3 and 53 in Rev 4, one-to-one, 9 DIFF (2 weld-count changes + 7 bare→"SW(30N 10V)" completions), 0 ADDED/REMOVED nodes. The full pair table is reproduced in `actuals/twin/derived/derived-full-inventory.md`. — yes, adopted, 2026-09-16

## 11 · Rotated-page crop mapping (corrected)

Raster crops are taken in display (rotated) space; tesseract reads run at 0°/+90°/−90° passes. Back-projection from the rotated canvas to sheet points is exact in x for the +90° pass (calibrated: Rev-4 "500" and Rev-3 "420" in matched 200-dpi band crops both project to x≈1334–1337, where the text layer puts the digits); the y mapping carries a per-crop offset (±20–60pt) that this session did not fully pin. The operative evidence is therefore position AGREEMENT between matched crops: identical crops of the same sheet region from Rev 3 and Rev 4 yield OCR words at equal rotated-canvas coordinates for the same label — e.g. "420"@(*,151) on Rev 3 vs "500"@(*,150) on Rev 4 in the lobandB pair — which proves same-place-different-glyphs without needing absolute y. — yes, correction replaces the earlier "within 6pt" claim, 2026-09-16

## 12 · Pixel-diff confirmation of the three user-named candidates (per Stage-2 instruction)

Pure-pixel comparison of the matched rendered crop pairs (same region of each sheet, decoded without the text layer) shows the changed pixels concentrated exactly at: the lower-band dimension digits (1334,1268) and (1334,1348) ["420→500", "545→515"], the upper-band digits (1334,313–325)/(1334,382–388) plus a cloud arc footprint spanning (1253–1397, 285–423); the grating-line balloon at (1347,344)→(1355,402)+(*) (explaining why "3 AT EL. 112.830" is a balloon artefact, not a removed quantity — "AT EL. 112.830" itself unchanged, "30 THK" present in both); the title string area (2047–2123,1494); and the REV.-box digit (2310,1592). — yes, recorded, 2026-09-16

Open gap recorded honestly: clean rot+1 OCR reads of the NEW digits "500"/"515" and of the second connection head "SW(63N" are still pending (garbled at the resolutions tried); tighter 200-dpi band crops were queued (blocked on approval timeout). Until those land, MEMB-8 (63N) and MEMB-16 (lower 500) findings carry `confidence: UNSURE` per the brief's rule; the old values and the change locations are confirmed. — yes, 2026-09-16

## 13 · Stage-4 closure decisions

(13a) Profile line finalised from the 27 findings as written into bootstrap.md; contradiction 0 is asserted with reason — the MEMB-13 sum-check note (420+545 vs 500+515 are local sub-distances, not a chain to EL.117.530) found no internal conflict. — yes, 2026-09-16
(13b) Pack state set to `verified` (self-check only, two-channel agreement recorded) and NOT `signed`, because (i) design §8 two-reader standard is not met (§ Method) and (ii) UNSURE share 3/27 = 11% exceeds the proposed 10% budget (§13 governance). — yes, 2026-09-16
(13c) The untagged-change / marker-layer disagreement (MEMB-8 vs MEMB-18) is escalated as a real-world open item in the report ("findings that need attention"), not resolved by the pack author choosing one side. — yes, 2026-09-16
(13d) No graph.md written: optional in first packs per design §4; relationships worth keeping (cloud-membership of each finding) are already inline in the findings and section-map. — yes (skip), 2026-09-16

## 14 · Common bootstrap.md structure, 2026-09-18 (external edit, by Claude)

A structural gap against `sample-1`'s `bootstrap.md`: this pack's Brief had no `### What this pack does and does not cover` subsection — its equivalent content (the UNSURE items, `CTRL-4`'s grouped-44-nodes scoping) existed but was scattered across the profile line and "Findings that need attention" rather than named in one place. Added the subsection, sourced from this pack's own `report.md` and this pivot's §§10, 12, 13, so it now matches `templates/bootstrap.md`'s required structure — content unchanged, just consolidated and located per the shared template. — yes, 2026-09-18

## 15 · audit-log.md, 2026-09-21 (external edit, by Claude)

Added `audit-log.md` for this pack, reconstructing one run (2026-09-16) mapped onto `skills/drawing-comparison.md`'s Steps (UNDERSTAND/ALIGN/CLASSIFY-JUDGE/RETRIEVE/GENERATE) from this pack's own `pivot.md` §§1–13 and `report.md`'s Method recap. CLASSIFY and JUDGE are logged as one combined row, not two, because this pack's own records (the raster/pixel-diff cross-check pass) do not separately distinguish when a zone's ADDED/CHANGED/UNCHANGED call was made from when its materiality call was made — recorded as one step rather than inventing a split this pack's own history doesn't support. — yes, 2026-09-21

## 16 · audit-log.md expanded with per-step detail, 2026-09-21 (external edit, by Claude)

§ 15's version of `audit-log.md` had only a summary table. Expanded with a "Step detail" block per step, drawing on nothing beyond what this pack's own §§1–13 above and `report.md`'s Method recap already state: the `-bbox` word-coordinate extraction and cell-diff method (§5), the node-pairing method for `SW` connections (§10), the vision-probe incident and channel switch (§9), the pixel-diff confirmation coordinates for the user-named candidates (§12), and the Stage-4 closure decisions (§13). No detail was invented beyond this pack's own written record. — yes, 2026-09-21

## 17 · bootstrap.md restructured to one file per skill, 2026-09-21 (external edit, by Claude)

User clarified that `sample-1` and this pack should not each keep their own `bootstrap.md`, even in a shared shape — one literal file should serve both. `drawing-comparison/bootstrap.md` created at the skill root, holding what is genuinely shared. This pack's own `bootstrap.md` deleted; its front-matter facts (`source`, `supporting`, `state`, `signed-by`, `classification`, `profile`) moved into a new "Pack facts" header in `file-index.md`, and its Context/Coverage prose moved into new sections here in `pivot.md`, right after `## Agreement` — relocated verbatim in substance from this pack's own deleted `bootstrap.md`, not rewritten or reinterpreted. — yes, 2026-09-21
