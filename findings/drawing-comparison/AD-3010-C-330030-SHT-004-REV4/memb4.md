---
run: AD-3010-C-330030-SHT-004
use-case: drawing-comparison
skill-version: v1
unit: MEMB-4 — Plan EL. 111.500 (T.O.S.), Grid D node, column line 1
kind: CHANGED
material: true
cites: AD-3010-C-330030-SHT-004-REV3.pdf, page 1; AD-3010-C-330030-SHT-004-REV4.pdf, page 1
verified-by: single-reader cross-check
verified-on: 2026-09-15
confidence: SURE
---

# MEMB-4

Source: `documents/drawing-comparison/source/AD-3010-C-330030-SHT-004-REV4.pdf`
Supporting: `documents/drawing-comparison/supporting/AD-3010-C-330030-SHT-004-REV3.pdf`
Twin: `actuals/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/twin/derived/AD-3010-C-330030-SHT-004-REV3.md` (older), `actuals/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/twin/derived/AD-3010-C-330030-SHT-004-REV4.md` (newer)

**Plan EL. 111.500 (T.O.S.), Grid D node, column line 1** — CHANGED (material)

## Old
> SW(50N 10V)
> UB457x191x74
> — AD-3010-C-330030-SHT-004-REV3.pdf, page 1

## New
> SW(58N 2Vy)
> UB457x191x74
> — AD-3010-C-330030-SHT-004-REV4.pdf, page 1

## What changed
The weld/bolt count on this column's `SW` connection tag changes from `(50N 10V)` to `(58N 2Vy)`. Member size (UB457x191x74) unchanged. **No revision cloud is drawn around this callout on REV4.**

## Why it matters
A connection design value changed — fabrication-relevant — but the sheet's own revision-cloud convention does not flag it, unlike `MEMB-2`/`MEMB-3`/`MEMB-6`–`MEMB-9`. A reader relying on clouds alone to find what changed in Rev 4 would miss this. Recorded in `skills/drawing-comparison/skill.md` as the `revision-cloud-untagged` pack-profile entry; see `MEMB-5` for the matching change at the same node's column line 2.
