# Jacques Carolan — website source

This is a small custom Hugo site. Visible copy lives in Markdown, templates use plain Hugo HTML, and styling is plain CSS. It has no Wowchemy, Go-module, Node, npm, CMS, or frontend-framework dependency.

The production site is <https://jacquescarolan.github.io/>. The nested `public/` directory is a frozen legacy publishing checkout: do not edit it and never use it as Hugo's destination.

## Local preview

Install **Hugo Extended 0.164.0**, then run this from the repository root:

```sh
hugo server
```

Open <http://localhost:1313/>. Hugo watches Markdown, templates, and CSS and normally reloads the browser within seconds.

## Editing

See [`docs/EDITING_GUIDE.md`](docs/EDITING_GUIDE.md) for the exact file behind each page, figures, typography, fonts, conversations, and publications.

The main content files are:

- `content/_index.md` — homepage copy, artwork setting, and primary navigation
- `content/neurotechnology/_index.md` — Neurotechnology
- `content/science/_index.md` — Projects
- `content/conversations/_index.md` — Conversations, talks, and media
- `content/other/_index.md` — teaching, other projects, and reading
- `content/about/index.md` — biography, experience, education, and interests
- `content/publication/` — complete publication archive and downloads

## Production build and validation

```sh
hugo --minify --environment production --cleanDestinationDir
ruby scripts/check-legacy-routes.rb build
git diff --check
```

The production build is written to ignored `build/`. The route validator checks the required redirects, homepage fragments, publication PDFs, and BibTeX files recorded in `data/legacy-routes.json`.

The workflow in `.github/workflows/deploy-pages.yml` runs the same build and validation after a push to `main`, then deploys `build/` through GitHub Pages. Generated HTML is uploaded as an Actions artifact and is never committed to Git.

The normal publishing workflow is:

```sh
git add <edited-files>
git commit -m "Describe the site update"
git push
```

GitHub Actions then builds and publishes the site automatically.

## Architecture and history

- [`docs/ARCHITECTURE.md`](docs/ARCHITECTURE.md) describes the current production structure.
- [`docs/LEGACY_BASELINE.md`](docs/LEGACY_BASELINE.md) and `data/legacy-routes.json` preserve the migration contract.
- The other planning documents in `docs/` are historical design and migration records, not current operating instructions.
