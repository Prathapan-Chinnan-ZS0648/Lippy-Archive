---
sample: PREPURCHASE-ELECT-DWGS
use-case: bom-extraction
skill-version: v2
based-on: findings/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/ (23 unit files, per actuals/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/plan.md)
source: documents/bom-extraction/source/Prepurchase Elect Dwgs_10-30-2024.pdf
supporting: n/a — single-document extraction, no supporting document exists for this use case (fileIndex.md)
state: draft — pending HITL review, not yet signed off in manifest/bom-extraction/manifest.md
---

# Bill of Materials report — Prepurchase Electrical Drawings, Tom Harpool Regional WTP Phase 2

## What this covers

The structured Bill of Materials extracted from an 11-page electrical drawing excerpt
("Prepurchase Elect Dwgs_10-30-2024.pdf") prepared by GAI Gupta & Associates, Inc. for
Carollo/Upper Trinity Regional Water District's Tom Harpool Regional WTP Phase 2
Expansion Project - Design Package 1, "INTERMEDIATE DESIGN SUBMITTAL — NOT FOR
CONSTRUCTION", dated October 2024, "ISSUED FOR THE PURPOSE OF PROCUREMENT ONLY." This is
the second document processed under the `bom-extraction` use case, and the first drawing
type other than a P&ID — a generator/switchgear/transformer prepurchase equipment
package, not a process P&ID. The full unit-by-unit account is in
`findings/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/`; this report summarizes it.
This is **not** a complete tag index of the drawing set — see Coverage below.

## Generators and grounding

| Tag | Description | Rating | Sheet | Status |
|---|---|---|---|---|
| GEN-G3 | Diesel-driven generator | 2000KW, 5kV | E10 | New |
| GEN-G4 | Diesel-driven generator | 2000KW, 5kV | E10 | New |
| GEN-G5 | Diesel-driven generator | 2000KW, 5kV | E10 | New |
| NGR-G3 | Neutral grounding resistor (GEN-G3) | 400A, 6 ohms, 10 sec | E10 | New |
| NGR-G4 | Neutral grounding resistor (GEN-G4) | 400A, 6 ohms, 10 sec | E10 | New |
| NGR-G5 | Neutral grounding resistor (GEN-G5) | 400A, 6 ohms, 10 sec | E10 | New |

## Switchgear

| Tag | Description | Rating | Sheet | Status |
|---|---|---|---|---|
| GSW-2 | Generator paralleling switchgear | 4160V, 3φ, 3W, 2000A, 50kA SCCR | E10 | New |
| MVSWGR-E | Medium voltage switchgear | 4160V, 2000A, 50kA SCCR (wire count/bus material UNSURE — see below) | E08 | New |
| MVSWGR-F | Medium voltage switchgear | 4160V, 2000A, 50kA SCCR (wire count/bus material UNSURE — see below) | E09 | New |
| PMGR-1 | Pad-mounted switchgear | 25kV, 600A, 25kA SCCR | E05 | New |
| PMGR-2 | Pad-mounted switchgear | 25kV, 600A, 25kA SCCR | E05 | New |

## Transformers

| Tag | Description | Rating | Sheet | Status |
|---|---|---|---|---|
| TX-M1 | Substation-type transformer | 7.5/8.4/9.3/10.5MVA, 24.9kV-4.16kV, 55/65°C w/ fans | E07 | New |
| TX-M2 | Substation-type transformer | 7.5/8.4/9.3/10.5MVA, 24.9kV-4.16kV, 55/65°C w/ fans | E07 | New |
| NGR-TX-M1 | Neutral grounding resistor (TX-M1) | not independently stated | E07 | New |
| NGR-TX-M2 | Neutral grounding resistor (TX-M2) | not independently stated | E07 | New |
| TX-7 | Distribution transformer | 2000KVA, 4160V-480V | E08 | New |
| TX-8 | Distribution transformer | 2000KVA, 4160V-480V | E09 | New |
| TX-9 | Distribution transformer | 2000KVA, 4160V-480V | E08 | New |
| TX-10 | Distribution transformer | 2000KVA, 4160V-480V | E09 | New |

## Other equipment

| Tag | Description | Rating | Sheet | Status |
|---|---|---|---|---|
| LB | On-site generator load bank | 2000KVA / 2000KW | E10 | New |
| Generator Master Control Panel | Houses ATO controls for utility SWGR/PSG transfer | rating not stated | E05 | New |
| VFD-9 | Variable frequency drive, Finished Water Pump P9 | 1200HP | E08 | New |
| VFD-10 | Variable frequency drive, Finished Water Pump P10 | 1200HP | E09 | New |

## Counts

| Category | Count |
|---|---|
| Generators + grounding resistors | 6 |
| Switchgear | 5 |
| Transformers + grounding resistors | 8 |
| Other equipment | 4 |
| **Total BOM lines, this pack** | **23** |

| Confidence | Count |
|---|---|
| SURE | 21 |
| UNSURE (one detail each; see below) | 2 |

## Open discrepancy: MVSWGR-E and MVSWGR-F bus configuration

Drawing E07 states both switchgear lineups as "3Ø, 4W ... TIN PLATED COPPER BUS"; each
unit's own dedicated detail sheet (E08 for MVSWGR-E, E09 for MVSWGR-F) states "3Ø, 3W ...
INSULATED COPPER BUS" instead. Voltage (4160V), amperage (2000A), and SCCR (50kA) agree
across all sheets. Not resolved in this pass — flagged `confidence: UNSURE` on that one
detail in both findings, per this skill's absence-policy against guessing. See
`skills/bom-extraction/patternLog.md` and `actuals/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/detection.md`.

## Coverage

This pack extracts every clearly current (solid-line), unambiguously-rated tagged item
among the generators, switchgear, transformers, load bank, master control panel, and the
two currently-installed 1200HP VFDs. It does **not** individually extract:

- **GEN-G6 / NGR-G6** — explicitly labelled "(FUTURE)" on Drawing E15's elevation; a
  fourth generator bay reserved for a later phase, not part of this pre-purchase scope.
- **The DC battery system** (Battery Charger, 125VDC Station Battery, Panel DC) — drawn
  entirely dashed (future) on Drawing E07.
- **Four future 1200HP VFDs** (feeding "Future Finished Water Pump P6/P7/P8/P11") —
  dashed on Drawings E08/E09; their own tag numbering does not cleanly match the pump
  numbers they feed on every sheet (see `detection.md`), unlike VFD-9/VFD-10.
- **Existing plant equipment**: generators G1/G2 (1250kW), the existing Main Switchgear
  and Generator Parallel Switchgear, transformers TX-11/TX-12 (1500KVA), and three
  existing 600HP-VFD-driven pumps marked "(RELOCATED)" — none of this is new equipment
  for this pre-purchase package.
- **Switchboards SWB-C/D/E/F, MCC-E**, and the panel/PLC/network tags shown on the
  physical layout plan (Drawing EBFNE02) — present and tagged, but no independently
  stated ampere/voltage rating was located for the switchboards specifically (SWB-E and
  SWB-F's shared 480V/3000A bus is the one rating confirmed, but attributed to the bus
  arrangement, not to a single switchboard tag), and the panel/PLC/network tags on
  EBFNE02 are placeholder-style (e.g. "PLC-XXXX-X") or not individually rated.
- **Drawing EBFNE01**, referenced twice as the authoritative equipment tag table for this
  set, is not included in this 11-page excerpt.

See `actuals/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/twin/derived/Prepurchase Elect Dwgs_10-30-2024.md`
for every named-but-not-individually-detailed tag, organized by category.

## Open items before this pack can be signed off

- The MVSWGR-E/MVSWGR-F bus wire-count/material discrepancy (above) is unresolved.
- NGR-TX-M1 and NGR-TX-M2 have no independently stated rating in this excerpt.
- No human-in-the-loop reviewer has yet run `MANUAL VALIDATE` for this use case — no
  `HITL/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/MANUAL_VALIDATE.md` exists.
  `manifest/bom-extraction/manifest.md` records `state: verified` (agent
  self-verification), not `state: signed`.
