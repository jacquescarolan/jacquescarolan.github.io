# Repository working instructions

These instructions apply to all work in this repository.

## Branch and scope

- Work on the `main` branch, which is the authoritative production source.
- At the start and end of meaningful work, run `git symbolic-ref --short HEAD`, inspect `git status --short --branch`, and inspect `git -C public status --short --branch`.
- Treat the current design, navigation, routes, and substantive content as approved. Do not redesign or rewrite them unless explicitly asked.
- Make small, reviewable changes. A push to `main` deploys automatically, so do not push, rename repositories, change remotes, or alter GitHub Pages settings without explicit approval.

## Canonical site source

- Normal visible copy belongs in Markdown.
- Homepage copy, artwork settings, and primary navigation live in `content/_index.md`.
- Main pages live in `content/neurotechnology/_index.md`, `content/science/_index.md`, `content/conversations/_index.md`, `content/other/_index.md`, and `content/about/index.md`.
- Publication records and their PDF/BibTeX resources live in page bundles under `content/publication/`.
- Do not hide normal editorial copy in layouts, CSS, data files, scripts, or workflows.
- Keep front matter small and add a field only when it controls behaviour Markdown cannot express.

## Generated output

- Never edit generated HTML or assets.
- Hugo production output belongs only in ignored `build/` (`publishDir = "build"`).
- Never write into nested `public/`. It is a frozen legacy publication checkout and is not part of the active deployment workflow.
- Treat `resources/` and `.hugo_build.lock` as disposable generated state.

## Technical constraints

- Use pinned Hugo Extended `0.164.0` unless an approved task updates the version and documentation together.
- Keep the site independent of Wowchemy, external Hugo themes, Hugo Modules, Go dependencies, Node/npm, frontend frameworks, a CMS, and complex asset pipelines.
- Use plain Hugo templates, semantic HTML, local CSS, and minimal JavaScript only when a concrete interaction requires it.
- Preserve the current body-font selector and self-hosted font files unless explicitly asked to change typography.

## Routes and downloads

- Read `docs/LEGACY_BASELINE.md` and `data/legacy-routes.json` before changing routes or downloads.
- Legacy project, press, public-engagement, author, post, and talk URLs are compatibility aliases on the current canonical pages. Preserve them.
- Preserve all required publication PDFs and BibTeX files.
- The three public-only PDFs marked `remove_when_legacy_public_workflow_is_retired` are intentionally obsolete and are not migration requirements.
- Run the route validator after changing aliases, content locations, publication templates, or static downloads.

## Validation

After meaningful changes, run:

```sh
hugo --minify --environment production --cleanDestinationDir
ruby scripts/check-legacy-routes.rb build
git diff --check
```

For layout or CSS work, also inspect representative desktop and mobile pages. Confirm output is confined to `build/` and nested `public/` remains clean.

## Documentation

- Keep `README.md`, `docs/ARCHITECTURE.md`, and `docs/EDITING_GUIDE.md` aligned with the actual commands and source tree.
- Treat `docs/NEW_HUGO_ARCHITECTURE.md`, `docs/DESIGN_BRIEF.md`, and `docs/CONTENT_PLAN.md` as historical planning records.
- Explain maintenance in plain language for a site owner who is not an experienced web developer.

## Installation and deployment safety

- Ask before system-level installation, `sudo`, Git configuration, toolchain downloads, or Hugo upgrades.
- Ask before changing deployment jobs, Pages settings, repository names, remotes, tokens, secrets, environments, custom domains, or production triggers.
- The production workflow must build with pinned Hugo, validate required routes, upload `build/` as a Pages artifact, and deploy only from `main`.
- Never push unless explicitly requested; a push to `main` triggers production deployment.
