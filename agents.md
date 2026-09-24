# agents.md

Any agent working in this project must start by reading **`bootstrap.md`**.

## What to read, and in what order

1. **`bootstrap.md`** — the orchestration layer. It defines every command
   (`START`, `RESOLVE`, `NORMALIZE`, `JUDGE`, `OBSERVE`, `ENHANCE-SKILL`, `REPORT`,
   `VALIDATE`, `MANUAL VALIDATE`, `SKILL CHANGE`, `EXPORT`, `LOG`), the execution flow, the
   directory architecture, and the non-negotiable rules governing this project. No
   command runs, and no output is generated, without first following what this file
   specifies.
2. **`fileIndex.md`** — the configuration `bootstrap.md` resolves against: which use
   case, which source/supporting documents, which skill file, who the authorized reviewer
   is.
3. **`skills/<usecase>/skill.md`** — the judging rules for whichever use case
   `fileIndex.md` currently points at.

## How execution is triggered

Two equivalent ways to run a command:

- **As a chat instruction** to an agent that has read `bootstrap.md`: type the command
  name (e.g. `START`) and the agent follows `bootstrap.md`'s definition of it.
- **From a shell**: `bin/<COMMAND>` (e.g. `./bin/START`) — a thin wrapper that shells out
  to an agent CLI with an instruction to execute that command exactly as `bootstrap.md`
  defines it. See `bin/readMe.md` for setup and for running under a different agent CLI.

Either path reduces to the same thing: an agent reads `bootstrap.md`, resolves
configuration from `fileIndex.md`, and carries out the named command's definition. No
file in this project — not `bin/`'s wrapper scripts, not this file — reimplements any of
that logic; `bootstrap.md` is the single source of truth for what each command does.

## Non-negotiable for any agent

- Never write use-case-specific facts, sample content, or judging logic into
  `bootstrap.md` itself — that belongs in `fileIndex.md` (configuration) or
  `skills/<usecase>/skill.md` (generalized rules). See `bootstrap.md` §13.
- Never process a document that isn't explicitly configured in `fileIndex.md`.
- Follow `bootstrap.md`'s current filename convention (§ rule 19) for anything created.
