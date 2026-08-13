# Project Instructions

This project was initialized from Starter Harness. Before creating or changing product code, establish and maintain the project documentation in `Docs/` so implementation decisions remain explicit and recoverable across sessions.

This file and `Docs/` are the complete project context. The Starter Harness repository is a scaffold generator and is not part of this project — do not fetch or read it for context.

## Required project setup

Before beginning implementation for a new project:

1. Complete `Docs/Prod-Req-Doc.md` with the product requirements, roles, pages, and core flows.
2. Complete `Docs/Project-overview.md` with product context, scope, constraints, and success measures.
3. Complete `Docs/Architecture.md` with stack decisions, system boundaries, and verification commands.
4. Complete `Docs/Roadmap.md` and create a feature spec for the first planned feature.
5. Complete `Docs/UI-context.md` before building UI.
6. For any meaningful or ambiguous feature, write its `Docs/Feature-specs/` entry and obtain approval before implementation.

## Documentation reading order

Before working on product code, read the relevant files in this order:

1. `Docs/Prod-Req-Doc.md` — requirements, user flows, pages, and permissions
2. `Docs/Project-overview.md` — product context, scope, constraints, and glossary
3. `Docs/Architecture.md` — technical decisions, boundaries, and quality gates
4. `Docs/Roadmap.md` — phases, priorities, and dependencies
5. `Docs/UI-context.md` — shared UX, accessibility, responsive, and visual rules
6. `Docs/UI-feature-detail.md` — page and component behavior
7. `Docs/Feature-specs/` — approved implementation detail for features
8. `Docs/Screenshots/` — referenced visual material
9. `Docs/Bugs-History.md` — diagnosed defects and regression prevention
10. `Docs/Progress-tracker.md` — current execution state and handoff context
11. `Docs/Startup.md` — setup, commands, environments, and troubleshooting

## Documentation maintenance rules

- Update `Docs/Progress-tracker.md` after every meaningful change.
- Update the relevant PRD, architecture, roadmap, UI, or feature-spec document before implementation when a change affects its content.
- Record resolved defects and their regression prevention in `Docs/Bugs-History.md`.
- Run `/imprint` after building or substantially changing UI components.
- Run `/review` after each feature, using the quality gates documented in `Docs/Architecture.md`.
- Keep `Docs/Progress-tracker.md` accurate enough that a fresh session can resume from it alone. It is the single record of session state — do not create a separate memory file.
