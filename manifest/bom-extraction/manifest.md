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
| `Prepurchase Elect Dwgs_10-30-2024.pdf` | bom-extraction | verified | [below](#prepurchase-elect-dwgs_10-30-2024pdf) |

---

## `260374 COMBINED PID SET 6-1-26.pdf`

### Governance

```yaml
source-document: 260374 COMBINED PID SET 6-1-26.pdf
use-case: bom-extraction
skill-version: v2                  # currently live in skills/bom-extraction/skill.md's own front matter; this document's findings were produced under v1 — v2 only added a Module 3 row and Module 6 edge cases for the electrical-one-line drawing type (the second bom-extraction sample), changing no rule that applies to a P&ID; not re-judged, see skills/bom-extraction/patternLog.md Entry 6
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
`skills/bom-extraction/skill.md` (findings produced under v1; not re-judged under v2 —
see Governance above) and `bootstrap.md`.

This pack was originally built under a pre-`bootstrap.md` ad hoc directory layout
(`bom-extraction/sample-1/`, on the separate `bom-extraction` branch), then migrated into
this branch's framework structure on 2026-09-21 with no change to finding content — only
file locations, filenames, and internal cross-references changed. This pack extracts 27
of the drawing's tagged items in full (10 EQUIPMENT, 10 SAFETY-RELIEF-VALVE, 7
CONTROL-VALVE); the drawing's much larger INSTRUMENT bubble population and a 12-line
flowline list are counted and located by sheet but not individually extracted this pass —
see `reports/bom-extraction/260374 COMBINED PID SET 6-1-26/report.md`'s Coverage section.

Follows `skills/bom-extraction/skill.md` v1's rules (still valid under v2 — see above).

### Checklist

| Check | Status | Notes |
|---|---|---|
| `fileIndex.md` present and resolvable | ✅ | `use_case_name: bom-extraction` set; source path and skill path resolve to existing files; `supporting_document_path: "n/a"` resolves per `bootstrap.md` §2's single-document allowance, since `skills/bom-extraction/skill.md`'s front matter declares `shape: BOM_LINE` with no supporting-document role |
| `use_case_name` matches `skill_file_path`'s parent directory | ✅ | `use_case_name: bom-extraction` matches `skills/bom-extraction/skill.md`'s directory |
| Runtime inputs resolved (source/skill; no supporting document exists for this use case) | ✅ | `documents/bom-extraction/source/260374 COMBINED PID SET 6-1-26.pdf`, `skills/bom-extraction/skill.md` |
| Digests recorded for all inputs | ✅ | see Digests section below |
| Skill gap analysis performed | ✅ | `version-compare`, `drawing-comparison`, and `question-answer` all considered and rejected as not fitting a single-document extraction task; a new skill was written — see `skills/bom-extraction/patternLog.md` Entry 1 |
| Skill version recorded on artifacts | ✅ | v1 noted in every `findings/bom-extraction/260374 COMBINED PID SET 6-1-26/*.md` and `reports/bom-extraction/260374 COMBINED PID SET 6-1-26/report.md` front matter — the version they were actually produced under, kept as-is per Governance above, not rewritten to v2 |
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
| `skills/bom-extraction/skill.md` | skill — live copy, current version (v2) | `b7f5520d6157efeeb2b2a856e20d466f8acae457fe21148182c14599dab2e628` | 2026-09-21 (v1 enhanced to v2, adding a Module 3 row and Module 6 edge cases for the electrical-one-line drawing type; no rule applicable to this P&ID document changed, findings below remain valid per `skills/bom-extraction/patternLog.md` Entry 6) |
| `skills/bom-extraction/skill-versions/v1.md` | skill — immutable snapshot of v1 (used to build this document's existing findings; superseded) | `d36020865cdff6f8c448ba6afaece1f85eb74b941477b680c98e1c9580e8426c` | 2026-09-21 |
| `skills/bom-extraction/skill-versions/v2.md` | skill — immutable snapshot of v2 | `b7f5520d6157efeeb2b2a856e20d466f8acae457fe21148182c14599dab2e628` | 2026-09-21 |

No supporting-document digest exists for this use case — `supporting_document_path: "n/a"`
per `bootstrap.md` §2. All 13 twin pages under
`actuals/bom-extraction/260374 COMBINED PID SET 6-1-26/twin/` were built from the source
document digest above. All 27 findings files under
`findings/bom-extraction/260374 COMBINED PID SET 6-1-26/` were built from those twin pages
while `skills/bom-extraction/skill.md` held v1's content (now preserved immutably at
`skills/bom-extraction/skill-versions/v1.md`); v2 added new Module 3/6 content for a
different drawing type without changing any rule this P&ID document's findings depend on
(see `skills/bom-extraction/patternLog.md` Entry 6), so they remain valid under v2 and
were not re-judged. If a future skill version *does* change extraction-relevant behavior
for a P&ID, re-run `NORMALIZE`, `JUDGE`, and `REPORT` for this document before treating
these findings as current.

### Verdict

**NOT YET AN ACCEPTED DELIVERABLE.**
`reports/bom-extraction/260374 COMBINED PID SET 6-1-26/report.md` and
`findings/bom-extraction/260374 COMBINED PID SET 6-1-26/*.md` are self-verified by the
producing agent but have not undergone human-in-the-loop review — no
`HITL/bom-extraction/260374 COMBINED PID SET 6-1-26/MANUAL_VALIDATE.md` exists, and no
named reviewer has signed this pack. Run `MANUAL VALIDATE` for this use case before
treating it as accepted.

---

## `Prepurchase Elect Dwgs_10-30-2024.pdf`

### Governance

```yaml
source-document: Prepurchase Elect Dwgs_10-30-2024.pdf
use-case: bom-extraction
skill-version: v2                  # produced under v2 (the version this document's own processing motivated) — currently live
classification: internal working draft; project is Upper Trinity Regional Water District / Tom Harpool Regional WTP Phase 2 Expansion, prepared by GAI Gupta & Associates, Inc.; "ISSUED FOR THE PURPOSE OF PROCUREMENT ONLY" per every sheet's own stamp; no external distribution without a named recipient in pivot.md
state: verified                    # agent self-verification only — see Checklist below; not yet "signed" or "accepted", no HITL record exists
signed-by: —                       # no MANUAL VALIDATE has been run for this use case
verified-by: single-reader cross-check (agent self-verification, not a named human reviewer)
verified-on: 2026-09-21
retention: per project retention policy; date to be recorded by the delivery lead
```

### Sample context

The second document processed under `bom-extraction`, and the first drawing type other
than a P&ID: an 11-page excerpt of electrical one-line diagrams, switchgear elevations,
and a physical power/grounding plan for a generator/switchgear/transformer prepurchase
equipment package. Prompted a real skill enhancement — `skills/bom-extraction/skill.md`
v1's Module 3 had only a P&ID row, with categories (SAFETY-RELIEF-VALVE, CONTROL-VALVE,
INSTRUMENT) that do not fit this drawing type — see
`skills/bom-extraction/patternLog.md` Entries 6-8 for the resulting v2 enhancement (a new
Module 3 row; two new Module 6 edge cases: future-vs-current equipment convention, and
contradictory rating across sheets for the same tag).

This pack extracts 23 of the drawing set's tagged items in full: 3 generators (2000kW
each), 5 neutral grounding resistors, 5 switchgear units, 8 transformer-related units
(6 transformers + 2 of their NGRs), and 4 other equipment items (an on-site load bank,
the Generator Master Control Panel, and 2 currently-installed 1200HP VFDs). A fourth
generator bay (GEN-G6/NGR-G6), the DC battery system, four future 1200HP VFDs, and all
existing (pre-expansion) plant equipment are named but not extracted as findings — see
`reports/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/report.md`'s Coverage section.
Two findings (`mvswgre.md`, `mvswgrf.md`) carry an open, unresolved discrepancy between
two sheets' stated bus wire-count/material for the same equipment — flagged
`confidence: UNSURE` on that one detail, not silently resolved.

Follows `skills/bom-extraction/skill.md` v2, including the electrical-one-line-set
domain-guidance row this document itself motivated.

### Checklist

| Check | Status | Notes |
|---|---|---|
| `fileIndex.md` present and resolvable | ✅ | `bom-extraction` entry's `source_document_path` is now a 2-item list; this document is the second entry, resolves to an existing file |
| `use_case_name` matches `skill_file_path`'s parent directory | ✅ | `use_case_name: bom-extraction` matches `skills/bom-extraction/skill.md`'s directory |
| Runtime inputs resolved (source/skill; no supporting document exists for this use case) | ✅ | `documents/bom-extraction/source/Prepurchase Elect Dwgs_10-30-2024.pdf`, `skills/bom-extraction/skill.md` |
| Digests recorded for all inputs | ✅ | see Digests section below |
| Skill gap analysis performed | ✅ | existing v1 Module 3 (P&ID-only) did not fit this drawing type; enhanced to v2 — see `skills/bom-extraction/patternLog.md` Entry 6 |
| Skill version recorded on artifacts | ✅ | v2 noted in every `findings/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/*.md` and `reports/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/report.md` front matter |
| `actuals/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/twin` extracted from the source document (per-page) | ✅ | `.../twin/Prepurchase Elect Dwgs_10-30-2024/page001.md`–`page011.md` (11 pages), plus `twin/derived/`, `sectionMap.md` |
| `detection.md` and `plan.md` complete | ✅ | quirks logged (new drawing type, future-vs-current convention, MVSWGR bus discrepancy, VFD numbering inconsistency, pump-number reuse, EBFNE01 not included); 23 units planned and marked done |
| Findings cover documented scope (23 planned units) | ✅ | `findings/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/` — 23 unit files; not a complete tag index of the drawing set, per `plan.md`'s scoping note |
| Every finding shows Specification/Source cited to the sheet | ✅ | spot-checked during generation, including the two UNSURE-flagged fields; see `findings/` |
| `graph.md` traces findings to report | ✅ | `actuals/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/graph.md` |
| Findings verified-by / verified-on filled | ✅ | `single-reader cross-check`, 2026-09-21 — agent self-verification, not an independent HITL record |
| HITL review completed | ⬜ | not yet done — no `HITL/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/MANUAL_VALIDATE.md` exists; not fabricated here |
| `pivot.md` decisions recorded (if any disputes arise) | ⬜ | not yet needed — no cross-use-case disputes raised; `pivot.md` exists and is empty |
| Report derives only from approved findings | ✅ | `reports/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/report.md` cites `findings/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/` only |
| Signed by a reviewer | ⬜ | no named human reviewer has signed this pack — `state: verified`, not `signed` or `accepted` |

### Digests

| File | Role | SHA-256 | Digest recorded |
|---|---|---|---|
| `documents/bom-extraction/source/Prepurchase Elect Dwgs_10-30-2024.pdf` | source | `422b2638d13fee272299e72f6fd9112852686baeea4863d3f79f9a79ad5ebb73` | 2026-09-21 |
| `skills/bom-extraction/skill.md` | skill — live copy, current version (v2) | `b7f5520d6157efeeb2b2a856e20d466f8acae457fe21148182c14599dab2e628` | 2026-09-21 |
| `skills/bom-extraction/skill-versions/v2.md` | skill — immutable snapshot of v2 (used to build this document's findings) | `b7f5520d6157efeeb2b2a856e20d466f8acae457fe21148182c14599dab2e628` | 2026-09-21 |

No supporting-document digest exists for this use case — `supporting_document_path: "n/a"`
per `bootstrap.md` §2. All 11 twin pages under
`actuals/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/twin/` and all 23 findings under
`findings/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/` were built while
`skills/bom-extraction/skill.md` held v2's content (immutably preserved at
`skills/bom-extraction/skill-versions/v2.md`). If a future skill version changes
extraction-relevant behavior for an electrical-one-line-set document, re-run `NORMALIZE`,
`JUDGE`, and `REPORT` for this document before treating these findings as current.

### Verdict

**NOT YET AN ACCEPTED DELIVERABLE.**
`reports/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/report.md` and
`findings/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/*.md` are self-verified by the
producing agent but have not undergone human-in-the-loop review — no
`HITL/bom-extraction/Prepurchase Elect Dwgs_10-30-2024/MANUAL_VALIDATE.md` exists, and no
named reviewer has signed this pack. Run `MANUAL VALIDATE` for this use case before
treating it as accepted. Two findings (`mvswgre.md`, `mvswgrf.md`) additionally carry an
unresolved cross-sheet rating discrepancy that a human reviewer should specifically
confirm — see Sample context above.
