---
sample: AD-3010-C-330030-SHT-004
use-case: drawing-comparison
skill-version: v1
based-on: findings/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/ (22 unit files, per actuals/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/plan.md)
source: documents/drawing-comparison/source/AD-3010-C-330030-SHT-004-REV4.pdf
supporting: documents/drawing-comparison/supporting/AD-3010-C-330030-SHT-004-REV3.pdf
state: draft — pending HITL review, not yet signed off in manifest/drawing-comparison/manifest.md
---

# Drawing comparison report — AD-3010-C-330030-SHT-004, Rev 3 → Rev 4

## What this covers

A single-sheet A1 structural steel shop drawing (`AD-3010-C-330030-SHT-004`), reissued
from Rev 3 (issued for construction 20.04.2026) to Rev 4 (issued for construction
27.07.2026). The full callout-by-callout account is in
`findings/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/` (one file per unit, per
`actuals/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/plan.md`); this report
summarizes it. Not every callout on the sheet was classified — see `plan.md`'s scoping
note; the great majority of the plan view's member callouts are UNCHANGED and were spot-
checked rather than individually filed.

## Verdict counts

| Verdict | Count |
|---|---|
| CHANGED | 15 |
| ADDED | 4 |
| REMOVED | 0 |
| UNCHANGED | 3 |
| **Total units examined** | **22** |

| Materiality | Count |
|---|---|
| material: true | 17 |
| material: false | 5 |

| Confidence | Count |
|---|---|
| SURE | 19 |
| UNSURE | 3 |

## What changed, by theme

- **Title and administrative record:** the drawing title shortened from a named system
  list to "UTILITIES - UNIT 3010" (`TITLE-1`, material — a reader working from the title
  block alone loses the explicit system list, though the steel scope itself is
  unchanged); a new revision-history row records the Rev 4 issue (`REV-1`, administrative
  only); a new "SYMBOLOGY" legend in the Notes box defines an asterisk `(*)` marker
  meaning a clouded change was already communicated to the fabricator ahead of this
  formal reissue (`NOTE-1`).
- **Two new braces at Grid D:** `MEMB-6`/`MEMB-7`, a new T171x178x34 brace pair, clouded
  and material.
- **Connection weld/bolt counts added with no prior count specified:** `MEMB-2`, `MEMB-3`,
  `MEMB-8`, `MEMB-9` (all clouded, SURE), and `MEMB-10`, `MEMB-11`, `MEMB-12` (same
  pattern, `confidence: UNSURE` — grid row not yet independently pinned by a second
  reader; see Module 6 of `skills/drawing-comparison/skill.md`).
- **Connection weld/bolt counts changed with no revision cloud at all:** `MEMB-4` (Grid D
  col.1, 50N 10V → 58N 2Vy) and `MEMB-5` (Grid D col.2, 50N 10V → 63N 3Vy) — the sheet's
  own cloud markers are not a complete change list; a reader relying on clouds alone would
  miss both.
- **Ladder-cage dimension changes (corrected 2026-09-17):** `MEMB-13`/`MEMB-14` (Grid A
  ladder cage) and `MEMB-15`/`MEMB-16` (Grid E ladder cage, a second, independent
  occurrence of the same pattern) — both pairs change 420→500 and 545→515. These five
  callouts (plus control case `CTRL-3`) were missed in the first pass and added after an
  independent second attempt at the same document pair flagged the gap; verified directly
  against both PDFs (an independent text-occurrence count across two extraction modes,
  plus a matched-position pixel-diff crop) before being accepted, not taken on the second
  attempt's word alone. See `prompt-log/drawing-comparison/promptLog.md`'s 2026-09-17
  entry.
- **Reformat control cases, correctly UNCHANGED:** `CTRL-1` and `CTRL-3` — at both ladder
  cages, an old revision's clouds were cleared and two adjacent label blocks swap vertical
  order with no wording change. The reflow itself is not a change; the real changes at
  these same nodes are the `MEMB-13`–`MEMB-16` dimension callouts filed separately.
  `CTRL-2` is a third, plain control case (byte-identical callout, no cloud on either
  revision).

## Open items before this pack can be signed off

- `MEMB-10`, `MEMB-11`, `MEMB-12`: exact grid row not yet independently confirmed by a
  second reader.
- `TITLE-1`: the `material: true` call is a judgment open to a second reader — an
  alternative reading is that the title shortening is a purely administrative
  simplification.
- No human-in-the-loop reviewer has yet run `MANUAL VALIDATE` for this use case — no
  `HITL/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/MANUAL_VALIDATE.md` exists.
  `manifest/drawing-comparison/manifest.md` records `state: verified` (agent
  self-verification), not `state: signed`.
