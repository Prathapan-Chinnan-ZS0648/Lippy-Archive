---
verified-by: single-reader cross-check
verified-on: 2026-09-21
confidence: SURE
verification: text layer (pdftotext) cross-checked against a 150dpi rendered raster
---

# Page 4 — Drawing E05, "Overall One-Line Diagram"

The system's top-level one-line diagram, new utility service through to the pump-station
loads. Read left-to-right, top-to-bottom:

**Utility service (top):** two new CoServ 24.9kV feeds, each through a new PMU (pad-
mounted unit, "PMU 1"/"PMU 2"), into **Pad-Mounted Switchgear PMGR-1 and PMGR-2** — each
labelled "25KV, 600A, 25KA SCCR" — with a tie breaker between them (both SPARE/TIE
breakers 300A/600A). Feeder cable callouts: `2(3#350KCMIL, (25KV), #350KCMIL G (600V),
5"C)` and `3#350KCMIL, (25KV), #350KCMIL G (600V), 5"C`.

**Generators (top-right, inside a dash-dot procurement boundary):** four **2000KW
GENERATOR** units, **G3, G4, G5 solid-line (new/current scope)** and **G6 dashed-line
(future — see `detection.md`)**, each with its own **Neutral Grounding Resistor
NGR-G3/G4/G5 (solid, in-scope) / NGR-G6 (dashed, future)**, feeding a 5kV bus through 52
(NO) breakers, then through 2000A breakers **FG1, FG2, SLB** into **Generator Paralleling
Switchgear GSW-2**. Key Note 1: "EXISTING COSERV PMU-1, TRANSFORMER AND ASSOCIATED
FEEDERS/DUCTBANKS TO BE DEMOLISHED AND REMOVED AFTER THE NEW WORK IS COMPLETE AND NEW
SERVICES ARE OPERATIONAL." Key Note 2: "THIS EQUIPMENT SHALL BE PURCHASED UNDER THE
PRE-PURCHASE PACKAGE."

**Substation transformers (center):** **TX-M1 and TX-M2**, each "**7.5/8.4/9.3/10.5MVA**",
24.9kV to 4.16kV, each with its own **NGR TX-M1 / NGR TX-M2**, feeding **MVSWGR-E and
MVSWGR-F** (see page 6/7/8 for full nameplate rating and a bus-configuration discrepancy
noted in `detection.md`) through 2000A breakers labelled UM1(NC)/GM1(NC) and UM2(NC)/
GM2(NC), tied via an **ATO** block inside the **Generator Master Control Panel** (red
callout: "ALL ATO CONTROLS FOR UTILITY SWGR AND PSG TO COME FROM MASTER CONTROL PANEL").
Breaker numbers 1,3,5,7,9 (MVSWGR-E) and 2,4,6,8 (MVSWGR-F); T-1/T-2 2000A breakers feed a
2000A busduct down to the transformer row below.

**Existing equipment (grey/hatched, left side):** an existing 2000KVA 24.9kV/4.16kV
utility transformer (marked for demolition per Key Note 1); existing Generators **G1**
and **G2**, each 1250KW, 5kV, feeding an existing Main Switchgear (1200A UM) and existing
Generator Parallel Switchgear, which in turn feed existing **TX-11** and **TX-12**
(1500KVA each, 4160V/480V, shown dashed) into **SWB-G**/**SWB-H** ("RECOVERY/EMERGENCY
PUMP STATION").

**Distribution transformers (bottom):** **TX-9, TX-7, TX-8, TX-10** — each **2000KVA**,
4160V/480V, fed from the 2000A busduct above. TX-9 → SWB-C (Membrane Building). TX-7 →
SWB-E (3000A bus, breakers T1/T2 3000A, feeding MCC-E 480V). TX-8 → SWB-F (mirrors SWB-E's
arrangement, per the shared "SWB-E and SWB-F" bus block spanning both). TX-10 → SWB-D
(Membrane Building). Independently of the transformers (fed from the same upstream
busduct, not from a transformer's own secondary), three **VFD(1200HP)** blocks appear on
this page: one solid, feeding "FINISHED WATER PUMP 9"; one solid, feeding a pump not
individually labelled on this page; one **dashed** (future), feeding "FUTURE FINISHED
WATER PUMP 11". The exact VFD-to-breaker and VFD-to-pump-number assignment is only fully
resolved on the per-switchgear detail sheets — see pages 7 and 8 (Drawings E08, E09) and
`detection.md`; this page's own layout should not be read as asserting TX-7 or TX-8 feed
a specific VFD directly.

Title block: Job No. 202066, Drawing No. E05, "Overall One-Line Diagram".
