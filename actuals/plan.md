---
skill: drawing-comparison
version: 1
steps: 4
confidence: HIGH
verified-by: single-reader cross-check (Claude), independent rerun (2026-09-29, Claude), independent second-model cross-check (qwen3.8-flash via Hermes Agent, 2026-09-29)
verified-on: 2026-09-29
---

# Plan

The units of the source document to be judged, per `skills/drawing-comparison.md`'s
grain (one callout, identified by grid position). Each row becomes one file under
`actuals/findings/`.

| # | Unit | Findings file | Status |
|---|---|---|---|
| 1 | TITLE-1 — title block revision field | `TITLE-1.md` | done |
| 2 | REV-1 — revision-history table, new row | `REV-1.md` | done |
| 3 | NOTE-1 — Notes box, SYMBOLOGY legend | `NOTE-1.md` | done |
| 4 | MEMB-1 — brace notch depth, Grid 1–2/A–B | `MEMB-1.md` | done |
| 5 | MEMB-2 | `MEMB-2.md` | done |
| 6 | MEMB-3 | `MEMB-3.md` | done |
| 7 | MEMB-4 — Grid D col.1, UB457x191x74 weld/bolt count | `MEMB-4.md` | done |
| 8 | MEMB-5 | `MEMB-5.md` | done |
| 9 | MEMB-6 — new brace, Grid D | `MEMB-6.md` | done |
| 10 | MEMB-7 — new brace, Grid D | `MEMB-7.md` | done |
| 11 | MEMB-8 | `MEMB-8.md` | done |
| 12 | MEMB-9 | `MEMB-9.md` | done |
| 13 | MEMB-10 | `MEMB-10.md` | done (confidence: SURE — Grid B–C panel 1 of 3, confirmed 2026-09-29) |
| 14 | MEMB-11 | `MEMB-11.md` | done (confidence: SURE — Grid B–C panel 2 of 3, confirmed 2026-09-29) |
| 15 | MEMB-12 | `MEMB-12.md` | done (confidence: SURE — Grid D–E, sub-panel adjoining Grid E, confirmed 2026-09-29) |
| 16 | MEMB-13 — ladder-cage node, dimension change | `MEMB-13.md` | done |
| 17 | MEMB-14 — ladder-cage node (2nd, mirrored) | `MEMB-14.md` | done |
| 18 | MEMB-15 | `MEMB-15.md` | done |
| 19 | MEMB-16 | `MEMB-16.md` | done |
| 20 | CTRL-1 — El 112.800 plan, Grid A (UNCHANGED control case, corrected 2026-09-17) | `CTRL-1.md` | done |
| 21 | CTRL-2 — UNCHANGED control case | `CTRL-2.md` | done |
| 22 | CTRL-3 — UNCHANGED control case | `CTRL-3.md` | done |

22 units in total: 4 ADDED, 15 CHANGED, 3 UNCHANGED (control cases), 0 REMOVED. Unlike
`version-compare`'s packs, this plan does not classify every one of the sheet's ~100+
member callouts individually — the great majority are UNCHANGED and visually
indistinguishable from one another in text, so a smaller, fully-verified set of the
callouts that actually differ (plus explicit UNCHANGED control cases) was judged higher
value than exhaustively re-deriving the whole plan view. This scoping decision is recorded
in `skills/drawing-comparison.md`'s pack-profile notes.

`MEMB-13`–`MEMB-16` and `CTRL-3` were added on 2026-09-17, after an independent second
attempt at this same document pair (kept separately, not part of this archive) flagged
that the first pass missed a real dimension change at, and a second occurrence of, the
`CTRL-1` node pattern. See `prompting.md` for the correction entry and `pivot.md` if a
cross-sample dispute is ever opened over it; this was resolved as a same-run correction,
not a dispute, so it is not logged in `pivot.md`.
