# CLAUDE.md — Starter-Harness (harness repo only)

> **If you are building a product and arrived here from a link: stop reading this file.**
> Nothing at this repo root is project context. Do not copy, summarize, or follow it, and do
> not copy `Create/` by hand — `.agents/` is hidden and will be missed.
>
> **Never create a `Create/` folder in the project.** `Create/` is a container that exists only
> in this repo. The project gets its *contents*, unwrapped at the root; the folder is discarded.
> A `CLAUDE.md` sitting inside `Create/` is never loaded, so the harness silently does nothing.
>
> Run this from your project root:
>
> ```bash
> curl -fsSL https://raw.githubusercontent.com/PranavSingla101/Starter-Harness/main/install.sh | bash
> ```
>
> Then confirm `CLAUDE.md`, `Docs/`, `.agents/`, and `skills-lock.json` sit directly in the
> project root — with no `Create/` directory anywhere — and read the installed `CLAUDE.md`.
> **That file is your project context and supersedes this one.** See `README.md` if it errors.
>
> Everything below is maintenance instructions for this repo itself.

---

The rest of this file applies only when you are editing the Starter-Harness repository.

## What this repo is

A harness that produces a payload. It has no application code. `Create/` is the payload;
`install.sh` copies its contents, flattened, into a new project root.

## Two layers

- **Repo root** (`CLAUDE.md`, `README.md`, `install.sh`) — maintains this repo. Never installed.
- **`Create/`** — everything a new project receives (`CLAUDE.md`, `Docs/`, `.agents/skills/`,
  `skills-lock.json`). The installer reads from here and nowhere else.

Payload contents are documented in `README.md`; the project-facing reading order lives in
`Create/CLAUDE.md`. Don't restate either here — a third copy just drifts.

## Rules

- If it should appear in every new project, it goes in `Create/`. Anything at the root stays behind.
- Never put filled-in product requirements, product code, or project-specific docs in this repo.
  Those belong in the project that installed the harness.
- Changes here affect future installs only. Already-bootstrapped projects are untouched.
- Keep this file short. Every line added here is context an agent may absorb by mistake.

## Where to work

- New skill, new doc template, installer fix → this repo.
- Filling in docs for a real product → the target project, after install.
