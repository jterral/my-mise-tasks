# Docker Tasks

Tasks for common Docker workflows using Docker CLI and Docker Compose v2.

## Available Tasks

- `docker:check-prerequisites` - Verify that Docker CLI and Docker Compose v2 are available
- `docker:build` - Build a Docker image
- `docker:clean` - Aggressively clean unused Docker resources
- `docker:lint` - Lint a Dockerfile using `docker build --check`
- `docker:compose:up` - Start services with `docker compose up -d`
- `docker:compose:down` - Stop services with `docker compose down`
- `docker:compose:lint` - Lint a Compose file using `docker compose config`

## Including in Your Project

To include these tasks in your project, add the following to your `mise.toml`:

```toml
[task_config]
includes = [
    "git::ssh://git@github.com/myorg/shared-tasks.git//tasks/docker",
]
```

## Usage

When imported via the main repository:

```bash
mise task run docker:build --image my-app --tag dev
mise task run docker:run --image my-app --tag dev --port 8080:80
mise task run docker:compose-up
mise task run docker:compose-down
mise task run docker:lint
mise task run docker:clean --force
```

## Requirements

- Docker CLI must be installed and available in PATH
- Docker Compose v2 plugin must be available via `docker compose`
- A project Dockerfile and/or Compose file must exist for related tasks
