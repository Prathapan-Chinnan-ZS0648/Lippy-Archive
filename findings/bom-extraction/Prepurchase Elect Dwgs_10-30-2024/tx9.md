---
run: PREPURCHASE-ELECT-DWGS
use-case: bom-extraction
skill-version: v2
unit: TX-9 — EQUIPMENT (distribution transformer)
home-sheet: Prepurchase Elect Dwgs_10-30-2024.pdf, page 7 (Drawing E08); confirmed on pages 4 (E05), 5 (E06)
verified-by: single-reader cross-check
verified-on: 2026-09-21
confidence: SURE
---

# TX-9

Source: `documents/bom-extraction/source/Prepurchase Elect Dwgs_10-30-2024.pdf`
Twin: `actuals/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/twin/derived/Prepurchase Elect Dwgs_10-30-2024.md`

**Distribution transformer** — EQUIPMENT

## Specification
- Rating: 2000KVA
- Voltage: 4160V (primary, fed from MVSWGR-E breaker 7) to 480V (secondary)
- Feeds Switchboard SWB-C, Membrane Building

## Source
`Prepurchase Elect Dwgs_10-30-2024.pdf`, page 7, Drawing E08 (home sheet — per-breaker
detail); also shown on page 4 (Drawing E05) and page 5 (Drawing E06).

## Also referenced on
Page 3 (Drawing E02, site plan location).

## Notes
One of four identically-rated 2000KVA/4160-480V distribution transformers on this
project (with TX-7, TX-8, TX-10). The VFD serving Finished Water Pump P9 (`vfd9.md`) is
fed independently from the MVSWGR-E bus (breaker 5), not from TX-9's own secondary — see
`detection.md` for how page 4's overview layout could be misread otherwise.
