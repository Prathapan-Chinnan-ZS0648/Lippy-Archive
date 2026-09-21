---
document: bootstrap.md
role: shared, use-case-agnostic execution framework for processing source and supporting
  documents — orchestration and execution layer only, never tied to any sample,
  document, or use case
state: living document — amended only through the change protocol in §11
version: 16
last-amended: 2026-09-21
export-directory: .   # VARIABLE — the project root this bootstrap governs; override per
                        # deployment, never hardcode a machine- or project-specific path
---

# Lippy Archive — bootstrap

This file is a **shared, use-case-agnostic execution framework** for processing source
and supporting documents. It is not tied to any specific sample, document, or use case. Any
example that appears below (a use case name, a file path, a command invocation) is a
**variable/example only** — it illustrates shape, not content, and introduces no
assumption about any particular sample or use case.

All use-case-specific behavior is **dynamically resolved from `fileIndex.md`** — the
configurable input for whatever sample is currently loaded — **and the skill it points
at** (`skills/<usecase>/skill.md`). The same `bootstrap.md` supports any number of
different use cases by changing only `fileIndex.md`'s configuration, the documents in
`documents/`, and which skill/version is referenced — never by editing this file.

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

## 2. `file-index` as the input configuration

`fileIndex.md` is a **list of entries**. Each entry is the configurable input for one use
case, and provides exactly:

- the use case name applicable to that entry,
- the path(s) to the source document(s),
- the path(s) to the supporting document(s),
- and the path to the applicable skill file.

**One entry per use case.** `use_case_name` is the unique key across the list — two
entries never share a `use_case_name`. Switching which document a use case is currently
pointed at means editing that use case's own entry (its `source_document_path`/
`supporting_document_path`), never adding a duplicate entry for the same use case.
Onboarding a brand-new use case means appending a new entry — never editing another use
case's entry to do it, and never replacing the whole file with just the new one.

**`source_document_path` and `supporting_document_path` may each be a single path or a
list of paths**, within one entry:

- A single source path + a single supporting path is one document pair (the original,
  still-fully-supported shape).
- A **list** of source paths + a single supporting path means every listed source is
  compared/evaluated against that one shared supporting document (e.g. several bid
  responses evaluated against one tender/base document) — the supporting document
  broadcasts to every source in the list.
- A list of source paths + a list of supporting paths of the **same length** pairs them
  positionally (first source with first supporting, and so on).
- A list of source paths + a list of supporting paths of **different, non-1 lengths** is
  configuration error — `RESOLVE` blocks with `<UNRESOLVED: source/supporting path counts
  do not pair (N vs. M)>` for that entry rather than guessing an intended pairing.
- **`supporting_document_path: "n/a"`** (this exact literal string, never a path) declares
  a genuine single-document use case — a task shape whose skill (`skill_file_path`)
  reads and processes only the source document(s), with no second document to compare,
  align, or evaluate against at all. This is not the same fact as an *unresolvable* path
  (a real supporting document expected but missing, which is a `RESOLVE` failure per
  below) — it is a declaration that the skill's own shape has no supporting-document role
  to fill. `skill_file_path`'s own front matter must declare this explicitly via a
  `document-pairing: single-document` field (see `skills/bom-extraction/skill.md` for the
  real example this rule was written against) before `"n/a"` is accepted; `RESOLVE`
  blocks with `<UNRESOLVED: supporting_document_path is "n/a" but
  skill_file_path does not declare a single-document shape>` otherwise, so this can never
  be used to silently skip a supporting document a skill actually expects.

Every resolved source/supporting pair within an entry is processed as its own independent
run through the pipeline (§6) — its own `<source-document-name>` subdirectory under that
one `<usecase>`'s `actuals/`, `findings/`, `reports/`, and `HITL/` trees (§12) — using the
same `use_case_name` and `skill_file_path` for every pair in that entry. A failure
resolving one pair (a path that does not exist) blocks only that pair with its own
`<UNRESOLVED: ...>`; it does not block the other, resolvable pairs in the same entry (§3's
"never mix" applies here too — one bad path never contaminates another pair's output).

Paths and document selections in `fileIndex.md` are **variables/configuration**, never
hardcoded in this file. `bootstrap.md` never names a directory, filename, or document
example as if it were real input — every concrete path referenced anywhere in this file is
notation for "wherever `fileIndex.md` currently points."

**Selecting which entry a command acts on:** when `fileIndex.md` holds exactly one entry,
every command resolves against it with no argument needed (the original, still-supported
shape). When it holds more than one entry, a command that needs to resolve a single use
case takes that use case's name as its argument (e.g. `START bid-evaluation`,
`RESOLVE version-compare`) — omitting it when more than one entry exists is itself an
`<UNRESOLVED: multiple use cases configured; specify which one>` block, never a silent
default to "the first entry" or "the last-edited entry."

The bootstrap process, for every resolved entry and every resolved source/supporting pair
within it, must:

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
5. Generate findings based on the applicable skill's instructions, once per resolved
   source/supporting pair.

Each entry holds **only these four fields** — `use_case_name`, `source_document_path`,
`supporting_document_path`, `skill_file_path` — and nothing else, no use-case-specific
processing logic. (A field being list-valued per the pairing rules above does not add a
fifth field — it is still exactly the same `source_document_path`/
`supporting_document_path` field, just holding more than one value.) Governance fields
(state, sign-off, retention, classification), sample context, and the digest ledger live
in that use case's `manifest/<usecase>/manifest.md`, never in `fileIndex.md`. See §13.

## 3. Strict document scope

Only process and generate output for the documents **explicitly configured** in
`fileIndex.md`. Do not:

- automatically process unrelated documents present elsewhere in `documents/` or
  anywhere else in the repository;
- generate findings for documents outside the configured scope;
- infer additional documents that were not specified in `fileIndex.md`;
- mix documents from different use cases unless `fileIndex.md` explicitly configures
  that;
- generate outputs for every sample merely because multiple samples' documents happen to
  be present in a directory — only the one(s) `fileIndex.md` currently selects.

Each selected document is processed using its own use case's skill — never a skill
belonging to a different use case, and never a blend of two.

A source document is placed under `documents/<usecase>/source/` and a supporting
document under `documents/<usecase>/supporting/` — never the other way around, never
both directories holding copies of the same file under different roles, and never under
another use case's `<usecase>` subdirectory. This placement is consistent for every use
case; `fileIndex.md`'s `source_document_path`/`supporting_document_path` point into these
directories, and the bootstrap recognizes newly added files dynamically through those
pointers, not by scanning the directories for whatever happens to be present. A document
referenced by more than one use case is placed under each referencing use case's own
`documents/<usecase>/source/` or `documents/<usecase>/supporting/` — `fileIndex.md`'s
explicit path is always what selects it, never a shared location inferred from filename
match.

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
Every command below is use-case-agnostic: none take a use case, document name, or skill version as
a hardcoded argument — all of that is resolved from `fileIndex.md` at the moment the
command runs, so the same command set applies to any use case.

**All commands are manual.** `bootstrap.md` never automatically executes a command —
not `START`, not any command `START` itself composes, not any command at all. A command
runs only when explicitly invoked; this file defines and documents each command's
behavior but never triggers one on its own initiative (e.g. on file changes, on a new
`fileIndex.md` configuration being written, or as a side effect of running a different
command beyond what that command's own definition composes). See non-negotiable rule 14.

| Command | Description |
|---|---|
| **`START`** | Start execution of the full `bootstrap.md` workflow using the documents and configuration defined in `fileIndex.md`: read configuration → resolve documents → normalize → judge → enhance the skill → report → validate → manually validate (§6's execution flow). Composes `RESOLVE` → `NORMALIZE` → `JUDGE` → `ENHANCE-SKILL` → `REPORT` → `VALIDATE` → `MANUAL VALIDATE` in sequence — `ENHANCE-SKILL` runs against the sample `JUDGE` just produced findings for, and `MANUAL VALIDATE` runs against the sample `REPORT`/`VALIDATE` just produced output for, every time, for every sample, not only on some; this is part of `START`'s own defined behavior (§16 rule 16), not a separate automatic trigger. |
| **`RESOLVE`** | Read `fileIndex.md`; select the entry to resolve (§2 — implicit if there's exactly one entry, otherwise the use-case-name argument this command was given, blocking with `<UNRESOLVED: multiple use cases configured; specify which one>` if omitted); confirm that entry's `use_case_name`, `source_document_path`(s), `supporting_document_path`(s), and `skill_file_path` are all set and every listed path resolves to an existing file — except `supporting_document_path: "n/a"` (§2), which resolves only if `skill_file_path` declares a single-document shape, blocking with `<UNRESOLVED: supporting_document_path is "n/a" but skill_file_path does not declare a single-document shape>` otherwise; confirm `use_case_name` matches `skill_file_path`'s parent directory name under `skills/` — if they disagree, block with `<UNRESOLVED: use_case_name "<value>" does not match skill_file_path's directory "<value>">` rather than silently preferring one over the other; confirm list-valued source/supporting paths pair per §2's rules, blocking only the pair(s) that fail. Produces a confirmation (per resolvable source/supporting pair), or a list of `<UNRESOLVED: reason>` fields blocking the affected pair(s). First step of every run. |
| **`NORMALIZE`** | Build the full actuals twin layer for the resolved source and supporting documents under `actuals/<usecase>/<source-document-name>/` (§12): per-unit twin extraction (a page for a paginated document, a sheet for a spreadsheet, a slide for a presentation, a row for a tabular file, or whatever unit fits the resolved document's actual format — never hardcoded to one format), the derived read-through, the section/unit map, `detection.md`, and `plan.md` — named and scoped to the resolved use case **and** source document, never mixed with another use case's or another source document's actuals. |
| **`PLAIN`** | Extract the twin from the actual/source document without applying unnecessary transformation or interpretation — a raw extraction pass only (per-page/per-unit extraction into `actuals/<usecase>/<source-document-name>/twin/`), stopping short of detection, planning, or judgment. The exact extraction logic (what counts as a "unit," how a page or section is delimited) stays format-neutral and is determined by the applicable skill/use case (§4) — `PLAIN` only controls *how much* of the pipeline runs, not *how* extraction is done for a given document type. |
| **`JUDGE`** | Apply the resolved skill (`skill_file_path`) to every unit in `actuals/<usecase>/<source-document-name>/plan.md`, producing `findings/<usecase>/<source-document-name>/<unit>.md` and `actuals/<usecase>/<source-document-name>/graph.md`. |
| **`OBSERVE`** | Record a noticed pattern against the resolved use case's pattern log (`skills/<usecase>/patternLog.md`), without changing the skill itself. |
| **`ENHANCE-SKILL`** | Analyze the current sample against the resolved skill, identify new/changed/conflicting knowledge, and — for whatever clears the promotion bar (§8.2) — generalize it into the skill: preserve what's valid, refine or generalize what a broader pattern now supersedes, never append raw sample context (§8.1). Snapshot the current skill to `skills/<usecase>/skill-versions/` first, edit the live `skill_file_path` in place, bump its front matter `version` field, then validate the change against previously processed samples (§8.4) before the versioning procedure (§9) is complete. |
| **`REPORT`** | Assemble a report from the resolved source document's findings only (`findings/<usecase>/<source-document-name>/` → `reports/<usecase>/<source-document-name>/report.md`) — never findings belonging to a different source document or a different use case. |
| **`VALIDATE`** | Run the resolved source document's validation checklist (`manifest/<usecase>/manifest.md`), checking it against `fileIndex.md` and `prompt-log/<usecase>/promptLog.md`, producing an updated verdict for that document. |
| **`SKILL CHANGE <version_number>`** | From the findings already generated using the current skill, extract the information that corresponds to skill version `<version_number>`: what that version's rules were (from `skills/<usecase>/skill-versions/v<version_number>.md` if not the current live version, or the live `skill_file_path` if it is), how they differ from the version immediately before it (per that version's promotion-bar record in `skills/<usecase>/patternLog.md` and its `prompt-log/<usecase>/promptLog.md` versioning entry), and — where resolvable — which current findings were produced under that version versus a later one. `<version_number>` is a variable supplied with the command, never a hardcoded value in this file. |
| **`EXPORT`** | Export the full directory configured in this file's `export-directory` front-matter field, including its complete directory structure and all applicable files generated or maintained by the bootstrap workflow. See the diagram and rules below. |
| **`LOG`** | Prepend a full-detail entry recording what a prior command did to the top of the resolved use case's `prompt-log/<usecase>/promptLog.md` (per §10). Invoked after every command that creates or changes a file. |
| **`MANUAL VALIDATE`** | Record a human-in-the-loop (HITL) reviewer's manual validation of the generated documents and outputs for one, several, or (with no use-case argument) **every** configured use case, without touching document content. Composed automatically by `START`, every run, for every sample (§6) — see "`MANUAL VALIDATE` in detail" below for its multi-use-case scoping, which overrides §2's single-entry default. |

### `MANUAL VALIDATE` in detail

**Use-case scope (overrides §2's default for this command only):**

- **No use-case argument** — `MANUAL VALIDATE` acts on **every use case currently
  configured in `fileIndex.md`**, one entry at a time, not just the single entry §2 would
  otherwise assume. This is the one command where "no argument" means "all," not "the
  lone entry" or an `<UNRESOLVED: multiple use cases configured>` block.
- **One or more use-case names given** (e.g. `MANUAL VALIDATE version-compare`,
  `MANUAL VALIDATE version-compare bid-evaluation`) — acts only on the named use case(s).
  Any named use case that does not match an entry in `fileIndex.md` blocks with
  `<UNRESOLVED: use case "<name>" not found in fileIndex.md>` for that name only; it does
  not block validation of the other named (or, in the no-argument form, other configured)
  use cases.
- When composed automatically by `START` (below), the scope is always the single use case
  `START` itself just resolved and ran — never "all use cases" — since `START` only ever
  processes the one entry/pair it resolved for that run.

**For each use case in scope**, and for every one of that use case's resolved
source/supporting pairs currently carrying generated output:

1. Act as a human reviewer reviewing the applicable generated documents and outputs for
   that source document — the twin, findings, and report artifacts already produced under
   `actuals/<usecase>/<source-document-name>/`, `findings/<usecase>/<source-document-name>/`,
   and `reports/<usecase>/<source-document-name>/`.
2. Mark those documents as manually reviewed and validated, without modifying their
   content — the validation record (below) is the evidence of review; the underlying
   document is never edited merely to indicate it was reviewed.
3. Write a **HITL validation record** to
   `HITL/<usecase>/<source-document-name>/MANUAL_VALIDATE.md`, containing at minimum:

   ```text
   Reviewer      : Prathapan C
   Validation    : MANUAL VALIDATE
   Status        : VERIFIED
   Date          : <execution-date>
   Time          : <execution-time>
   Use Case      : <use-case-name>
   Document      : <document-name>
   ```

   `<execution-date>` and `<execution-time>` are always the actual date/time the command
   was executed — read at execution time, never hardcoded and never backfilled. `<use-case-name>`
   and `<document-name>` are always that use case's `use_case_name` and
   `<source-document-name>`, never a fixed example.
4. New validations for the same use case and document **append** to
   `HITL/<usecase>/<source-document-name>/MANUAL_VALIDATE.md` rather than overwrite a
   prior record — the file is an auditable history of every manual validation performed
   for that document, oldest to newest.
5. Log the invocation per §10 (prepend a full-detail entry to that use case's own
   `prompt-log/<usecase>/promptLog.md` — a multi-use-case invocation logs a separate entry
   in each affected use case's own log, never one shared cross-use-case entry, per §12's
   isolation).

**Composed by `START` (§6):** every `START` run, after `VALIDATE` completes, automatically
runs `MANUAL VALIDATE` for the use case/sample `START` just processed — every time, for
every sample, not conditionally. This is part of `START`'s own defined composed behavior
(§16 rule 16), not an independent automatic trigger. `MANUAL VALIDATE` remains additionally
invokable on its own, standalone, at any time, with the multi-use-case scoping above.

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
- preserves the directory structure exactly (`skills/`, `documents/`, `actuals/`,
  `findings/`, `reports/`, `HITL/`, `manifest/`, `prompt-log/`, and the root-level
  config/decision files together, in their existing layout, including each of those
  directories' per-`<usecase>` isolation, §12);
- includes all applicable generated artifacts, configuration files, skill files,
  findings, logs, and other files present within the configured directory;
- treats the configured directory as a variable, so the same command works across
  different projects and use cases without modification to this file.

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
| Source document directory | `fileIndex.md`'s `source_document_path` |
| Supporting document directory | `fileIndex.md`'s `supporting_document_path` |
| File/document selection | `fileIndex.md` (the four configured inputs — nothing else is in scope, §3) |
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
  be flagged for re-judgment (logged in `prompt-log/<usecase>/promptLog.md`), not
  silently left stale.
- Confirm the new/updated rule, read on its own, is stated broadly enough to apply to
  a sample that has not yet been seen — not just precisely enough to fit the sample that
  prompted it.
- Only after this check does the enhancement's `prompt-log/<usecase>/promptLog.md` entry
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
   `prompt-log/<usecase>/promptLog.md`: what gap, from which sample's pattern-log entry,
   what changed, what stayed the same, old version number → new version number, and the
   result of the previous-samples validation (unaffected, or which samples need
   re-judgment).

No `fileIndex.md` field needs updating for this — `fileIndex.md`'s `skill_file_path`
still points at the same live file; the version number it now serves is read from that
file's own front matter, never tracked separately in `fileIndex.md` (§2).

Non-material edits (typo fixes, clarifying wording without changing behavior) do not
require a new version but are still logged. `SKILL CHANGE <version_number>` (§5) is the
read path for this history; this section is the write path.

## 10. Prompt log — the traceability requirement

Every event that creates or changes a file anywhere in this repository must be logged, in
full, in that event's use case's own `prompt-log/<usecase>/promptLog.md`, at the time it
happens — never reconstructed later from memory, and never logged into another use
case's prompt log.

`prompt-log/<usecase>/promptLog.md` is maintained in **descending chronological order**:
the most recent execution/prompt is always at the **top**, older entries below it. New
entries are always **prepended**, directly under the file's header — never appended below
older entries. Each use case accumulates its own complete, independent history this way;
there is no cross-use-case merged log.

Every entry records, at minimum: timestamp (date and time), the command/prompt provided,
the generated output, the reason for the generated output, a brief explanation of how the
output was generated, the model used, the relevant skill/version used, and any other
execution metadata needed to reproduce or understand the result. Do not omit a required
item; write "not applicable" with a one-clause reason instead.

## 11. Amending this file

This file changes rarely and only through the same discipline it imposes on skills: a
change must be justified by something true across every use case and every sample, not by
one sample's needs. Since this file itself is not use-case-scoped, every amendment is
recorded as an entry in the `prompt-log/<usecase>/promptLog.md` of whichever use case's
run prompted the amendment (or, if none did, the most recently active use case's log),
recording what changed and why, with the previous version diff-able from that entry.

## 12. Directory architecture

**Every use case gets its own, completely isolated directory structure**, keyed by
`<usecase>` — the exact string in `fileIndex.md`'s current `use_case_name` field. Under
every generated/maintained top-level directory (`actuals/`, `skills/`, `findings/`,
`reports/`, `HITL/`, `manifest/`, `prompt-log/`), the first-level subdirectory is always
`<usecase>` — never a source-document name, never a shared/default folder, never a
directory shared across two different use cases. A second use case processed by this
same `bootstrap.md` gets its own parallel `<usecase>` subdirectory under each of those
roots, automatically, the first time `fileIndex.md`'s `use_case_name` names it — no
template, no manual directory creation step, and no edit to this file.

```text
Lippy Archive/
│
├── bootstrap.md            THIS FILE — use-case-agnostic, never changes per use case or sample
├── fileIndex.md           exactly four inputs — use case name, source path, supporting path, skill path — rewritten to point at whichever document/use case is currently being worked on
├── pivot.md                cumulative decision log — disputes settled, rules clarified, citations corrected (cross-use-case by design: a citation or rule clarification may bear on more than one use case)
│
├── documents/
│   └── <usecase>/
│       ├── source/                      every source document ever added under this use case, one file each
│       │   ├── <source-document-name>.ext
│       │   └── ...
│       └── supporting/                  every supporting document ever added under this use case, one file each
│           ├── <supporting-document-name>.ext
│           └── ...
│
├── actuals/
│   └── <usecase>/
│       └── <source-document-name>/      one subdirectory per source document processed under this use case — never shared, never mixed with another use case's or another document's
│           ├── twin/
│           │   ├── <document>/<unit>-###.md   unit name matches the document's own format:
│           │   │                              page-### (paginated), sheet-<name> (spreadsheet),
│           │   │                              slide-### (presentation), row-### (tabular/CSV),
│           │   │                              or whatever unit fits a format not listed here
│           │   ├── derived/<document>.md
│           │   └── sectionMap.md
│           ├── detection.md
│           ├── plan.md
│           └── graph.md
│
├── findings/
│   └── <usecase>/
│       └── <source-document-name>/<unit>.md   one findings file per unit, scoped to this use case and this document — never mixed with another use case's findings
│
├── skills/
│   └── <usecase>/
│       ├── skill.md              the LIVE, current skill for this use case — no sample facts
│       ├── patternLog.md        observations from every sample processed under this use case, and whether each was promoted
│       └── skill-versions/       immutable history for THIS use case only — a snapshot written before every enhancement, never overwritten
│           ├── v1.md             first version's snapshot
│           ├── v2.md             snapshot taken before the enhancement that produced the current live skill.md
│           └── vN.md             one snapshot per version this use case's skill has ever had
│
├── reports/
│   └── <usecase>/
│       └── <source-document-name>/report.md   one report per source document under this use case — never shared, never mixed
│
├── HITL/
│   └── <usecase>/
│       └── <source-document-name>/            one review folder per source document under this use case
│           └── MANUAL_VALIDATE.md             append-only HITL validation record (§5's `MANUAL VALIDATE`) — one entry per manual validation performed, oldest to newest, never overwritten
│
└── manifest/
    └── <usecase>/
        └── manifest.md         validation gate for this use case — governance fields, sample context, and the digest ledger, sectioned per source document within it (§13)
```

**`<usecase>`** is `fileIndex.md`'s current `use_case_name`, verbatim — the top-level key
under every generated directory. **`<source-document-name>`** is the source document's
filename (without extension) — the second-level key, nested inside `<usecase>`, that ties
a source document to its own `actuals/`, `findings/`, `reports/`, and `HITL/` output
*within that use case*. Every command that writes to any of these directories resolves
both keys from `fileIndex.md`'s current `use_case_name` and `source_document_path`, and
writes only under that exact `<usecase>/<source-document-name>` path — never into another
use case's directory, never into another source document's subdirectory, never merging
two use cases' or two source documents' output into one.

`documents/<usecase>/source/` and `documents/<usecase>/supporting/` follow the same
per-use-case isolation as every other generated root (§17): each use case accumulates its
own source and supporting documents in its own subtree (a source document is never placed
under that use case's `supporting/` or vice versa, and a document is never removed just
because `fileIndex.md` currently points elsewhere). Nothing is ever inferred from a
use case's document pool (§3) — only `fileIndex.md`'s explicit paths select a document,
and its `use_case_name` determines both which `documents/<usecase>/` subtree it is placed
under and which isolated `<usecase>` tree the resulting output lands in. A document
genuinely shared by more than one use case is placed once under each referencing use
case's own subtree — never in one shared location two `fileIndex.md` entries both point
into. `actuals/`, `findings/`, `reports/`, and `HITL/` likewise accumulate — one
`<usecase>/<source-document-name>` subdirectory per document that has been processed
under that use case — processing a new source document, or a new use case, does not
overwrite or remove another's. `skills/<usecase>/` (that use case's live `skill.md`, its
`patternLog.md`, and its immutable history in its own `skill-versions/`) and
`manifest/<usecase>/manifest.md` persist and accumulate the same way, one complete,
independent tree per use case. `prompt-log/<usecase>/promptLog.md` is each use case's own
cumulative log — prepended to (newest first, §10), never truncated, never shared with
another use case's log. `pivot.md` at the root is the one cumulative log kept
cross-use-case by design (appended to, never truncated) since a settled dispute or
citation correction can bear on more than one use case. `bootstrap.md` is never rewritten
for a source document or a use case; it is the fixed orchestration layer every use case
runs through. This whole tree, rooted at `export-directory`, is what `EXPORT` (§5) copies.

There is no template layer. Switching which document or use case is being worked on means
rewriting `fileIndex.md` to point at it (adding the document under that use case's own
`documents/<usecase>/source/` and `documents/<usecase>/supporting/` first if it isn't
there yet) — it does not mean deleting or
overwriting any other use case's or document's `actuals/`, `findings/`, `reports/`, or
`HITL/` output, because each lives in its own `<usecase>/<source-document-name>`
subdirectory. The very first time a new `use_case_name` is resolved, its `<usecase>`
subdirectories under each generated root do not yet exist — creating them then, as part
of the first `RESOLVE`/`NORMALIZE` for that use case, is not a template being applied,
it is the same per-document accumulation behavior described above happening for a
`<usecase>` key that has never been seen before. Nothing needs an explicit retention
decision for this reason alone; a retention decision is only needed if content is to be
deleted outright (record that in `prompt-log/<usecase>/promptLog.md` before deleting
anything).

## 13. What belongs where

**`skills/<usecase>/skill.md` may contain:** verdict/label scales, the grain of judgment,
absence handling, judging criteria stated as conditions, prohibitions, and required output
shape — all phrased so they hold for any document pair/set in that use case.

**`skills/<usecase>/skill.md` may never contain:** a business name, a document title, a
specific number that isn't a rule threshold, or example text lifted from one sample
presented as if it were a universal case.

**`fileIndex.md` may contain only:** a list of entries, one per use case, each with
exactly `use_case_name`, `source_document_path`, `supporting_document_path`,
`skill_file_path` — exactly these four fields, nothing else, though `source_document_path`
and `supporting_document_path` may each be list-valued within an entry per §2's pairing
rules. No skill version, no classification, no terminology notes, no digests, no
use-case-specific processing logic. It must not restate or override the skill's judging
rules — it only points at the skill(s).

**`manifest/<usecase>/manifest.md` may contain:** governance fields, sample context
prose, the digest ledger, and the validation checklist — sectioned per source document
within that use case, so one document's sign-off status is never confused with another's,
and one use case's manifest is never confused with another's. Everything `fileIndex.md`
used to carry beyond its four inputs lives here instead.

**This file (`bootstrap.md`) may contain:** none of the above — only commands, roles, and
structure that hold regardless of use case or sample.

If unsure whether a sentence belongs in the skill, `fileIndex.md`, or the use case's
`manifest.md`, ask,
in order: "Is it a name or path identifying the use case, documents, or skill file?" →
`fileIndex.md`. "Is it a rule
that must hold for any input to this use case?" → skill. "Is it a fact, status, or
approval specific to the sample currently loaded?" → that use case's
`manifest/<usecase>/manifest.md`. "Is it true regardless of which skill or sample is
involved at all?" → `bootstrap.md`.

## 14. Confidence and uncertainty

- A rule promoted from a single sample is marked `confidence: provisional` in the skill's
  front matter or pattern-log entry until a second, independent sample confirms it.
- A finding that cannot be judged from the evidence available uses the use case's defined
  absence label — never a guess, never silence.
- A `fileIndex.md` field that cannot yet be resolved is written as `<UNRESOLVED: reason>`,
  never deleted and never guessed; `RESOLVE` must block on it.

## 15. Validation gate

No artifact is an accepted deliverable until:

- Its use case's `manifest/<usecase>/manifest.md` checklist is fully checked for the
  current sample.
- Any skill change it depended on is versioned per §9.
- Its use case's `prompt-log/<usecase>/promptLog.md` entries are complete per §10.
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
    the top** of that event's use case's own `prompt-log/<usecase>/promptLog.md` at the
    time it happens, with the full field set from §10 — never appended below older
    entries, and never logged into a different use case's prompt log.
13. A new document is onboarded by adding it to that use case's own
    `documents/<usecase>/source/` or `documents/<usecase>/supporting/` and rewriting
    `fileIndex.md` to point at it — never by deleting or overwriting another document's
    files anywhere in the tree. A new use case is onboarded the same way: point
    `fileIndex.md`'s `use_case_name` and `skill_file_path` at it — its `<usecase>`
    subdirectories under `documents/`, `actuals/`, `findings/`, `skills/`, `reports/`,
    `HITL/`, `manifest/`, and `prompt-log/` are created on first use, never pre-templated,
    never by copying another use case's directory.
14. When uncertain whether something is use-case-agnostic or sample/use-case-specific, treat it as
    specific until the promotion bar is met.
15. `EXPORT`'s directory scope is always `export-directory` as configured in this file's
    front matter — never a hardcoded or assumed path.
16. No command ever runs automatically. `bootstrap.md` documents every command's
    behavior but triggers none of them on its own — a command runs only when explicitly
    invoked, and only that command's own defined behavior executes (§5).
17. Every generated/maintained directory (`documents/`, `actuals/`, `findings/`,
    `skills/`, `reports/`, `HITL/`, `manifest/`, `prompt-log/`) is scoped first by
    `<usecase>` and then, where
    applicable, by `<source-document-name>` (§12) — no command ever writes into a
    different use case's directory, or a different document's subdirectory, than the one
    currently resolved from `fileIndex.md`. Nothing is ever mixed, shared, or merged
    across use cases.
18. No file format is rejected and none is privileged. A source or supporting document
    in any format — PDF, DOCX, PPTX, XLSX, CSV, or any other — is processed by
    resolving the twin unit appropriate to that format (§1, §12); this file is never
    edited to add support for a new format, and a skill may never assume one specific
    format's structure applies to every input.
19. Every `.md` filename created anywhere in this project follows **camelCase** (first
    letter lowercase, e.g., `fileIndex.md`, `patternLog.md`, `sectionMap.md`,
    `01-coverHeader.md`), including files under `skills/`, `actuals/`, `findings/`,
    `reports/`, `HITL/`, `manifest/`, and `prompt-log/`. The single exception is a
    filename derived directly from a source or supporting document's own identifier
    (e.g., `twin/derived/<DocName>.md`, where `<DocName>` mirrors the real document's
    name) — that identifier keeps its own casing verbatim, since it names a specific document
    rather than describing project structure. This rule governs filenames only; it never
    requires rewriting the historical content of any `promptLog.md`, `patternLog.md`, or
    `skills/<usecase>/skill-versions/` snapshot. (Note: `origin/main`'s copy of this file
    uses capital-first PascalCase for these same filenames, e.g. `Bootstrap.md`,
    `FileIndex.md` — this branch deliberately diverges to true camelCase, lowercase
    first letter, per explicit user instruction on 2026-09-21; see
    `prompt-log/drawing-comparison/promptLog.md`.)
20. Every use case's directory tree, under every generated root, is structurally
    identical in shape to every other use case's (§12's diagram) — the *content* differs
    per use case, but never the layout. A new use case is never given a bespoke directory
    shape, and this file is never edited to special-case one use case's structure.
