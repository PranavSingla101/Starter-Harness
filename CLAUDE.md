# CLAUDE.md — Starter-Harness

## What this repo is

This repo is the harness itself, not a project. It has no application code — it exists to produce `Create/`, which gets installed into new, empty projects via `install.sh`.

## Layout

- **Repo root** (`CLAUDE.md`, `README.md`, `install.sh`) — describes and maintains this harness repo. Never copied into new projects.
- **`Create/`** — the payload. Everything a new project receives (`CLAUDE.md`, `Docs/` templates, `.agents/skills/`, `skills-lock.json`) lives here, and only here.

## Rule

If a file, skill, or template should show up in every new project, it goes inside `Create/`. Anything left at the repo root stays behind — `install.sh` only reads from `Create/`.

## Where to work

- Editing the harness (new skill, new doc template, fixing `install.sh`): work in this repo.
- Filling in docs for an actual product: that happens in the target project after install, not here — see `Create/CLAUDE.md` for that reading order.

See `README.md` for the full explanation.
