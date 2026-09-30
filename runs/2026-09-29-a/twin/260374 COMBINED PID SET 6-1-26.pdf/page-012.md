---
document: 260374 COMBINED PID SET 6-1-26.pdf
for-document: sha256:bdb3725ac983a2e591ba908ef8f3702d8f9bfd1659a6b56b0e7844c1a721bb2e
page: 12
tier: PERCEPTION
read-by: pdftotext -layout (header row + (f) labels); pdftoppm 200dpi overview + 400dpi 6-tile sweep + targeted crops
laid-out-as-a-table: false
verified-by: single-reader cross-check
verified-on: 2026-09-29
verification: read-through
confidence: SURE
---

## D-260374-11-011 — PIPING & INSTRUMENTATION, REV. B, 12 of 13 (title block read)

Instrument-air package sheet. Datasheet header row across top (text layer confirms):
"CA-800 AIR COMPRESSOR | F-803 FILTER | F-804A PRE-FILTER | DR-804 AIR DRYER |
F-804B POST-FILTER | V-805 DRY AIR REVEIVER".

### Datasheet blocks — read verbatim
- CA-800 / AIR COMPRESSOR / TYPE: DUPLEX COMPRESSOR PACKAGE / MFG/MODEL: IR 2-2545A10 /
  CAPACITY: 35 SCFM @ 125 PSIG / RECIEVER TANK: 240 GAL - 250 MAWP / MOTOR: 10 HP -
  230-460/3/60 (printed spellings "RECIEVER"; model digit groups re-checked at crop:
  IR 2-2545A10)
- F-803 / FILTER / TYPE: GENERAL PURPOSE FILTER / MFG/MODEL: IR FA110IG / CAPACITY: 65 SCFM
- F-804A / PRE-FILTER / TYPE: OIL REMOVAL FILTER / MFG/MODEL: IR FA110IH / CAPACITY: 65 SCFM
- DR-804 / AIR DRYER / TYPE: DESSICANT AIR DRYER / MFG/MODEL: IR D110IM / CAPACITY: 65 SCFM
- F-804B / POST-FILTER / TYPE: DUST FILTER / MFG/MODEL: IR FA110ID / CAPACITY: 65 SCFM
- V-805 / DRY AIR REVEIVER / SIZE: 30" OD X 7'-0" (240 GAL) / MAWP: 200 PSIG /
  MAT'L: CARBON STEEL

### Relief devices
- PSV 800 — on CA-800 package receiver tank — "SET @ 200 PSI / 173 SCFM" — (f)
- PSV 801A — "(f) AFTERCOOLER" — "SET @ 80 PSI / 74 SCFM" — ATM
- PSV 802A — "SET @ 80 PSI / 74 SCFM" — ATM
- PSV 805 — on V-805 (f) — "3/4"X1" SET @ 200 PSIG" — 1"x3/4" CSO

### Control valves
- PCV 800 — "SET @ 100 PSIG" — pilot-operated valve on IA header (2" line, 2"x1" reducer,
  1/2" pilot)
- KV 800 — 1/2" FC — solenoid/pneumatic on-off at compressor discharge (PLC link)
- KV 805 — 1/2" FO — on V-805 area

### Other package text (as printed)
- "START @ 90 PSIG STOP @ 120 PSIG" (compressor unloader band, near PLC dashed line)
- "DESICCANT AIR DRYER (f)" over DR-804 twin-tower graphic; "V-805 (f)" label on receiver
- "VENT MUFFLERS (OUTSIDE BUILDING) DR-3001 (f)" (text layer + crop agree)
- "(f) AFTERCOOLER" (untagged package sub-item)
- "METHANOL INJECTION POINT, INSTALL 1/2" INJECTION QUIIL" (printed "QUIIL")
- IA distribution: "TYPICAL I.A. TO USERS" 2"-IA-501-T; 1"-IA-502-T / 1"-IA-XXXX-T
  "ROUTE TO A SAFE LOCATION"; 1"-IA-503-T / 1"-IA-504-T; AG/B spec break; SS TUBING
- 1"/D2S/NC drains; 2"x1" D2S; 1/2" D2S at filters

### Instruments (counted, not extracted)
PSHH 800 (SET @ 240 PSI), LSL 800, HS 800 (HOA), XS 801, XS 802, XY 801 (RUN PERMISSIVE),
XY 802 (RUN PERMISSIVE), PLC, PI 805, LSH 805, LAH 805, PIT 800A, PI 800A (PAL),
TW 805, TI 805, PI/PAL 800B, PIT 800B (NOTE 2), PI/PAL 800C, PIT 800C,
PI 800D (PAL/PCH/PCL, 4-20 MA), PIT 800D, PI 800E (PAL), PIT 800E.

### NOTES (as printed)
1. INSULATE 1" COLD & ELECT. TRACE ABOVE GRADE.
2. LOCATE PIT-300B & PIT-300C AT FURTHEST END OF HEADERS. (vs drawn PIT 800B/800C — detection §12)

## Notes
All six package items carry "(f)" markers at their graphics (detection §11). Revision
table: A 05/29/26 ISSUED FOR APPROVAL; B 06/01/26 ISSUED FOR APPROVAL.
