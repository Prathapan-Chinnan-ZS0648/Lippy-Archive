# Plan

The units of the source document to be judged, per `skills/drawing-comparison/skill.md`'s
grain (one callout, identified by grid position). Each row becomes one file under
`findings/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/`.

| # | Unit | Findings file | Status |
|---|---|---|---|
| 1 | TITLE-1 — title block revision field | `title1.md` | done |
| 2 | REV-1 — revision-history table, new row | `rev1.md` | done |
| 3 | NOTE-1 — Notes box, SYMBOLOGY legend | `note1.md` | done |
| 4 | MEMB-1 — brace notch depth, Grid 1–2/A–B | `memb1.md` | done |
| 5 | MEMB-2 | `memb2.md` | done |
| 6 | MEMB-3 | `memb3.md` | done |
| 7 | MEMB-4 — Grid D col.1, UB457x191x74 weld/bolt count | `memb4.md` | done |
| 8 | MEMB-5 | `memb5.md` | done |
| 9 | MEMB-6 — new brace, Grid D | `memb6.md` | done |
| 10 | MEMB-7 — new brace, Grid D | `memb7.md` | done |
| 11 | MEMB-8 | `memb8.md` | done |
| 12 | MEMB-9 | `memb9.md` | done |
| 13 | MEMB-10 | `memb10.md` | done (confidence: UNSURE — grid row not independently pinned) |
| 14 | MEMB-11 | `memb11.md` | done (confidence: UNSURE — grid row not independently pinned) |
| 15 | MEMB-12 | `memb12.md` | done (confidence: UNSURE — grid row not independently pinned) |
| 16 | MEMB-13 — ladder-cage node, dimension change | `memb13.md` | done |
| 17 | MEMB-14 — ladder-cage node (2nd, mirrored) | `memb14.md` | done |
| 18 | MEMB-15 | `memb15.md` | done |
| 19 | MEMB-16 | `memb16.md` | done |
| 20 | CTRL-1 — El 112.800 plan, Grid A (UNCHANGED control case, corrected 2026-09-17) | `ctrl1.md` | done |
| 21 | CTRL-2 — UNCHANGED control case | `ctrl2.md` | done |
| 22 | CTRL-3 — UNCHANGED control case | `ctrl3.md` | done |

22 units in total: 4 ADDED, 15 CHANGED, 3 UNCHANGED (control cases), 0 REMOVED. Unlike
`version-compare`'s packs, this plan does not classify every one of the sheet's ~100+
member callouts individually — the great majority are UNCHANGED and visually
indistinguishable from one another in text, so a smaller, fully-verified set of the
callouts that actually differ (plus explicit UNCHANGED control cases) was judged higher
value than exhaustively re-deriving the whole plan view. This scoping decision is recorded
in `skills/drawing-comparison/skill.md`'s pack-profile notes.

`MEMB-13`–`MEMB-16` and `CTRL-3` were added on 2026-09-17, after an independent second
attempt at this same document pair (kept outside this managed tree — see
`_agent-comparison/`) flagged that the first pass missed a real dimension change at, and a
second occurrence of, the `CTRL-1` node pattern. See
`prompt-log/drawing-comparison/promptLog.md` for the correction entry and `pivot.md` if a
cross-use-case dispute is ever opened over it; this was resolved as a same-run correction,
not a dispute, so it is not logged in `pivot.md`.
