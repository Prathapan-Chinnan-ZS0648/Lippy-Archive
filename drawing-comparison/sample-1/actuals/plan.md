---
skill: drawing-comparison
confidence: HIGH
candidates: drawing-comparison (HIGH); version-compare (LOW)
verified-by: single-reader cross-check
verified-on: 2026-09-15
---
# Plan of Action · version 1

Steps as declared in `skills/drawing-comparison.md`, made concrete for this project.

| # | Operation | What it does on this project | Example |
| 1 | UNDERSTAND | Read every callout of the source sheet, 17 units, by area (title block / notes / plan view) and grid position | The Grid D midpoint-column node becomes units `MEMB-4` through `MEMB-7` |
| 2 | ALIGN | Match each source callout to its counterpart in the supporting sheet by grid position and member/field identity, not by revision-cloud presence or text alone | `MEMB-4` (Grid D, column 1, `UB457x191x74` weld/bolt count) aligns to the same grid position on REV3, not to any other `UB457x191x74` callout on the sheet |
| 3 | CLASSIFY | Assign ADDED, REMOVED, CHANGED or UNCHANGED to each unit | `MEMB-6`/`MEMB-7` (two new braces at Grid D) are ADDED; `CTRL-1` (El 112.800 plan, Grid A) is UNCHANGED |
| 4 | JUDGE | Mark material yes/no: does the change affect fabrication (member size, connection design, grid geometry) or is it presentational/administrative only | `MEMB-1` (brace notch depth -120 → -175) is material yes; `REV-1` (new revision-table row) is material no |
| 5 | RETRIEVE | Locate the old callout's exact grid position and value in the supporting drawing for every CHANGED or REMOVED unit | `MEMB-1`'s old value is REV3, Plan EL. 111.500, Grid 1–2/A–B: "T171x178x26 (-120)" |
| 6 | GENERATE | Write one finding per unit in the drawing-comparison finding shape | `actuals/findings/MEMB-1.md` |

17 units in total: 4 ADDED, 11 CHANGED, 2 UNCHANGED (control cases), 0 REMOVED — 3 of the CHANGED units (`MEMB-10`–`MEMB-12`) are `confidence: UNSURE`, confirmed changed by the text-layer diff but not yet independently pinned to a grid row; see `pivot.md` § 4. See `actuals/report/report.md` for the full row-by-row breakdown and `actuals/twin/derived/` for the per-document callout lists this plan operates over.

Unlike `usecase-4`'s version-compare packs, this plan does not classify every one of the sheet's ~100+ member callouts individually — the great majority are UNCHANGED and visually indistinguishable from one another in text, so exhaustively re-deriving the whole plan view was judged lower value than a smaller, fully-verified set of the callouts that actually differ, plus a small number of explicit UNCHANGED control cases (`CTRL-1`, and — noted but not separately filed — the many identical member labels a second reader can spot-check directly against the twin page's structural-member table). This scoping decision is recorded in `bootstrap.md`'s `profile:` line and follows the same "cited and hard pages first, the rest marked and scored later" allowance the Lippy Archive design leaves open (design section 17, first open decision).
