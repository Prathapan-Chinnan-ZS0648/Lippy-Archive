---
document: 260374 COMBINED PID SET 6-1-26.pdf
for-document: sha256:bdb3725ac983a2e591ba908ef8f3702d8f9bfd1659a6b56b0e7844c1a721bb2e
verified-by: single-reader cross-check
verified-on: 2026-09-17
confidence: SURE
---
# 260374 COMBINED PID SET 6-1-26.pdf

Full tag inventory by sheet, cut under the bom-extraction unit rule in `skills/bom-extraction.md`. The 27 tags marked **[F]** below are extracted in full as findings in `actuals/findings/` — that is the authoritative, one-file-per-unit set to count BOM line items against. Every other tag is named here so this pack's coverage is checkable, but is not individually detailed — see `bootstrap.md`'s "What this pack does and does not cover".

## By sheet

### Page 1–2 · D-260374-11-LEGEND1 / LEGEND2
Reference/decoder sheets. No tags to extract.

### Page 3 · D-260374-11-001 — Well-pad gathering manifold
- 12 numbered well flowlines: `PF-170`, `PF-171`, `PF-172`, `PF-173`, `PF-174`, `PF-175`, `PF-176`, `PF-177`, `PF-221`, `PF-222`, `PF-223` (line numbers, not equipment/valve/PSV tags)
- `AT-001`/`AT-Q01`, `AT-002`/`AT-Q02` — H2S alarm/indication (INSTRUMENT)
- Loop `504`: `FIT-504`, `FE-504`, `FI-504`, `FQ-504`, `FY-504`, `PIT-504`, `ZI-504`, `ZIC-504`, `ZSC-504`, `ZSO-504`, `SDV-504`, `FCV-504` (INSTRUMENT/CONTROL-VALVE, no stated set-point)

### Page 4 · D-260374-11-002 — Interconnect piping
- `AT-005`/`AT-Q05` — H2S alarm/indication (INSTRUMENT)

### Page 5 · D-260374-11-003 — intentionally blank

### Page 6 · D-260374-11-005 — V-200
- **`EQUIP-V-200` [F]**
- **`PSV-200` [F]**, **`PSV-201` [F]**, **`PSV-202` [F]**
- `PAH-200`, `PIT-200`, `LSH-201`, `LAH-201`, `LSL-201`, `LAL-201`, `LG-200`, `TI-200`, `TW-200`, `LC-200`, `ZI-201`, `FE-200`, `FIT-200`, `FI-200`, `FQ-200`, `LCV-200`, `LCV-201` (INSTRUMENT/CONTROL-VALVE, "HOLD FOR SIZING" or no stated set-point)

### Page 7 · D-260374-11-006 — intentionally blank

### Page 8 · D-260374-11-007 — V-600A
- **`EQUIP-V-600A` [F]**
- **`PSV-600A` [F]**, **`PSV-601A` [F]**, **`PSV-602A` [F]**
- **`PCV-600A` [F]**, **`PCV-601A` [F]**, **`PCV-603A` [F]**, **`PCV-604A` [F]**
- `FT-600A`, `FE-600A`, `TE-600A`, `TW-601A`, `PIT-600A`, `PI-600A`, `PY-600A`, `LC-602A`, `LAH-602A`, `LG-602A`, `LAL-602A`, `LSL-602A`, `LSH-602A`, `TI-602A`, `TW-602A`, `LC-601A`, `LG-601A`, `LSL-601A`, `LAL-601A`, `PI-601A`, `FIT-601A`, `FE-601A`, `SV-601A`, `LCV-601A`, `SV-602A`, `LCV-602A`, `LCV-603A`, `FE-602A`, `FIT-602A`, `FI-602A`, `FQI-602A` (INSTRUMENT/CONTROL-VALVE, no stated set-point)

### Page 9 · D-260374-11-008 — intentionally blank

### Page 10 · D-260374-11-009 — IP/Test gas metering
- **`PCV-201` [F]**, **`PCV-202` [F]**
- `PY-201`, `FT-200`, `FE-200`, `TE-200`, `TW-200`, `TW-201`, `PAH-201`, `PAL-201`, `PIT-201`, `PI-201`, `PY-202`, `PAH-202`, `PALL-202`, `PIT-202`, `PI-202` (INSTRUMENT, no stated set-point)

### Page 11 · D-260374-11-010 — V-700
- **`EQUIP-V-700` [F]**

### Page 12 · D-260374-11-011 — CA-800 package
- **`EQUIP-CA-800` [F]**, **`EQUIP-F-803` [F]**, **`EQUIP-F-804A` [F]**, **`EQUIP-DR-804` [F]**, **`EQUIP-F-804B` [F]**, **`EQUIP-V-805` [F]**, **`EQUIP-DR-3001` [F]**
- **`PSV-800` [F]**, **`PSV-801A` [F]**, **`PSV-802A` [F]**, **`PSV-805` [F]**
- **`PCV-800` [F]**
- `HS-800`, `XS-801`, `XS-802`, `LSL-800`, `PSHH-800`, `KV-800`, `TW-805`, `TI-805`, `LAH-805`, `LSH-805`, `KV-805`, `PI-800A`, `PIT-800A`, `PAL-800A`, `PI-800B`, `PIT-800B`, `PAL-800B`, `PI-800C`, `PIT-800C`, `PAL-800C`, `PI-800D`, `PIT-800D`, `PAH-800D`, `PCH-800D`, `PCL-800D`, `PAL-800D` (INSTRUMENT, no stated set-point)

### Page 13 · D-260374-11-004 — intentionally blank

## Totals

- Findings extracted this pass: **27** (10 EQUIPMENT, 10 SAFETY-RELIEF-VALVE, 7 CONTROL-VALVE)
- Additional tags named above but not individually extracted this pass: 12 well-flowline numbers + roughly 100 INSTRUMENT tags + 5 CONTROL-VALVE/SHUTDOWN-VALVE tags with no stated set-point (`FCV-504`, `SDV-504`, `LCV-200`, `LCV-201`, `LCV-601A`, `LCV-602A`, `LCV-603A`, `SV-601A`, `SV-602A`)
