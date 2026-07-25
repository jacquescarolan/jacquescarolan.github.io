# Repository working instructions

These instructions apply to all work in this repository.

## Branch and scope

- Stay on the `redesign` branch while the redesign is in progress.
- At the start and end of meaningful work, verify the branch with `git symbolic-ref --short HEAD` and inspect `git status --short --branch`.
- Also check `git -C public status --short --branch` whenever work could affect generated output or deployment.
- Stop and ask before switching branches, changing remotes, renaming repositories, altering GitHub Pages settings, pushing, or deploying.
- Make small, reviewable changes and commits. Do not combine unrelated cleanup, content rewriting, architecture work, and visual design.

## Content ownership

- Markdown is the source of normal visible site content.
- Keep homepage copy in the corresponding file under `content/sections/`, with the introduction in `content/_index.md`.
- Do not embed normal editorial copy in HTML templates, CSS, JavaScript, data files, or workflows.
- Use clear, minimal front matter. Add a field only when it controls behaviour Markdown cannot express.
- Prefer page bundles for standalone Work, Writing, Conversation, and Publication pages so local media and downloads remain beside their Markdown.
- Keep curated recommendations in `content/sections/reading.md` unless a future requirement justifies a collection.
- Use `home_featured: true` to select collection items for the homepage's plain featured lists.

## Generated output

- Never edit generated HTML or assets by hand.
- Never write the new site into nested `public/`.
- Treat `public/` as a separate legacy publication repository until an approved launch retires it.
- Use configured `build/` for production-test output and keep it ignored by Git.
- Treat `resources/` and generated caches as disposable output, not source.

## Technical constraints

- Build the redesign with pinned Hugo Extended `0.164.0` unless a later approved architecture change updates the pin and documentation together.
- Do not add Wowchemy, another Hugo theme framework, Hugo Modules, Go dependencies, Node, npm, a JavaScript frontend framework, a CMS, a database, or a complex asset pipeline without explicit approval.
- Use plain Hugo templates, semantic HTML, one readable CSS foundation, and no JavaScript unless a concrete interaction requires it.
- Do not begin aesthetic experimentation until the neutral foundation, content model, routes, downloads, local preview, and build workflow are validated.

## Validation

- Run a Hugo build after meaningful implementation or content-structure changes.
- For local implementation work, verify `hugo server` starts and live reload works for a Markdown change.
- Run a clean production build before handing off meaningful technical changes.
- Run the legacy-route and download validator when routes, aliases, content locations, publication templates, or static files change.
- Confirm new output is under `build/` and nested `public/` remains unchanged.
- Report build commands, warnings, errors, generated-output location, and validation results.

## Legacy preservation

- Read `docs/LEGACY_BASELINE.md`, `docs/NEW_HUGO_ARCHITECTURE.md`, and `data/legacy-routes.json` before route, content-model, deployment, or cleanup work.
- Preserve priority legacy URLs using unchanged paths, Hugo aliases, or explicit redirect pages.
- Preserve the CV, retained publication PDFs, and BibTeX files at their recorded URLs.
- The three public-only PDFs marked `remove_when_legacy_public_workflow_is_retired` are intentionally obsolete and are not migration requirements.
- Do not delete authored legacy content or assets until their replacement, archive treatment, or redirect has been validated and approved.
- Framework files may leave the active build only in an approved, reversible migration step with a successful replacement build.

## Documentation

- Keep `README.md` local preview, editing, build, and deployment instructions accurate whenever commands or structure change.
- Keep the pinned Hugo version consistent across architecture documentation, installation instructions, and GitHub Actions.
- Update the legacy route manifest when an approved preservation or removal decision changes.
- Explain maintenance choices in plain language for a site owner who is not an experienced web developer.

## Installation and deployment safety

- Ask before system-level installations, `sudo`, Git configuration changes, new toolchain downloads, or Hugo upgrades.
- Ask before creating or changing deployment jobs, GitHub Pages settings, repository names, remotes, tokens, secrets, environments, custom domains, or production triggers.
- Build-only CI on `redesign` must not call `actions/deploy-pages` or otherwise publish a site.
- The intended future user-site address is `https://jacquescarolan.github.io/`, tied to the GitHub username `jacquescarolan`.
- Treat the existing `jacq-car.github.io` repository and nested `public/` checkout as legacy infrastructure until launch is explicitly approved.
- Never push or deploy unless the user explicitly requests it.
