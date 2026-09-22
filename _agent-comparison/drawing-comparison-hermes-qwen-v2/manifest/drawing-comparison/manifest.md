---
use-case: drawing-comparison
state: run-complete, self-validated; awaiting human HITL (not written by this agent — see plan.md sandbox note)
classification: customer-confidential (Assent Steel shop drawings; not public-synthetic)
retention: per customer agreement; none declared by this run
generated: 2026-09-21
---
# Manifest — drawing-comparison (this run: _agent-comparison/drawing-comparison-hermes-qwen-v2)

## Digest ledger
| document | role | sha256 |
|---|---|---|
| documents/drawing-comparison/source/AD-3010-C-330030-SHT-004-REV4.pdf | SOURCE | e2c1629b3536b5f2c773200403c11edb73f1f0678931f2f3db1becad130034d1 |
| documents/drawing-comparison/supporting/AD-3010-C-330030-SHT-004-REV3.pdf | SUPPORTING | d8afdded2146507660d5f0e2de55790f13c910472e63f2a1adb47a628a65cbe6 |

## Sample context (per source document)
AD-3010-C-330030-SHT-004-REV4: single A1 sheet each revision; skill v1; 26 findings; verdicts CHANGED 17 / ADDED 4 / REMOVED 0 / UNCHANGED 5 (control); material=true 16; UNSURE 3. All 24 text-layer change zones and all 53 node pairs re-derived in this run from fresh `pdftotext -bbox` extractions of the files above; raster confirmation per finding front matter.

## Validation checklist (Module 4 + bootstrap §15)
- [x] Every unit exactly one verdict; none skipped/double-counted (26 files = 26 rows in report)
- [x] Every non-UNCHANGED verdict quotes both sides verbatim with coordinates
- [x] No verdict from one side — every SAME/DIFF from the 53-node position pair; every Old value pulled from the Rev-3 twin/word layer
- [x] Alignment by grid position + member identity only; repeated strings re-verified (CTRL-4)
- [x] Clouds never used as classifiers — balloon layer audited against the value diff (MEMB-17; untagged pair reported)
- [x] Reflow-only movement NOT marked CHANGED (CTRL-1/2/3)
- [x] `material` judged independently per unit
- [x] No design evaluation in findings — what changed, where, fabrication-relevance only
- [x] Absence labels: no REMOVED units asserted without a searched-empty newer sheet; out-of-pack ref flagged (NOTE-2), not guessed
- [x] Artifacts record skill+version (front matter, all files)
- [ ] manifest checklist + promptLog complete for shared roots — NOT applicable: this run was fenced by user instruction to write only inside _agent-comparison/drawing-comparison-hermes-qwen-v2/; shared-tree bookkeeping deliberately not touched
- [ ] HITL MANUAL VALIDATE — human step, left open
