---
document: bootstrap.md
role: shared, sample-agnostic and use-case-agnostic execution framework for processing
  source and supporting documents — orchestration and execution layer only, never tied to
  any sample, document, or use case
state: living document — amended only through the change protocol in §11
version: 17
last-amended: 2026-09-29
export-directory: .   # VARIABLE — the project root this bootstrap governs; override per
                        # deployment, never hardcode a machine- or project-specific path
---

# Lippy Archive — bootstrap

This file is a **shared, sample-agnostic execution framework** for processing source and
supporting documents. It is not tied to any specific sample, document, or use case. Any
example that appears below (a use case name, a sample name, a file path, a command
invocation) is a **variable/example only** — it illustrates shape, not content, and
introduces no assumption about any particular sample or use case.

**The structure below is organized around the sample, not the use case.** A *use case*
(`drawing-comparison`, `bom-extraction`, and so on) is a skill: a reusable set of judging
rules that many samples can share. A *sample* is one concrete job — one source document
(or document set) run through one use case's skill — and it is a sample, not a use case,
that owns its own self-contained **top-level folder**, named after itself, sitting
directly at the project root beside `bootstrap.md`, `skills/`, and `templates/` (§12) —
never nested inside an intermediate grouping folder shared by every sample. This means
the exact same generic folder shape is reused for every sample, whichever use case it
belongs to, and onboarding a new use case never requires inventing a new directory layout
— only a new skill under `skills/` and, as samples arrive for it, a new top-level folder
per sample, in the one shape this file already defines.

All use-case-specific behavior is **dynamically resolved from `fileIndex.md`** — the
registry of every sample currently onboarded, and the skill each one points at
(`skills/<usecase>/skill.md`). The same `bootstrap.md` supports any number of different
use cases and any number of samples per use case by changing only `fileIndex.md`'s
registry, the documents inside each sample's own `<sample>/documents/`, and which
skill/version a sample's entry references — never by editing this file.

## 1. Source and supporting document context

| Role | Meaning |
|---|---|
| **Source document** | The response/current document that needs to be analyzed, compared, transformed, or evaluated. |
| **Supporting document** | The base/reference document used to provide context, rules, expected structure, historical information, or comparison criteria for the source document. |

This terminology and the processing logic built on it hold regardless of use case: the
same framework applies whether the source is a contract revision, a report awaiting review against a
template, a dataset awaiting reconciliation against a prior period, or any other
document-judgment task — the skill resolved for that use case defines what "analyzed,
compared, transformed, or evaluated" concretely means; this file only defines the roles.

**Any file format is accepted** for a source or supporting document — PDF, DOCX, PPTX,
XLSX, CSV, plain text, or any other format a document may arrive in. This file never
hardcodes a supported-format list; the examples above are illustrative, not exhaustive,
and adding a new format to this project never requires editing this file. Format only
determines *how* a document's content is extracted into its twin (§12) — a paginated
document's unit of location is a page, a spreadsheet's is a sheet, a slide deck's is a
slide, a tabular file's is a row, and so on — never *whether* the document can be
processed at all. The extraction approach for a given format is a `NORMALIZE`/`PLAIN`
concern (§5), resolved dynamically per document, not a rule that lives in this file.

## 2. `file-index` as the sample registry

`fileIndex.md` is a **list of entries**. Each entry is one sample — one concrete job, one
source document (or document set) run through one use case's skill — and provides exactly:

- the sample's own name,
- the use case (skill) it belongs to,
- the path(s) to the source document(s),
- the path(s) to the supporting document(s),
- and the path to the applicable skill file.

**One entry per sample.** `sample_name` is the unique key across the list — two entries
never share a `sample_name`, even if they share a `use_case_name`. Many samples routinely
share the same `use_case_name`: that is the normal, expected shape of a use case with more
than one sample processed under it, not a special case. Onboarding a brand-new sample
means appending a new entry — never editing another sample's entry to do it, and never
replacing the whole file with just the new one. Retiring a sample from active work is a
retention decision (logged per §16 rule 12), never a silent deletion of its entry.

**A sample's `source_document_path` and `supporting_document_path` point inside that
sample's own folder**, `<sample_name>/documents/source/` and
`<sample_name>/documents/supporting/` (§12) — never a location shared with another
sample's documents, even when two samples happen to process the same use case or a
visually similar document. Each is normally a single path; see below for the rare
multi-file case.

- A single source path + a single supporting path is one sample (the default, most common
  shape).
- **`supporting_document_path: "n/a"`** (this exact literal string, never a path) declares
  a genuine single-document sample — a task shape whose skill (`skill_file_path`) reads
  and processes only the source document, with no second document to compare, align, or
  evaluate against at all. This is not the same fact as an *unresolvable* path (a real
  supporting document expected but missing, which is a `RESOLVE` failure per below) — it
  is a declaration that the skill's own shape has no supporting-document role to fill.
  `skill_file_path`'s own front matter must declare this explicitly via a
  `document-pairing: single-document` field (see `skills/bom-extraction/skill.md` for the
  real example this rule was written against) before `"n/a"` is accepted; `RESOLVE` blocks
  with `<UNRESOLVED: supporting_document_path is "n/a" but skill_file_path does not
  declare a single-document shape>` otherwise, so this can never be used to silently skip
  a supporting document a skill actually expects.
- **`source_document_path` or `supporting_document_path` may be a list of paths** only
  when a single sample's own job genuinely spans more than one physical file processed
  together as one unit (e.g. several supporting reference documents for one source) — not
  for "several separate jobs sharing one base document," which is modeled as separate
  sample entries instead (below). A list of source paths + a list of supporting paths of
  **different, non-1 lengths** is a configuration error — `RESOLVE` blocks with
  `<UNRESOLVED: source/supporting path counts do not pair (N vs. M)>` rather than guessing
  an intended pairing.

**What used to be "several bid responses evaluated against one shared base document," as
one `fileIndex.md` entry with a list of source paths, is now several sample entries** —
one per response — each with its own `sample_name`, its own `<sample_name>/`
folder, and (if the base document is identical across them) its own copy of that
supporting document under its own `documents/supporting/`. This is a deliberate
consequence of the sample being the unit that owns a self-contained folder (§12): each
comparison is its own job with its own findings, report, and manifest, and giving each one
its own sample entry keeps that true in `fileIndex.md` as well, instead of hiding several
independent jobs inside one entry's list-valued field.

Paths and document selections in `fileIndex.md` are **variables/configuration**, never
hardcoded in this file. `bootstrap.md` never names a directory, filename, or document
example as if it were real input — every concrete path referenced anywhere in this file is
notation for "wherever `fileIndex.md` currently points."

**Selecting which entry a command acts on:** when `fileIndex.md` holds exactly one entry,
every command resolves against it with no argument needed. When it holds more than one
entry, a command that needs to resolve a single sample takes that sample's name as its
argument (e.g. `START AD-3010-C-330030-SHT-004-REV4`, `RESOLVE bid-response-3`) — omitting
it when more than one entry exists is itself an `<UNRESOLVED: multiple samples configured;
specify which one>` block, never a silent default to "the first entry" or "the
last-edited entry." A command that is meant to act across every sample of one use case
(rather than one sample) takes that use case's name instead, prefixed so the two forms are
never ambiguous (e.g. `MANUAL VALIDATE --use-case drawing-comparison`); see each command's
own definition in §5 for whether it resolves by sample or by use case.

The bootstrap process, for every resolved sample entry, must:

1. Read the source and supporting document location(s) from that entry's
   `source_document_path` and `supporting_document_path`.
2. Identify the applicable documents from those configured locations.
3. Determine which use case/skill applies — read directly from that entry's
   `use_case_name` and `skill_file_path` fields (the skill version is whatever
   `skill_file_path`'s own front matter states — not a separate `fileIndex.md` field).
   Confirm `use_case_name` matches `skill_file_path`'s parent directory name under
   `skills/` before proceeding — see `RESOLVE` in §5.
4. Refer to the corresponding `skills/<usecase>/skill.md` (i.e. `skill_file_path`) for
   processing instructions.
5. Generate findings based on the applicable skill's instructions, into that sample's own
   `<sample_name>/` folder (§12).

Each entry holds **only these five fields** — `sample_name`, `use_case_name`,
`source_document_path`, `supporting_document_path`, `skill_file_path` — and nothing else,
no use-case-specific or sample-specific processing logic. (A field being list-valued per
the pairing rules above does not add a sixth field — it is still exactly the same
`source_document_path`/`supporting_document_path` field, just holding more than one
value.) Governance fields (state, sign-off, retention, classification), sample context,
and the digest ledger live in that sample's own `<sample_name>/manifest.md`, never
in `fileIndex.md`. See §13.

A sample not yet migrated into this framework's per-sample top-level-folder layout (§12)
— during the transition — may
instead carry a `layout: legacy` field alongside its four other fields, with
`source_document_path`/`supporting_document_path` pointing at wherever that sample's
documents actually still live; `RESOLVE` honors this without error, but `VALIDATE` flags
it as an open item until the sample is migrated. No new sample is ever onboarded directly
as `layout: legacy` — that marker exists only for samples already in flight when this
schema changed, never as a shortcut for new work.

## 3. Strict document scope

Only process and generate output for the documents **explicitly configured** in
`fileIndex.md`. Do not:

- automatically process unrelated documents present in another sample's own folder or
  anywhere else in the repository;
- generate findings for documents outside the configured scope;
- infer additional documents that were not specified in `fileIndex.md`;
- mix documents from different samples unless a single sample's own entry explicitly
  configures a multi-file job (§2);
- generate outputs for every sample merely because multiple samples' documents happen to
  be present in the repository — only the one(s) `fileIndex.md` currently selects, or
  that a use-case-scoped command's own definition says act on every sample of that use
  case (§2).

Each selected sample is processed using its own use case's skill — never a skill
belonging to a different use case, and never a blend of two.

A source document is placed under `<sample_name>/documents/source/` and a
supporting document under `<sample_name>/documents/supporting/` — never the other
way around, never both directories holding copies of the same file under different roles,
and never under another sample's folder. This placement is consistent for every sample;
`fileIndex.md`'s `source_document_path`/`supporting_document_path` point into these
directories, and the bootstrap recognizes newly added files dynamically through those
pointers, not by scanning the directories for whatever happens to be present. A document
genuinely needed by more than one sample is placed under each referencing sample's own
`documents/source/` or `documents/supporting/` (a real, deliberate copy per sample, since
each sample's folder is self-contained) — `fileIndex.md`'s explicit path is always what
selects it, never a shared location inferred from filename match.

## 4. Skill-driven findings

All findings are generated according to the relevant `skills/<usecase>/skill.md`. The
bootstrap framework:

- identifies the applicable use case from the configured input (`fileIndex.md`);
- loads the corresponding skill's instructions;
- extracts the required findings from the source and supporting documents per that
  skill's workflow;
- applies the skill's rules, comparison logic, and domain-specific instructions exactly
  as written, without reinterpreting or supplementing them here;
- keeps findings phrased in a structure that holds across samples, never hardcoding a
  particular sample's content into this file.

`bootstrap.md` is the **orchestrator**. `skills/<usecase>/skill.md` is the **source of
truth** for how findings are generated. If this file ever contains judging logic,
verdict definitions, or domain rules, that is a defect — move it into the applicable
skill.

## 5. Terminal commands

Execution is command-driven. Every command name is written in **CAPITAL LETTERS**. The
command given determines what operation the bootstrap performs, always against the
configuration currently resolved from `fileIndex.md` — never against a fixed example.
Every command below is sample-agnostic and use-case-agnostic: none take a sample name,
use case, document name, or skill version as a hardcoded argument — all of that is
resolved from `fileIndex.md` at the moment the command runs, so the same command set
applies to any sample under any use case.

**All commands are manual.** `bootstrap.md` never automatically executes a command —
not `START`, not any command `START` itself composes, not any command at all. A command
runs only when explicitly invoked; this file defines and documents each command's
behavior but never triggers one on its own initiative (e.g. on file changes, on a new
`fileIndex.md` configuration being written, or as a side effect of running a different
command beyond what that command's own definition composes). See non-negotiable rule 14.

| Command | Description |
|---|---|
| **`START`** | Start execution of the full `bootstrap.md` workflow for one resolved sample: read configuration → resolve documents → normalize → judge → enhance the skill → report → validate → manually validate (§6's execution flow). Composes `RESOLVE` → `NORMALIZE` → `JUDGE` → `ENHANCE-SKILL` → `REPORT` → `VALIDATE` → `MANUAL VALIDATE` in sequence for that one sample — `ENHANCE-SKILL` runs against the sample `JUDGE` just produced findings for, and `MANUAL VALIDATE` runs against the sample `REPORT`/`VALIDATE` just produced output for, every time, not only on some; this is part of `START`'s own defined behavior (§16 rule 16), not a separate automatic trigger. |
| **`RESOLVE`** | Read `fileIndex.md`; select the sample entry to resolve (§2 — implicit if there's exactly one entry, otherwise the sample-name argument this command was given, blocking with `<UNRESOLVED: multiple samples configured; specify which one>` if omitted); confirm that entry's `sample_name`, `use_case_name`, `source_document_path`(s), `supporting_document_path`(s), and `skill_file_path` are all set and every listed path resolves to an existing file — except `supporting_document_path: "n/a"` (§2), which resolves only if `skill_file_path` declares a single-document shape, blocking with `<UNRESOLVED: supporting_document_path is "n/a" but skill_file_path does not declare a single-document shape>` otherwise; confirm `use_case_name` matches `skill_file_path`'s parent directory name under `skills/` — if they disagree, block with `<UNRESOLVED: use_case_name "<value>" does not match skill_file_path's directory "<value>">` rather than silently preferring one over the other; confirm list-valued source/supporting paths pair per §2's rules, blocking only the pair(s) that fail. Produces a confirmation, or a list of `<UNRESOLVED: reason>` fields blocking the affected pair(s). First step of every run. |
| **`NORMALIZE`** | Build the full actuals twin layer for the resolved sample's source and supporting documents under `<sample>/actuals/` (§12): per-unit twin extraction (a page for a paginated document, a sheet for a spreadsheet, a slide for a presentation, a row for a tabular file, or whatever unit fits the resolved document's actual format — never hardcoded to one format), the derived read-through, the section/unit map, `detection.md`, and `plan.md` — scoped to this sample alone, never mixed with another sample's actuals. |
| **`PLAIN`** | Extract the twin from the actual/source document without applying unnecessary transformation or interpretation — a raw extraction pass only (per-page/per-unit extraction into `<sample>/actuals/twin/`), stopping short of detection, planning, or judgment. The exact extraction logic (what counts as a "unit," how a page or section is delimited) stays format-neutral and is determined by the applicable skill/use case (§4) — `PLAIN` only controls *how much* of the pipeline runs, not *how* extraction is done for a given document type. |
| **`JUDGE`** | Apply the resolved skill (`skill_file_path`) to every unit in `<sample>/actuals/plan.md`, producing `<sample>/actuals/findings/<unit>.md` and `<sample>/actuals/graph.md`. |
| **`OBSERVE`** | Record a noticed pattern against the resolved use case's pattern log (`skills/<usecase>/patternLog.md`), without changing the skill itself. |
| **`ENHANCE-SKILL`** | Analyze the current sample against the resolved skill, identify new/changed/conflicting knowledge, and — for whatever clears the promotion bar (§8.2) — generalize it into the skill: preserve what's valid, refine or generalize what a broader pattern now supersedes, never append raw sample context (§8.1). Snapshot the current skill to `skills/<usecase>/skill-versions/` first, edit the live `skill_file_path` in place, bump its front matter `version` field, then validate the change against every other sample already processed under that use case (§8.4) before the versioning procedure (§9) is complete. |
| **`REPORT`** | Assemble a report from the resolved sample's findings only (`<sample>/actuals/findings/` → `<sample>/actuals/report/report.md`) — never findings belonging to a different sample. |
| **`VALIDATE`** | Run the resolved sample's validation checklist (`<sample>/manifest.md`), checking it against `fileIndex.md` and that sample's own `prompting.md`, producing an updated verdict for that sample. |
| **`SKILL CHANGE <version_number>`** | From the findings already generated using the current skill, extract the information that corresponds to skill version `<version_number>`: what that version's rules were (from `skills/<usecase>/skill-versions/v<version_number>.md` if not the current live version, or the live `skill_file_path` if it is), how they differ from the version immediately before it (per that version's promotion-bar record in `skills/<usecase>/patternLog.md`), and — where resolvable — which current findings, across every sample of that use case, were produced under that version versus a later one. `<version_number>` is a variable supplied with the command, never a hardcoded value in this file. |
| **`EXPORT`** | Export the full directory configured in this file's `export-directory` front-matter field, including its complete directory structure and all applicable files generated or maintained by the bootstrap workflow. See the diagram and rules below. |
| **`LOG`** | Prepend a full-detail entry recording what a prior command did to the top of the resolved sample's own `prompting.md` (per §10). Invoked after every command that creates or changes a file. |
| **`MANUAL VALIDATE`** | Record a human-in-the-loop (HITL) reviewer's manual validation of the generated documents and outputs for one, several, or (with no argument) **every** configured sample, without touching document content. Composed automatically by `START`, every run, for the sample it just processed (§6) — see "`MANUAL VALIDATE` in detail" below for its multi-sample scoping, which overrides §2's single-entry default. |

### `MANUAL VALIDATE` in detail

**Scope (overrides §2's default for this command only):**

- **No argument** — `MANUAL VALIDATE` acts on **every sample currently configured in
  `fileIndex.md`**, one at a time, not just the single entry §2 would otherwise assume.
  This is the one command where "no argument" means "all," not "the lone entry" or an
  `<UNRESOLVED: multiple samples configured>` block.
- **One or more sample names given** (e.g. `MANUAL VALIDATE AD-3010-C-330030-SHT-004-REV4`)
  — acts only on the named sample(s). Any named sample that does not match an entry in
  `fileIndex.md` blocks with `<UNRESOLVED: sample "<name>" not found in fileIndex.md>` for
  that name only; it does not block validation of the other named (or, in the no-argument
  form, other configured) samples.
- **`--use-case <name>` given instead** — acts on every sample currently configured whose
  `use_case_name` matches, without needing to name each one.
- When composed automatically by `START` (below), the scope is always the single sample
  `START` itself just resolved and ran — never "all samples" — since `START` only ever
  processes the one sample it resolved for that run.

**For each sample in scope** currently carrying generated output:

1. Act as a human reviewer reviewing the applicable generated documents and outputs for
   that sample — the twin, findings, and report artifacts already produced under
   `<sample>/actuals/`.
2. Mark those documents as manually reviewed and validated, without modifying their
   content — the validation record (below) is the evidence of review; the underlying
   document is never edited merely to indicate it was reviewed.
3. Write a **HITL validation record** to `<sample>/HITL/manualValidate.md`,
   containing at minimum:

   ```text
   Reviewer      : Prathapan C
   Validation    : MANUAL VALIDATE
   Status        : VERIFIED
   Date          : <execution-date>
   Time          : <execution-time>
   Use Case      : <use-case-name>
   Sample        : <sample-name>
   ```

   `<execution-date>` and `<execution-time>` are always the actual date/time the command
   was executed — read at execution time, never hardcoded and never backfilled.
   `<use-case-name>` and `<sample-name>` are always that entry's `use_case_name` and
   `sample_name`, never a fixed example.
4. New validations for the same sample **append** to `<sample>/HITL/manualValidate.md`
   rather than overwrite a prior record — the file is an auditable history of every manual
   validation performed for that sample, oldest to newest.
5. Log the invocation per §10 (prepend a full-detail entry to that sample's own
   `prompting.md` — a multi-sample invocation logs a separate entry in each affected
   sample's own file, never one shared entry, per §12's isolation).

**Composed by `START` (§6):** every `START` run, after `VALIDATE` completes, automatically
runs `MANUAL VALIDATE` for the sample `START` just processed — every time, not
conditionally. This is part of `START`'s own defined composed behavior (§16 rule 16), not
an independent automatic trigger. `MANUAL VALIDATE` remains additionally invokable on its
own, standalone, at any time, with the multi-sample scoping above.

`MANUAL VALIDATE` records that a human reviewed and signed off on already-generated
output; it never generates, judges, or alters findings itself.

### `EXPORT` in detail

```text
EXPORT
  ↓
Read export directory from bootstrap.md (front matter: export-directory)
  ↓
Resolve configured directory
  ↓
Collect complete directory contents
  ↓
Preserve directory structure
  ↓
Export the full directory
```

The export operation:

- resolves the export directory from the configurable `export-directory` value in this
  file's front matter — never a hardcoded directory or filename;
- exports the **entire directory**, not only individual output files;
- preserves the directory structure exactly (`skills/`, `templates/`, every sample's own
  top-level folder, and the root-level config/decision files together, in their existing
  layout, §12);
- includes all applicable generated artifacts, configuration files, skill files,
  findings, logs, and other files present within the configured directory;
- treats the configured directory as a variable, so the same command works across
  different projects, use cases, and samples without modification to this file.

## 6. Execution flow

```text
Terminal Command
       ↓
bootstrap.md
       ↓
Read file-index
       ↓
Resolve Source Documents
       ↓
Resolve Supporting Documents
       ↓
Resolve Applicable Use Case
       ↓
Load Corresponding skills.md
       ↓
Apply Skill Instructions
       ↓
Generate Findings
       ↓
Enhance Skill (ENHANCE-SKILL, §8) — every sample, not only some
       ↓
Apply Command-Specific Operation
       ↓
Generate / Export Output
       ↓
Manual Validate (MANUAL VALIDATE, §5) — every sample, not only some
```

`START` runs this flow to completion, which means every `START` run enhances the skill
against the sample it just judged — not conditionally, and not only for a sample that
happens to surface something new; a sample that surfaces nothing promotable still gets a
`patternLog.md` entry recording that (§8.1, §8.3). Likewise, every `START` run finishes by
running `MANUAL VALIDATE` for the sample it just produced output for — not conditionally,
and not only for some samples — recording the HITL sign-off before the run is considered
complete. `PLAIN` stops after normalization (before "Apply Skill Instructions"). `SKILL
CHANGE <version_number>` re-enters partway through, reading already-generated findings
rather than regenerating them. `EXPORT` bypasses document resolution entirely and operates
on the configured directory as a whole (§5).

## 7. Generic variable-based design

Every configurable value below is a variable, resolved at execution time from
`fileIndex.md` (or, for `export-directory`, from this file's own front matter) — never
embedded in this file as a sample-specific filename, path, document name, finding, or
expected output.

| Variable | Resolved from |
|---|---|
| Sample | `fileIndex.md`'s `sample_name` |
| Source document directory | `fileIndex.md`'s `source_document_path` |
| Supporting document directory | `fileIndex.md`'s `supporting_document_path` |
| File/document selection | `fileIndex.md` (the five configured fields — nothing else is in scope, §3) |
| Use case | `fileIndex.md`'s `use_case_name` |
| Skill path | `fileIndex.md`'s `skill_file_path` |
| Skill version | the resolved skill file's own front matter `version` field — never duplicated into `fileIndex.md` |
| Requested command | the terminal invocation (`START`, `PLAIN`, `SKILL CHANGE <version_number>`, `EXPORT`) |
| Output location | the standard directory architecture (§12) |
| Export directory | this file's front matter (`export-directory`) |
| Processing mode | the requested command (full run vs. extraction-only vs. version-audit vs. export) |

## 8. Progressive skill enhancement — analysis, generalization, and the promotion bar

**Core requirement:** `skills/<usecase>/skill.md` must become progressively more
complete, accurate, and applicable across samples as additional samples are processed — never merely
appended to, never left dependent on a single sample, and always applicable to both
every previously processed sample and every newly introduced one.

### 8.1 What happens whenever a new sample/document is introduced

This is required processing for every new sample, not an optional step:

1. **Analyze the new sample against the existing `skills/<usecase>/skill.md`** — read
   the current skill in full before judging, not just enough to get started.
2. **Identify new patterns, rules, structures, edge cases, exceptions, and
   domain-specific insights** the sample surfaces, whether or not the skill already
   handles them correctly. Record each as an observation in
   `skills/<usecase>/patternLog.md` (§8.3), including observations that turn out to
   already be covered — a confirmed-but-unpromoted or already-covered observation is
   still logged, not discarded silently.
3. **Check each observation against the promotion bar** (§8.2). Only a promoted
   observation may change `skills/<usecase>/skill.md`.
4. For every promoted observation, **enhance the existing skill with generalized
   knowledge that holds across samples** — never with the new sample's specific names,
   values, or structure:
   - **Preserve** existing instructions that remain valid as they stand.
   - **Update, refine, or generalize** an existing instruction when the new sample
     reveals a better or broader pattern than the one currently written — replace the
     narrower wording, don't leave both the old and new phrasing side by side.
   - **Remove or generalize** any sample-specific assumption an existing instruction
     turns out to have been carrying, once a broader pattern makes that assumption
     visible.
   - **Never simply append** the new sample's context, terminology, or examples to the
     skill file — every addition must be phrased as a rule that would read as true for
     a sample nobody has seen yet.
5. **Validate the enhanced skill against previous samples as well as the new one**
   (§8.4) before treating the enhancement as complete.

Do not hardcode sample-specific filenames, document names, values, entities, or expected
outputs anywhere in this process's output — every insight promoted into the skill must be
stated at the level of a rule, per §13's "what belongs where" test.

```text
Existing skills/<usecase>/skill.md
        ↓
New sample/document
        ↓
Compare new sample against existing skill
        ↓
Identify new / changed / conflicting knowledge (log in patternLog.md)
        ↓
Check against the promotion bar (§8.2)
        ↓
Generalize cross-sample insights (never append sample context)
        ↓
Enhance existing skills/<usecase>/skill.md (preserve what's valid, refine what's narrow)
        ↓
Validate against previous samples' findings AND the new sample (§8.4)
        ↓
Updated skills/<usecase>/skill.md, still holding across every use case's samples
```

### 8.2 The promotion bar — avoiding overfitting

An observation in a `patternLog.md` may be promoted into `skills/<usecase>/skill.md` only
when at least one of the following holds. Otherwise it stays logged as sample-specific and
the live skill file is left untouched.

1. **Cross-sample confirmation** — the same pattern was independently observed in two or
   more samples that do not share an author, template, or origin.
2. **Explicit generalization by the user** — the user directly states the rule should
   apply beyond the current sample.
3. **Structural necessity** — the pattern follows from the use case's own definition
   regardless of sample count.

A single sample's document structure, numbering scheme, or business terms are never, by
themselves, sufficient to become a skill rule. Multiple samples belonging to the **same
use case never produce separate skill files** — every sample under a given use case is
reference material that feeds the *same* evolving skill; only a pattern that genuinely
holds beyond one sample, once promoted, earns a new version of it.

### 8.3 The pattern log — where every observation is recorded

`skills/<usecase>/patternLog.md` is the ledger `ENHANCE-SKILL` and every JUDGE pass read
and write. Record, for every observation:

- which sample it was observed in, and how many independent samples now show it;
- the promotion-bar check against each of §8.2's three conditions;
- the decision (promoted / not-promoted / already-covered) and why;
- if promoted, which skill version it produced.

An observation that is "already covered by an existing rule" is exactly as valuable to
log as one that changes the skill — it is evidence the skill already generalizes
correctly, and it stops a future sample from re-triggering the same analysis from
scratch.

### 8.4 Validating an enhancement against previous samples

Before treating a promoted enhancement as complete:

- Re-read every previously processed sample's existing findings that the changed rule
  touches. The enhancement must not contradict a verdict already recorded for a prior
  sample under a wording that the new, more general rule would have produced the same
  way — if it would produce a *different* verdict, the enhancement is not actually a
  generalization, it is a behavior change, and the affected prior sample's findings must
  be flagged for re-judgment (logged in `skills/<usecase>/patternLog.md` and in that prior
  sample's own `prompting.md`), not silently left stale.
- Confirm the new/updated rule, read on its own, is stated broadly enough to apply to
  a sample that has not yet been seen — not just precisely enough to fit the sample that
  prompted it.
- Only after this check does the enhancement's `skills/<usecase>/patternLog.md` entry
  (§9, step 3) get marked complete.

## 9. Skill versioning

`skills/<usecase>/skill.md` is the **only live copy** of a use case's skill.
`skills/<usecase>/skill-versions/` holds an **immutable history** of every version that
file has ever held, scoped to that one use case — never shared with another use case's
version history. Any material change requires, in order:

1. **Copy the current `skills/<usecase>/skill.md` to
   `skills/<usecase>/skill-versions/v<N>.md` first** — this snapshot is immutable from the
   moment it is written and is never edited or overwritten afterward.
2. Edit `skills/<usecase>/skill.md` in place to incorporate the promoted change(s) per
   §8's process (preserve what's valid, generalize what's narrow, never append raw
   sample context), and bump its front matter `version` field to `<N+1>`.
3. Validate the change against previous samples per §8.4, then record it in
   `skills/<usecase>/patternLog.md`: what gap, from which sample's pattern-log entry,
   what changed, what stayed the same, old version number → new version number, and the
   result of the previous-samples validation (unaffected, or which samples need
   re-judgment). Also note the change, in brief, in the triggering sample's own
   `prompting.md` (§10) — the full versioning record lives in `patternLog.md`, since a
   skill change is a use-case-level event that can bear on every sample under that use
   case, not only the one that prompted it.

No `fileIndex.md` field needs updating for this — `fileIndex.md`'s `skill_file_path`
still points at the same live file; the version number it now serves is read from that
file's own front matter, never tracked separately in `fileIndex.md` (§2).

Non-material edits (typo fixes, clarifying wording without changing behavior) do not
require a new version but are still logged. `SKILL CHANGE <version_number>` (§5) is the
read path for this history; this section is the write path.

## 10. Prompt log — the traceability requirement

Every event that creates or changes a file must be logged, in full, at the time it
happens — never reconstructed later from memory. Which log it goes in depends on what the
event is about, per the same test as §13:

- **An event scoped to one sample's own documents, twin, findings, or report** — logged in
  that sample's own `<sample>/prompting.md`, never in another sample's.
- **An event that changes a skill itself** (enhancement, versioning, a pattern-log entry)
  — logged in that use case's own `skills/<usecase>/patternLog.md` (§8.3, §9), and briefly
  cross-noted in the triggering sample's `prompting.md` so that sample's own history stays
  complete.
- **An event that is genuinely cross-sample or cross-use-case** (a settled dispute, a
  citation correction bearing on more than one sample) — logged in the root `pivot.md`
  (§12), tagged with every sample it bears on.

Each of these logs is maintained in **descending chronological order**: the most recent
execution/prompt is always at the **top**, older entries below it. New entries are always
**prepended**, directly under the file's header — never appended below older entries. Each
sample accumulates its own complete, independent `prompting.md` this way; there is no
cross-sample merged log of sample-scoped events.

Every entry records, at minimum: timestamp (date and time), the command/prompt provided,
the generated output, the reason for the generated output, a brief explanation of how the
output was generated, the model used, the relevant skill/version used, and any other
execution metadata needed to reproduce or understand the result. Do not omit a required
item; write "not applicable" with a one-clause reason instead.

## 11. Amending this file

This file changes rarely and only through the same discipline it imposes on skills: a
change must be justified by something true across every use case and every sample, not by
one sample's needs. Since this file itself is not sample- or use-case-scoped, every
amendment is recorded as an entry in the `prompting.md` of whichever sample's run prompted
the amendment (or, if none did, the most recently active sample's `prompting.md`),
recording what changed and why, with the previous version diff-able from that entry.

## 12. Directory architecture

**Every sample gets its own, completely self-contained folder at the project root** —
directly beside `bootstrap.md`, `skills/`, and `templates/`, never nested inside an
intermediate grouping folder shared by every sample — keyed by `<sample>`, the exact
string in `fileIndex.md`'s `sample_name` field for that entry. This mirrors the shape a
single-sample archive already has on its own (its whole root *is* its one sample) and
generalizes it to hold many samples side by side: every sample's own folder looks exactly
like the diagram below, differing only in its *content*, never its *layout* — this is the
direct structural expression of §16 rule 20. Only `skills/` is organized by use case
instead of by sample, since a skill is shared across every sample that uses it, not owned
by any one of them.

```text
Lippy Archive/
│
├── bootstrap.md            THIS FILE — sample-agnostic and use-case-agnostic, never changes per use case or sample
├── fileIndex.md           the sample registry — one entry per sample: sample name, use case, source path, supporting path, skill path (§2)
├── pivot.md                cumulative decision log — disputes settled, rules clarified, citations corrected, each entry tagged with the sample(s) it bears on (cross-sample by design)
│
├── templates/               blank skeletons for every file a sample owns — copy, fill, and validate before treating a sample as onboarded (§12.1)
│   ├── detection.md
│   ├── plan.md
│   ├── graph.md
│   ├── twinPage.md
│   ├── sectionMap.md
│   ├── finding.md
│   ├── report.md
│   ├── manifest.md
│   ├── prompting.md
│   ├── manualValidate.md
│   └── readMe.md
│
├── <sample>/                              one self-contained top-level folder per sample — never shared, never mixed with another sample's; as many of these as there are onboarded samples, each a sibling of this one
│   ├── documents/
│   │   ├── source/                        this sample's own source document(s)
│   │   │   └── <source-document-name>.ext
│   │   └── supporting/                    this sample's own supporting document(s), or absent entirely when supporting_document_path is "n/a"
│   │       └── <supporting-document-name>.ext
│   ├── actuals/
│   │   ├── twin/
│   │   │   ├── <document>/<unit>-###.md   unit name matches the document's own format:
│   │   │   │                              page-### (paginated), sheet-<name> (spreadsheet),
│   │   │   │                              slide-### (presentation), row-### (tabular/CSV),
│   │   │   │                              or whatever unit fits a format not listed here
│   │   │   ├── derived/<document>.md
│   │   │   └── sectionMap.md
│   │   ├── detection.md
│   │   ├── plan.md
│   │   ├── graph.md
│   │   ├── findings/
│   │   │   └── <unit>.md                  one findings file per unit, scoped to this sample alone
│   │   └── report/
│   │       └── report.md                  this sample's rollup report — never shared, never mixed
│   ├── HITL/
│   │   └── manualValidate.md              append-only HITL validation record (§5's `MANUAL VALIDATE`) — one entry per manual validation performed, oldest to newest, never overwritten
│   ├── manifest.md                        validation gate for this sample — governance fields, sample context, the digest ledger, and the checklist, all scoped to this one sample (§13)
│   └── prompting.md                       this sample's own instruction/event log (§10)
│
└── skills/
    └── <usecase>/
        ├── skill.md              the LIVE, current skill for this use case — no sample facts
        ├── patternLog.md        observations from every sample processed under this use case, and whether each was promoted
        └── skill-versions/       immutable history for THIS use case only — a snapshot written before every enhancement, never overwritten
            ├── v1.md             first version's snapshot
            ├── v2.md             snapshot taken before the enhancement that produced the current live skill.md
            └── vN.md             one snapshot per version this use case's skill has ever had
```

**`<sample>`** is `fileIndex.md`'s `sample_name` for that entry, verbatim — the name of
that sample's own top-level folder, and the only key a sample's own output is ever nested
under; there is no second-level document-name key the way older revisions of this file
used, and no shared grouping folder either, because one sample already *is* one document
(or document set) — nesting it under a document name, or under a folder shared by every
other sample, would both be redundant. **`<usecase>`** is that same entry's
`use_case_name`, used only under `skills/`, since many samples share one use case's skill.
Every command that writes to a sample's folder resolves `<sample>` from `fileIndex.md`'s
current `sample_name` and writes only under that exact top-level `<sample>/` path — never
into another sample's folder, never merging two samples' output into one.

`<sample>/documents/source/` and `documents/supporting/` follow the same per-sample
isolation as every other part of that sample's folder (§16 rule 17): each sample holds its
own source and supporting documents in its own subtree (a source document is never placed
under that sample's `supporting/` or vice versa, and a document is never removed just
because `fileIndex.md` currently points elsewhere). Nothing is ever inferred from a
sample's document pool (§3) — only `fileIndex.md`'s explicit paths select a document, and
its `sample_name` determines which top-level folder both the document and the resulting
output land in. A document genuinely needed by more than one sample is placed once under
each referencing sample's own subtree — never in one shared location two `fileIndex.md`
entries both point into. The project root accumulates one such top-level folder per
sample that has ever been onboarded — processing a new sample, or a new use case's first
sample, does not overwrite or remove another's, and does not require any change to
`bootstrap.md`, `skills/` for a different use case, or any other sample's folder.
`skills/<usecase>/` (that use case's live `skill.md`, its `patternLog.md`, and its
immutable history in its own `skill-versions/`) persists and accumulates the same way, one
complete, independent tree per use case, shared by every sample that names it. `pivot.md`
at the root is the one cumulative log kept cross-sample by design (appended to, never
truncated) since a settled dispute or citation correction can bear on more than one
sample. `bootstrap.md` is never rewritten for a sample or a use case; it is the fixed
orchestration layer every sample runs through. This whole tree, rooted at
`export-directory`, is what `EXPORT` (§5) copies.

### 12.1 `templates/` — starting a sample from a skeleton

`templates/` holds one blank, fully-fielded skeleton per file a sample owns (§12's
diagram) — every front-matter field named, no content filled in. Onboarding a new sample
means copying the relevant skeletons into its new top-level `<sample>/` folder, filling
them in as the pipeline runs, never inventing a front-matter field that isn't already
named in the matching template (extending a template itself is a `bootstrap.md` change,
subject to §11's discipline, since the shape is sample-agnostic). `templates/` itself is
never a live sample — nothing in it is ever read as if it were real input, and `RESOLVE`
never resolves against it.

Switching which sample is being worked on means rewriting `fileIndex.md` to point at it —
onboarding it as a new top-level `<new-sample>/` folder built from the templates first if
it is genuinely new — it does not mean deleting or overwriting any other sample's folder,
because each lives in its own top-level `<sample>/` directory, fully isolated from every
other, and every other file at the project root (`bootstrap.md`, `skills/`, `templates/`,
`fileIndex.md`, `pivot.md`) stays exactly as it was. The very first time a new
`sample_name` is resolved, its `<sample>/` folder does not yet exist — creating it then,
from `templates/`, as part of the first `RESOLVE`/`NORMALIZE` for that sample, is exactly
the per-sample accumulation behavior described
above happening for a `<sample>` key that has never been seen before, not a special case.
The first sample under a brand-new use case additionally needs that use case's own
`skills/<usecase>/skill.md` written (§8), since `skills/` accumulates by use case, not by
sample. Nothing needs an explicit retention decision for onboarding alone; a retention
decision is only needed if content is to be deleted outright (record that in the affected
sample's own `prompting.md`, or `pivot.md` if it bears on more than one sample, before
deleting anything).

## 13. What belongs where

**`skills/<usecase>/skill.md` may contain:** verdict/label scales, the grain of judgment,
absence handling, judging criteria stated as conditions, prohibitions, and required output
shape — all phrased so they hold for any document pair/set in that use case.

**`skills/<usecase>/skill.md` may never contain:** a business name, a document title, a
specific number that isn't a rule threshold, or example text lifted from one sample
presented as if it were a universal case.

**`fileIndex.md` may contain only:** a list of entries, one per sample, each with exactly
`sample_name`, `use_case_name`, `source_document_path`, `supporting_document_path`,
`skill_file_path` — exactly these five fields, nothing else, though `source_document_path`
and `supporting_document_path` may each be list-valued within an entry per §2's rules for
a single sample's genuinely multi-file job. No skill version, no classification, no
terminology notes, no digests, no sample-specific or use-case-specific processing logic.
It must not restate or override the skill's judging rules — it only points at the sample's
documents and skill.

**`<sample>/manifest.md` may contain:** governance fields, sample context prose,
the digest ledger, and the validation checklist for that one sample — nothing here is ever
sectioned or indexed by document, since the file already belongs to exactly one sample,
and one sample's manifest is never confused with another's. Everything `fileIndex.md`
used to carry beyond its five inputs lives here instead.

**This file (`bootstrap.md`) may contain:** none of the above — only commands, roles, and
structure that hold regardless of use case or sample.

If unsure whether a sentence belongs in the skill, `fileIndex.md`, or a sample's
`manifest.md`, ask,
in order: "Is it a name or path identifying the sample, use case, documents, or skill
file?" → `fileIndex.md`. "Is it a rule that must hold for any input to this use case?" →
skill. "Is it a fact, status, or approval specific to the one sample currently loaded?" →
that sample's own `<sample>/manifest.md`. "Is it true regardless of which skill or
sample is involved at all?" → `bootstrap.md`.

## 14. Confidence and uncertainty

- A rule promoted from a single sample is marked `confidence: provisional` in the skill's
  front matter or pattern-log entry until a second, independent sample confirms it.
- A finding that cannot be judged from the evidence available uses the use case's defined
  absence label — never a guess, never silence.
- A `fileIndex.md` field that cannot yet be resolved is written as `<UNRESOLVED: reason>`,
  never deleted and never guessed; `RESOLVE` must block on it.

## 15. Validation gate

No artifact is an accepted deliverable until:

- Its own sample's `<sample>/manifest.md` checklist is fully checked.
- Any skill change it depended on is versioned per §9.
- Its own sample's `prompting.md` entries are complete per §10.
- HITL review is complete wherever the applicable skill or this file requires it.

## 16. Non-negotiable rules

1. This file is root authority for orchestration; a skill or `fileIndex.md` may not
   contradict it, but this file may never contain use-case-specific logic either.
2. No sample-specific or use-case-specific fact is ever written into this file — it goes
   in `fileIndex.md` (configuration) or the skill (generalized rule).
3. Only the documents explicitly configured in `fileIndex.md` are processed — never an
   inferred, unrelated, or merely-present document (§3).
4. A skill file is only ever changed via the promotion bar (§8.2) and versioning (§9).
5. Historical skill versions in `skills/<usecase>/skill-versions/` are immutable.
6. `skills/<usecase>/skill.md` is the only live copy of a use case's skill.
7. Multiple samples for the same use case enhance that one evolving skill — they never
   produce separate, per-sample skill files.
8. Every generated artifact records which skill and version produced it.
9. Every new sample is analyzed against the existing skill before judging (§8.1) — a
   sample is never processed as if the skill were being written from scratch for it.
10. A skill enhancement is never a raw append of the new sample's context — every change
    to `skills/<usecase>/skill.md` must be phrased so it would read as true for a
    sample nobody has seen yet (§8.1), and must remain applicable to every previously
    processed sample under that use case (§8.4), not just the one that prompted it.
11. Absence is always the use case's defined absence label — never inferred, never
    guessed, never silent.
12. Every file-creating or file-changing event is logged as a **new entry prepended to
    the top** of the correct log per §10's test (a sample's own `prompting.md`, that use
    case's `skills/<usecase>/patternLog.md`, or `pivot.md`) at the time it happens, with
    the full field set from §10 — never appended below older entries, and never logged
    into a different sample's or use case's log.
13. A new sample is onboarded by creating its `<sample>/` folder from
    `templates/` (§12.1), placing its documents under that folder's own `documents/source/`
    or `documents/supporting/`, and appending a new entry to `fileIndex.md` — never by
    deleting or overwriting another sample's files anywhere in the tree. A new use case is
    onboarded the same way for its first sample, plus writing that use case's own
    `skills/<usecase>/skill.md` (§8) — never by copying another use case's skill or
    another sample's folder as a starting point beyond the blank `templates/` skeletons.
14. When uncertain whether something is sample-agnostic, use-case-agnostic, or
    sample/use-case-specific, treat it as specific until the promotion bar is met.
15. `EXPORT`'s directory scope is always `export-directory` as configured in this file's
    front matter — never a hardcoded or assumed path.
16. No command ever runs automatically. `bootstrap.md` documents every command's
    behavior but triggers none of them on its own — a command runs only when explicitly
    invoked, and only that command's own defined behavior executes (§5).
17. Every sample's own top-level folder is scoped first and only by `<sample>` (§12) — no
    command ever writes into a different sample's folder than the one currently resolved
    from `fileIndex.md`. `skills/<usecase>/` is scoped by `<usecase>` instead, since it is
    shared by every sample naming that use case. Nothing is ever mixed, shared, or merged
    across samples, and a skill is never mixed or merged across use cases.
18. No file format is rejected and none is privileged. A source or supporting document
    in any format — PDF, DOCX, PPTX, XLSX, CSV, or any other — is processed by
    resolving the twin unit appropriate to that format (§1, §12); this file is never
    edited to add support for a new format, and a skill may never assume one specific
    format's structure applies to every input.
19. Every `.md` filename created anywhere in this project follows **camelCase** (first
    letter lowercase, e.g., `fileIndex.md`, `patternLog.md`, `sectionMap.md`,
    `01-coverHeader.md`), including files under every sample's own top-level folder and
    under `skills/`. The single
    exception is a filename derived directly from a source or supporting document's own
    identifier (e.g., `twin/derived/<DocName>.md`, where `<DocName>` mirrors the real
    document's name) — that identifier keeps its own casing verbatim, since it names a
    specific document rather than describing project structure. This rule governs
    filenames only; it never requires rewriting the historical content of any
    `prompting.md`, `patternLog.md`, or `skills/<usecase>/skill-versions/` snapshot.
    (Note: `origin/main`'s copy of this file uses capital-first PascalCase for these same
    filenames, e.g. `Bootstrap.md`, `FileIndex.md` — this branch deliberately diverges to
    true camelCase, lowercase first letter, per explicit user instruction on 2026-09-21;
    see the drawing-comparison sample's own `prompting.md`.)
20. Every sample's directory tree under `<sample>/` is structurally identical in
    shape to every other sample's (§12's diagram), whichever use case it belongs to — the
    *content* differs per sample, but never the layout. A new sample, and a new use case's
    first sample, is never given a bespoke directory shape, and this file is never edited
    to special-case one sample's or one use case's structure.
