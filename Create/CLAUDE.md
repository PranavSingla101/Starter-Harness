# CLAUDE.md — Starter Harness

## ⚠️ This Repo Is a Scaffold, Not an App

There is no application code here. `Docs/` holds blank templates; `Create-details.md` (repo root, one level up) **already exists** and holds the harness usage instructions — edit it, don't recreate it. This folder is the mold, not the cast.

---

## Mandatory Reading Order

Before filling in any doc, read these files **in order**:

1. `../Create-details.md` — how this harness works and how to use it
2. `Docs/Project-overview.md` — what the product is, who it's for, scope
3. `Docs/Architecture.md` — stack decisions (frontend, backend, DB, hosting)
4. `Docs/Roadmap.md` — what's in v1 vs later
5. `Docs/UI-context.md` — what the UI should do
6. `Docs/UI-feature-detail.md` — buttons/elements documented for consistency
7. `Docs/Feature-specs/` — one file per feature spec
8. `Docs/Screenshots/` — reference mockups, linked from the docs above
9. `Docs/Progress-tracker.md` — current phase, what's done, what's next
10. `Docs/Startup.md` — how to run/set up the project locally

**After every meaningful change**, update `Docs/Progress-tracker.md`.
**If your change affects scope or architecture**, update the relevant `Docs/` file before continuing.
