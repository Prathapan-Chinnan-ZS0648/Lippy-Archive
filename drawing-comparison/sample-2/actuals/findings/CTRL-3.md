---
item: CTRL-3
for-document: sha256:e2c1629b3536b5f2c773200403c11edb73f1f0678931f2f3db1becad130034d1
class: UNCHANGED
material: no
group: key plan / wind rose / scale bar (x<280 y<320; x 1855–2340 y 871–1130)
addressed: true
verdict: UNCHANGED
old-position: "NORTH"/"TRUE NORTH", "PREVAILING WIND" with readings 64.2°/70.8°, "PLANT"; key plan bubbles "1" (506,91)/"2" (730,91); KEY PLAN caption + "0 1m 2m 4m 6m 8m 10m" bar + "SCALE 1:100"
new-position: identical, same coordinates
verified-by: author cross-check — wpeek window x[60,320] y[120,210] shows byte-identical token lists both revisions (the earlier "wind angle changed" worry was a layout-reflow artefact: the "8"/"2" fragments belong to '64.2°'/'70.8°' and sit at the same points in both); batch-1 wind crops OCR both sheets' NORTH/PLANT/TRUE/WIND/8000/4000/2500 at matching positions; region spool shows the scale-bar band identical; pixel diff: no change at any text position (1372 stray px along one leader at y≈176, sub-3pt graphic jitter only)
verified-on: 2026-09-16
confidence: SURE
---
# CTRL-3

**Key plan, north/wind furniture and scale bar**
UNCHANGED

## Old (document, page, callout)
AD-3010-C-330030-SHT-004-REV3.pdf, page 1: as listed.

## New (document, page, callout)
AD-3010-C-330030-SHT-004-REV4.pdf, page 1: as listed, unchanged.

## What changed
Nothing. Recorded as an active trap-cleared case: this is where the first raw `pdftotext -layout` diff produced the scariest-looking candidate of the whole session ("64. 8 º" reflowed to "64. 2 º"-adjacent lines) and coordinate comparison proved both sheets print the identical wind-rose readings 64.2°/70.8°.

## Why it matters
Tests the pipeline's noise rejection: layout-mode diffs of rotated CAD sheets shuffle tokens between lines; only coordinate-aware comparison distinguishes reflow from change. A run that flags the wind rose or key plan at all is wrong here.
