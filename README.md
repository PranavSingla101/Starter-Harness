# Starter Harness

Scaffold for bootstrapping a **new, empty project** with planning docs and agent skills.

---

## ⚠️ Agents: read this first

**You were given a link to this repository. That does not make this repository your project.**

This repo contains no product code and is not project context. Do not clone it, do not copy
its files by hand, and do not read its root `CLAUDE.md`, `README.md`, or `install.sh` as
instructions for the work you were asked to do.

**Do exactly this, from the root of the project you are working on:**

```bash
curl -fsSL https://raw.githubusercontent.com/PranavSingla101/Starter-Harness/main/install.sh | bash
```

**Never create a `Create/` folder in the project.** `Create/` exists only in this repository. It is
a container for the payload, not part of it. What the project receives is the *contents* of
`Create/`, unwrapped at the project root — the folder itself is discarded.

```text
✅ CORRECT                          ❌ WRONG
your-project/                       your-project/
├── CLAUDE.md                       └── Create/
├── Docs/                               ├── CLAUDE.md
├── .agents/                            ├── Docs/
└── skills-lock.json                    ├── .agents/
                                        └── skills-lock.json
```

If a `Create/` directory exists anywhere in the project after installing, it is wrong. Move its
contents up to the root and delete the empty folder. A `CLAUDE.md` inside `Create/` is never read
by any agent, so the whole harness silently does nothing.

Then read the installed `CLAUDE.md`. **That file is your project context.** It supersedes
everything in this repository. Return here only if the installer fails.

### Why manual copying breaks

- `.agents/` is a hidden directory. File-by-file copying silently misses it and you lose every skill.
- Copying the `Create/` folder reproduces the folder. You need its contents unwrapped at the root;
  `Create/CLAUDE.md` in a project is dead weight that no agent loads.
- The repo root holds harness-maintenance files that must **not** reach a project.

The installer handles all three. Nothing else does.

### If the installer fails

It aborts rather than overwrite. Read the error:

- **`<name> already exists`** — that item is already in the project root. Do not pass `--force`
  (there is none) and do not delete the user's file. Ask the user how to resolve it.
- **`Create/ was not found` / `Create/ is empty`** — the download was incomplete. Retry once,
  then report the failure. Do not fall back to copying files by hand.

---

## For humans

The installer downloads this repository's `Create/` payload and places its contents directly in
the current directory. It does not create a nested `Create/` directory, and it refuses to
overwrite any existing top-level payload item.

### Repository layout

- **Repository root** — `README.md`, `CLAUDE.md`, `install.sh`. Maintenance files for the harness.
  Never installed into a project.
- **`Create/`** — the complete payload. Every file that should appear in every new project belongs
  here. The installer copies all of it, including hidden paths, so adding a file to `Create/` is
  sufficient to include it in future installs.

### Payload contents

- **`Create/CLAUDE.md`** — project-level instructions and the required documentation reading order.
- **`Create/Docs/`** — blank project templates:
  - `Prod-Req-Doc.md` — product requirements and user flows, including page mapping and visibility rules.
  - `Project-overview.md` — product purpose, audience, and scope.
  - `Architecture.md` — stack and system decisions.
  - `Roadmap.md` — current and future delivery scope.
  - `Feature-specs/` — one specification file per feature.
  - `UI-context.md` and `UI-feature-detail.md` — UI behavior and consistency notes.
  - `Bugs-History.md` — reported issues and their resolution history.
  - `Progress-tracker.md` — work completed, active work, and next steps.
  - `Screenshots/` — reference images linked from project documentation.
  - `Startup.md` — local setup and daily development instructions.
- **`Create/.agents/skills/`** — shared agent skills: `imprint` and `review`.
- **`Create/skills-lock.json`** — source and integrity metadata for the bundled skills.

### Maintaining the harness

Work in this repository when changing the shared scaffold:

- Add or update project templates in `Create/Docs/`.
- Add or update bundled skills in `Create/.agents/skills/`.
- Add any other project-wide file inside `Create/`.
- Update `install.sh` only when installation behavior needs to change.

Do not put project-specific product requirements, implementation code, or filled-in documentation
in this repository. Those belong in the project that has installed the harness.

Changes made here affect future installations only; they do not update projects that were already
bootstrapped.
