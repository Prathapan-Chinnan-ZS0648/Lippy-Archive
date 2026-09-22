# Manifest

Final validation gate, per `bootstrap.md` §15. Sectioned **per source document** —
`bootstrap.md` §12 — so one document's sign-off status is never confused with another's.
No artifact below is an accepted deliverable until its own section's checklist is fully
checked and signed. Governance fields, sample context, and the digest ledger live here —
not in `fileIndex.md`, which holds only the four configured inputs per `bootstrap.md` §2.

## Index

| Source document | Use case | State | Section |
|---|---|---|---|
| `AD-3010-C-330030-SHT-004-REV4.pdf` | drawing-comparison | verified | [below](#ad-3010-c-330030-sht-004-rev4pdf) |

---

## `AD-3010-C-330030-SHT-004-REV4.pdf`

### Governance

```yaml
source-document: AD-3010-C-330030-SHT-004-REV4.pdf
use-case: drawing-comparison
skill-version: v2                  # currently live in skills/drawing-comparison/skill.md's own front matter; findings below were produced under v1 — v2 only relocated duplicated rules into the new skills/_shared/engineeringDrawingReading.md layer, changing no verdict-relevant behavior; not re-judged, see skills/drawing-comparison/patternLog.md Entry 6
classification: internal working draft; no external distribution without a named recipient in pivot.md
state: verified                    # agent self-verification only — see Checklist below; not yet "signed" or "accepted", no HITL record exists
signed-by: —                       # no MANUAL VALIDATE has been run for this use case
verified-by: single-reader cross-check (agent self-verification, not a named human reviewer)
verified-on: 2026-09-17            # date of the CTRL-1 correction, the last content change to this pack's findings; migrated into this framework's structure 2026-09-21 with no content change
retention: per project retention policy; date to be recorded by the delivery lead
```

### Sample context

A two-revision document pair: a single-sheet A1 structural steel shop drawing
(`AD-3010-C-330030-SHT-004`), reissued from Rev 3 (issued for construction 20.04.2026,
now superseded) to Rev 4 (issued for construction 27.07.2026). Unlike `version-compare`'s
samples, this pair shares no clause/heading structure to walk — the "document" is a
figure, and its units are member/connection callouts identified by grid position.
Judging rules and workflow are defined in `skills/drawing-comparison/skill.md`
(findings produced under v1; not re-judged under v2 — see Governance above),
`skills/_shared/engineeringDrawingReading.md`, and `bootstrap.md`.

Both source files originally arrived corrupted — raw HTTP `multipart/form-data` bodies (a
DocuSign export artifact), not valid PDFs — and were repaired (byte span from the first
`%PDF-` marker to the final `%%EOF` line extracted) before any extraction was attempted;
see `actuals/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/detection.md`.

This pack was originally built and corrected under a pre-`bootstrap.md` ad hoc directory
layout (`drawing-comparison/sample-1/`), then migrated into this framework's structure on
2026-09-21 with no change to finding content, verdicts, or materiality calls — only file
locations, filenames, and internal cross-references changed. A second, independently-run
attempt at the same document pair (a different agent/model) was built alongside the
original for comparison purposes only; it is kept outside this managed tree at
`_agent-comparison/sample-2-hermes-qwen/`, not tracked in `fileIndex.md`, and is not part
of this Manifest's scope. It is the reason `CTRL-1` was corrected and `MEMB-13`–`MEMB-16`/
`CTRL-3` were added on 2026-09-17 — see `skills/drawing-comparison/patternLog.md` Entry 5.

Follows `skills/drawing-comparison/skill.md` v1's rules (still valid under v2 — see above).

### Checklist

| Check | Status | Notes |
|---|---|---|
| `fileIndex.md` present and resolvable | ✅ | `use_case_name: drawing-comparison` set; both document paths and the skill path resolve to existing files |
| `use_case_name` matches `skill_file_path`'s parent directory | ✅ | `use_case_name: drawing-comparison` matches `skills/drawing-comparison/skill.md`'s directory |
| Runtime inputs resolved (source/supporting/skill) | ✅ | `documents/drawing-comparison/source/AD-3010-C-330030-SHT-004-REV4.pdf`, `documents/drawing-comparison/supporting/AD-3010-C-330030-SHT-004-REV3.pdf`, `skills/drawing-comparison/skill.md` |
| Digests recorded for all inputs | ✅ | see Digests section below |
| Skill gap analysis performed | ✅ | `version-compare`'s existing skill considered and rejected as not fitting a grid-position-identified sheet; a new skill was written — see `skills/drawing-comparison/patternLog.md` Entry 1 |
| Skill version recorded on artifacts | ✅ | v1 noted in every `findings/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/*.md` and `reports/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/report.md` front matter |
| `actuals/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/twin` extracted from both documents (per-page) | ✅ | `.../twin/AD-3010-C-330030-SHT-004-REV4/page001.md`, `.../twin/AD-3010-C-330030-SHT-004-REV3/page001.md` (1 page each — single A1 sheet), plus `derived/` and `sectionMap.md` |
| `detection.md` and `plan.md` complete | ✅ | quirks logged (PDF corruption/repair, self-annotation, grid-position identity, text-layer extraction gap); 22 units planned and marked done |
| Findings cover documented scope (22 planned units) | ✅ | `findings/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/` — 22 unit files; not every callout on the sheet was individually classified, per `plan.md`'s scoping note |
| Every non-UNCHANGED verdict shows both sides quoted | ✅ | spot-checked during generation; see `findings/` |
| `graph.md` traces findings to report | ✅ | `actuals/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/graph.md` |
| Findings verified-by / verified-on filled | ✅ | `single-reader cross-check`, per-finding dates (2026-09-15 initial, 2026-09-17 correction) — agent self-verification, not an independent HITL record |
| HITL review completed | ⬜ | not yet done — no `HITL/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/MANUAL_VALIDATE.md` exists; not fabricated here |
| `pivot.md` decisions recorded (if any disputes arise) | ⬜ | not yet needed — no cross-use-case disputes raised; `pivot.md` exists and is empty |
| Report derives only from approved findings | ✅ | `reports/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/report.md` cites `findings/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/` only |
| Signed by a reviewer | ⬜ | no named human reviewer has signed this pack — `state: verified`, not `signed` or `accepted` |

### Digests

Every input document and skill file this document's actuals were written against, with a
content digest. An actual is only valid for the digest it names — if a file listed here
changes, every actual/finding built from it must be regenerated and this ledger updated.

| File | Role | SHA-256 | Digest recorded |
|---|---|---|---|
| `documents/drawing-comparison/source/AD-3010-C-330030-SHT-004-REV4.pdf` | source | `e2c1629b3536b5f2c773200403c11edb73f1f0678931f2f3db1becad130034d1` | 2026-09-15 (repaired PDF — see Sample context above) |
| `documents/drawing-comparison/supporting/AD-3010-C-330030-SHT-004-REV3.pdf` | supporting | `d8afdded2146507660d5f0e2de55790f13c910472e63f2a1adb47a628a65cbe6` | 2026-09-15 (repaired PDF — see Sample context above) |
| `skills/drawing-comparison/skill.md` | skill — live copy, current version (v2) | `b6a22b298d6bb58ec9208761dc279da9ca77d2d09baeb0c012ae1bbed9270185` | 2026-09-22 (v1 enhanced to v2: builds on the new shared layer `skills/_shared/engineeringDrawingReading.md`, removed duplicated Module 1/6 content now stated there once; no verdict-relevant behavior changed, see `skills/drawing-comparison/patternLog.md` Entry 6) |
| `skills/drawing-comparison/skill-versions/v1.md` | skill — immutable snapshot of v1 (used to build this document's existing findings; superseded) | `5af3db37bf9133bbc05f4e986153df228398cfc10cfa0ad558e99fbb7483c6d1` | 2026-09-21 |
| `skills/drawing-comparison/skill-versions/v2.md` | skill — immutable snapshot of v2 | `b6a22b298d6bb58ec9208761dc279da9ca77d2d09baeb0c012ae1bbed9270185` | 2026-09-22 |
| `skills/_shared/engineeringDrawingReading.md` | shared base layer — live copy, current version (v1) | `40faa5243063da89b0cc1ef5fbd73a2b2265db24444df28cae3081765272105d` | 2026-09-22 |
| `skills/_shared/shared-versions/engineeringDrawingReading-v1.md` | shared base layer — immutable snapshot of v1 | `40faa5243063da89b0cc1ef5fbd73a2b2265db24444df28cae3081765272105d` | 2026-09-22 |

All twin pages under `actuals/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/twin/` were
built from the two document digests above. All 22 findings files under
`findings/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/` were built from those twin
pages under the skill content now snapshotted at
`skills/drawing-comparison/skill-versions/v1.md` — no skill version change has occurred
since. If a future skill version changes verdict-relevant behavior, re-run `NORMALIZE`,
`JUDGE`, and `REPORT` for this document before treating existing findings as current.

### Verdict

**NOT YET AN ACCEPTED DELIVERABLE.** `reports/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/report.md`
and `findings/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/*.md` are self-verified by
the producing agent (independent re-checks against the source PDFs, including the
2026-09-17 correction) but have not undergone human-in-the-loop review — no
`HITL/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/MANUAL_VALIDATE.md` exists, and no
named reviewer has signed this pack. Run `MANUAL VALIDATE` for this use case before
treating it as accepted.
