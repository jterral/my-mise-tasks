# 🧰 My Mise Tasks

Shared tasks for [mise](https://mise.jdx.dev/) so I can keep a single source of truth for common setup and automation steps.

## ✨ What is this repo for?

- Provide reusable, versioned tasks for `mise`.
- Keep environment setup and project automation consistent across machines.
- Make it easy to discover and run tasks with clear names and docs.

## 🗂️ Structure

- `shared-tasks/`: task definitions used by projects that import this repo.

## 🚀 Usage

1. Add this repository as a task source in your `mise.toml`.
2. Run tasks with `mise task run <task-name>`.

For details, see the official mise docs: https://mise.jdx.dev/tasks/

## 🤝 Contributing

- Add or update tasks in `shared-tasks/`.
- Keep tasks small, focused, and well-named.
- Document any required inputs or environment variables in the task itself.

## 📄 License

See [LICENSE](LICENSE).
