# Harness Starter

This is the base scaffold — the "harness" — used to bootstrap every new project. It is not an app itself. It's the surrounding rig: the doc templates, feature-spec structure, and setup tooling that every new project starts from, so you're not recreating the same empty files by hand each time.

See `CLAUDE.md` for the note Claude Code reads on open — it points to `Create-details.md` for how to use this harness.

## What's in here

- **`Docs/`** — blank templates to fill in per project:
  - `Project-overview.md` — what the product is, who it's for, core value prop
  - `Architecture.md` — stack decisions (frontend, backend, DB, hosting)
  - `Roadmap.md` — what's in v1 vs later
  - `Progress-tracker.md` — updated as you build
  - `UI-context.md` — what you want the UI to do
  - `UI-feature-detail.md` — feature-by-feature UI/consistency notes (buttons, elements)
  - `Feature-specs/` — one file per feature spec
  - `Screenshots/` — reference mockups/screenshots, linked from the docs above
- **`Startup.md`** *(not included in this folder — lives in the original Relay repo)* — the full writeup of how this harness is meant to be used, cloned, and eventually turned into a one-command (`set`) scaffolding CLI.
- **`.agents/`** *(not included yet)* — will hold the Claude Code skills (`architect`, `imprint`, `remember`, `review`) once wired up here.

## How to use this harness

1. Copy or template this folder into a new project.
2. Fill in `Docs/Project-overview.md` and `Docs/Architecture.md` first — everything else derives from these.
3. Add feature specs to `Docs/Feature-specs/` and screenshots to `Docs/Screenshots/`.
4. Fill in `Docs/UI-context.md` and `Docs/UI-feature-detail.md`.
5. Once skills are wired in, open Claude Code and run `/architect` to turn the filled-in docs into an implementation plan.

This folder is meant to stay generic — no project-specific content should live here permanently. It's the mold, not the cast.
