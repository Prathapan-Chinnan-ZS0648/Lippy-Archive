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
skill-version: v5                  # currently live in skills/drawing-comparison/skill.md's own front matter; findings below were produced under v1 — v2 relocated duplicated rules into the shared layer, v3 changed the retrieval methodology to question-driven, v4 generalized that methodology into the shared layer itself, v5 added twin/derived-layer guidance (source docs get AKUs+questions, supporting docs get a plain summary); findings below are NOT re-judged under v3-v5's new methodology, but this document's twin/derived files WERE regenerated under v5's guidance (no finding content changed) — see "Open items" below and skills/drawing-comparison/patternLog.md Entries 6-9
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
(findings produced under v1; not re-judged under v2-v5 — see Governance above and
"Open items" below), `skills/_shared/engineeringDrawingReading.md`, and `bootstrap.md`.
v3 (2026-09-22) changed this skill's retrieval methodology from direct comparison to
question-driven retrieval (identify the AKU on the source drawing, formulate a question,
ask it against the supporting drawing, derive the verdict from the answer) per explicit
user instruction — see `skills/drawing-comparison/patternLog.md` Entry 7. This pack's
existing findings were built under the pre-v3 direct-comparison methodology and do not
carry the Question/Answer fields v3 now requires of a finding; they are not retrofitted.

v5 (2026-09-24) added a further requirement, per explicit user instruction: a document's
`twin/derived/<document>.md` summary must reflect its role — the source document's
summary records its AKUs and their formulated questions; the supporting document's stays
a plain content summary. Unlike the findings above, **this pack's two `twin/derived/`
files WERE regenerated** under this guidance:
`twin/derived/AD-3010-C-330030-SHT-004-REV4.md` (source) now lists all 22 AKUs with a
question per AKU, and `twin/derived/AD-3010-C-330030-SHT-004-REV3.md` (supporting) kept
its existing plain-summary format with a clarifying note added. This regeneration is
treated as distinct in kind from a finding retrofit — the questions are mechanical
restatements of each unit's already-fixed identity (established in `plan.md` and the 22
findings), assert no REV3-side answer, and changed no finding's own Old/New content,
verdict, or confidence. See `skills/drawing-comparison/patternLog.md` Entry 9 for the
full reasoning.

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

Follows `skills/drawing-comparison/skill.md` v1's rules for its actual content (still
valid — see above); does not follow v3's question-driven retrieval methodology, since
that methodology postdates this pack's findings.

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
| `skills/drawing-comparison/skill.md` | skill — live copy, current version (v5) | `52aea7f5a3f6dd621d6a78694f07ceacd58660f2538b045ea09698de3eafebf3` | 2026-09-24 (v1->v2: builds on the shared layer. v2->v3: question-driven retrieval added, skill-specific. v3->v4: that methodology generalized into the shared layer (rule 8). v4->v5: added a cross-reference to rule 8's new twin/derived-layer guidance (source = AKUs+questions, supporting = plain summary) — see `skills/drawing-comparison/patternLog.md` Entries 6-9. This pack's 22 findings predate all changes and are not re-judged; its twin/derived files WERE regenerated under the new guidance — see Sample context above.) |
| `skills/drawing-comparison/skill-versions/v1.md` | skill — immutable snapshot of v1 (used to build this document's existing findings; superseded) | `5af3db37bf9133bbc05f4e986153df228398cfc10cfa0ad558e99fbb7483c6d1` | 2026-09-21 |
| `skills/drawing-comparison/skill-versions/v2.md` | skill — immutable snapshot of v2 (superseded) | `b6a22b298d6bb58ec9208761dc279da9ca77d2d09baeb0c012ae1bbed9270185` | 2026-09-22 |
| `skills/drawing-comparison/skill-versions/v3.md` | skill — immutable snapshot of v3 (superseded) | `46f0c007ff193f5a669722352aa58321eaa506fa24e599fe7ded1cb2385767c5` | 2026-09-22 |
| `skills/drawing-comparison/skill-versions/v4.md` | skill — immutable snapshot of v4 (superseded) | `f1a46940e3bd9fa869b5a1550107ea1b3f745e7a6f193cc96c5958586454b4fb` | 2026-09-23 |
| `skills/drawing-comparison/skill-versions/v5.md` | skill — immutable snapshot of v5 | `52aea7f5a3f6dd621d6a78694f07ceacd58660f2538b045ea09698de3eafebf3` | 2026-09-24 |
| `skills/_shared/engineeringDrawingReading.md` | shared base layer — live copy, current version (v3) | `45702dc2a4ed5f722d8bdd23b5527dcfb1b33e393ba4864b0b3b7c1acf9bdcc4` | 2026-09-24 (v2 enhanced to v3: added twin/derived-layer guidance to rule 8 — source documents get AKUs+questions, supporting documents get a plain summary — see `skills/drawing-comparison/patternLog.md` Entry 9) |
| `skills/_shared/shared-versions/engineeringDrawingReading-v1.md` | shared base layer — immutable snapshot of v1 (superseded) | `40faa5243063da89b0cc1ef5fbd73a2b2265db24444df28cae3081765272105d` | 2026-09-22 |
| `skills/_shared/shared-versions/engineeringDrawingReading-v2.md` | shared base layer — immutable snapshot of v2 (superseded) | `9533c40f8aa91d53532fe2d7bb8cbb56f7af5132e9e216d88be86c58d0f1f98b` | 2026-09-23 |
| `skills/_shared/shared-versions/engineeringDrawingReading-v3.md` | shared base layer — immutable snapshot of v3 | `45702dc2a4ed5f722d8bdd23b5527dcfb1b33e393ba4864b0b3b7c1acf9bdcc4` | 2026-09-24 |

All twin pages under `actuals/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/twin/` were
built from the two document digests above. All 22 findings files under
`findings/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/` were built from those twin
pages under the skill content now snapshotted at
`skills/drawing-comparison/skill-versions/v1.md`. v2 (relocating shared rules) changed no
verdict-relevant behavior; **v3/v4 (question-driven retrieval, then its generalization
into the shared layer) is a real methodology change**, but whether it would change any of
this pack's 22 verdicts if re-run is not yet known — the existing findings were produced
by direct comparison, not by the formulate/ask/derive sequence v3/v4 requires, so they
are not currently valid *v3/v4* records even though their content has not been shown to
be wrong. Re-running `NORMALIZE`, `JUDGE`, and `REPORT` under v4 for this document is an
open decision, not yet made — see "Open items before this pack can be signed off" below.

### Open items before this pack can be signed off

- No human-in-the-loop reviewer has yet run `MANUAL VALIDATE` for this use case — no
  `HITL/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/MANUAL_VALIDATE.md` exists.
- **Whether to re-run this pack under v3's question-driven retrieval methodology is an
  open decision, not yet made.** The 22 existing findings were produced by direct
  comparison (v1/v2 methodology) and are not v3 records — v3's Question/Answer fields
  are absent from all 22. Their content has not been shown to be wrong (the underlying
  facts on the drawing have not changed), but a re-run is the only way to confirm v3's
  stricter, auditable retrieval process would reach the identical 22 verdicts rather
  than surface something the original glance-and-match pass missed — the way an
  independent second attempt once already did once, for `CTRL-1` (see
  `skills/drawing-comparison/patternLog.md` Entry 5).

### Verdict

**NOT YET AN ACCEPTED DELIVERABLE.** `reports/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/report.md`
and `findings/drawing-comparison/AD-3010-C-330030-SHT-004-REV4/*.md` are self-verified by
the producing agent (independent re-checks against the source PDFs, including the
2026-09-17 correction) but have not undergone human-in-the-loop review, and are pre-v3
records under a superseded retrieval methodology — see "Open items" above. Run
`MANUAL VALIDATE` for this use case, and decide on a v3 re-run, before treating this pack
as accepted.
