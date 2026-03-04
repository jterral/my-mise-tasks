# Tasks Directory

This directory contains all available mise tasks that can be imported by other projects.

## Structure

Each task collection is organized in its own subdirectory:

- `gitversion/` - GitVersion task definitions
- `precommit/` - Pre-commit hook management tasks

## Adding a New Task Collection

To add a new task collection:

1. Create a new directory: `tasks/mytasks/`
2. Create a `mise.toml` file with task definitions
3. Add task scripts as needed
4. Create a `README.md` documenting the tasks
5. Update the main `README.md` to include the new tasks in the "Available Tasks" section
6. Update the root `mise.toml` to include the new path in `[task_config].includes`

## Task Definition Format

Each task directory contains a `mise.toml` file:

```toml
[tasks.my-task]
description = "Description of what the task does"
script = "path/to/script.sh"
depends = ["other-task"]  # optional
```

When imported into another project with:

```toml
[task_config]
includes = ["git::ssh://git@github.com/org/shared-tasks.git//tasks/mytasks?ref=v1.0.0"]
```

Tasks will be available as `mytasks:my-task`.

## Dependency Management

Tasks can depend on other tasks within the same collection:

```toml
[tasks.configure]
depends = ["check-prerequisites"]
script = "configure.sh"
```

When imported, these become `mytasks:configure` and `mytasks:check-prerequisites`.
