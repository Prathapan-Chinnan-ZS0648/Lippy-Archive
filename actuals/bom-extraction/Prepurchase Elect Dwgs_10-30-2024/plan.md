# Plan

The units of the source document to be extracted, per `skills/bom-extraction/skill.md`'s
grain (one procurable/installable tagged item). Each row becomes one file under
`findings/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/`.

## Generators (3)

| # | Tag | Findings file | Status |
|---|---|---|---|
| 1 | GEN-G3 | `geng3.md` | done |
| 2 | GEN-G4 | `geng4.md` | done |
| 3 | GEN-G5 | `geng5.md` | done |

GEN-G6 explicitly excluded — labelled "(FUTURE)" on Drawing E15; see `detection.md`.

## Neutral grounding resistors (5)

| # | Tag | Findings file | Status |
|---|---|---|---|
| 4 | NGR-G3 | `ngrg3.md` | done |
| 5 | NGR-G4 | `ngrg4.md` | done |
| 6 | NGR-G5 | `ngrg5.md` | done |
| 7 | NGR-TX-M1 | `ngrtxm1.md` | done |
| 8 | NGR-TX-M2 | `ngrtxm2.md` | done |

NGR-G6 excluded, paired with the future GEN-G6.

## Switchgear (3)

| # | Tag | Findings file | Status |
|---|---|---|---|
| 9 | GSW-2 | `gsw2.md` | done |
| 10 | MVSWGR-E | `mvswgre.md` | done (bus-configuration discrepancy — see `detection.md`) |
| 11 | MVSWGR-F | `mvswgrf.md` | done (bus-configuration discrepancy — see `detection.md`) |

## Pad-mounted switchgear (2)

| # | Tag | Findings file | Status |
|---|---|---|---|
| 12 | PMGR-1 | `pmgr1.md` | done |
| 13 | PMGR-2 | `pmgr2.md` | done |

## Transformers (6)

| # | Tag | Findings file | Status |
|---|---|---|---|
| 14 | TX-M1 | `txm1.md` | done |
| 15 | TX-M2 | `txm2.md` | done |
| 16 | TX-7 | `tx7.md` | done |
| 17 | TX-8 | `tx8.md` | done |
| 18 | TX-9 | `tx9.md` | done |
| 19 | TX-10 | `tx10.md` | done |

## Other equipment (4)

| # | Tag | Findings file | Status |
|---|---|---|---|
| 20 | LB | `lb.md` | done |
| 21 | Generator Master Control Panel | `generatormastercontrolpanel.md` | done |
| 22 | VFD-9 | `vfd9.md` | done |
| 23 | VFD-10 | `vfd10.md` | done |

23 units extracted in this pass. No INSTRUMENT-category unit is individually extracted —
see `skills/bom-extraction/skill.md` Module 3's coverage-scoping rule and
`reports/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/report.md`'s Coverage section.
Future, existing, and not-individually-detailed equipment (GEN-G6/NGR-G6, the DC battery
system, four future VFDs, existing G1/G2/TX-11/TX-12/Main Switchgear, three relocated
600HP-VFD pumps, switchboards SWB-C/D/E/F, MCC-E, panel/PLC/network tags on the physical
plan) is named in `twin/derived/Prepurchase Elect Dwgs_10-30-2024.md` but not filed as an
individual finding in this pass.
