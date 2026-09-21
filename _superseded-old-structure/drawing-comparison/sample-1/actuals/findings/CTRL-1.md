---
item: CTRL-1
for-document: sha256:e2c1629b3536b5f2c773200403c11edb73f1f0678931f2f3db1becad130034d1
section: Plan EL. 112.800 (T.O.S.), Grid A, column-2 node
kind: UNCHANGED
material: false
old: AD-3010-C-330030-SHT-004-REV3.pdf, page 1
new: AD-3010-C-330030-SHT-004-REV4.pdf, page 1
cites: AD-3010-C-330030-SHT-004-REV3.pdf, page 1; AD-3010-C-330030-SHT-004-REV4.pdf, page 1
verified-by: single-reader cross-check
verified-on: 2026-09-17
confidence: SURE
---

# CTRL-1

**Plan EL. 112.800 (T.O.S.), Grid A, column-2 node** — UNCHANGED

## Old
> MW
> UB356x171x51
> BW
> L80x80x8 (-50)
> HANDRAIL
> (TYP.)
> — AD-3010-C-330030-SHT-004-REV3.pdf, page 1 (two Rev 3 revision clouds present; "HANDRAIL (TYP.)" printed above "BW / L80x80x8 (-50) / (TYP.) U.N.O.")

## New
> MW
> UB356x171x51
> BW
> L80x80x8 (-50)
> HANDRAIL
> (TYP.)
> — AD-3010-C-330030-SHT-004-REV4.pdf, page 1 (no cloud; "BW / L80x80x8 (-50) / (TYP.) U.N.O." printed above "HANDRAIL (TYP.)")

## What changed
Nothing in the wording or value **of these two labels**. The two Rev 3 revision clouds at this node are cleared in Rev 4 (normal practice once a cloud's content is no longer the latest change), and with the clouds gone the "HANDRAIL (TYP.)" and "BW / L80x80x8 (-50) / (TYP.) U.N.O." text blocks swap vertical order — their leader lines still point at the same two physical items.

**Correction, 2026-09-17:** this finding originally implied nothing at all changed at this node. That was wrong — two dimension figures immediately adjacent to this same label pair (420→500 and 545→515) did change, and were missed on the first pass because only the label wording was checked, not the neighbouring values. Those are now filed separately as `MEMB-13` and `MEMB-14` (material: true), since they are distinct callouts from the label text this finding covers. `CTRL-1` itself remains correctly UNCHANGED for the two labels it actually describes; it should no longer be read as "nothing changed at this node." See `pivot.md` § 8.

## Why it matters
This pack's reformat control case (the drawing-comparison equivalent of `version-compare`'s renumbering control case): the label reflow itself must not be marked CHANGED for a position/cloud-clearing difference alone. See `pivot.md` § 5 and `skills/drawing-comparison.md`'s `reformat control case` pack-profile entry. See `MEMB-13`/`MEMB-14` for the real change this same node also carries.
