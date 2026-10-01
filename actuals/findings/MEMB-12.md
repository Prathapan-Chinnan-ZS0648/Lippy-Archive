---
run: AD-3010-C-330030-SHT-004
use-case: drawing-comparison
skill-version: v1
unit: MEMB-12 — Plan EL. 111.500 (T.O.S.), Grid D–E, the sub-panel adjoining Grid E
kind: CHANGED
material: true
cites: AD-3010-C-330030-SHT-004-REV3.pdf, page 1; AD-3010-C-330030-SHT-004-REV4.pdf, page 1
drafted-from: runs/2026-09-17-a/findings/MEMB-12.md
verified-by: single-reader cross-check; grid position independently confirmed twice on 2026-09-29 — once via a fresh coordinate re-derivation using PyMuPDF (correcting a page-rotation handling error in the first attempt), and once via a separate, blind independent attempt (qwen3.8-flash via Hermes Agent) that reached the same coordinate by its own vector-geometry method
verified-on: 2026-09-29
confidence: SURE
---

# MEMB-12

Source: `documents/source/AD-3010-C-330030-SHT-004-REV4.pdf`
Supporting: `documents/supporting/AD-3010-C-330030-SHT-004-REV3.pdf`
Twin: `actuals/twin/derived/AD-3010-C-330030-SHT-004-REV3.md` (older), `actuals/twin/derived/AD-3010-C-330030-SHT-004-REV4.md` (newer)

**Plan EL. 111.500 (T.O.S.), Grid D–E, the sub-panel adjoining Grid E** — CHANGED (material)

## Old
> SW
> UC203x203x46 (-120)
> — AD-3010-C-330030-SHT-004-REV3.pdf, page 1, Grid D–E (third of three 3000mm sub-panels, counting from Grid D)

## New
> SW(30N 10V)
> UC203x203x46 (-120)
> — AD-3010-C-330030-SHT-004-REV4.pdf, page 1, Grid D–E (third of three 3000mm sub-panels, counting from Grid D)

## What changed
A weld/bolt count, `(30N 10V)`, is added to the `SW` connection tag on this column panel — the D–E bay's third physical sub-panel, immediately adjoining Grid E. (The D–E bay's *first* physical sub-panel, right after Grid D, was already unchanged between revisions — it already carried a weld count in REV3 too — which is why `MEMB-8`'s own "panel 1" refers to the first sub-panel that changed, not the first physical position; this finding is described by physical location instead, to avoid implying a conflicting count against `MEMB-8`'s existing wording.) Member size and notch (-120) unchanged. Marked with a Rev 4 revision cloud, directly confirmed in a PyMuPDF render at the exact coordinate.

## Why it matters
The same fabrication-relevant pattern as `MEMB-2`/`MEMB-3`/`MEMB-8`/`MEMB-9`/`MEMB-10`/`MEMB-11` — a connection design value that was previously unspecified is now specified.

## 2026-09-29 resolution — two independent confirmations
The first attempt this same day (see `prompting.md` Entry 13) found the right coordinate via
`pdftotext -bbox-layout` but could not visually confirm it: repeated render crops kept showing
the wrong plan view's content. Root cause, found afterward: `pdfinfo`/`pdftotext` were
consulted first and didn't surface it plainly, but the page carries an explicit `/Rotate 90`
flag (confirmed directly via `PyMuPDF`'s `page.rotation`), and `pdftotext -bbox-layout` already
reports coordinates in that rotated display space — the first attempt then applied its own
rotation transform on top of already-rotated coordinates, a double rotation that happened to
look correct near its calibration point and drifted further away, exactly matching the
symptoms seen (correct for `MEMB-1`, `MEMB-10`, `MEMB-11`; wrong for anything past roughly the
B–C bay).

Once diagnosed, `PyMuPDF` (which handles page rotation correctly on its own) was used to
re-render and crop directly at the coordinate the first attempt had already found — the
revision cloud is clearly visible there. Independently, and without seeing this reasoning, a
second attempt was run via `qwen3.8-flash` (Hermes Agent), blind to this project's existing
`MEMB-10`/`11`/`12` findings, using its own tooling (`pdftotext -bbox-layout` for text position
plus `PyMuPDF` for the sheet's actual vector line geometry — reading the real grid-line and
panel-divider positions directly, rather than inferring them from dimension-label text
positions as the first attempt did). It reached the identical coordinate independently and
also confirmed the revision cloud by its own rendered-crop check. See that run's own record at
`runs/2026-09-29-a/`, and `pivot.md` Entry 3 for the full reconciliation.
