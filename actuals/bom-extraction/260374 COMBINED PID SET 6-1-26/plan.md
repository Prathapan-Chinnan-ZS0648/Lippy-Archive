# Plan

The units of the source document to be extracted, per `skills/bom-extraction/skill.md`'s
grain (one tagged item). Each row becomes one file under
`findings/bom-extraction/260374 COMBINED PID SET 6-1-26/`. No ALIGN step and no
materiality JUDGE exist for this skill — see `skills/bom-extraction/skill.md` Module 1 for
why this plan's step sequence differs from the comparison skills' plans.

## Equipment (10)

| # | Tag | Findings file | Status |
|---|---|---|---|
| 1 | V-200 | `v200.md` | done |
| 2 | V-600A | `v600a.md` | done |
| 3 | V-700 | `v700.md` | done |
| 4 | CA-800 | `ca800.md` | done |
| 5 | F-803 | `f803.md` | done |
| 6 | F-804A | `f804a.md` | done |
| 7 | DR-804 | `dr804.md` | done |
| 8 | F-804B | `f804b.md` | done |
| 9 | V-805 | `v805.md` | done |
| 10 | DR-3001 | `dr3001.md` | done (acknowledged spec gap — see `detection.md`) |

## Safety-relief valves (10)

| # | Tag | Findings file | Status |
|---|---|---|---|
| 11 | PSV-200 | `psv200.md` | done |
| 12 | PSV-201 | `psv201.md` | done |
| 13 | PSV-202 | `psv202.md` | done |
| 14 | PSV-600A | `psv600a.md` | done |
| 15 | PSV-601A | `psv601a.md` | done |
| 16 | PSV-602A | `psv602a.md` | done |
| 17 | PSV-800 | `psv800.md` | done |
| 18 | PSV-801A | `psv801a.md` | done |
| 19 | PSV-802A | `psv802a.md` | done |
| 20 | PSV-805 | `psv805.md` | done |

## Control valves (7)

| # | Tag | Findings file | Status |
|---|---|---|---|
| 21 | PCV-201 | `pcv201.md` | done |
| 22 | PCV-202 | `pcv202.md` | done |
| 23 | PCV-600A | `pcv600a.md` | done |
| 24 | PCV-601A | `pcv601a.md` | done |
| 25 | PCV-603A | `pcv603a.md` | done |
| 26 | PCV-604A | `pcv604a.md` | done |
| 27 | PCV-800 | `pcv800.md` | done |

27 units extracted in this pass: 10 EQUIPMENT, 10 SAFETY-RELIEF-VALVE, 7 CONTROL-VALVE, 0
INSTRUMENT (the instrument population is counted and located by sheet in
`twin/derived/260374 COMBINED PID SET 6-1-26.md`, but not individually extracted as
findings in this pass — see `skills/bom-extraction/skill.md` Module 3's coverage-scoping
rule and `manifest/bom-extraction/manifest.md`'s Sample context). A handful of
control/shutdown valves (`FCV-504`, `SDV-504`, `LCV-200/201/601A/602A/603A`,
`SV-601A/602A`) carry a tag and a service but no legible stated set-point or size on the
sheets reviewed — named in the derived inventory as present but not filed as individual
findings, consistent with the same scoping decision.
