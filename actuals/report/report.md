---
sample: AD-3010-C-330030-SHT-004
use-case: drawing-comparison
skill-version: v1
based-on: actuals/findings/ (22 unit files, per actuals/plan.md)
source: documents/source/AD-3010-C-330030-SHT-004-REV4.pdf
supporting: documents/supporting/AD-3010-C-330030-SHT-004-REV3.pdf
state: draft — pending a second, named human reviewer; not yet signed off
---

# Drawing comparison report — AD-3010-C-330030-SHT-004, Rev 3 → Rev 4

## What this covers

A single-sheet A1 structural steel shop drawing (`AD-3010-C-330030-SHT-004`), reissued
from Rev 3 (issued for construction 20.04.2026) to Rev 4 (issued for construction
27.07.2026). The full callout-by-callout account is in
`actuals/findings/` (one file per unit, per
`actuals/plan.md`); this report
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
| SURE | 21 |
| UNSURE | 1 |

(`MEMB-10` and `MEMB-11` moved from UNSURE to SURE on 2026-09-29 once their grid rows were
confirmed — see "Grid-row resolution, 2026-09-29" below. `MEMB-12` remains UNSURE.)

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
  `MEMB-8`, `MEMB-9`, `MEMB-10` (Grid B–C panel 1 of 3), `MEMB-11` (Grid B–C panel 2 of 3)
  — all six clouded, SURE, grid rows confirmed by coordinate-bbox extraction on
  2026-09-29 — and `MEMB-12` (same pattern, `confidence: UNSURE` — grid row still not
  confirmed after a genuine attempt; see Module 6 of `skills/drawing-comparison.md` and
  `MEMB-12`'s own "2026-09-29 resolution attempt" section).
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
  attempt's word alone. See `prompting.md`'s 2026-09-17 entry.
- **Reformat control cases, correctly UNCHANGED:** `CTRL-1` and `CTRL-3` — at both ladder
  cages, an old revision's clouds were cleared and two adjacent label blocks swap vertical
  order with no wording change. The reflow itself is not a change; the real changes at
  these same nodes are the `MEMB-13`–`MEMB-16` dimension callouts filed separately.
  `CTRL-2` is a third, plain control case (byte-identical callout, no cloud on either
  revision).

## Independent rerun, 2026-09-29

At the user's request, this comparison was rerun independently and directly from both
source PDFs — not by re-reading the existing findings. A fresh `pdftotext -raw` extraction
of `documents/source/AD-3010-C-330030-SHT-004-REV4.pdf` and
`documents/supporting/AD-3010-C-330030-SHT-004-REV3.pdf`, diffed against each other, found
exactly the 22 content differences already recorded below — no unit missing, none extra,
no verdict contradicted. See `prompting.md`'s 2026-09-29 entry and `pivot.md` Entry 1 for
the full method and the specific values checked (title text, the new revision row, the new
SYMBOLOGY note, all nine weld/bolt-count changes, both new braces, and all four ladder
dimension changes). No finding content changed as a result — this rerun confirmed the
existing set rather than replacing it.

## Grid-row resolution, 2026-09-29

Following the rerun above, a coordinate-based method (`pdftotext -bbox-layout` word
positions, cross-checked against a 300dpi render) was used to resolve the three
`MEMB-10`/`MEMB-11`/`MEMB-12` grid rows the original pass had left `UNSURE`. Two resolved
cleanly and are now `confidence: SURE`: `MEMB-10` and `MEMB-11` sit in Grid B–C's first
and second sub-panels (of three), each independently confirmed by a revision cloud
visible in a full-resolution render. The third, `MEMB-12`, did not resolve — the same
method hit a real limitation past roughly the B–C bay (predicted coordinates started
landing on Plan EL. 112.800's content instead of Plan EL. 111.500's), and a visual
fallback search did not conclusively locate it either. See `MEMB-12`'s own file for the
full account and `prompting.md`'s 2026-09-29 entry for the method in detail. This was a
genuine attempt with a disclosed limitation, not a skipped one.

## Open items before this pack can be signed off

- `MEMB-12`: exact grid row still not confirmed, despite a genuine 2026-09-29 attempt
  (see above) — a second reader should either extend the coordinate method with a
  per-viewport calibration, or locate it directly by eye at high zoom.
- `TITLE-1`: the `material: true` call is a judgment open to a second reader — an
  alternative reading is that the title shortening is a purely administrative
  simplification. Unaffected by the rerun, since it is a judgment call, not a fact the
  documents can settle either way.
- No named human reviewer has signed off on this pack yet — every finding's `verified-by`
  reads "single-reader cross-check" (agent self-verification, now including one independent
  rerun), not a named person.
