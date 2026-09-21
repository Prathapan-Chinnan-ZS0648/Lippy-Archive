---
run: PREPURCHASE-ELECT-DWGS
use-case: bom-extraction
skill-version: v2
unit: TX-M1 — EQUIPMENT (substation-type transformer)
home-sheet: Prepurchase Elect Dwgs_10-30-2024.pdf, page 6 (Drawing E07); confirmed on page 4 (E05)
verified-by: single-reader cross-check
verified-on: 2026-09-21
confidence: SURE
---

# TX-M1

Source: `documents/bom-extraction/source/Prepurchase Elect Dwgs_10-30-2024.pdf`
Twin: `actuals/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/twin/derived/Prepurchase Elect Dwgs_10-30-2024.md`

**Substation-type transformer** — EQUIPMENT

## Specification
- Rating: 7.5/8.4/9.3/10.5 MVA (OA/FA/FA staged rating)
- Voltage: 24.9kV (primary, fed from PMGR-1) to 4.16kV (secondary, feeds MVSWGR-E)
- Temperature rise: 55/65°C, with fans (Drawing E07 Key Note 1)
- Neutral grounding: via NGR-TX-M1 (see `ngrtxm1.md`), mounted on top of the transformer
  (Drawing E07 Key Note 8)

## Source
`Prepurchase Elect Dwgs_10-30-2024.pdf`, page 6, Drawing E07 (home sheet — full rating
and key notes); also shown on page 4, Drawing E05.

## Also referenced on
Not separately elevated or detailed elsewhere in this excerpt.

## Notes
Feeds MVSWGR-E, whose own bus configuration carries an open discrepancy between sheets —
see `mvswgre.md` and `detection.md`. Distinct from the four smaller 2000KVA distribution
transformers (TX-7/8/9/10) downstream of MVSWGR-E/F — see those findings.
