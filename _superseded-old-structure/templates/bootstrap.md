# Common bootstrap template — one file per skill, shared by every sample

**This changed on 2026-09-21.** The original version of this template had one `bootstrap.md` per project/sample. That produced real duplication once a skill had more than one sample: `drawing-comparison/sample-1/bootstrap.md` and `sample-2/bootstrap.md` were ~90% identical prose, and every new sample meant re-copying that prose again. The design now has **one `bootstrap.md` per skill**, at the skill's own root (e.g. `drawing-comparison/bootstrap.md`), shared by every sample under it. No sample has its own `bootstrap.md`.

**Scope note:** like `templates/audit-log.md`, this is a repo-level template — one shape shared by every skill, not a per-project skeleton for a project's own future actuals (that's the different, per-project `templates/` folder `context.md` §2/§12 describes).

**Why this still works — the key distinction:** a skill's `bootstrap.md` holds what is genuinely true of *every* sample built with that skill (the task shape, the unit rule, the skill-general pitfalls, the operational guidelines). What differs from sample to sample — which document, its digest, how many findings, what state, what's still open — was never actually "bootstrap" content in the sense of *setup*; it's the sample's own *result*, and it now lives where every other pack-specific fact already lives: that sample's own `file-index.md` (a new "Pack facts" header block) and `pivot.md` (new `Context`/`Coverage` sections, alongside the decisions that were already there).

---

## The skeleton — `<skill>/bootstrap.md`

```markdown
# <Skill title, plain words> — skill bootstrap (shared across every sample)

\`\`\`
skill: <skill name, must match a file under any sample's skills/>
domain: <industry / discipline — one line, general to the skill, not tied to one sample's specific subject>
scale: <the skill's verdict scale — OR "n/a — <reason>" — from skills/<skill>.md, restated here for a fast read>
absence: <what "not addressed" means for this skill — from skills/<skill>.md>
labels: <the skill's label vocabulary — from skills/<skill>.md>
pages: <the page-counting RULE (almost always "one physical sheet is one page, PDF rule design section 6") — NOT a page count, that's per-sample>
\`\`\`

This is the one shared bootstrap for the `<skill>` skill — not a per-sample file. Every sample under this skill reads this file for what is common to the skill, and keeps only what is genuinely specific to that sample in its own `file-index.md` and `pivot.md`. See "Where sample-specific facts live" below.

The skill's own units/labels/finding-shape/pack-profile declarations live in `skills/<skill>.md` (itself shared byte-for-byte across every sample) and are read from there by the scorer, per Lippy Archive design revision 3 section 5.

## Brief

### Task
<What every sample of this skill produces, in the skill's own finding shape — general, not naming one sample's specific documents.>

### Context
<General context for the skill/domain. A specific sample's real-world subject — which customer, which document — is per-sample; point at "that sample's own pivot.md § Context" rather than naming one here, unless every current sample happens to share the same subject, in which case say so plainly as a current-state note, not a permanent rule.>

### What counts as a unit
<Point at skills/<skill>.md's unit rule, restated in one or two general sentences.>

### What must not happen (skill-general — every sample must guard against these)
<Bulleted list of mistakes this *kind* of document/skill makes easy — general pitfalls true of any sample, not one sample's specific finding ids. A specific instance of a general pitfall (which finding, which pivot entry) stays in that sample's own pivot.md.>

### What this skill's samples do and do not cover
<State the skill-general coverage allowance (e.g. design section 17's "cited and hard items first" rule) here. Actual coverage numbers/claims are per-sample — see each sample's own file-index.md/pivot.md.>

### Source of truth
<What's authoritative and what reading channels this skill generally uses. Per-sample methodology specifics stay in that sample's own pivot.md § Method.>

### A note on supplied files
<Whether input files typically need repair is worth a general note if it's a recurring pattern for this skill's document sources; whether *this specific sample's* files needed repair is per-sample, in that sample's own pivot.md.>

## Operational guidelines

1. Track every instruction received in that sample's own `prompting.md`, dated.
2. Record every decision with an explicit yes or no in that sample's own `pivot.md`, including the reader-agreement table required by the Lippy Archive verification standard.
3. Keep that sample's own `file-index.md` current for every file added or changed, including its digest — and current for the pack-level facts (source/supporting, state, signed-by, classification, profile) that live in its "Pack facts" header.
4. Read every document from its own file (text layer and rendered raster, or whatever channels the skill needs), never from a partial extraction alone; count pages from 1 in the file.
5. A run never edits `actuals/`; a person never edits `runs/`.
6. Every actual carries `verified-by`, `verified-on` and `confidence` in its front matter; twin pages also carry `verification`.
7. Log every pass through a workflow step in that sample's own `audit-log.md` as it happens — step name (from `skills/<skill>.md`'s own `Steps` table), what it touched, what it produced — before moving to the next step.
8. Do not modify another sample's folder, or anything outside `<skill>/`, without that being the explicit task.

## Where sample-specific facts live

No per-sample `bootstrap.md` is created. What a per-sample bootstrap's front-matter block used to carry (`source`, `supporting`, `state`, `signed-by`, `classification`, `profile`, exact page count) goes in a **"Pack facts"** header block in that sample's own `file-index.md`, before its file table (see skeleton below). What a per-sample bootstrap's sample-specific prose used to carry (the real Context paragraph, sample-specific "what must not happen" instances, the coverage statement, the note on this sample's own supplied files) goes in that sample's own `pivot.md`, as `Context`/`Coverage` sections alongside its existing dated/numbered decisions.

## Samples under this skill
<A table: sample name, one-line subject, state, finding count, one-line note (who built it, anything distinctive). Add a row whenever a new sample is created — this table, not a new bootstrap.md, is how a reader finds what samples exist.>
```

---

## The skeleton addition — inside each sample's `file-index.md`

```markdown
## Pack facts

The facts a per-sample `bootstrap.md` used to carry in its front-matter block, before `<skill>/bootstrap.md` became the one shared skill-level bootstrap:

| field | value |
|---|---|
| source | <path + one-line note> |
| supporting | <path, or "n/a — reason"> |
| pages | <exact count for this sample's documents> |
| state | <draft \| verified \| signed, plus reason and a pivot.md pointer> |
| signed-by | <name, or "—"> |
| classification | <internal \| customer-confidential \| public-synthetic, plus note> |
| profile | <this sample's actual pack-profile line, with real counts> |
| profile-vocabulary | see skills/<skill>.md § Pack profile |
```

## The skeleton addition — inside each sample's `pivot.md`

Inserted right after the existing `## Agreement` section, before the numbered decision entries:

```markdown
## Context
<The real Context paragraph — this sample's specific subject, moved from where a per-sample bootstrap.md used to carry it.>

## Coverage
<Fully covered / scoped down / still open — this sample's actual coverage statement, moved from where a per-sample bootstrap.md used to carry it.>
```

---

## What's universal vs. what's skill-specific

| Part | Universal (same meaning everywhere) | Sample-specific (lives per-sample instead) |
|---|---|---|
| `<skill>/bootstrap.md` itself | One file, shared by every sample of that skill | — |
| Front-matter field **names and general values** (`skill`, `domain`, `scale`, `absence`, `labels`, page-counting *rule*) | Yes | — |
| `source`, `supporting`, exact `pages` count, `state`, `signed-by`, `classification`, `profile` | — | Yes — lives in that sample's `file-index.md` "Pack facts" |
| `## Brief` section headings and order | Yes — same six subsections, same order | — |
| Brief section **content** | General/skill-level only | Sample-specific Context/coverage detail lives in that sample's `pivot.md` |
| `## Operational guidelines` items 1–6 | Yes — copy verbatim | — |
| `## Operational guidelines` item 7 (audit-log) | The requirement is universal | — |
| `## Operational guidelines` item 8 (isolation) | The requirement is universal | The *names* of what must stay untouched are per-skill, not per-sample |
| "Samples under this skill" table | The table's existence is universal | Its rows are, by definition, sample-specific |

## Why this exists (and what changed)

The first version of this template (through 2026-09-18) unified the *shape* of a per-sample `bootstrap.md` but kept one file per sample — which still meant near-identical prose copied across `drawing-comparison/sample-1` and `sample-2`. On 2026-09-21 this was restructured to one bootstrap per **skill**: `drawing-comparison/bootstrap.md` now holds everything genuinely shared, and each sample's real facts (digest, counts, state, its own Context and Coverage) moved to that sample's own `file-index.md` and `pivot.md` — files that already existed and already carried pack-specific facts, so nothing new was invented to hold them. This keeps the promise "one common bootstrap, no per-sample duplicates" literally true, while every fact that is genuinely different between samples still lives somewhere real and traceable, not overwritten or merged away.
