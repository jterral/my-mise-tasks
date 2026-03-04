# GitVersion Tasks

Tasks for managing version information using [GitVersion](https://gitversion.net/).

## Available Tasks

- `gitversion:check-prerequisites` - Verify that GitVersion is properly installed and configured
- `gitversion:current` - Get the current semantic version from the repository

## Including in Your Project

To include these tasks in your project, add the following to your `mise.toml`:

```toml
[task_config]
includes = [
    "git::ssh://"
]
```

## Usage

When imported via the main repository:

```bash
mise task run gitversion:check-prerequisites
mise task run gitversion:current
```

## Requirements

- GitVersion must be installed and available in PATH
- The repository must be a git repository with proper git history
