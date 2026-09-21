---
run: PREPURCHASE-ELECT-DWGS
use-case: bom-extraction
skill-version: v2
unit: TX-M2 — EQUIPMENT (substation-type transformer)
home-sheet: Prepurchase Elect Dwgs_10-30-2024.pdf, page 6 (Drawing E07); confirmed on page 4 (E05)
verified-by: single-reader cross-check
verified-on: 2026-09-21
confidence: SURE
---

# TX-M2

Source: `documents/bom-extraction/source/Prepurchase Elect Dwgs_10-30-2024.pdf`
Twin: `actuals/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/twin/derived/Prepurchase Elect Dwgs_10-30-2024.md`

**Substation-type transformer** — EQUIPMENT

## Specification
- Rating: 7.5/8.4/9.3/10.5 MVA (OA/FA/FA staged rating)
- Voltage: 24.9kV (primary, fed from PMGR-2) to 4.16kV (secondary, feeds MVSWGR-F)
- Temperature rise: 55/65°C, with fans (Drawing E07 Key Note 1)
- Neutral grounding: via NGR-TX-M2 (see `ngrtxm2.md`), mounted on top of the transformer
  (Drawing E07 Key Note 8)

## Source
`Prepurchase Elect Dwgs_10-30-2024.pdf`, page 6, Drawing E07 (home sheet — full rating
and key notes); also shown on page 4, Drawing E05.

## Also referenced on
Not separately elevated or detailed elsewhere in this excerpt.

## Notes
Feeds MVSWGR-F, whose own bus configuration carries an open discrepancy between sheets —
see `mvswgrf.md` and `detection.md`. Same rating as TX-M1 — the mirror unit on the other
utility feed.
