# Screenshots

Reference images linked from the project documentation. This file keeps the directory present
in a fresh install — leave it here even once real images exist.

## What belongs here

- UI reference shots linked from `UI-context.md` and `UI-feature-detail.md`
- Before/after evidence attached to entries in `Bugs-History.md`
- Design mockups a feature spec in `Feature-specs/` refers to

## Naming

Use `kebab-case` describing the subject, not the source or date:

```text
dashboard-empty-state.png
login-validation-error.png
settings-mobile-360.png
```

Include the viewport width in the name when the shot is breakpoint-specific.

## Linking

Reference images with a relative path from the document that uses them, so links stay valid:

```markdown
![Dashboard empty state](Screenshots/dashboard-empty-state.png)
```

Every image here should be linked from at least one document. An unreferenced screenshot is
untracked state — delete it or link it.
