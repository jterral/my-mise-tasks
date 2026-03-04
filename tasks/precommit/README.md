# Pre-commit Tasks

Tasks for managing [pre-commit](https://pre-commit.com/) hooks in your project.

## Available Tasks

- `precommit:check-prerequisites` - Verify that pre-commit is properly installed
- `precommit:configure` - Install and configure pre-commit hooks for the repository
- `precommit:run-all` - Run all pre-commit hooks on staged files
- `precommit:run-hook` - Run a specific pre-commit hook
- `precommit:uninstall` - Remove pre-commit hooks from the repository
- `precommit:update` - Update all pre-commit hooks to their latest versions

## Including in Your Project

To include these tasks in your project, add the following to your `mise.toml`:

```toml
[task_config]
includes = [
    "git::ssh://git@github.com/myorg/shared-tasks.git//tasks/precommit",
]
```

## Usage

When imported via the main repository:

```bash
mise task run precommit:install
mise task run precommit:run-all
mise task run precommit:update
```

## Requirements

- Python 3.9+ must be installed
- pre-commit must be installed (`pip install pre-commit`)
- A `.pre-commit-config.yaml` file must exist in the repository root
