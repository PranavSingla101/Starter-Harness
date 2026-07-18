# Harness Starter

This is the base scaffold — the "harness" — used to bootstrap every new project. It is not an app itself. It's the surrounding rig: the doc templates, feature-spec structure, and setup tooling that every new project starts from, so you're not recreating the same empty files by hand each time.

See `CLAUDE.md` for the note Claude Code reads on open.

## When to use this

Use this harness at the start of a **new** project, before any product code exists — it's the first thing you drop into an empty repo so the agent has structured docs and skills to work from instead of a blank slate. Don't reach for it mid-project; retrofitting it onto an existing codebase means the docs won't match reality until you backfill them, which defeats the point.

Two ways to pull it in:
- **New project on your machine**: run `install.sh` (see the one-liner in the script's header comment) inside the new project's root.
- **Editing the harness itself**: work directly in this repo (`Starter-Harness`), not in a project that already installed it — changes here only reach new projects, not ones already scaffolded (see the versioning gap noted below).

## Where things go

This repo has two layers, and it's easy to put something in the wrong one:

- **Repo root** (`CLAUDE.md`, `README.md`, `install.sh`) — describes *this harness repo itself*: what it is, how to maintain it, how to install it elsewhere. None of this is copied into new projects.
- **`Create/`** — the actual payload. Everything a new project receives (`CLAUDE.md`, `Docs/`, `.agents/skills/`, `skills-lock.json`) lives here, and only here. If you want a file, skill, or doc template to show up in every new project, it must go inside `Create/` — anything left at the repo root stays behind.

`install.sh` only ever reads from `Create/` in the tarball, so this split isn't cosmetic — putting something at the root by mistake means it silently never reaches a real project.

## What's in here

- **`Docs/`** — blank templates to fill in per project:
  - `Project-overview.md` — what the product is, who it's for, core value prop
  - `Architecture.md` — stack decisions (frontend, backend, DB, hosting)
  - `Roadmap.md` — what's in v1 vs later
  - `Progress-tracker.md` — updated as you build
  - `UI-context.md` — what you want the UI to do
  - `UI-feature-detail.md` — feature-by-feature UI/consistency notes (buttons, elements)
  - `Feature-specs/` — one md file per feature spec
  - `Screenshots/` — reference mockups/screenshots, linked from the docs above
  - `Startup.md` — how to run/set up the project locally, first-time and every day
- **`.agents/skills/`** — Claude Code skills wired into this harness: `architect`, `imprint`, `recover`, `remember`, `review`.

## How to use this harness

1. Copy or template this folder into a new project.
2. Fill in `Docs/Project-overview.md` and `Docs/Architecture.md` first — everything else derives from these.
3. Add feature specs to `Docs/Feature-specs/` and screenshots to `Docs/Screenshots/`.
4. Fill in `Docs/UI-context.md` and `Docs/UI-feature-detail.md`.
5. Open Claude Code and run `/architect` to turn the filled-in docs into an implementation plan.

This folder is meant to stay generic — no project-specific content should live here permanently. It's the mold, not the cast.
