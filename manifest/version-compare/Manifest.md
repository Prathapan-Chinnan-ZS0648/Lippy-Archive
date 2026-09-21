# Manifest

Final validation gate, per `Bootstrap.md` §15. Sectioned **per source document** —
`Bootstrap.md` §12 — so one document's sign-off status is never confused with another's.
No artifact below is an accepted deliverable until its own section's checklist is fully
checked and signed. Governance fields, sample context, and the digest ledger live here —
not in `FileIndex.md`, which holds only the four configured inputs per `Bootstrap.md` §2.

## Index

| Source document | Use case | State | Section |
|---|---|---|---|
| `SYNTH_VERS_DOCS_S1_REVISED.pdf` | version-compare | accepted | [below](#synth_vers_docs_s1_revisedpdf) |
| `SYNTH_VERS_DOCS_S2_REVISED.pdf` | version-compare | accepted | [below](#synth_vers_docs_s2_revisedpdf) |
| `SYNTH_VERS_DOCS_S3_REVISED.docx` | version-compare | accepted | [below](#synth_vers_docs_s3_reviseddocx) |
| `SYNTH_VERS_DOCS_S4_REVISED.xlsx` | version-compare | accepted | [below](#synth_vers_docs_s4_revisedxlsx) |
| `SYNTH_VERS_DOCS_S5_REVISED.pptx` | version-compare | accepted | [below](#synth_vers_docs_s5_revisedpptx) |

---

## `SYNTH_VERS_DOCS_S1_REVISED.pdf`

### Governance

```yaml
source-document: SYNTH_VERS_DOCS_S1_REVISED.pdf
use-case: version-compare          # mirrors FileIndex.md's use_case_name field when this document is the one currently resolved
skill-version: v3                  # currently live in skills/version-compare/Skill.md's own front matter; this document's findings were judged under an earlier version and validated as still-valid under v3 per skills/version-compare/PatternLog.md Entry 10
classification: internal working draft; no external distribution without a named recipient in Pivot.md
state: accepted
signed-by: Prathapan C
verified-by: Prathapan C
verified-on: 2026-09-21   # per HITL/version-compare/SYNTH_VERS_DOCS_S1_REVISED/MANUAL_VALIDATE.md (MANUAL VALIDATE, 06:34:58 UTC)
retention: per project retention policy; date to be recorded by the delivery lead
```

### Sample context

A two-version document pair: an original issue and a revised reissue of the same
document, where the revision adds, removes, and changes clauses relative to the original.
Judging rules and workflow are defined in `skills/version-compare/Skill.md` (the live
current skill, v3) and `Bootstrap.md`. This document's findings were originally produced
under v1 (snapshotted at `skills/version-compare/skill-versions/v1.md`); v2 restructured
and generalized v1, and v3 made several already-applicable structural-necessity rules
explicit in the skill's own text, neither changing verdict-relevant behavior for units
already judged (see `skills/version-compare/PatternLog.md` Entries 3 and 10), so they
were not re-run.

This document happens to self-annotate some of its own changes with bracketed markers;
this is a document-specific authoring quirk, not relied upon as a rule — see
`skills/version-compare/PatternLog.md` Entry 1 and
`actuals/version-compare/SYNTH_VERS_DOCS_S1_REVISED/Detection.md`. Judgment was carried out by
independent reading against both documents regardless of any such markers.

Follows `skills/version-compare/Skill.md` as-is.

### Checklist

| Check | Status | Notes |
|---|---|---|
| `FileIndex.md` present and resolvable | ✅ | `use_case_name` set; both document paths and the skill path resolve to existing files |
| `use_case_name` matches `skill_file_path`'s parent directory | ✅ | `use_case_name: version-compare` matches `skills/version-compare/Skill.md`'s directory |
| Runtime inputs resolved (source/supporting/skill) | ✅ | `documents/source/SYNTH_VERS_DOCS_S1_REVISED.pdf`, `documents/supporting/SYNTH_VERS_DOCS_S1_ORIGINAL.pdf`, `skills/version-compare/Skill.md` |
| Digests recorded for all inputs | ✅ | see Digests section below |
| Skill gap analysis performed | ✅ | `PromptLog.md` — no gaps found, v1 unmodified; observations logged in `skills/version-compare/PatternLog.md` |
| Skill version recorded on artifacts | ✅ | v1 (unmodified) noted in every `findings/version-compare/SYNTH_VERS_DOCS_S1_REVISED/*.md` and `reports/version-compare/SYNTH_VERS_DOCS_S1_REVISED/Report.md` front matter |
| `actuals/version-compare/SYNTH_VERS_DOCS_S1_REVISED/twin` extracted from both documents (per-page) | ✅ | `.../twin/SYNTH_VERS_DOCS_S1_REVISED/` (12 pages), `.../twin/SYNTH_VERS_DOCS_S1_ORIGINAL/` (11 pages), plus `derived/` and `SectionMap.md` |
| `Detection.md` and `Plan.md` complete | ✅ | quirks logged; all 19 units planned and marked done |
| Findings cover full source document (all units) | ✅ | `findings/version-compare/SYNTH_VERS_DOCS_S1_REVISED/` — 19 unit files, 154 clauses (re-judged 2026-09-20: "12. Commercial Terms" liquidated-damages REMOVED+ADDED merged to one CHANGED under skill v5) |
| Every non-UNCHANGED verdict shows both sides quoted | ✅ | spot-checked during generation; see `findings/` |
| `Graph.md` traces findings to report | ✅ | `actuals/version-compare/SYNTH_VERS_DOCS_S1_REVISED/Graph.md` |
| Findings verified-by / verified-on filled | ✅ | confirmed via the independent HITL record (findings content itself left unedited per `Bootstrap.md`'s `MANUAL VALIDATE` — "never modify content merely to indicate it was reviewed"); see `HITL/version-compare/SYNTH_VERS_DOCS_S1_REVISED/MANUAL_VALIDATE.md` |
| HITL review completed | ✅ | `HITL/version-compare/SYNTH_VERS_DOCS_S1_REVISED/MANUAL_VALIDATE.md` — Reviewer: Prathapan C, Status: VERIFIED, 2026-09-21 06:34:58 UTC |
| `Pivot.md` decisions recorded (if any disputes arise) | ⬜ | not yet needed — no disputes raised; `Pivot.md` exists and is empty |
| Report derives only from approved findings | ✅ | `reports/version-compare/SYNTH_VERS_DOCS_S1_REVISED/Report.md` cites `findings/version-compare/SYNTH_VERS_DOCS_S1_REVISED/` only |
| Signed by a reviewer | ✅ | `signed-by: Prathapan C` above, per `HITL/version-compare/SYNTH_VERS_DOCS_S1_REVISED/MANUAL_VALIDATE.md` |

### Digests

Every input document and skill file this document's actuals were written against, with a
content digest. An actual is only valid for the digest it names — if a file listed here
changes, every actual/finding built from it must be regenerated and this ledger updated.

| File | Role | SHA-256 | Digest recorded |
|---|---|---|---|
| `documents/source/SYNTH_VERS_DOCS_S1_REVISED.pdf` | source | `8a8bd85ca1f4bd20c8fb8ab36a40b3c1180f03cc76d25f9476b44e82f61a1b6b` | 2026-09-18 |
| `documents/supporting/SYNTH_VERS_DOCS_S1_ORIGINAL.pdf` | supporting | `fce2d15c889477818b91ffa42e256b42beaa15e5c9da54323a731f7f10d1f258` | 2026-09-18 |
| `skills/version-compare/Skill.md` | skill — live copy, current version (v3) | `315c6efda51307ce41a4bff019f8af4a6b6ab96f2692b1629af17706eeddeecc` | 2026-09-18 (updated — v2 enhanced to v3 via ENHANCE-SKILL, making structural-necessity reasoning explicit in Module 1/2/6; no verdict-relevant behavior changed, findings below remain valid per PatternLog.md Entry 10) |
| `skills/version-compare/skill-versions/v1.md` | skill — immutable snapshot of v1 (used to build the existing findings; superseded) | `9454876221740b6fcdaccf869839a159cd76ab5beff03b06b1771a430c060ba3` | 2026-09-18 |
| `skills/version-compare/skill-versions/v2.md` | skill — immutable snapshot of v2 (now superseded) | `c62fbf9acce0fd5228d2c743741fb88c3c09b80c5c692479d76d1bc25bc8c42f` | 2026-09-18 (updated — one-line status field changed to "superseded by version-comparev3.md", per Bootstrap.md §9; content otherwise unchanged) |
| `skills/version-compare/skill-versions/v3.md` | skill — immutable snapshot of v3 | `50676942017a7c184ae2a9964899835a7ff2bb5a24e469d069d33fcd199ddab9` | 2026-09-18 |

All 23 twin pages under `actuals/version-compare/SYNTH_VERS_DOCS_S1_REVISED/twin/SYNTH_VERS_DOCS_S1_REVISED/`
(12 pages) and `.../twin/SYNTH_VERS_DOCS_S1_ORIGINAL/` (11 pages) were built from the two
document digests above. All 19 findings files under
`findings/version-compare/SYNTH_VERS_DOCS_S1_REVISED/` were built from those twin pages while
`skills/version-compare/Skill.md` held v1's content (now preserved immutably at
`skills/version-compare/skill-versions/v1.md`); v2 restructured and v3 further clarified
v1's rules, neither changing any verdict-relevant behavior for units already judged (see
`skills/version-compare/PatternLog.md` Entries 3 and 10), so the existing findings
remain valid under v3 and were not re-judged. If a future skill version *does* change
verdict-relevant behavior, re-run `NORMALIZE`, `JUDGE`, and `REPORT` for this document before treating
them as current.

### Verdict

**ACCEPTED DELIVERABLE.** `reports/version-compare/SYNTH_VERS_DOCS_S1_REVISED/Report.md` and
`findings/version-compare/SYNTH_VERS_DOCS_S1_REVISED/*.md` are accepted. HITL review complete and
signed per `HITL/version-compare/SYNTH_VERS_DOCS_S1_REVISED/MANUAL_VALIDATE.md` (Reviewer: Prathapan C,
2026-09-21).

---

## `SYNTH_VERS_DOCS_S2_REVISED.pdf`

### Governance

```yaml
source-document: SYNTH_VERS_DOCS_S2_REVISED.pdf
use-case: version-compare          # mirrors FileIndex.md's use_case_name field when this document is the one currently resolved
skill-version: v3                  # currently live in skills/version-compare/Skill.md's own front matter; this document's findings were judged under an earlier version and validated as still-valid under v3 per skills/version-compare/PatternLog.md Entry 10
classification: internal working draft; no external distribution without a named recipient in Pivot.md
state: accepted
signed-by: Prathapan C
verified-by: Prathapan C
verified-on: 2026-09-21   # per HITL/version-compare/SYNTH_VERS_DOCS_S2_REVISED/MANUAL_VALIDATE.md (MANUAL VALIDATE, 06:34:58 UTC)
retention: per project retention policy; date to be recorded by the delivery lead
```

### Sample context

A two-version document pair: an original issue (RFP-AFG-2026-0064) and a revised
reissue (RFP-AFG-2026-0064-R1) of the same RFP, where the revision adds a Major Incident
Response program (driven by AFG's acquisition of Colonial Trust Bank and a rise in
Severity 1 outages), removes an entire section's content (Section 6, "Vendor Onboarding
& Staffing Requirements," retitled "[Reserved]"), and changes numerous scale, hosting,
and commercial terms. Judging rules and workflow are defined in
`skills/version-compare/Skill.md` (v3; judged under v2, validated unaffected per PatternLog.md Entry 10) and `Bootstrap.md`.

This document self-annotates most of its own changes with bracketed markers
(`[NEW]`, `[MODIFIED]`, `[REFORMATTED — ...]`), the same authoring pattern already
observed once in the SYNTH_VERS_DOCS_S1_REVISED sample. That pattern was already
promoted into `skills/version-compare/Skill.md` v2 Module 6 (self-annotation handled as
a cross-check only, never the sole basis for a verdict) during an earlier explicit-user
generalization — see `skills/version-compare/PatternLog.md` Entry 1/3. This sample is a
**second, independent confirmation** of that already-promoted rule (cross-sample
confirmation, `Bootstrap.md` §8.2 condition 1) — no further skill change is needed; logged
in `skills/version-compare/PatternLog.md` as confirming evidence.

This document also introduces two edge cases not seen in the S1 sample, both already
covered by existing v2 rules rather than requiring a skill change: an entire section's
content removed while its section number/table-of-contents slot persists (a
section-level application of the existing REMOVED rule), and a subsection reformatted
from prose to a table with the same underlying obligations restated as CHANGED rather
than REMOVED+ADDED (an application of the existing map-by-content rule, Module 2 stage
MAP). See `actuals/version-compare/SYNTH_VERS_DOCS_S2_REVISED/Detection.md` and
`actuals/version-compare/SYNTH_VERS_DOCS_S2_REVISED/Graph.md`.


### Checklist

| Check | Status | Notes |
|---|---|---|
| `FileIndex.md` present and resolvable | ✅ | `use_case_name` set; both document paths and the skill path resolve to existing files |
| `use_case_name` matches `skill_file_path`'s parent directory | ✅ | `use_case_name: version-compare` matches `skills/version-compare/Skill.md`'s directory |
| Runtime inputs resolved (source/supporting/skill) | ✅ | `documents/source/SYNTH_VERS_DOCS_S2_REVISED.pdf`, `documents/supporting/SYNTH_VERS_DOCS_S2_ORIGINAL.pdf`, `skills/version-compare/Skill.md` |
| Digests recorded for all inputs | ✅ | see Digests section below |
| Skill gap analysis performed | ✅ | no gaps — self-annotation, section-removal, and reformatting edge cases all already covered by skill v2; see Sample context above |
| Skill version recorded on artifacts | ✅ | v2 noted in every `findings/version-compare/SYNTH_VERS_DOCS_S2_REVISED/*.md` and `reports/version-compare/SYNTH_VERS_DOCS_S2_REVISED/Report.md` front matter |
| `actuals/version-compare/SYNTH_VERS_DOCS_S2_REVISED/twin` extracted from both documents (per-page) | ✅ | `.../twin/SYNTH_VERS_DOCS_S2_REVISED/` (13 pages), `.../twin/SYNTH_VERS_DOCS_S2_ORIGINAL/` (10 pages), plus `derived/` and `SectionMap.md` |
| `Detection.md` and `Plan.md` complete | ✅ | quirks logged; all 20 units planned and marked done |
| Findings cover full source document (all units) | ✅ | `findings/version-compare/SYNTH_VERS_DOCS_S2_REVISED/` — 20 unit files, 148 clauses |
| Every non-UNCHANGED verdict shows both sides quoted | ✅ | spot-checked during generation; see `findings/` |
| `Graph.md` traces findings to report | ✅ | `actuals/version-compare/SYNTH_VERS_DOCS_S2_REVISED/Graph.md` |
| Findings verified-by / verified-on filled | ✅ | confirmed via the independent HITL record (findings content itself left unedited per `Bootstrap.md`'s `MANUAL VALIDATE`); see `HITL/version-compare/SYNTH_VERS_DOCS_S2_REVISED/MANUAL_VALIDATE.md` |
| HITL review completed | ✅ | `HITL/version-compare/SYNTH_VERS_DOCS_S2_REVISED/MANUAL_VALIDATE.md` — Reviewer: Prathapan C, Status: VERIFIED, 2026-09-21 06:34:58 UTC |
| `Pivot.md` decisions recorded (if any disputes arise) | ⬜ | not yet needed — no disputes raised for this document |
| Report derives only from approved findings | ✅ | `reports/version-compare/SYNTH_VERS_DOCS_S2_REVISED/Report.md` cites `findings/version-compare/SYNTH_VERS_DOCS_S2_REVISED/` only |
| Signed by a reviewer | ✅ | `signed-by: Prathapan C` above, per `HITL/version-compare/SYNTH_VERS_DOCS_S2_REVISED/MANUAL_VALIDATE.md` |

### Digests

content digest.

| File | Role | SHA-256 | Digest recorded |
|---|---|---|---|
| `documents/source/SYNTH_VERS_DOCS_S2_REVISED.pdf` | source | `3e71f9d61b8bb53a59cb8785f2ef9883111afcfaca15f6ac65713aa4f30ebe21` | 2026-09-18 |
| `documents/supporting/SYNTH_VERS_DOCS_S2_ORIGINAL.pdf` | supporting | `2c24e8c356ab0d65c36eaa0242eb9df857bba6ae9f65ed412fbaebe7e4afd5d0` | 2026-09-18 |
| `skills/version-compare/Skill.md` | skill — live copy, current version (v3) | `315c6efda51307ce41a4bff019f8af4a6b6ab96f2692b1629af17706eeddeecc` | 2026-09-18 (updated — same v2→v3 enhancement as S1's row above) |

All 23 twin pages under `actuals/version-compare/SYNTH_VERS_DOCS_S2_REVISED/twin/SYNTH_VERS_DOCS_S2_REVISED/`
(13 pages) and `.../twin/SYNTH_VERS_DOCS_S2_ORIGINAL/` (10 pages) were built from the two
All 20 findings files under
`findings/version-compare/SYNTH_VERS_DOCS_S2_REVISED/` were built from those twin pages under
`skills/version-compare/Skill.md` v3 (findings judged under v2, validated unaffected per PatternLog.md Entry 10).

### Verdict

**ACCEPTED DELIVERABLE.** `reports/version-compare/SYNTH_VERS_DOCS_S2_REVISED/Report.md` and
`findings/version-compare/SYNTH_VERS_DOCS_S2_REVISED/*.md` are accepted. HITL review complete and
signed per `HITL/version-compare/SYNTH_VERS_DOCS_S2_REVISED/MANUAL_VALIDATE.md` (Reviewer: Prathapan C,
2026-09-21).

---

## `SYNTH_VERS_DOCS_S3_REVISED.docx`

### Governance

```yaml
source-document: SYNTH_VERS_DOCS_S3_REVISED.docx
use-case: version-compare          # mirrors FileIndex.md's use_case_name field when this document is the one currently resolved
skill-version: v5                  # currently live in skills/version-compare/Skill.md's own front matter; this document's findings were judged under v4, validated as still-valid under v5 per skills/version-compare/PatternLog.md Entry 12
classification: internal working draft; no external distribution without a named recipient in Pivot.md
state: accepted
signed-by: Prathapan C
verified-by: Prathapan C
verified-on: 2026-09-21   # per HITL/version-compare/SYNTH_VERS_DOCS_S3_REVISED/MANUAL_VALIDATE.md (MANUAL VALIDATE, 06:34:58 UTC)
retention: per project retention policy; date to be recorded by the delivery lead
```

### Sample context

A two-version document pair: an original issue (RFP-NU-2026-0115) and a revised reissue
(RFP-NU-2026-0115-R1) of the same campus dining-services RFP, where the revision adds a
full catering-services workstream and a new sixth dining hall (Winthrop Commons, opening
fall 2027), driven by higher-than-expected enrollment. **This is the first document
processed under this use case in a new format** — a Word document (`.docx`) with no
fixed physical pagination, not a PDF or spreadsheet. Judging rules and workflow are
defined in `skills/version-compare/Skill.md` (v5; judged under v4, validated per
PatternLog.md Entry 12) and `Bootstrap.md`; per `Bootstrap.md` §8.1, this new format was
analyzed against the existing skill before judging — see
`actuals/version-compare/SYNTH_VERS_DOCS_S3_REVISED/Detection.md` and
`skills/version-compare/PatternLog.md` Entry 12. One skill change was required and made:
Module 6's placeholder/blank/zero-value row was broadened to also name an explicit
"this provision does not apply" statement being replaced by a real provision as the same
CHANGED-not-ADDED shape (this document's Commercial Terms section replaces "No
liquidated damages clause applies to this engagement." with a real liquidated-damages
clause). Every other quirk this document surfaced (a third document format, a fourth
self-annotation occurrence, a milestone row relabeled alongside its value) was already
covered by the existing skill with no change needed.


**Known pending correction (see `PromptLog.md`):** the §8.4 validation performed for this
sample's skill change found that `SYNTH_VERS_DOCS_S1_REVISED`'s existing findings
(`findings/version-compare/SYNTH_VERS_DOCS_S1_REVISED/13-12CommercialTerms.md`) recorded the same
explicit-negation-replaced-by-a-real-clause shape as REMOVED + ADDED, under the
skill version live at the time — this now contradicts the v5 wording and is flagged for
re-judgment. This does not block this document's own validation, since this document's
own finding was judged correctly under the rule as promoted; it is recorded here because
`skills/version-compare/PatternLog.md` Entry 12 is the entry that surfaced it.

### Checklist

| Check | Status | Notes |
|---|---|---|
| `FileIndex.md` present and resolvable | ✅ | `use_case_name` set; both document paths and the skill path resolve to existing files |
| `use_case_name` matches `skill_file_path`'s parent directory | ✅ | `use_case_name: version-compare` matches `skills/version-compare/Skill.md`'s directory |
| Runtime inputs resolved (source/supporting/skill) | ✅ | `documents/source/SYNTH_VERS_DOCS_S3_REVISED.docx`, `documents/supporting/SYNTH_VERS_DOCS_S3_ORIGINAL.docx`, `skills/version-compare/Skill.md` |
| Digests recorded for all inputs | ✅ | see Digests section below |
| New sample analyzed against existing skill before judging (`Bootstrap.md` §8.1) | ✅ | new format + edge cases logged in `PatternLog.md` Entry 12; one wording refinement promoted (v4→v5), rest already covered |
| Skill version recorded on artifacts | ✅ | v4 noted in every `findings/version-compare/SYNTH_VERS_DOCS_S3_REVISED/*.md` front matter (judged before the v4→v5 ENHANCE-SKILL step ran, per this run's composed `START` order); `reports/version-compare/SYNTH_VERS_DOCS_S3_REVISED/Report.md` records both v4 (judged-under) and v5 (current) |
| `actuals/version-compare/SYNTH_VERS_DOCS_S3_REVISED/twin` extracted from both documents (per-section) | ✅ | `.../twin/SYNTH_VERS_DOCS_S3_REVISED/` (16 sections), `.../twin/SYNTH_VERS_DOCS_S3_ORIGINAL/` (16 sections), plus `derived/` and `SectionMap.md` |
| `Detection.md` and `Plan.md` complete | ✅ | quirks logged; all 16 units planned and marked done |
| Findings cover full source document (all units) | ✅ | `findings/version-compare/SYNTH_VERS_DOCS_S3_REVISED/` — 16 unit files, 93 clauses |
| Every non-UNCHANGED verdict shows both sides quoted | ✅ | spot-checked during generation; see `findings/` |
| `Graph.md` traces findings to report | ✅ | `actuals/version-compare/SYNTH_VERS_DOCS_S3_REVISED/Graph.md` |
| Findings verified-by / verified-on filled | ✅ | confirmed via the independent HITL record (findings content itself left unedited per `Bootstrap.md`'s `MANUAL VALIDATE`); see `HITL/version-compare/SYNTH_VERS_DOCS_S3_REVISED/MANUAL_VALIDATE.md` |
| HITL review completed | ✅ | `HITL/version-compare/SYNTH_VERS_DOCS_S3_REVISED/MANUAL_VALIDATE.md` — Reviewer: Prathapan C, Status: VERIFIED, 2026-09-21 06:34:58 UTC |
| `Pivot.md` decisions recorded (if any disputes arise) | ⬜ | not yet needed — no disputes raised for this document itself (the S1 re-judgment flag is recorded in `PromptLog.md`, not a dispute) |
| Report derives only from approved findings | ✅ | `reports/version-compare/SYNTH_VERS_DOCS_S3_REVISED/Report.md` cites `findings/version-compare/SYNTH_VERS_DOCS_S3_REVISED/` only |
| Signed by a reviewer | ✅ | `signed-by: Prathapan C` above, per `HITL/version-compare/SYNTH_VERS_DOCS_S3_REVISED/MANUAL_VALIDATE.md` |

### Digests

content digest.

| File | Role | SHA-256 | Digest recorded |
|---|---|---|---|
| `documents/source/SYNTH_VERS_DOCS_S3_REVISED.docx` | source | `b224c0a01594d66803f2e1c871b469ccd8b884724b98a308de0d1110a035d52d` | 2026-09-20 |
| `documents/supporting/SYNTH_VERS_DOCS_S3_ORIGINAL.docx` | supporting | `e84e7f2a452511c45eb80025a7afc773d0cf8bff25576efa1ced202856ab6810` | 2026-09-20 |
| `skills/version-compare/Skill.md` | skill — live copy, current version (v5) | `76cde74107e36601e7ad1be00eb8c63455c5d4d620b2511d2e44a77c5624419b` | 2026-09-20 (updated — v4→v5 enhancement from this document's own ENHANCE-SKILL step) |

All 32 twin section files under `actuals/version-compare/SYNTH_VERS_DOCS_S3_REVISED/twin/SYNTH_VERS_DOCS_S3_REVISED/`
(16 sections) and `.../twin/SYNTH_VERS_DOCS_S3_ORIGINAL/` (16 sections) were built from
the two document digests above. All 16 findings files under
`findings/version-compare/SYNTH_VERS_DOCS_S3_REVISED/` were built from those twin sections under
`skills/version-compare/Skill.md` v4 (the live version at the time `JUDGE` ran, before
this same `START` invocation's `ENHANCE-SKILL` step produced v5).

### Verdict

**ACCEPTED DELIVERABLE.** `reports/version-compare/SYNTH_VERS_DOCS_S3_REVISED/Report.md` and
`findings/version-compare/SYNTH_VERS_DOCS_S3_REVISED/*.md` are accepted. HITL review complete and
signed per `HITL/version-compare/SYNTH_VERS_DOCS_S3_REVISED/MANUAL_VALIDATE.md` (Reviewer: Prathapan C,
2026-09-21). This document's own acceptance is independent of the pending re-judgment
flagged against `SYNTH_VERS_DOCS_S1_REVISED`'s Commercial Terms findings (see above and
`PromptLog.md`), which should still be resolved before both documents' reports are
treated as a consistent pair for cross-sample reference.

---

## `SYNTH_VERS_DOCS_S4_REVISED.xlsx`

### Governance

```yaml
source-document: SYNTH_VERS_DOCS_S4_REVISED.xlsx
use-case: version-compare          # mirrors FileIndex.md's use_case_name field when this document is the one currently resolved
skill-version: v3                  # currently live in skills/version-compare/Skill.md's own front matter; this document's findings were judged under an earlier version and validated as still-valid under v3 per skills/version-compare/PatternLog.md Entry 10
classification: internal working draft; no external distribution without a named recipient in Pivot.md
state: accepted
signed-by: Prathapan C
verified-by: Prathapan C
verified-on: 2026-09-21   # per HITL/version-compare/SYNTH_VERS_DOCS_S4_REVISED/MANUAL_VALIDATE.md (MANUAL VALIDATE, 06:34:58 UTC)
retention: per project retention policy; date to be recorded by the delivery lead
```

### Sample context

A two-version document pair: an original issue (RFP-MPSD-2026-0053) and a revised
reissue (RFP-MPSD-2026-0053-R1) of the same K-12 network infrastructure RFP, where the
revision adds a full cybersecurity enhancement program (driven by a new elementary
school opening and a district-wide cybersecurity assessment). **This is the first
document processed under this use case in a new format** — a multi-sheet Excel workbook
(`.xlsx`), not a PDF.
`skills/version-compare/Skill.md` (v3; judged under v2, validated unaffected per PatternLog.md Entry 10) and `Bootstrap.md`; per `Bootstrap.md` §8.1, this
new format was analyzed against the existing skill before judging — see
`actuals/version-compare/SYNTH_VERS_DOCS_S4_REVISED/Detection.md` and
`skills/version-compare/PatternLog.md` Entries 7-9. No skill change was required: the
existing format-agnostic normalization rule (Module 6), the per-clause ADDED/REMOVED
rules applied at whole-unit scope, and the self-annotation cross-check rule all already
covered every new edge case this document surfaced (a whole new sheet with no
counterpart; a whole new table column added; a document's own "replaced by" annotation
turning out, on independent content mapping, to be an unrelated removal plus an
unrelated addition).


### Checklist

| Check | Status | Notes |
|---|---|---|
| `FileIndex.md` present and resolvable | ✅ | `use_case_name` set; both document paths and the skill path resolve to existing files |
| `use_case_name` matches `skill_file_path`'s parent directory | ✅ | `use_case_name: version-compare` matches `skills/version-compare/Skill.md`'s directory |
| Runtime inputs resolved (source/supporting/skill) | ✅ | `documents/source/SYNTH_VERS_DOCS_S4_REVISED.xlsx`, `documents/supporting/SYNTH_VERS_DOCS_S4_ORIGINAL.xlsx`, `skills/version-compare/Skill.md` |
| Digests recorded for all inputs | ✅ | see Digests section below |
| New sample analyzed against existing skill before judging (`Bootstrap.md` §8.1) | ✅ | new format + 2 new edge cases logged in `PatternLog.md` Entries 7-9; all already covered, no skill change needed |
| Skill version recorded on artifacts | ✅ | v2 noted in every `findings/version-compare/SYNTH_VERS_DOCS_S4_REVISED/*.md` and `reports/version-compare/SYNTH_VERS_DOCS_S4_REVISED/Report.md` front matter |
| `actuals/version-compare/SYNTH_VERS_DOCS_S4_REVISED/twin` extracted from both documents (per-sheet) | ✅ | `.../twin/SYNTH_VERS_DOCS_S4_REVISED/` (6 sheets), `.../twin/SYNTH_VERS_DOCS_S4_ORIGINAL/` (5 sheets), plus `derived/` and `SectionMap.md` |
| `Detection.md` and `Plan.md` complete | ✅ | quirks logged; all 6 units planned and marked done |
| Findings cover full source document (all units) | ✅ | `findings/version-compare/SYNTH_VERS_DOCS_S4_REVISED/` — 6 unit files, 98 clauses (re-judged 2026-09-20: Requirements Matrix's aggregate Vendor Response/Vendor Notes column ADDED note re-expanded to 32 per-cell ADDED verdicts under skill v5) |
| Every non-UNCHANGED verdict shows both sides quoted | ✅ | spot-checked during generation; see `findings/` |
| `Graph.md` traces findings to report | ✅ | `actuals/version-compare/SYNTH_VERS_DOCS_S4_REVISED/Graph.md` |
| Findings verified-by / verified-on filled | ✅ | confirmed via the independent HITL record (findings content itself left unedited per `Bootstrap.md`'s `MANUAL VALIDATE`); see `HITL/version-compare/SYNTH_VERS_DOCS_S4_REVISED/MANUAL_VALIDATE.md` |
| HITL review completed | ✅ | `HITL/version-compare/SYNTH_VERS_DOCS_S4_REVISED/MANUAL_VALIDATE.md` — Reviewer: Prathapan C, Status: VERIFIED, 2026-09-21 06:34:58 UTC |
| `Pivot.md` decisions recorded (if any disputes arise) | ⬜ | not yet needed — no disputes raised for this document |
| Report derives only from approved findings | ✅ | `reports/version-compare/SYNTH_VERS_DOCS_S4_REVISED/Report.md` cites `findings/version-compare/SYNTH_VERS_DOCS_S4_REVISED/` only |
| Signed by a reviewer | ✅ | `signed-by: Prathapan C` above, per `HITL/version-compare/SYNTH_VERS_DOCS_S4_REVISED/MANUAL_VALIDATE.md` |

### Digests

content digest.

| File | Role | SHA-256 | Digest recorded |
|---|---|---|---|
| `documents/source/SYNTH_VERS_DOCS_S4_REVISED.xlsx` | source | `d6d90056d5d9e59eadcc31d089689e155db34d0cc3eb1f48c503a136739a9ade` | 2026-09-18 |
| `documents/supporting/SYNTH_VERS_DOCS_S4_ORIGINAL.xlsx` | supporting | `7d0717c828c03d4b9005ef44bae012f3c19bd57806276471285ea69671c7ce07` | 2026-09-18 |
| `skills/version-compare/Skill.md` | skill — live copy, current version (v3) | `315c6efda51307ce41a4bff019f8af4a6b6ab96f2692b1629af17706eeddeecc` | 2026-09-18 (updated — same v2→v3 enhancement as S1's row above) |

All 11 twin sheet files under `actuals/version-compare/SYNTH_VERS_DOCS_S4_REVISED/twin/SYNTH_VERS_DOCS_S4_REVISED/`
(6 sheets) and `.../twin/SYNTH_VERS_DOCS_S4_ORIGINAL/` (5 sheets) were built from the two
All 6 findings files under
`findings/version-compare/SYNTH_VERS_DOCS_S4_REVISED/` were built from those twin sheets under

### Verdict

**ACCEPTED DELIVERABLE.** `reports/version-compare/SYNTH_VERS_DOCS_S4_REVISED/Report.md` and
`findings/version-compare/SYNTH_VERS_DOCS_S4_REVISED/*.md` are accepted. HITL review complete and
signed per `HITL/version-compare/SYNTH_VERS_DOCS_S4_REVISED/MANUAL_VALIDATE.md` (Reviewer: Prathapan C,
2026-09-21).

---

## `SYNTH_VERS_DOCS_S5_REVISED.pptx`

### Governance

```yaml
source-document: SYNTH_VERS_DOCS_S5_REVISED.pptx
use-case: version-compare          # mirrors FileIndex.md's use_case_name field when this document is the one currently resolved
skill-version: v6                  # currently live in skills/version-compare/Skill.md's own front matter; this document's findings were judged under v5, validated as still-valid under v6 per skills/version-compare/PatternLog.md Entry 13
classification: internal working draft; no external distribution without a named recipient in Pivot.md
state: accepted
signed-by: Prathapan C
verified-by: Prathapan C
verified-on: 2026-09-21   # per HITL/version-compare/SYNTH_VERS_DOCS_S5_REVISED/MANUAL_VALIDATE.md (MANUAL VALIDATE, 06:34:58 UTC)
retention: per project retention policy; date to be recorded by the delivery lead
```

### Sample context

A two-version document pair: an original vendor pre-bid briefing deck (RFP-SEC-2026-0029)
and a revised reissue (RFP-SEC-2026-0029-R1) of the same community solar and battery
storage program RFP, where the revision adds a public EV fast-charging hub to the scope.
**This is the first document processed under this use case in a new format** — a
multi-slide PowerPoint deck (`.pptx`), not a PDF, Word document, or spreadsheet. Judging
rules and workflow are defined in `skills/version-compare/Skill.md` (v6; judged under v5,
validated unaffected per PatternLog.md Entry 13) and `Bootstrap.md`; per `Bootstrap.md`
§8.1, this new format was analyzed against the existing skill before judging — see
`actuals/version-compare/SYNTH_VERS_DOCS_S5_REVISED/Detection.md` and
`skills/version-compare/PatternLog.md` Entry 13. No new rule was required beyond two
wording refinements (broadening the self-annotation row to name prose statements, and
generalizing the checklist-line row to any reference/index line): the existing
format-agnostic normalization rule (Module 6), the per-clause ADDED/REMOVED rules applied
at whole-unit (slide) scope, the row/ID-renumbering-by-content mapping rule, and the
column/row per-clause granularity rule all already covered every other edge case this
document surfaced (a whole new slide with no counterpart; slide renumbering after an
insertion; a table gaining a new row alongside redistributed existing values; milestone
rows relabeled alongside their values).


### Checklist

| Check | Status | Notes |
|---|---|---|
| `FileIndex.md` present and resolvable | ✅ | `use_case_name` set; both document paths and the skill path resolve to existing files |
| `use_case_name` matches `skill_file_path`'s parent directory | ✅ | `use_case_name: version-compare` matches `skills/version-compare/Skill.md`'s directory |
| Runtime inputs resolved (source/supporting/skill) | ✅ | `documents/source/SYNTH_VERS_DOCS_S5_REVISED.pptx`, `documents/supporting/SYNTH_VERS_DOCS_S5_ORIGINAL.pptx`, `skills/version-compare/Skill.md` |
| Digests recorded for all inputs | ✅ | see Digests section below |
| New sample analyzed against existing skill before judging (`Bootstrap.md` §8.1) | ✅ | new format + 5 quirks logged in `PatternLog.md` Entry 13; 2 promoted as wording refinements (v5→v6), 3 already covered |
| Skill version recorded on artifacts | ✅ | v5 noted in every `findings/version-compare/SYNTH_VERS_DOCS_S5_REVISED/*.md`; `reports/version-compare/SYNTH_VERS_DOCS_S5_REVISED/Report.md` front matter records both v5 (judged-under) and v6 (current) |
| `actuals/version-compare/SYNTH_VERS_DOCS_S5_REVISED/twin` extracted from both documents (per-slide) | ✅ | `.../twin/SYNTH_VERS_DOCS_S5_REVISED/` (12 slides), `.../twin/SYNTH_VERS_DOCS_S5_ORIGINAL/` (11 slides), plus `derived/` and `SectionMap.md` |
| `Detection.md` and `Plan.md` complete | ✅ | quirks logged; all 12 units planned and marked done |
| Findings cover full source document (all units) | ✅ | `findings/version-compare/SYNTH_VERS_DOCS_S5_REVISED/` — 12 unit files, 73 clauses |
| Every non-UNCHANGED verdict shows both sides quoted | ✅ | spot-checked during generation; see `findings/` |
| `Graph.md` traces findings to report | ✅ | `actuals/version-compare/SYNTH_VERS_DOCS_S5_REVISED/Graph.md` |
| Findings verified-by / verified-on filled | ✅ | confirmed via the independent HITL record (findings content itself left unedited per `Bootstrap.md`'s `MANUAL VALIDATE`); see `HITL/version-compare/SYNTH_VERS_DOCS_S5_REVISED/MANUAL_VALIDATE.md` |
| HITL review completed | ✅ | `HITL/version-compare/SYNTH_VERS_DOCS_S5_REVISED/MANUAL_VALIDATE.md` — Reviewer: Prathapan C, Status: VERIFIED, 2026-09-21 06:34:58 UTC |
| `Pivot.md` decisions recorded (if any disputes arise) | ⬜ | not yet needed — no disputes raised for this document |
| Report derives only from approved findings | ✅ | `reports/version-compare/SYNTH_VERS_DOCS_S5_REVISED/Report.md` cites `findings/version-compare/SYNTH_VERS_DOCS_S5_REVISED/` only |
| Signed by a reviewer | ✅ | `signed-by: Prathapan C` above, per `HITL/version-compare/SYNTH_VERS_DOCS_S5_REVISED/MANUAL_VALIDATE.md` |

### Digests

content digest.

| File | Role | SHA-256 | Digest recorded |
|---|---|---|---|
| `documents/source/SYNTH_VERS_DOCS_S5_REVISED.pptx` | source | `7b7d85506621b886cee5ec7ab0d57aae64d3f12e589c8e4843b1cbcd82d925cc` | 2026-09-20 |
| `documents/supporting/SYNTH_VERS_DOCS_S5_ORIGINAL.pptx` | supporting | `82610a45cedc59a2344baf4d783da9481c7b7093f34d6bd9b3dc397bc411ece8` | 2026-09-20 |
| `skills/version-compare/Skill.md` | skill — live copy, current version (v6) | `2e11a58d5c247ac57a15d336483cf06d7fdf63ea7e1c73c4c93f1543b8513497` | 2026-09-20 (recorded post v5→v6 enhancement from this same run) |

All 12 twin slide files under `actuals/version-compare/SYNTH_VERS_DOCS_S5_REVISED/twin/SYNTH_VERS_DOCS_S5_REVISED/`
and 11 twin slide files under `.../twin/SYNTH_VERS_DOCS_S5_ORIGINAL/` were built from the
two document digests above. All 12 findings files under
`findings/version-compare/SYNTH_VERS_DOCS_S5_REVISED/` were built from those twin slides under
the skill digest recorded above.

### Verdict

**ACCEPTED DELIVERABLE.** `reports/version-compare/SYNTH_VERS_DOCS_S5_REVISED/Report.md` and
`findings/version-compare/SYNTH_VERS_DOCS_S5_REVISED/*.md` are accepted. HITL review complete and
signed per `HITL/version-compare/SYNTH_VERS_DOCS_S5_REVISED/MANUAL_VALIDATE.md` (Reviewer: Prathapan C,
2026-09-21).
