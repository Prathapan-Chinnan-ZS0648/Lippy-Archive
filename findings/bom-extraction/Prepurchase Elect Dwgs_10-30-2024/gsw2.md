---
run: PREPURCHASE-ELECT-DWGS
use-case: bom-extraction
skill-version: v2
unit: GSW-2 — EQUIPMENT (generator paralleling switchgear)
home-sheet: Prepurchase Elect Dwgs_10-30-2024.pdf, page 9 (Drawing E10); confirmed on pages 4 (E05), 5 (E06)
verified-by: single-reader cross-check
verified-on: 2026-09-21
confidence: SURE
---

# GSW-2

Source: `documents/bom-extraction/source/Prepurchase Elect Dwgs_10-30-2024.pdf`
Twin: `actuals/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/twin/derived/Prepurchase Elect Dwgs_10-30-2024.md`

**Generator Paralleling / Generator Switchgear** — EQUIPMENT

## Specification
- Voltage/phase/wire: 4160V, 3-phase, 3-wire
- Bus: 2000A, tin plated copper bus
- Short circuit current rating (SCCR): 50kA
- Feeds MVSWGR-E and MVSWGR-F via 2000A breakers GSW2-1P/GSW2-2P; fed by generators
  GEN-G3/G4/G5 via 2000A breakers FG1/FG2/SLB
- Vendor requirements (Drawing E10 Key Notes): CTs for generator manufacturer's
  installation in the generator enclosure, all trip settings per power-system study,
  integral motorized racking device on every breaker for remote operation, Ethernet
  switch Cisco IE-3400 to connect all relays with a single connection to the plant network
  switch

## Source
`Prepurchase Elect Dwgs_10-30-2024.pdf`, page 9, Drawing E10 (home sheet — full one-line
and key notes); also shown on page 4 (Drawing E05) and page 5 (Drawing E06).

## Also referenced on
Page 3 (Drawing E02, site plan location); page 10 (Drawing E15, elevation — confirms
physical compartment layout: 5 controls bays, FG1/FG2 breaker bays, and the G3/G4/G5/G6/
LB generator bays below).

## Notes
Explicitly named "THIS EQUIPMENT SHALL BE PURCHASED UNDER THE PRE-PURCHASE PACKAGE" (E10
Key Note 11). Feeds and is fed by the generators and the on-site load bank (`lb.md`) —
see those findings for their own ratings.
