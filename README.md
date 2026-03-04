# 🧰 My Mise Tasks

Shared tasks for [mise-en-place](https://mise.jdx.dev/) so I can keep a single source of truth for common setup and automation steps.

## ✨ What is this repo for?

- Provide reusable, versioned tasks for `mise-en-place`.
- Keep environment setup and project automation consistent across machines.
- Make it easy to discover and run tasks with clear names and docs.

## 🗂️ Structure

- `tasks/gitversion/`: GitVersion-related tasks
- `tasks/precommit/`: Pre-commit hook management tasks
- Each task folder contains a `mise.toml` defining available tasks with the namespace prefix (e.g., `gitversion:current`)

## 🚀 Usage

### For Projects Importing This Repository

Add this repository as a task source in your `mise.toml`:

```toml
[task_config]
includes = [
    "git::ssh://git@github.com/myorg/shared-tasks.git//tasks/gitversion?ref=v1.0.0",
    "git::ssh://git@github.com/myorg/shared-tasks.git//tasks/precommit?ref=v1.0.0",
]
```

Then run tasks with the namespace prefix:

```bash
mise task run gitversion:current
mise task run precommit:configure
```

### Available Tasks

- `gitversion`: see `tasks/gitversion/README.md`
- `precommit`: see `tasks/precommit/README.md`

For details, see the official mise docs: https://mise.jdx.dev/tasks/

## 🤝 Contributing

- Add or update tasks in `tasks/` (e.g., `tasks/gitversion/`, `tasks/precommit/`).
- Each task folder must contain a `mise.toml` with task definitions.
- Keep tasks small, focused, and well-named.
- Document any required inputs or environment variables in the task itself.

## 🙏 Acknowledgments

Thanks to [this blog post](https://blog.ace-dev.me/posts/2025/04/how-we-use-mise-at-work-part-3/) for the `download-tasks` script used to share tasks across projects.

## 🔑 License

See [LICENSE](LICENSE).
