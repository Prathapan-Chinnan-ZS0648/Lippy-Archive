# Manifest

Final validation gate, per `bootstrap.md` §15. Sectioned **per source document** —
`bootstrap.md` §12 — so one document's sign-off status is never confused with another's.
No artifact below is an accepted deliverable until its own section's checklist is fully
checked and signed. Governance fields, sample context, and the digest ledger live here —
not in `fileIndex.md`, which holds only the four configured inputs per `bootstrap.md` §2.

## Index

| Source document | Use case | State | Section |
|---|---|---|---|
| `260374 COMBINED PID SET 6-1-26.pdf` | bom-extraction | verified | [below](#260374-combined-pid-set-6-1-26pdf) |

---

## `260374 COMBINED PID SET 6-1-26.pdf`

### Governance

```yaml
source-document: 260374 COMBINED PID SET 6-1-26.pdf
use-case: bom-extraction
skill-version: v1                  # currently live in skills/bom-extraction/skill.md's own front matter; first and only version so far
classification: customer-confidential — supplied for this project by 3S Services, LLC; not public-synthetic like the version-compare/bid-evaluation samples
state: verified                    # agent self-verification only — see Checklist below; not yet "signed" or "accepted", no HITL record exists
signed-by: —                       # no MANUAL VALIDATE has been run for this use case
verified-by: single-reader cross-check (agent self-verification, not a named human reviewer)
verified-on: 2026-09-17            # date of the original pack's completion; migrated into this framework's structure 2026-09-21 with no content change
retention: per project retention policy; date to be recorded by the delivery lead
```

### Sample context

A single-document extraction: a 13-page combined Piping & Instrumentation Diagram (P&ID)
set prepared by 3S Services, LLC (Midland, Texas), "ISSUED FOR APPROVAL", Rev B, dated
06/01/2026, for a wellsite/CPF-style surface facility. Unlike `version-compare`'s and
`drawing-comparison`'s samples, this use case has **no supporting document at all** —
`fileIndex.md`'s `bom-extraction` entry declares `supporting_document_path: "n/a"`, an
allowance added to `bootstrap.md` §2 specifically to accommodate this genuinely
single-document task shape (see `skills/bom-extraction/patternLog.md` Entry 2 and
`prompt-log/bom-extraction/promptLog.md`). Judging rules and workflow are defined in
`skills/bom-extraction/skill.md` (v1, the only version so far) and `bootstrap.md`.

This pack was originally built under a pre-`bootstrap.md` ad hoc directory layout
(`bom-extraction/sample-1/`, on the separate `bom-extraction` branch), then migrated into
this branch's framework structure on 2026-09-21 with no change to finding content — only
file locations, filenames, and internal cross-references changed. This pack extracts 27
of the drawing's tagged items in full (10 EQUIPMENT, 10 SAFETY-RELIEF-VALVE, 7
CONTROL-VALVE); the drawing's much larger INSTRUMENT bubble population and a 12-line
flowline list are counted and located by sheet but not individually extracted this pass —
see `reports/bom-extraction/260374 COMBINED PID SET 6-1-26/report.md`'s Coverage section.

Follows `skills/bom-extraction/skill.md` as-is.

### Checklist

| Check | Status | Notes |
|---|---|---|
| `fileIndex.md` present and resolvable | ✅ | `use_case_name: bom-extraction` set; source path and skill path resolve to existing files; `supporting_document_path: "n/a"` resolves per `bootstrap.md` §2's single-document allowance, since `skills/bom-extraction/skill.md`'s front matter declares `shape: BOM_LINE` with no supporting-document role |
| `use_case_name` matches `skill_file_path`'s parent directory | ✅ | `use_case_name: bom-extraction` matches `skills/bom-extraction/skill.md`'s directory |
| Runtime inputs resolved (source/skill; no supporting document exists for this use case) | ✅ | `documents/bom-extraction/source/260374 COMBINED PID SET 6-1-26.pdf`, `skills/bom-extraction/skill.md` |
| Digests recorded for all inputs | ✅ | see Digests section below |
| Skill gap analysis performed | ✅ | `version-compare`, `drawing-comparison`, and `question-answer` all considered and rejected as not fitting a single-document extraction task; a new skill was written — see `skills/bom-extraction/patternLog.md` Entry 1 |
| Skill version recorded on artifacts | ✅ | v1 noted in every `findings/bom-extraction/260374 COMBINED PID SET 6-1-26/*.md` and `reports/bom-extraction/260374 COMBINED PID SET 6-1-26/report.md` front matter |
| `actuals/bom-extraction/260374 COMBINED PID SET 6-1-26/twin` extracted from the source document (per-page) | ✅ | `.../twin/260374 COMBINED PID SET 6-1-26/page001.md`–`page013.md` (13 pages), plus `twin/derived/` and `sectionMap.md` |
| `detection.md` and `plan.md` complete | ✅ | quirks logged (non-sequential sheet order, legend-dependent tag grammar, sparse text layer, DR-3001 spec gap); 27 units planned and marked done |
| Findings cover documented scope (27 planned units) | ✅ | `findings/bom-extraction/260374 COMBINED PID SET 6-1-26/` — 27 unit files; not a complete tag index of the drawing, per `plan.md`'s scoping note |
| Every finding shows Specification/Source cited to the sheet | ✅ | spot-checked during generation; see `findings/` |
| `graph.md` traces findings to report | ✅ | `actuals/bom-extraction/260374 COMBINED PID SET 6-1-26/graph.md` |
| Findings verified-by / verified-on filled | ✅ | `single-reader cross-check`, 2026-09-17 — agent self-verification, not an independent HITL record |
| HITL review completed | ⬜ | not yet done — no `HITL/bom-extraction/260374 COMBINED PID SET 6-1-26/MANUAL_VALIDATE.md` exists; not fabricated here |
| `pivot.md` decisions recorded (if any disputes arise) | ⬜ | not yet needed — no cross-use-case disputes raised; `pivot.md` exists and is empty |
| Report derives only from approved findings | ✅ | `reports/bom-extraction/260374 COMBINED PID SET 6-1-26/report.md` cites `findings/bom-extraction/260374 COMBINED PID SET 6-1-26/` only |
| Signed by a reviewer | ⬜ | no named human reviewer has signed this pack — `state: verified`, not `signed` or `accepted` |

### Digests

Every input document and skill file this document's actuals were written against, with a
content digest. An actual is only valid for the digest it names — if a file listed here
changes, every actual/finding built from it must be regenerated and this ledger updated.

| File | Role | SHA-256 | Digest recorded |
|---|---|---|---|
| `documents/bom-extraction/source/260374 COMBINED PID SET 6-1-26.pdf` | source | `bdb3725ac983a2e591ba908ef8f3702d8f9bfd1659a6b56b0e7844c1a721bb2e` | 2026-09-17 |
| `skills/bom-extraction/skill.md` | skill — live copy, current version (v1) | `8a6432afcd6f719eecd921eb45e3ce2f1bc0b14649b1a8ad7360db2e9a83d086` | 2026-09-21 (migrated into this framework's Module 1-6 structure and camelCase filename; content re-expressed, no verdict-relevant rule changed from the original ad hoc skill file) |
| `skills/bom-extraction/skill-versions/v1.md` | skill — immutable snapshot of v1 (identical to the live copy; no later version exists yet) | `8a6432afcd6f719eecd921eb45e3ce2f1bc0b14649b1a8ad7360db2e9a83d086` | 2026-09-21 |

No supporting-document digest exists for this use case — `supporting_document_path: "n/a"`
per `bootstrap.md` §2. All 13 twin pages under
`actuals/bom-extraction/260374 COMBINED PID SET 6-1-26/twin/` were built from the source
document digest above. All 27 findings files under
`findings/bom-extraction/260374 COMBINED PID SET 6-1-26/` were built from those twin pages
under the skill content now snapshotted at
`skills/bom-extraction/skill-versions/v1.md` — no skill version change has occurred
since. If a future skill version changes extraction-relevant behavior, re-run `NORMALIZE`,
`JUDGE`, and `REPORT` for this document before treating existing findings as current.

### Verdict

**NOT YET AN ACCEPTED DELIVERABLE.**
`reports/bom-extraction/260374 COMBINED PID SET 6-1-26/report.md` and
`findings/bom-extraction/260374 COMBINED PID SET 6-1-26/*.md` are self-verified by the
producing agent but have not undergone human-in-the-loop review — no
`HITL/bom-extraction/260374 COMBINED PID SET 6-1-26/MANUAL_VALIDATE.md` exists, and no
named reviewer has signed this pack. Run `MANUAL VALIDATE` for this use case before
treating it as accepted.
