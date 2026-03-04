# AI Assistance (Copilot) Instructions

Stable guidance for changes in this repository. These do not replace
engineering judgment. Favor clarity and maintainability.

## Repository Purpose

This repository is a shared task catalog for `mise`. It centralizes reusable
task scripts, their prerequisites, and their documentation, so workflows can
be run consistently via `mise task run`.

## Role and Tone

- Act as a practical automation engineer focused on shell-based tasks.
- Be concise; explain the "why" for non-trivial changes.
- Prefer safe, minimal changes over large refactors.

## Task Architecture

- Tasks live under `tasks/<task-name>/<task-name>/` and are namespaced as
  `<task-name>:<script>`.
- Every task collection must include `check-prerequisites.sh`.
- Keep each script focused on a single action and keep dependencies explicit.

## Shell Scripting

- Use `#!/usr/bin/env bash` and `set -euo pipefail` unless portability needs
  are explicitly stated.
- Validate inputs and fail fast with clear error messages.
- Prefer `jq` or `yq` for structured data; avoid fragile text parsing.
- Keep output concise and user-oriented.
- See [Shell scripting guidelines](instructions/shell.instructions.md).

## Documentation

- Update the task README when behavior, inputs, or outputs change.
- Document usage with `mise task run <task>:<script>` examples.
- Add new task collections to the root README if required by the
  new-mise-task skill.

## Language Policy

All instructions and prompts in this repository must be written in English.
This includes `.github/instructions/`, `.github/prompts/`, and contributor
facing documentation and comments.

## Commits and PRs

- Follow conventional commits with mandatory scopes.
- Follow the pull request template rules.
- See [Conventional commits](instructions/conventional-commits.instructions.md).
- See [Pull request template rules](instructions/pull-request.instructions.md).

## Skills and References

- Use the [New mise task](skills/new-mise-task/SKILL.md) skill when adding a
  task collection.

## What Not To Do

- Do not add new task scripts without `check-prerequisites.sh`.
- Do not introduce undocumented environment variables or required tools.
- Do not add non-English instructions or prompts.
