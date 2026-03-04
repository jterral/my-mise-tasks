---
name: new-mise-task
description: Add a new task to the shared tasks repository.
---

# New Task Template

This template provides a starting point for adding a new task to the shared tasks repository. Follow the instructions below to create and document your new task.

## 📁 Folder Structure

Create a new folder for your task under the `tasks/` directory. For example, if you're adding a task related to Docker, you might create `tasks/docker/`.

Use the nested folder structure so tasks are automatically namespaced:

```txt
tasks/
└── docker/
    ├── README.md
    └── docker/
        ├── check-prerequisites.sh
        └── build.sh
```

> The nested folder name (e.g., `docker/docker/`) ensures tasks are namespaced as `docker:<task>`.

## ✅ Required Files

Your task collection should include:

- `tasks/<task-name>/README.md`
- `tasks/<task-name>/<task-name>/check-prerequisites.sh` (always required)
- One or more task scripts (e.g., `install.sh`, `run.sh`, `build.sh`)

## 🧩 Step-by-Step

1. **Create the folder structure**
   - `tasks/<task-name>/`
   - `tasks/<task-name>/<task-name>/`

2. **Add `check-prerequisites.sh`**
   - This script validates that required tools or environment variables exist.
   - It should fail fast with a clear error message.

3. **Add your task scripts**
   - Keep them small and focused.
   - Prefer one action per script (e.g., `install.sh`, `configure.sh`).

4. **Add executable permissions** to your scripts:

   ```bash
   chmod +x tasks/<task-name>/<task-name>/*.sh
   ```

5. **Document the task in `README.md`**
   - Explain the purpose.
   - List available tasks and usage examples.
   - Note required inputs or env vars.

6. **Update the root README if needed**
   - Add your task collection to "Available Tasks" if it's new.

7. **Update the root `mise.toml`**
   - Add your task collection to the `includes` array under `[task_config]`.

## 🧪 Recommended Conventions

- **Naming**: use lowercase and hyphens (`my-task`).
- **Scripts**: `#!/usr/bin/env bash` and `set -euo pipefail`.
- **Docs**: include example `mise task run <task>:<script>` commands.
- **Prereqs**: keep `check-prerequisites.sh` minimal and explicit.

## ✅ Example Usage

```bash
mise task run docker:build
```
