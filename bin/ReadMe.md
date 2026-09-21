# bin/ — terminal command wrappers

Each file here (`START`, `RESOLVE`, `NORMALIZE`, `PLAIN`, `JUDGE`, `OBSERVE`,
`ENHANCE-SKILL`, `REPORT`, `VALIDATE`, `EXPORT`, `LOG`, `SKILL`) is a thin executable
wrapper for the corresponding command defined in `Bootstrap.md`'s "Terminal commands"
section. None of them reimplement any logic — each one shells out to a configured
LLM-agent CLI with an instruction to execute that command exactly as `Bootstrap.md`
defines it, resolved against this project's current `FileIndex.md`. This is the same
thing that happens when you type the command as a chat message to an agent that has read
Bootstrap.md — these scripts just let you type it in a regular terminal instead.

## One-time setup

Add this directory to your shell's `PATH` so the commands are found without typing the
full path:

```bash
export PATH="$PWD/bin:$PATH"        # for this shell session only
# or, to make it permanent:
echo 'export PATH="'"$PWD"'/bin:$PATH"' >> ~/.bashrc && source ~/.bashrc
```

By default these wrappers invoke the Claude Code CLI (`claude -p`), so that must be
installed and authenticated out of the box. **To run under a different harness/agent
CLI**, set two environment variables before calling any command (see
`bin/_common.sh` for the full explanation):

```bash
export LIPPY_AGENT_CMD="codex exec"        # the other CLI's executable + fixed flags
export LIPPY_AGENT_PROMPT_MODE="arg"       # "arg" (prompt as the last CLI argument)
                                            # or "stdin" (prompt piped in), whichever
                                            # matches that CLI's own interface
```

This only swaps *which binary runs the instruction* — it does not make the commands
work without an agent in the loop. Whatever CLI `LIPPY_AGENT_CMD` points at must still
be an LLM-driven coding agent capable of (a) reading and following `Bootstrap.md`'s
command definitions from this project directory, and (b) using file read/write/edit and
shell tools to actually carry out what that command specifies — `bin/`'s scripts
supply the prompt, not the reasoning or the file operations.

## Usage

From anywhere (once `bin/` is on your `PATH`), or by running `./bin/COMMAND` directly
from the project root:

```bash
START                    # runs the full workflow against FileIndex.md's current config
RESOLVE                  # checks configuration only
NORMALIZE
PLAIN
JUDGE
OBSERVE
ENHANCE-SKILL
REPORT
VALIDATE
EXPORT
LOG
SKILL CHANGE 1           # Bootstrap.md's "SKILL CHANGE <version_number>" —
                          # a shell command name cannot contain a space, so this is
                          # split into the `SKILL` script plus a `CHANGE <n>` argument
```

Each command runs the configured agent CLI **non-interactively**. With the default
Claude Code CLI, your existing permission settings still apply — if a tool call needs
approval and none can be given in non-interactive mode, the run will report that rather
than hang. If you want these to run fully unattended, configure the relevant tool
permissions as allowed in this project's `.claude/settings.json` beforehand (see the
`update-config`/`fewer-permission-prompts` skills) — these wrapper scripts do not pass
any flag to skip permission checks by default, since that should be an explicit,
considered choice, not a default baked into a script. A different `LIPPY_AGENT_CMD`
will have its own equivalent non-interactive/permission flags to set, if any — consult
that CLI's own documentation.

## Why not a "real" implementation in bash/python?

Several of these commands (`JUDGE`, `OBSERVE`, `ENHANCE-SKILL`, `SKILL CHANGE`) require
applying a skill's judging rules to document text — genuine reasoning, not a
deterministic transformation a shell script can perform. Rather than half-implement
those in bash and leave the rest to the agent anyway, every command is routed through
the agent uniformly, so `Bootstrap.md` remains the single source of truth for what each
command does (per Bootstrap.md's own non-negotiable rule against duplicating
use-case/command logic outside itself).
