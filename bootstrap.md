---
document: bootstrap.md
role: shared, sample-agnostic execution framework for processing source and supporting
  documents — orchestration and execution layer only, never tied to any sample or use case
state: living document — amended only through the change protocol in §9
version: 2
last-amended: 2026-09-29
export-directory: .   # VARIABLE — the project root this bootstrap governs; override per
                        # deployment, never hardcode a machine- or project-specific path
---

# Lippy Archive — bootstrap

This file is a **shared, sample-agnostic execution framework** for processing source and
supporting documents. It is not tied to any specific sample or use case. Any example that
appears below (a use case name, a file path, a command invocation) is a **variable/example
only** — it illustrates shape, not content.

This archive currently holds one sample, one use case: `drawing-comparison`. Its
`documents/` and `actuals/` sit directly at the project root — the same shape a
single-sample archive naturally has, since there is only one sample to hold. If a second
sample is ever onboarded, it takes its own top-level folder (named after itself) beside
this one, per §11.

All use-case-specific behavior is **dynamically resolved from `file-index.md`** — the
configured input for whatever sample is currently loaded — **and the skill it points at**
(`skills/<usecase>.md`). Adding a use case or a sample never means editing this file, only
`file-index.md`'s configuration, the documents it points at, and which skill is referenced.

## 1. Source and supporting document context

| Role | Meaning |
|---|---|
| **Source document** | The response/current document that needs to be analyzed, compared, transformed, or evaluated. |
| **Supporting document** | The base/reference document used to provide context, rules, expected structure, historical information, or comparison criteria for the source document. |

This terminology and the processing logic built on it hold regardless of use case: the
same framework applies whether the source is a contract revision, a report awaiting review
against a template, a dataset awaiting reconciliation against a prior period, or any other
document-judgment task — the skill resolved for that use case defines what "analyzed,
compared, transformed, or evaluated" concretely means; this file only defines the roles.

**Any file format is accepted** for a source or supporting document — PDF, DOCX, PPTX,
XLSX, CSV, plain text, or any other format a document may arrive in. Format only
determines *how* a document's content is extracted into its twin (§11) — a paginated
document's unit of location is a page, a spreadsheet's is a sheet, a slide deck's is a
slide, a tabular file's is a row, and so on — never *whether* the document can be
processed at all.

## 2. `file-index` as the input configuration

`file-index.md` is a **list of entries**. Each entry is the configurable input for one
sample, and provides exactly:

- the use case name applicable to that entry,
- the path(s) to the source document(s),
- the path(s) to the supporting document(s),
- and the path to the applicable skill file.

**One entry per sample.** Switching which document a sample is currently pointed at means
editing that sample's own entry, never adding a duplicate. Onboarding a brand-new sample
means appending a new entry.

**`source_document_path` and `supporting_document_path` may each be a single path or a
list of paths**, within one entry:

- A single source path + a single supporting path is one document pair (the common shape).
- **`supporting_document_path: "n/a"`** (this exact literal string, never a path) declares
  a genuine single-document sample — a task shape whose skill reads and processes only the
  source document, with no second document to compare, align, or evaluate against at all.
  `skill_file_path`'s own front matter must declare this explicitly via a
  `document-pairing: single-document` field before `"n/a"` is accepted.
- A list of source paths and a list of supporting paths must pair to equal, non-zero
  lengths — `RESOLVE` blocks with `<UNRESOLVED: source/supporting path counts do not pair>`
  otherwise, rather than guessing an intended pairing.

The bootstrap process, for every resolved entry, must:

1. Read the source and supporting document location(s) from that entry's
   `source_document_path` and `supporting_document_path`.
2. Identify the applicable documents from those configured locations.
3. Determine which use case/skill applies — read directly from that entry's
   `use_case_name` and `skill_file_path` fields (the skill version is whatever
   `skill_file_path`'s own front matter states — not a separate `file-index.md` field).
4. Refer to the corresponding `skills/<usecase>.md` (i.e. `skill_file_path`) for
   processing instructions.
5. Generate findings based on the applicable skill's instructions.

Paths and document selections in `file-index.md` are **variables/configuration**, never
hardcoded in this file.

## 3. Strict document scope

Only process and generate output for the documents **explicitly configured** in
`file-index.md`. Do not:

- automatically process unrelated documents present elsewhere in the repository;
- generate findings for documents outside the configured scope;
- infer additional documents that were not specified in `file-index.md`.

A source document is placed under `documents/source/` and a supporting document under
`documents/supporting/` — never the other way around, never both directories holding
copies of the same file under different roles. `file-index.md`'s
`source_document_path`/`supporting_document_path` point into these directories.

## 4. Skill-driven findings

All findings are generated according to the relevant `skills/<usecase>.md`. The bootstrap
framework:

- identifies the applicable use case from the configured input (`file-index.md`);
- loads the corresponding skill's instructions;
- extracts the required findings from the source and supporting documents per that
  skill's workflow;
- applies the skill's rules, comparison logic, and domain-specific instructions exactly
  as written, without reinterpreting or supplementing them here.

`bootstrap.md` is the **orchestrator**. `skills/<usecase>.md` is the **source of truth**
for how findings are generated. If this file ever contains judging logic, verdict
definitions, or domain rules, that is a defect — move it into the applicable skill.

## 5. Terminal commands

Execution is command-driven. Every command name is written in **CAPITAL LETTERS**, always
against the configuration currently resolved from `file-index.md`.

**All commands are manual.** A command runs only when explicitly invoked; this file
defines and documents each command's behavior but never triggers one on its own
initiative.

| Command | Description |
|---|---|
| **`START`** | Start execution of the full `bootstrap.md` workflow using the documents and configuration defined in `file-index.md`: read configuration → resolve documents → normalize → judge → report (§6's execution flow). Composes `RESOLVE` → `NORMALIZE` → `JUDGE` → `REPORT` in sequence. |
| **`RESOLVE`** | Read `file-index.md`; confirm `use_case_name`, `source_document_path`(s), `supporting_document_path`(s), and `skill_file_path` are all set and every listed path resolves to an existing file — except `supporting_document_path: "n/a"` (§2), which resolves only if `skill_file_path` declares a single-document shape. Produces a confirmation, or `<UNRESOLVED: reason>`. First step of every run. |
| **`NORMALIZE`** | Build the full twin layer for the resolved source and supporting documents: per-unit twin extraction (a page for a paginated document, a sheet for a spreadsheet, a slide for a presentation, a row for a tabular file, or whatever unit fits the resolved document's actual format), the derived read-through, the section map, `detection.md`, and `plan.md` — written to a new `runs/<run-id>/` folder first, then copied into `actuals/` (§11.1). |
| **`PLAIN`** | Extract the twin from the source/supporting document without applying unnecessary transformation or interpretation — a raw extraction pass only, stopping short of detection, planning, or judgment. |
| **`JUDGE`** | Apply the resolved skill (`skill_file_path`) to every unit in `plan.md`, producing `findings/<unit>.md` and `graph.md` — written to `runs/<run-id>/` first, then copied into `actuals/` (§11.1). |
| **`OBSERVE`** | Note a pattern worth remembering about this document against `pivot.md`, without changing the skill itself. |
| **`REPORT`** | Assemble a report from the findings only (`findings/` → `report/report.md`) — written to `runs/<run-id>/` first, then copied into `actuals/` (§11.1). |
| **`VALIDATE`** | Re-check `actuals/findings/` and `actuals/report/report.md` against `file-index.md` and `prompting.md`, confirming every finding still cites a real page and quote. |
| **`EXPORT`** | Export the full directory configured in this file's `export-directory` front-matter field, including its complete directory structure and all applicable files. See the diagram and rules below. |
| **`LOG`** | Prepend a full-detail entry recording what a prior command did to the top of `prompting.md` (per §10). Invoked after every command that creates or changes a file. |

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
- preserves the directory structure exactly (`documents/`, `actuals/`, `runs/`, `skills/`,
  `templates/`, and the root-level config/decision files together, §11);
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
Load Corresponding skill
       ↓
Apply Skill Instructions
       ↓
Generate Findings
       ↓
Apply Command-Specific Operation
       ↓
Generate / Export Output
```

`PLAIN` stops after normalization (before "Apply Skill Instructions"). `EXPORT` bypasses
document resolution entirely and operates on the configured directory as a whole (§5).

## 7. Generic variable-based design

Every configurable value below is a variable, resolved at execution time from
`file-index.md` (or, for `export-directory`, from this file's own front matter) — never
embedded in this file as a sample-specific filename, path, document name, finding, or
expected output.

| Variable | Resolved from |
|---|---|
| Source document directory | `file-index.md`'s `source_document_path` |
| Supporting document directory | `file-index.md`'s `supporting_document_path` |
| File/document selection | `file-index.md` (the four configured inputs — nothing else is in scope, §3) |
| Use case | `file-index.md`'s `use_case_name` |
| Skill path | `file-index.md`'s `skill_file_path` |
| Requested command | the terminal invocation (`START`, `PLAIN`, `EXPORT`, …) |
| Output location | the standard directory architecture (§11) |
| Export directory | this file's front matter (`export-directory`) |

## 8. Changing a skill

`skills/<usecase>.md` is the single, live file for that use case's judging rules. When a
new sample or a second reader surfaces a pattern the skill doesn't yet cover correctly:

1. Read the current skill in full before judging a new document against it.
2. Edit `skills/<usecase>.md` directly to add or correct the rule — phrased so it reads
   as true generally, not tied to one document's specific names or values.
3. Note what changed and why in `prompting.md` (§10).

A single document's structure, numbering scheme, or business terms are never, by
themselves, sufficient to become a skill rule if they wouldn't hold for a different
document of the same kind.

## 9. Amending this file

This file changes rarely: a change must be justified by something true across every use
case, not by one document's needs. Every amendment is recorded as an entry in
`prompting.md`, recording what changed and why.

## 10. Prompt log — the traceability requirement

Every event that creates or changes a file must be logged, in full, in `prompting.md`, at
the time it happens — never reconstructed later from memory.

`prompting.md` is maintained in **descending chronological order**: the most recent
execution/prompt is always at the **top**, older entries below it. New entries are always
**prepended**, directly under the file's header — never appended below older entries.

Every entry records, at minimum: timestamp (date and time), the command/prompt provided,
the generated output, the reason for the generated output, a brief explanation of how the
output was generated, the model used, and the relevant skill used. Do not omit a required
item; write "not applicable" with a one-clause reason instead.

A decision that settles a dispute, clarifies a rule, or corrects a citation is recorded in
`pivot.md` instead (§11) — that file is the decision-specific counterpart to this one.

## 11. Directory architecture

```text
Lippy Archive/
│
├── bootstrap.md            THIS FILE — never changes per use case or sample
├── file-index.md           the input configuration — use case name, source path, supporting path, skill path
├── pivot.md                cumulative decision log — disputes settled, rules clarified, citations corrected
├── prompting.md             the traceability log (§10) — every command/prompt, prepended newest-first
│
├── documents/
│   ├── source/                      the source document(s)
│   │   └── <source-document-name>.ext
│   └── supporting/                  the supporting document(s), or absent entirely when supporting_document_path is "n/a"
│       └── <supporting-document-name>.ext
│
├── actuals/
│   ├── detection.md          document quirks and edge cases found ahead of judgment
│   ├── plan.md                the unit list this run judges
│   ├── graph.md                which unit was checked against what, and how findings trace to the report
│   ├── twin/
│   │   ├── <document>/page-###.md   unit name matches the document's own format:
│   │   │                            page-### (paginated), sheet-<name> (spreadsheet),
│   │   │                            slide-### (presentation), row-### (tabular/CSV)
│   │   ├── derived/<document>.md    per-document read-through, derived from the twin pages
│   │   ├── priority.md              which pages to correct first, when there are many
│   │   └── section-map.md            each document's own sections, summarised once
│   ├── findings/
│   │   └── <unit-id>.md             one findings file per unit
│   └── report/
│       ├── report.md                 the rollup report
│       └── README.md
│
├── Deck/                       placeholder for a rendered deck deliverable, once one exists
├── Doc/                        placeholder for a rendered document deliverable, once one exists
├── Excel/                      placeholder for a rendered spreadsheet deliverable, once one exists
│
├── runs/
│   └── <run-id>/                one folder per JUDGE+REPORT pass — the untouched copy of
│       ├── approval.md          what actuals/ was built from at that point; a run never
│       ├── brief.md             edits actuals/, and a person correcting actuals/ never
│       ├── last-run.md          edits a run folder back — see §11.1
│       ├── run.md
│       ├── detection.md
│       ├── plan.md
│       ├── graph.md
│       ├── twin/                (same shape as actuals/twin/, this run's own copy)
│       ├── findings/            (same shape as actuals/findings/, this run's own copy)
│       └── report/
│           └── report.md
│
├── skills/
│   └── <usecase>.md            the live skill for that use case — no sample-specific facts
│
└── templates/
    ├── finding.md
    ├── twin-page.md
    └── README.md
```

`documents/` and `actuals/` sit directly at the project root because this archive
currently holds one sample. If a second sample is onboarded, it takes its own top-level
folder, named after itself, holding this same `documents/`+`actuals/` shape — never
nested inside an intermediate grouping folder, and never mixed with another sample's
files. `skills/` stays organized by use case regardless of how many samples exist, since a
skill is shared by every sample of that use case. `pivot.md` and `prompting.md` are kept
at the root either way; `pivot.md` because a decision can bear on more than one sample, and
`prompting.md` because — with one sample — there is nothing yet to separate it from. This
whole tree, rooted at `export-directory`, is what `EXPORT` (§5) copies.

### 11.1 `runs/` — the untouched copy, kept beside the correctable one

Every `JUDGE`+`REPORT` pass writes its output to a new `runs/<run-id>/` folder, timestamped,
holding the same `detection.md`/`plan.md`/`graph.md`/`twin/`/`findings/`/`report/` shape as
`actuals/`, plus `approval.md` (whether the plan was approved before running), `brief.md`
(the task as given), `run.md` (what ran, and how), and `last-run.md` (a short summary of
the same). The same content is then copied into `actuals/` for a person to review and, if
needed, correct.

**A run never edits `actuals/`; a person correcting `actuals/` never edits a run folder
back.** This is what keeps the original output recoverable even after `actuals/` has been
corrected — compare a `runs/<run-id>/findings/<unit-id>.md` against its
`actuals/findings/<unit-id>.md` counterpart to see exactly what a review changed. Until a
person has actually made a correction, the two are identical, and that is the expected,
honest state for a sample nobody has reviewed yet — not a sign anything is missing.

### 11.2 `templates/` — starting from a skeleton

`templates/` holds one blank, fully-fielded skeleton per repeatable file type — every
front-matter field named, no content filled in. Adding a new finding or twin page means
copying the matching skeleton and filling it in, never inventing a front-matter field
that isn't already named there. `templates/` itself is never live input — nothing in it
is ever read as if it were real, and `RESOLVE` never resolves against it.

## 12. What belongs where

**`skills/<usecase>.md` may contain:** verdict/label scales, the grain of judgment,
absence handling, judging criteria stated as conditions, prohibitions, and required output
shape — all phrased so they hold for any document pair/set in that use case.

**`skills/<usecase>.md` may never contain:** a business name, a document title, a
specific number that isn't a rule threshold, or example text lifted from one sample
presented as if it were a universal case.

**`file-index.md` may contain only:** a list of entries, each with exactly
`use_case_name`, `source_document_path`, `supporting_document_path`, `skill_file_path` —
nothing else. It must not restate or override the skill's judging rules — it only points
at the skill.

**This file (`bootstrap.md`) may contain:** none of the above — only commands, roles, and
structure that hold regardless of use case or sample.

## 13. Confidence and uncertainty

- A finding that cannot be judged from the evidence available uses the use case's defined
  absence label — never a guess, never silence.
- A `file-index.md` field that cannot yet be resolved is written as `<UNRESOLVED: reason>`,
  never deleted and never guessed; `RESOLVE` must block on it.

## 14. Non-negotiable rules

1. This file is root authority for orchestration; a skill or `file-index.md` may not
   contradict it, but this file may never contain use-case-specific logic either.
2. No sample-specific or use-case-specific fact is ever written into this file — it goes
   in `file-index.md` (configuration) or the skill (generalized rule).
3. Only the documents explicitly configured in `file-index.md` are processed — never an
   inferred, unrelated, or merely-present document (§3).
4. `skills/<usecase>.md` is the only live copy of a use case's skill; a skill change is
   made directly to it and logged in `prompting.md` (§8).
5. Absence is always the use case's defined absence label — never inferred, never
   guessed, never silent.
6. Every file-creating or file-changing event is logged as a **new entry prepended to the
   top** of `prompting.md` at the time it happens, with the full field set from §10 — never
   appended below older entries.
7. A new sample is onboarded by creating its own top-level folder from `templates/`
   (§11.1), placing its documents under that folder's `documents/source/` or
   `documents/supporting/`, and appending an entry to `file-index.md` — never by deleting
   or overwriting another sample's files.
8. `EXPORT`'s directory scope is always `export-directory` as configured in this file's
   front matter — never a hardcoded or assumed path.
9. No command ever runs automatically. `bootstrap.md` documents every command's behavior
   but triggers none of them on its own — a command runs only when explicitly invoked.
10. No file format is rejected and none is privileged. A source or supporting document in
    any format — PDF, DOCX, PPTX, XLSX, CSV, or any other — is processed by resolving the
    twin unit appropriate to that format (§1, §11); this file is never edited to add
    support for a new format.
11. Filenames follow the reference archive's own convention this project is modeled on:
    hyphenated lowercase for structural files (`file-index.md`, `section-map.md`,
    `page-001.md`), and a unit's or document's own identifier kept verbatim where a
    filename names a specific one (`MEMB-1.md`, `AD-3010-C-330030-SHT-004-REV4.md`) —
    never a generic project-structure name invented separately from the thing it names.
