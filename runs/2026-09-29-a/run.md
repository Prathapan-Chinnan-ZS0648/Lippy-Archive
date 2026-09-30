# RUN — 2026-09-29-a

- **Run id:** 2026-09-29-a (name fixed by the task; execution began evening 2026-09-29 IST,
  files completed 2026-09-30 13:37 IST).
- **Task as given:** `brief.md` (verbatim summary). Independent, blind BOM-extraction pass
  on `documents/source/260374 COMBINED PID SET 6-1-26.pdf`, for later cross-check against
  the existing pack. `actuals/`, `pivot.md`, `prompting.md`, `runs/2026-09-17-a/`, and
  `runs/2026-09-30-a/` were never read; nothing outside this run folder was created or
  modified.
- **Model / harness:** Hermes Agent CLI; model `qwen/qwen3.8-flash` via OpenRouter.
- **Skill applied:** `skills/bom-extraction.md` v1 (single-document pack profile),
  following `bootstrap.md` §5/§6 command shapes RESOLVE → NORMALIZE → JUDGE → REPORT.

## Chronology (the §10 traceability log for this run; the task's no-write constraint outside
## runs/2026-09-29-a/ is why this is recorded here rather than prepended to prompting.md)

1. **2026-09-29 ~19:15 IST — RESOLVE.** Read `file-index.md`: entry `bom-extraction`,
   source `documents/source/260374 COMBINED PID SET 6-1-26.pdf`, supporting `"n/a"`
   (permitted — skill front matter declares `document-pairing: single-document`). All
   paths resolve; skill read in full; templates read (`finding.md`, `twin-page.md`,
   `README.md`). Output: confirmation (no UNRESOLVED).
2. **~19:17 — NORMALIZE, channel 1 (text layer).** `sha256sum` on source
   (`bdb3725a…1bb2e`); `pdftotext -layout` per page → /tmp/bom260374/text/. Result: only
   stamp/boilerplate + a few large titles; recorded as the sparse-layer detection item.
3. **~19:17–19:30 — NORMALIZE, channel 2 (perception).** `pdftoppm` 200 dpi of all 13
   pages → /tmp/bom260374/pages/; full-page visual identification of every page; then
   400 dpi renders of all content pages (+legends) and a tile sweep (6-tile or 3-strip per
   sheet) to enumerate tags, datasheet blocks, HOLD clouds, notes, arrows. Page→drawing
   mapping established (non-sequential: -004 last).
4. **~19:30–20:00 — first-pass JUDGE reads.** Targeted 400 dpi crops transcribed verbatim:
   LEGEND1 equipment letter table + flags + service codes; LEGEND2 identifier tables;
   V-200 datasheet + PSV-200/201/202 + LCV-200/201; V-600A datasheet + PSV-600A/601A/602A
   + PCV-600A/601A/602A/604A + LCV-601A/602A/603A; PCV-201/202 on -009; V-700 block; the
   full -011 datasheet row (CA-800/F-803/F-804A/DR-804/F-804B/V-805), PSV-800/801A/802A/
   805, PCV-800, KV-800/805. Interim report to user; user replied **GO** with one added
   exclusion (runs/2026-09-30-a, name-only) — decision accepted, no file read.
5. **2026-09-30 — open-item verification (the GO list).** Two-channel confirmations:
   PSV-800 = "SET @ 200 PSI / 173 SCFM" (crops [2200,1300,3050,1750]+[2150,1600,3050,1900],
   p12); CA-800 datasheet re-read verbatim; PCV-201 "SET @ 310PSI" (no space); PCV-202 /
   PCV-600A "SET @ 225 PSI"; DR-3001 confirmed by text layer AND render; V-700 "SIZE:
   0'-6" ID / OPERATING PRESSURE: 1 PSIG". Large sheet titles on -001/-002/-009: NOT
   located in any crop; title block verified to have no SHEET TITLE field → -009 recorded
   UNSURE (detection §13), the early "MOLT…" suggestion used nowhere.
6. **2026-09-30 — write-out.** `detection.md`, `plan.md`, 13 twin pages + derived +
   section-map + priority, `graph.md`; 34 `findings/<tag>.md` generated from a
   hand-specified data table via a script (`_gen_findings.py` + `findings_data.py`,
   then removed — every file byte-identical to the hand-written shape of
   `templates/finding.md`); `report/report.md`; `brief.md`, `approval.md`, `last-run.md`.
   One path slip during write-out created `runs/260374 COMBINED PID SET 6-1-26.pdf/` —
   caught immediately, `page-002.md` moved into the twin folder, stray dir removed;
   nothing else touched.
7. **Final checks.** findings count = 34 (10/10/14 by label); each finding cites page +
   drawing number + quoted spec lines; `git status` shows this run folder as the only
   addition.

## Method notes (how output was generated)
- Dual channel: rendered-raster visual reading was primary (the text layer carries almost
  nothing); where the text layer held a string (large header rows, DR-3001), it was used
  as an independent confirmation.
- Coordinates: vision reads performed on 400 dpi PNGs (6800x4400) via region crops;
  every spec value in findings/ was re-read from a tight crop of its own block, not from
  tile overviews alone.
- Absence policy enforced: nothing inferred from convention; illegible/unconfirmed marked
  UNSURE with the raw fragment; untagged drawn items and named-but-blank-sheet items
  listed in report coverage, not converted into units.

## Verdict
34 BOM units individually extracted; 3 UNSURE (8.8%); instrument population (~90 bubbles)
counted but explicitly not individually covered. This run is the untouched copy — `actuals/`
was not read and not written.
