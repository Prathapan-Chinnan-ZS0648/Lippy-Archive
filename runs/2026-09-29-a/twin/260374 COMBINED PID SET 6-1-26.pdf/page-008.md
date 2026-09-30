---
document: 260374 COMBINED PID SET 6-1-26.pdf
for-document: sha256:bdb3725ac983a2e591ba908ef8f3702d8f9bfd1659a6b56b0e7844c1a721bb2e
page: 8
tier: PERCEPTION
read-by: pdftotext -layout (titles V-600A); pdftoppm 200dpi overview + 400dpi 6-tile sweep + targeted crops
laid-out-as-a-table: false
verified-by: single-reader cross-check
verified-on: 2026-09-29
verification: read-through
confidence: SURE
---

## D-260374-11-007 — PIPING & INSTRUMENTATION, REV. B, 8 of 13 (title block read)

V-600A home sheet. Large header row (also in text layer): "V-600A — TEST SEPARATOR #1".

### Datasheet block (top center, revision cloud over DESIGN line) — read verbatim
- V-600A
- TEST SEPARATOR #1
- SIZE: 60" ID X 18'-0" S/S
- DESIGN PRESSURE: 825 PSIG @ 200 F
- OPERATING PRESSURE: 550 PSIG
- MAWP: 825 PSIG @ 200 F
Vessel drawn with 24" MW manway, BAFFLE, WEIR, ANODE TYP 4.

### Relief devices (each in "HOLD FOR SIZING" cloud, ATM discharge)
- PSV 600A — 3"X4" — SET @ 720 PSIG — 4" CSO
- PSV 601A — 3"X4" — SET @ 738 PSIG
- PSV 602A — 3"X4" — SET @ 756 PSIG

### Control valves
- PCV 600A — "SET @ 225 PSI" — 8" V-BALL FO — HOLD FOR SIZING — on gas-out
  10"-PG-117-B3 "TO IP GAS LINE D-260374-11-009" (10"X8" reducers, I/P + PY 600A,
  B7RL-6, D2S-C6 1" drain, NC bypass)
- PCV 601A — "SET @ 35 PSIG" — I.A. supply regulator (1/4" laterals)
- PCV 602A — "SET @ 35 PSIG" — 1/4" — I.A.
- PCV 604A — "SET @ 15 PSIG" — 1/4" — VENT PLUG (pilot-fed via SV 602A)
- LCV 601A — 2" V-BALL FO — HOLD FOR SIZING — on oil-out 6"-PO-126-B4-IPC
  "TO V-200 INLET D-260374-11-005" (6"X2" reducers, B7RL-C46 NC)
- LCV 602A — 2" V-BALL FO — HOLD FOR SIZING — on 3"-W-1148-B4-IPC (6"X2" reducer)
- LCV 603A — 2" V-BALL FO — HOLD FOR SIZING — on water-out 6"-W-127-B4-IPC
  "TO HEADER D-260374-11-002" (6"X2" reducer, BYPASS)

### Lines / arrows (as printed)
- 3"-PF-107-B4-IPC "FROM TEST 1 HEADER D-260374-11-002"
- 3"-WI-701-ES "FROM WATER INJECTION D-260374-11-001"
- 6"-PO-126-B4-IPC "TO V-200 INLET D-260374-11-005"; 6"-PO-127-B4-IPC
  "TO V-200 OUTLET D-260374-11-005"; 6"-W-1148-B4-IPC; 6"-W-127-B4-IPC; 2" B.F.; 2" B2R-C6

### Instruments (counted, not extracted)
PI 600A (PAL/PAH), PIT 600A, PY 600A, PI 601A, PAL/PI 600A, PIT 600A, LG 601A, LG 602A,
TI 602A, TW 600A/601A/602A, TE 600A, LSH 602A, LAH 602A, LAL 602A, LSL 602A, LSL 601A,
LAL 601A, LC 601A, FI/FQI/FT/FE 600A (METER SKID LIMITS, MODBUS RS-485, HOLD FOR SIZING,
BYPASS), FE/FIT/FI 601A (MODBUS RS-485), SV 601A, SV 602A (solenoids).

### NOTES (as printed)
1. INVALCO FLEXTUBE CONTROLLER. 2. ALL BLEED RINGS & PIPING COMPONENTS 1 1/2" & SMALLER IN
B4 SPEC TO BE BS SPEC. 3. …A5… AS SPEC (partially legible). 4. LEVEL GAUGE INSULATION TO BE
BLANKET TYPE.

## Notes
PCV-603A does not appear (numbering jumps 602A→604A, detection §8). All "A"-suffixed items
imply an undrawn V-600B series (detection §8).
