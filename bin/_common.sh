#!/usr/bin/env bash
# Shared helper for every command wrapper in bin/. Not a command itself.
#
# Each wrapper is a thin shim: it does not reimplement any Bootstrap.md or
# Skill.md logic (that would duplicate the source of truth). It only invokes
# an LLM-agent CLI with an instruction to execute the named command exactly
# as Bootstrap.md defines it, resolved against this project's current
# FileIndex.md — the same thing that happens when you type the command
# directly into a chat with an agent that has read Bootstrap.md.
#
# Which agent CLI runs the prompt is configurable, not hardcoded, so these
# wrappers are not tied to one vendor's harness:
#
#   LIPPY_AGENT_CMD          the executable (+ any fixed flags) to invoke.
#                             Default: "claude -p" (Claude Code, non-interactive).
#                             Override to point at any other CLI-based coding
#                             agent that can be driven non-interactively with a
#                             single natural-language instruction and has file
#                             read/write/bash tool access to this project
#                             directory — e.g. LIPPY_AGENT_CMD="codex exec".
#   LIPPY_AGENT_PROMPT_MODE   how the prompt is delivered to that command:
#                             "arg"   (default) — appended as the final CLI argument
#                             "stdin"           — piped in on standard input
#                             Pick whichever matches the target CLI's own interface.
#
# Whatever agent runs, it still has to actually read and follow Bootstrap.md's
# command definitions and have tool access matching what that command needs
# (Read/Write/Edit for artifacts, a shell for digests, etc.) — this file only
# makes *which binary is invoked* swappable, not the requirement that some
# LLM agent capable of following Bootstrap.md is doing the work.

set -euo pipefail

LIPPY_AGENT_CMD="${LIPPY_AGENT_CMD:-claude -p}"
LIPPY_AGENT_PROMPT_MODE="${LIPPY_AGENT_PROMPT_MODE:-arg}"

# Walk up from this script's directory to find the project root (the
# directory containing Bootstrap.md), so these wrappers work regardless of
# the caller's current working directory.
_find_project_root() {
  local dir
  dir="$(cd "$(dirname "${BASH_SOURCE[1]}")" && pwd)"
  while [ "$dir" != "/" ]; do
    if [ -f "$dir/Bootstrap.md" ]; then
      echo "$dir"
      return 0
    fi
    dir="$(dirname "$dir")"
  done
  echo "error: could not find Bootstrap.md above $(dirname "${BASH_SOURCE[1]}")" >&2
  exit 1
}

PROJECT_ROOT="$(_find_project_root)"

# run_command <COMMAND-NAME-AS-WRITTEN-IN-BOOTSTRAP> [extra args...]
run_command() {
  local command_name="$1"
  shift || true
  local extra_args="$*"

  local prompt
  prompt="Execute the ${command_name} command exactly as defined in Bootstrap.md's"
  prompt+=" \"Terminal commands\" section, in this project directory (${PROJECT_ROOT}),"
  prompt+=" resolving all configuration from FileIndex.md as it currently stands there."
  prompt+=" Do not ask for confirmation before taking the actions that command's"
  prompt+=" definition itself already specifies; do proceed to log the result in"
  prompt+=" PromptLog.md per Bootstrap.md's traceability requirement."
  if [ -n "$extra_args" ]; then
    prompt+=" Command arguments: ${extra_args}"
  fi

  cd "$PROJECT_ROOT"

  # shellcheck disable=SC2206  # intentional word-splitting: LIPPY_AGENT_CMD
  # is a user-configured "binary + flags" string, not arbitrary input.
  local -a agent_cmd=(${LIPPY_AGENT_CMD})

  case "$LIPPY_AGENT_PROMPT_MODE" in
    arg)
      exec "${agent_cmd[@]}" "$prompt"
      ;;
    stdin)
      printf '%s' "$prompt" | exec "${agent_cmd[@]}"
      ;;
    *)
      echo "error: unknown LIPPY_AGENT_PROMPT_MODE '${LIPPY_AGENT_PROMPT_MODE}' (expected 'arg' or 'stdin')" >&2
      exit 1
      ;;
  esac
}
