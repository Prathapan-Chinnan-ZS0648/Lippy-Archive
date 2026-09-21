# Graph

The relationships this run's findings depend on: which tag was read from which sheet, and
which findings a report claim traces back to.

```text
documents/bom-extraction/source/Prepurchase Elect Dwgs_10-30-2024.pdf   (23 units extracted, per actuals/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/plan.md)
        │  each unit read from its home sheet's dedicated detail drawing,
        │  cross-checked against at least one other sheet (overview one-line
        │  and/or elevation) before being accepted
        ▼
findings/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/<tag>.md   (one file per unit, description + specification + source + also-referenced-on + notes)
        │
        ▼
reports/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/report.md   (Bill of Materials table + coverage statement — cites findings only)
```

Electrical distribution hierarchy this pack's findings trace (for context, not itself a
finding): PMGR-1/PMGR-2 (utility interface) → TX-M1/TX-M2 (substation transformers,
each with its own NGR) → MVSWGR-E/MVSWGR-F (medium voltage switchgear) → {TX-7, TX-8,
TX-9, TX-10} (distribution transformers) and {VFD-9, VFD-10} (in parallel, both fed
directly from the MVSWGR bus, not through a transformer). Independently: GEN-G3/G4/G5
(each with its own NGR) → GSW-2 (generator switchgear) → ties into both MVSWGR-E and
MVSWGR-F via an ATO in the Generator Master Control Panel; GSW-2 also feeds LB (load
bank) directly.

Two findings (`mvswgre.md`, `mvswgrf.md`) carry an internal `confidence: UNSURE` flag on
one specific detail (bus wire count/material) rather than on the whole finding — see
`detection.md`. This graph does not include GEN-G6/NGR-G6 (future), the DC battery system
(future), the four future 1200HP VFDs, or any existing/relocated equipment — none of
those are findings in this pass; see `twin/derived/Prepurchase Elect Dwgs_10-30-2024.md`
for where they are named instead.
