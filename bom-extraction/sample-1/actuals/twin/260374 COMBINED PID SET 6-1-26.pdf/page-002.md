---
document: 260374 COMBINED PID SET 6-1-26.pdf
for-document: sha256:bdb3725ac983a2e591ba908ef8f3702d8f9bfd1659a6b56b0e7844c1a721bb2e
page: 2
tier: TEXT_LAYER
read-by: pdftotext -layout (sparse); pdftoppm -r 150 raster read (primary channel)
laid-out-as-a-table: true
verified-by: single-reader cross-check
verified-on: 2026-09-17
verification: corrected
confidence: SURE
---

## D-260374-11-LEGEND2 — "Piping & Instrumentation" (rev B)

Reference/decoder sheet, not BOM content — the ISA-style instrument nomenclature this set's every INSTRUMENT, SAFETY-RELIEF-VALVE and CONTROL-VALVE tag is built from.

**Coding of identification letters** — a 26-row × 5-column table (rows A–Z, one per "first letter" measured/initiating variable) crossing "First letter" (measured/initiating variable, with a modifier column) against "Succeeding letters" (readout/passive function, output function, modifier). Rows this set's tags actually use: F=Flow rate, H=Hand, L=Level, P=Pressure/Vacuum, S=Speed/Frequency→Safety(8), T=Temperature, X=Unclassified, Z=Position. Note: "safety" as a succeeding-letter modifier (row S) is what turns `P` into `PSV` = Pressure **Safety** Valve, not a separate "S" first-letter row.

**Instrument bubbles** — circle/hexagon symbols for local-mounted, main-panel-front-mounted, local-panel-front-mounted, combination, main-panel-back-mounted, local-panel-back-mounted, computer-based-device (w/ and w/o display), DCS-shared-display, PLC, DCS-blind-device instruments; G/L/R pilot-light colour codes.

**Typical identifiers for P&ID's** (the succeeding-letters vocabulary used inside every bubble on this set): BE, DT, EV, FAH, FAL, FC, FCV, FE, FI, FIC, FO, FR, FSH, FSL, FT, HC, HIC, HS, HV, LAH, LAHH, LAL, LALL, LC, LCV, LG, LIC, LS, LSH, LSHH, LSL, LSLL, LT, MAH, ME, MI, MSH, MT, PAH, PAL, PC, PCV, PDAH, PDCV, PDI, PDS, PDSH, PI, PIC, PS, PSH, PSL, **PSV = Pressure Safety Relief Valve**, PT, SAH, SDV, SSH, TAH, TAL, TC, TE, TI, TIC, TJR, TS, TSH, TSL, TT, TV, TW, TZ, UJR, VAH, VAHH, VSH, VSHH, XG, XI, XS, ZLC, ZLO, ZSC, ZSO. This is the decoder for every instrument-style tag extracted or noted elsewhere in this set (e.g. `PSV`, `PCV`, `LCV`, `FCV`, `SDV`, `FIT`, `PIT`, `LSH`, `TW`).

**Specialty function modifier types** — totalize, add, subtract, bias, average, percent, multiply, divide, difference, square-root, raise-to-power, characterize, booster, gain, high/low select, high/low limiter, reverse, current/pneumatic/voltage conversion pairs, resistance/frequency conversion, integrate, absolute pressure, interlock (if-all/if-any), shutdown interlock, auto/manual, derivative/inverse-derivative, thermocouple.

**Typical instrument symbols** — self-contained/differential pressure regulators, self-contained temp control valve, manual control valve, control valve w/ cylinder actuator, electric motor driven valve, control valve w/ pneumatic actuator, control valve w/ hand wheel, control valve w/ electro-pneumatic actuator, pneumatic control valve w/ positioner, solenoid valve (± manual reset), rupture disc/safety head (pressure or vacuum, "PSE"), pressure/vacuum safety valve, pilot pressure safety valve, orifice flow element, chamber orifice fitting, turbine meter, pilot tube, venturi tube, straightening vane, magnetic/wedge/verabar/vortex/coriolis flowmeter.

**Typical instrument bubble modifiers / typical instrument type example** — worked example on-sheet: `EL / LC-204 / 13 / P/I / -2` reading as tracing type (EL=electric), instrument identifier (LC=Level Controller), loop number (204), specialty function modifier (13=Multifunction), multiple-instrument-types-within-a-loop notation (`P/I`), alpha location/train modifier. Local-panel-modifier key: A=Amine, B=Burner, C=Compressor, D=Dehydration, E=Expander, F=Furnace, G=Glycol, H=Heater, I=Instrument Air, P=Pump, R=Refrigeration Plant, R=X Heat Exchanger (sic, two "R" rows on-sheet).

Title block: DWG. No. `D-260374-11-LEGEND2`, Rev. B, "PIPING & INSTRUMENTATION"; same revision table as LEGEND1 (A 05/29/26, B 06/01/26, both "Issued for Approval").
