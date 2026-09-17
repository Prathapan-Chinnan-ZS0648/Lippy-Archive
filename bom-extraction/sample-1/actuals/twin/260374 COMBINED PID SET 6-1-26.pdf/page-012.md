---
document: 260374 COMBINED PID SET 6-1-26.pdf
for-document: sha256:bdb3725ac983a2e591ba908ef8f3702d8f9bfd1659a6b56b0e7844c1a721bb2e
page: 12
tier: TEXT_LAYER
read-by: pdftotext -layout (sparse); pdftoppm -r 150 raster read (primary channel)
laid-out-as-a-table: true
verified-by: single-reader cross-check
verified-on: 2026-09-17
verification: corrected
confidence: SURE
---

## D-260374-11-011 — CA-800 instrument-air compressor package

The richest sheet in the set: a boxed header row of six equipment tags with full manufacturer/model/capacity data, each its own home sheet:

| Tag | Description | Type | Mfg/Model | Capacity | Other |
| --- | --- | --- | --- | --- | --- |
| `CA-800` | AIR COMPRESSOR | Duplex compressor package | IR 2-2545A10 | 35 SCFM @ 125 PSIG (per pump) | Receiver tank 240 gal – 250 MAWP; motor 10 HP – 230-460/3/60 (each motor) |
| `F-803` | FILTER | General purpose filter | IR FA110IG | 65 SCFM | — |
| `F-804A` | PRE-FILTER | Oil removal filter | IR FA110IH | 65 SCFM | — |
| `DR-804` | AIR DRYER | Desiccant air dryer | IR D110IM | 65 SCFM | — |
| `F-804B` | POST-FILTER | Dust filter | IR FA110ID | 65 SCFM | — |
| `V-805` | DRY AIR RECEIVER | — | — | Size 30" OD x 7'-0" (240 gal) | MAWP 200 PSIG; material carbon steel |

`DR-3001`, separate from `DR-804`, is drawn lower-mid-sheet as its own box: **"DESICCANT AIR DRYER (f)"**, tag "`DR-3001 (f)`" beneath it, feeding "VENT MUFFLERS (OUTSIDE BUILDING)". The `(f)` flag (Legend1: "finished with associated equipment or by others") means no independent size/capacity is stated for this tag on this sheet — see `pivot.md` § 5 and `actuals/findings/DR-3001.md`.

CA-800 package detail: duplex reciprocating compressors, each with its own aftercooler (drawn, not separately tagged — package sub-item, see `skills/bom-extraction.md`), `HS-800`/`XS-801`/`XS-802` run status/permissive to PLC, `PSV-801A` SET @ 80 PSI/74 SCFM, `PSV-802A` SET @ 80 PSI/74 SCFM, `LSL-800`, `PSHH-800` SET @ 240 PSI, `PSV-800` SET @ 200 PSI/173 SCFM (on the CA-800 receiver tank), `KV-800`, start/stop setpoints "START @ 90 PSIG STOP @ 120 PSIG" printed directly on the package.

V-805/DR-3001 area: `PSV-805` SET @ 200 PSIG (¾"), `PCV-800` SET @ 100 PSIG, `TW-805`/`TI-805`, `LAH-805`/`LSH-805`, `KV-805`, `PI-800A`/`PIT-800A`/`PAL-800A` and `PI-800B`/`PIT-800B`/`PAL-800B` ("TYPICAL I.A. TO USERS" ×2), `PI-800C`/`PIT-800C`/`PAL-800C`, `PI-800D`/`PIT-800D`/`PAH-800D`/`PCH-800D`/`PCL-800D`/`PAL-800D`. None of these instrument tags individually extracted (out of scope this pass).

Notes: "1. INSULATE 1" COLD & ELECT. TRACE ABOVE GRADE." / "2. LOCATE PIT-300B & PIT-300C AT FURTHEST END OF HEADERS." (tag numbers as printed in the note — note this differs from the `800B`/`800C` bubble tags drawn nearby; recorded as printed, not reconciled, since this pack does not extract INSTRUMENT tags individually this pass).

Title block: DWG. No. `D-260374-11-011`, Rev. B, "PIPING & INSTRUMENTATION".
