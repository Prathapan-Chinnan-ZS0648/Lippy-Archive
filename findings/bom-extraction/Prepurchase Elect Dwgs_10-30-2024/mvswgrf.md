---
run: PREPURCHASE-ELECT-DWGS
use-case: bom-extraction
skill-version: v2
unit: MVSWGR-F — EQUIPMENT (medium voltage switchgear)
home-sheet: Prepurchase Elect Dwgs_10-30-2024.pdf, page 8 (Drawing E09); confirmed on pages 4 (E05), 5 (E06), 6 (E07)
verified-by: single-reader cross-check
verified-on: 2026-09-21
confidence: UNSURE
---

# MVSWGR-F

Source: `documents/bom-extraction/source/Prepurchase Elect Dwgs_10-30-2024.pdf`
Twin: `actuals/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/twin/derived/Prepurchase Elect Dwgs_10-30-2024.md`

**Medium voltage switchgear** — EQUIPMENT

## Specification
- Voltage: 4160V — **SURE**, agrees on Drawings E05, E06, E07, E09
- Bus amperage: 2000A — **SURE**, agrees on all four drawings
- Short circuit current rating (SCCR): 50kA — **SURE**, agrees on all four drawings
- Wire count and bus material — **UNSURE, an open discrepancy between sheets**:
  Drawing E07 states "3Ø, 4W ... TIN PLATED COPPER BUS"; Drawing E09 (this unit's own
  dedicated detail sheet) states "3Ø, 3W ... INSULATED COPPER BUS". Not resolved in this
  pass — see `detection.md`.
- Fed from TX-M2 (via TXM2-P breaker) at 4.16kV; ties to MVSWGR-E via an ATO block
  routed through the Generator Master Control Panel; breaker positions on this sheet: 4
  (TX-8), 6 (VFD-10, current), 8 (future VFD), 10 (TX-10), 12 (future VFD)

## Source
`Prepurchase Elect Dwgs_10-30-2024.pdf`, page 8, Drawing E09 (home sheet — dedicated
per-breaker detail for this unit); also shown on page 4 (Drawing E05), page 5
(Drawing E06), and page 6 (Drawing E07, the source of the bus-configuration discrepancy
above).

## Also referenced on
Page 10 (Drawing E15, elevation — confirms physical compartment/cell layout).

## Notes
`confidence: UNSURE` applies specifically to the wire-count/bus-material detail, not the
whole finding — voltage, amperage, and SCCR are all independently confirmed SURE. See
`mvswgre.md` for the parallel unit, which shows the identical pattern of discrepancy.
