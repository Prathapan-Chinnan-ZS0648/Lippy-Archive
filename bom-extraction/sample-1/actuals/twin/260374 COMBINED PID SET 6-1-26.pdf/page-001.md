---
document: 260374 COMBINED PID SET 6-1-26.pdf
for-document: sha256:bdb3725ac983a2e591ba908ef8f3702d8f9bfd1659a6b56b0e7844c1a721bb2e
page: 1
tier: TEXT_LAYER
read-by: pdftotext -layout (sparse — mostly furniture); pdftoppm -r 150 raster read (primary channel — this sheet is almost entirely vector line-work and small hand-placed text)
laid-out-as-a-table: true
verified-by: single-reader cross-check
verified-on: 2026-09-17
verification: corrected
confidence: SURE
---

## D-260374-11-LEGEND1 — "Piping & Instrumentation" (rev B)

Reference/decoder sheet, not BOM content. Five zones, left to right:

**Line types** — main process line, main process line w/ steam jacket, utility/bypass/minor process line, future/existing/alternate line, package/module boundary, line to atmosphere, line to grade, electrical/steam/hot-oil tracing (each with its own line-weight or hachure convention), electromagnetic/hydraulic/pneumatic/electrical signal lines, capillary tubing, software link, jacketed line, insulated line, direction-of-flow arrow, branch/crossover/signal-branch connections, sloping line.

**Flags & abbreviations** — flag symbols: F=Flare, AD=Acid Drain, OD=Open Drain, CD=Closed Drain, CCD=Cold Closed Drain, SD=Solvent Drain, SD/1=Solvent Drain (if >1 system), GD=Glycol Drain. Text abbreviations table: BF, CSC, CSO, E, ESD, (F)="finished with associated equipment or by others", FC, FI, FO, FP, HC, HOA, IAS, IGS, LO, LC, MCC, NO, NC, NT, PP, PPE, PT, R, RC, SC, S/D, SF, SP, SW, TS, VB (full list on-sheet; `(f)` is the flag used elsewhere in this set for `DR-3001`, see `bom-extraction/sample-1/actuals/findings/DR-3001.md`).

**Piping & instrument symbols** — breakout flanges, blind/line-blind open/closed, figure-8 blinds, angle/gate/ball/globe/plug/3-way/4-way/butterfly/check/choke/diaphragm/needle valves, tie-in location, sample connection, line-size-change, cleanout connection, conical basket strainer, gauge valve w/ bleeder, desiccant, flame arrestor, chemical seal, steam-jacketed valve, test ring, lubricator, process/steam trap, "Y"/"T" strainer, hose connection, flexible hose, spray nozzle, expansion joint, specialty item, spec-change/responsibility break, equipment insulation, pulsation dampener, vent, vent w/ bug screen, static mixer, pipe cap, demister, siphon blow-off, sacrificial anode, tandem seal.

**Service identification codes** — two-letter service codes (AD, AM, C, CH, CD, CW, D, DC, EX, FG, FW, G, GL, HM, HO, HV, IA, IG, JW, LO, LV, N, NG, OD, PD, PF, PO, PW, RP, S, SC, SO, SW, UA, UG, W, WS) mapping to service names (Atmospheric Drain … Sewage Water (Black)); used as the second field of every line number on this set (e.g. `PF` = Produced Fluids, `PO` = Produced Oil, `WI`/`W` = Water, `PG` = Produced Gas).

**Typical line number format**: `6"-PO-0001-A3-1.5"H-EL` = line size — service code — line number (3 digits) — class code — insulation thickness/type — heat-trace type.

**Typical specialty item number**: `SP / 001` = specialty-item flag with item number.

**Piping system specification table** — class codes A, A1–A5, B–B4, D–D3, E–E1, F, F1, F6, G, J, K, L, M, N, P, R, S, T, each mapping flange rating (ANSI 150–2500 RF/RTJ, API 2000–15000 RTJ, ANSI FF) × material (Carbon Steel, Carbon Steel NACE, Low-Temp, 304 SS, Fiberglass/FRP, CPVC, Carbon Steel Galvanized) × corrosion allowance × branch-connection-table code. This is the decoder for every line's class-code suffix seen elsewhere in this set (e.g. `B4`, `B3`, `A3`, `IPC`).

**Typical equipment number**: `E-001` = equipment-identifier letter(s) + item number. Equipment-identifier legend: A=Agitator/Mixer, B=Boiler, C=Compressor/Fan/Blower, D=Driver, E=Heat Exchanger, F=Filter, FS=Flare Stack, G=Generator, H=Heater/Furnace, K=Cooling Tower, L=Elevator/Conveyor, M=Crushing/Grinding, P=Pump, R=Reactor, S=WAG Skid, T=Atmosphere Tank, U=Packaged Unit, V=Pressure Vessel, W=Weighing Device/Scale, X=Miscellaneous. `skills/bom-extraction.md`'s EQUIPMENT-vs-INSTRUMENT classification rule is read directly from this table plus LEGEND2's instrument-letter table — this set's own tags (`V-`, `F-`, `CA-`, `DR-`) map onto it (`CA` and `DR` extend the single-letter scheme with this project's own two-letter prefixes, per `bootstrap.md`'s "what must not happen").

Title block: DWG. No. `D-260374-11-LEGEND1`, Rev. B, "PIPING & INSTRUMENTATION"; revision table rows A (05/29/26, Issued for Approval) and B (06/01/26, Issued for Approval).

> Docusign/plot furniture: none observed (this sheet is a native CAD export via Bluebeam Revu, not a re-signed document).
