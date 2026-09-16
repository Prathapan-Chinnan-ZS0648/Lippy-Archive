---
item: MEMB-5
for-document: sha256:e2c1629b3536b5f2c773200403c11edb73f1f0678931f2f3db1becad130034d1
section: Plan EL. 111.500 (T.O.S.), Grid D node, column line 2
kind: CHANGED
material: true
old: AD-3010-C-330030-SHT-004-REV3.pdf, page 1
new: AD-3010-C-330030-SHT-004-REV4.pdf, page 1
cites: AD-3010-C-330030-SHT-004-REV3.pdf, page 1; AD-3010-C-330030-SHT-004-REV4.pdf, page 1
verified-by: single-reader cross-check
verified-on: 2026-09-15
confidence: SURE
---

# MEMB-5

**Plan EL. 111.500 (T.O.S.), Grid D node, column line 2** — CHANGED (material)

## Old
> SW(50N 10V)
> UB457x191x74
> — AD-3010-C-330030-SHT-004-REV3.pdf, page 1

## New
> SW(63N 3Vy)
> UB457x191x74
> — AD-3010-C-330030-SHT-004-REV4.pdf, page 1

## What changed
The weld/bolt count on this column's `SW` connection tag changes from `(50N 10V)` to `(63N 3Vy)`. Member size (UB457x191x74) unchanged. **No revision cloud is drawn around this callout on REV4.**

## Why it matters
Same pattern as `MEMB-4`, at the mirror-image column line of the same Grid D node: a connection design value changed with no revision cloud to flag it. Between them, `MEMB-4` and `MEMB-5` are this pack's clearest evidence that a drawing's own cloud markers cannot be trusted as a complete change list — see `revision-cloud-untagged` in `skills/drawing-comparison.md`.
