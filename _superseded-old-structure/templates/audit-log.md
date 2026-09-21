# Common audit-log template — applies to every skill

A fifth root file, alongside `bootstrap.md`, `prompting.md`, `pivot.md` and `file-index.md`. It exists to answer a question none of the other four answer on their own: **"as the workflow ran, what actually happened, step by step, in order?"**

- `prompting.md` logs instructions **received** (from the user, dated).
- `pivot.md` logs decisions **made** (judgment calls, with a yes/no and reasoning).
- `audit-log.md` logs the workflow **running** — one entry per pass through one of the skill's own `Steps` (from `skills/<skill>.md`), in the order it actually happened, each one pointing at what it touched and what it produced.

The three are complementary, not overlapping: a single real event often produces one entry in each — an instruction arrives (`prompting.md`), the workflow step it triggers runs and touches specific files (`audit-log.md`), and if a judgment call was needed along the way, that call is recorded (`pivot.md`). None of the three should duplicate the others' content — `audit-log.md` links to a `pivot.md` entry by reference (e.g. "see pivot.md § 4") rather than re-explaining the reasoning.

**Scope note:** like `templates/bootstrap.md`, this is a repo-level template — one shape shared by every skill's projects, not a per-project skeleton for a project's own future actuals.

---

## The skeleton

Every step gets **two things**: one row in the run's summary table (for a fast scan) and its own detail block underneath (for an actual audit trail). The table alone is not sufficient — a reader must be able to answer "exactly what did this step check, and exactly what came out of it" without opening any other file.

```markdown
# audit-log.md

One entry per pass through one of `skills/<skill>.md`'s own `Steps`, in the order it happened. Cross-references `pivot.md` for the reasoning behind any judgment call made during a step, rather than repeating it here.

## Run 1 · <date> · <who ran it — "this session" / an agent name / a named reviewer>

| step | started | what it touched | what it produced | status |
|---|---|---|---|---|
| <STEP NAME, from skills/<skill>.md's Steps table> | <date/time or just date> | <input files/documents/regions read, in one phrase> | <output files created or updated, in one phrase> | <complete / partial — pending / blocked — see pivot.md § n> |
| <next step> | … | … | … | … |

### Step detail

#### <STEP NAME> — <date/time>
- <Exact action taken: the specific command/tool/method used, e.g. "ran `pdftotext -layout` on both PDFs", "cropped page 8 at (4400,900)-(5600,2200) and visually inspected", "grepped for `\b545\b` in both text layers">
- <Exact result: specific values found, specific file names, specific ids — not "checked the drawing", but "confirmed `420` and `545` each appear twice in rev3.txt (lines 92, 478 and 134, 532)">
- <Every unit/finding this step's work bears on, named by id — e.g. "feeds MEMB-13, MEMB-14, MEMB-15, MEMB-16">
- <If this step's output was later revised, say by which later run/step, and point at the pivot.md entry>

#### <next step> — <date/time>
- …

<One short paragraph, only if needed: anything about this run as a whole that doesn't belong in any single step's detail — e.g. "this run's GENERATE step produced 17 of the skill's eventual N findings; see Run 2 for the rest.">

## Run 2 · <date> · <who> · <why this run happened — e.g. "correction after Run 1 of a sibling pack flagged a gap">

| step | started | what it touched | what it produced | status |
|---|---|---|---|---|
| … | … | … | … | … |

### Step detail

#### <STEP NAME> — <date/time>
- …
```

- **A "run" is one coherent pass through the workflow** — typically one sitting, but a correction cycle that re-enters the steps later (like a pack being fixed after a peer-review finding) is its own run, dated and reasoned, not folded into Run 1's rows.
- **Every step a skill declares must appear at least once across the log**, even a trivial pass (e.g. `ALIGN` for a single-document extraction skill that has no ALIGN step at all — say so once in the run's paragraph, don't leave a silent gap that looks like an oversight).
- **The table row is a summary of its detail block, never the only record** — "what it touched"/"what it produced" in the table must be traceable to specific bullets underneath; a table row with no matching detail block is incomplete.
- **Detail bullets name real files, ids, commands, and values** — never a vague description ("checked the sheet", "verified the data"). If a specific coordinate, grep pattern, page number, or tag was used, write it down; that specificity is the entire point of an audit trail.
- **Status "blocked"** must point at the `pivot.md` entry (or `pivot.md`'s `## Coverage` section, per `templates/bootstrap.md`'s sample-facts convention) that says what's still open, so a blocked step is never a dead end for a reader.

## Where this fits in the project folder

`audit-log.md` is per-sample, same as `prompting.md`, `pivot.md` and `file-index.md` — unlike `bootstrap.md`, which as of 2026-09-21 is one file per *skill*, shared by every sample (see `templates/bootstrap.md`):

```
<skill>/
  bootstrap.md            <- one per skill, shared
  sample-1/
    prompting.md
    pivot.md
    audit-log.md          <- new, per sample
    file-index.md
    documents/
    skills/
    actuals/
  sample-2/
    prompting.md
    pivot.md
    audit-log.md          <- new, per sample
    file-index.md
    …
```

## Operational guidelines addition

The skill-level `bootstrap.md` § Operational guidelines gains one line, applying to every sample of that skill (renumbering the isolation-boundary rule that follows it):

> Log every pass through a workflow step in `audit-log.md` as it happens — step name, what it touched, what it produced — before moving to the next step.

`file-index.md` gains one row for `audit-log.md` itself, same as any other root file.
