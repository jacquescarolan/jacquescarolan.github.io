# New custom Hugo architecture

Status: approved technical direction for the `redesign` branch. This document describes the replacement architecture before implementation. It does not activate deployment or change the live site.

## Objectives

The replacement site must provide:

- fast local preview with the normal command `hugo server`;
- reliable Hugo live reload when Markdown or CSS changes;
- automatic GitHub Pages deployment after the final launch is approved;
- Markdown as the source of normal visible content;
- a clear file for every homepage section;
- plain Hugo templates, semantic HTML, and readable CSS;
- no Wowchemy, Go module, Node, npm, frontend framework, CMS, database, or complex asset-pipeline dependency;
- preservation of approved legacy routes, publication PDFs, BibTeX files, and the CV;
- generated output outside the nested legacy `public/` repository.

The visual design remains intentionally undecided. The neutral foundation should prove the content and build system before aesthetic work begins.

## Approved decisions

1. Homepage collection summaries will be generated as plain lists from items marked `home_featured: true`.
2. Recommended books and blogs will initially be one curated Markdown list, not individual content pages.
3. Redesign preview will use `hugo server` locally and build-only GitHub Actions. No separate preview repository will be created yet.
4. The intended production user-site URL is `https://jacquescarolan.github.io/`, because the GitHub account username is `jacquescarolan`.
5. The nested `public/` checkout and its `jacq-car.github.io` remote are legacy publication infrastructure. They remain untouched until an explicitly approved launch stage.

## Hugo version

Pin Hugo Extended `0.164.0` for local development and GitHub Actions. Record the version in this document, `README.md`, and each build workflow.

The site will not use Hugo Modules. During the approved neutral-foundation implementation, remove the root Wowchemy module declaration and module-importing configuration in the same reversible change that introduces working independent layouts.

## Proposed directory structure

```text
.
├── hugo.toml
├── README.md
├── AGENTS.md
├── assets/
│   └── css/
│       └── main.css
├── content/
│   ├── _index.md
│   ├── sections/
│   │   ├── index.md
│   │   ├── now.md
│   │   ├── work.md
│   │   ├── writing.md
│   │   ├── conversations.md
│   │   ├── reading.md
│   │   ├── other.md
│   │   └── about.md
│   ├── about/
│   │   └── index.md
│   ├── work/
│   │   ├── _index.md
│   │   └── precision-neurotechnologies/
│   │       └── index.md
│   ├── writing/
│   │   ├── _index.md
│   │   └── analogue-quantum-simulation/
│   │       └── index.md
│   ├── conversations/
│   │   ├── _index.md
│   │   └── tom-scott/
│   │       └── index.md
│   ├── publication/       # Existing bundles retained
│   ├── project/           # Retained during migration
│   ├── press/             # Retained during migration
│   └── shouting/          # Retained during migration
├── layouts/
│   ├── _default/
│   │   ├── baseof.html
│   │   ├── list.html
│   │   └── single.html
│   ├── partials/
│   │   ├── head.html
│   │   ├── header.html
│   │   ├── footer.html
│   │   ├── home-section.html
│   │   ├── content-list.html
│   │   └── publication-links.html
│   ├── publication/
│   │   ├── list.html
│   │   └── single.html
│   ├── shortcodes/
│   │   ├── cite.html
│   │   └── figure.html
│   ├── home.html
│   └── 404.html
├── scripts/
│   └── check-legacy-routes.rb
├── data/
│   └── legacy-routes.json
├── docs/
│   ├── LEGACY_BASELINE.md
│   └── NEW_HUGO_ARCHITECTURE.md
├── .github/
│   └── workflows/
│       └── hugo-check.yml
└── build/                # Ignored generated output
```

The nested `public/` directory is not the new Hugo publish directory.

## Configuration structure

Use one root `hugo.toml`; multiple environment configuration directories are unnecessary. It should contain only:

- `baseURL = "https://jacquescarolan.github.io/"`;
- title and English language settings;
- `publishDir = "build"`;
- robots, sitemap, RSS, and basic Markdown settings;
- stable publication permalinks;
- narrowly scoped metadata such as site description and author name.

It should not contain a theme or module import, Wowchemy parameters, stock contact data, CMS settings, client-side search configuration, a JavaScript plugin registry, or taxonomies that regenerate low-value author and publication-type pages.

## Homepage content model

### Introduction

`content/_index.md` contains the homepage introduction. Its Markdown body is the visible introductory copy; the homepage template does not embed it.

```yaml
---
title: Jacques Carolan
description: Scientist, programme builder and writer working on ambitious neurotechnology.
---
```

### Editable section bundle

`content/sections/index.md` declares a headless leaf bundle:

```yaml
---
title: Homepage sections
headless: true
---
```

The Markdown files beside it are Hugo page resources. The homepage can render them, but they do not create unwanted `/sections/.../` public pages.

| Homepage section | Markdown source |
|---|---|
| Introduction | `content/_index.md` |
| Now | `content/sections/now.md` |
| Work | `content/sections/work.md` |
| Writing and ideas | `content/sections/writing.md` |
| Podcasts and interviews | `content/sections/conversations.md` |
| Recommended books and blogs | `content/sections/reading.md` |
| Other things | `content/sections/other.md` |
| About | `content/sections/about.md` |

Normal section front matter is deliberately small:

```yaml
---
title: Work
weight: 30
collection: work
legacy_anchors:
  - science
---
```

- `title` is the visible heading and navigation label.
- `weight` controls section and navigation order.
- `collection` optionally appends selected collection items.
- `legacy_anchors` optionally preserves old homepage fragments.
- `hidden: true` optionally removes a section from both page and navigation without deleting it.

The homepage template sorts visible resources by `weight` and generates navigation from the same list.

### Legacy homepage fragments

URL fragments are handled by browsers and cannot be redirected by GitHub Pages. Emit non-visual compatibility anchors within the relevant sections:

| New section | Compatibility anchors |
|---|---|
| Work | `science` |
| Writing and ideas | `philosophy`, `publications` |
| Podcasts and interviews | `press`, `shouting` |
| Other things | `teaching` |
| About | `about` |

## Collection content models

### Work

Work pages describe substantial programmes and projects and use leaf bundles for local images.

```yaml
---
title: Precision Neurotechnologies
summary: A concise description of the programme.
weight: 10
home_featured: true
---
```

Only `title` is required. `summary` is recommended; `weight`, `home_featured`, and migration `aliases` are optional.

### Writing

Writing pages hold essays, book material, and long-form ideas.

```yaml
---
title: Article title
date: 2026-07-25
summary: A concise description.
home_featured: true
draft: false
---
```

Only `title` is required. Use `date` and `summary` when applicable. `home_featured`, `draft`, and migration `aliases` are optional.

### Conversations

Conversations cover podcasts, interviews, and selected recorded discussions.

```yaml
---
title: Conversation title
date: 2026-07-25
source: Podcast or publication name
format: podcast
external_url: https://example.com/
summary: A concise description.
home_featured: true
---
```

Only `title` is required. The Markdown body is optional for an external conversation but allows context without template editing.

### Recommendations and other things

Books and blogs remain a curated Markdown list in `content/sections/reading.md`; do not add a recommendation content type initially. Teaching, comedy, public engagement, and miscellaneous interests initially live in `content/sections/other.md`.

### Featured lists

When a homepage section declares `collection: work`, `writing`, or `conversations`, render matching items marked `home_featured: true` as a plain semantic list after the section's Markdown body. Show title, summary, and destination only. Do not use cards, animation, carousels, filters, masonry, or client-side interactions.

## Layouts and partials

Minimum layouts:

- `_default/baseof.html`: HTML shell with skip link, header, main area, and footer.
- `home.html`: introduction and ordered homepage resources.
- `_default/list.html` and `_default/single.html`: generic collections and pages.
- `publication/list.html` and `publication/single.html`: formal archive and detail pages.
- `404.html`: small accessible not-found page.

Minimum partials:

- `head.html`: metadata and stylesheet.
- `header.html`: title and navigation.
- `footer.html`: copyright and secondary links.
- `home-section.html`: content, compatibility anchors, and optional featured list.
- `content-list.html`: shared semantic list.
- `publication-links.html`: local PDF, BibTeX, and approved external links.

Temporary local `cite` and `figure` shortcodes keep existing project Markdown buildable without Wowchemy. Remove them after the old Markdown no longer uses them.

## CSS and JavaScript

Use one `assets/css/main.css` file with Hugo's built-in asset handling. Neutral CSS should provide readable system-font typography, sensible line length and spacing, accessible focus states, basic width and navigation wrapping, and responsive images.

Do not add Sass, PostCSS, Tailwind, Bootstrap, npm, a component framework, animation, or custom JavaScript to the neutral foundation.

## Publications and retained downloads

Keep all existing `content/publication/<slug>/` bundles in place so all 17 detail URLs remain unchanged. The custom template must tolerate existing front matter, display available metadata, find local `*.pdf` and `cite.bib` resources, and publish them at their existing paths without generating the old co-author taxonomy explosion.

Preserve:

- `/files/carolan_cv.pdf`;
- all 14 publication PDFs;
- all 16 BibTeX files.

Do not migrate:

- `/files/Carolan_BBSRC_fellowship_interview.pdf`;
- `/files/high_speed_jclub.pdf`;
- `/files/neural_dust_j_club.pdf`.

## Existing projects and media

During the neutral foundation, retain `content/project/`, `content/press/`, and `content/shouting/`, render their routes through generic custom layouts, and use compatibility shortcodes where required.

During later content migration, move selected material into Work, Conversations, Other, or About. Add Hugo aliases only after the old route no longer has a competing source page, then validate all priority routes against `data/legacy-routes.json`.

## Local workflow

After one-time installation of Hugo Extended `0.164.0`:

```bash
cd /Users/jacquescarolan/git/starter-academic
hugo server
```

Hugo serves from the configured ignored `build/` directory with live reload enabled by default. A Markdown or CSS edit should appear within seconds, and the nested `public/` repository remains untouched.

Clean production test:

```bash
hugo --minify --environment production --cleanDestinationDir
```

Because `publishDir` is `build`, this writes only to ignored `build/`, never nested `public/`.

Optional route validation:

```bash
ruby scripts/check-legacy-routes.rb build data/legacy-routes.json
```

The standard-library validator should ignore paths explicitly marked removable.

## macOS Hugo installation options

Do not install without explicit approval.

### Option A: official pinned Extended installer — recommended

```bash
hugo_install_dir="$(mktemp -d /tmp/hugo-install.XXXXXX)"
cd "$hugo_install_dir"
curl -LO https://github.com/gohugoio/hugo/releases/download/v0.164.0/hugo_extended_0.164.0_darwin-universal.pkg
curl -LO https://github.com/gohugoio/hugo/releases/download/v0.164.0/hugo_0.164.0_checksums.txt
grep 'hugo_extended_0.164.0_darwin-universal.pkg$' hugo_0.164.0_checksums.txt > selected-checksum.txt
shasum -a 256 -c selected-checksum.txt
sudo installer -pkg hugo_extended_0.164.0_darwin-universal.pkg -target /
hugo version
```

This gives the exact official universal package and matches CI, but it is a system-level installation requiring administrator approval.

### Option B: Homebrew — easiest, less strictly pinned

```bash
brew install hugo
hugo version
brew pin hugo
```

The formula version can change before installation. `brew pin` prevents routine upgrades afterward but does not make initial installation historically reproducible.

A repo-local tool manager or custom wrapper is not recommended because it makes the normal `hugo server` workflow less obvious.

## Build-only GitHub Actions

During redesign, `.github/workflows/hugo-check.yml` should trigger for `redesign` pushes and pull requests. It should:

1. check out source;
2. download Hugo Extended `0.164.0` from the official release;
3. verify its checksum;
4. build cleanly into `build/`;
5. run route validation;
6. upload the result as a workflow artifact;
7. omit `actions/deploy-pages` entirely.

This workflow cannot change the live site. GitHub Pages has one Pages deployment per repository, so a redesign-branch Pages deployment could replace production. Continue with local preview and build artifacts; consider a separate preview repository only with later approval.

## Eventual production deployment

The intended address is `https://jacquescarolan.github.io/`, tied to the GitHub username `jacquescarolan`. A custom domain could later point to the same site.

Treat the existing `jacq-car.github.io` repository as legacy publishing infrastructure. Stage 2 and Stage 3 must not rename repositories, change remotes, edit Pages settings, or switch deployment.

At the approved launch stage, the production workflow is currently planned to use:

- `actions/configure-pages@v6`;
- `actions/upload-pages-artifact@v5`;
- `actions/deploy-pages@v5`.

It will need `contents: read`, `pages: write`, `id-token: write`, a `github-pages` environment, and deployment concurrency. Before activation, confirm which source repository will become the `jacquescarolan.github.io` user-site repository. Repository migration and Pages settings are launch decisions.

## Migration and rollback

1. Keep nested `public/` untouched throughout redesign.
2. Preserve the Stage 1 commit and route manifest.
3. Introduce the custom build only on `redesign`.
4. Render locally only into ignored `build/`.
5. Retain authored legacy material until replacements or redirects pass validation.
6. Keep framework removal and content migration in separate, reviewable commits where practical.
7. Run local preview, clean build, and route validation after meaningful implementation changes.
8. Approve the complete preview before changing production.
9. Record source and legacy publication repository heads immediately before launch.
10. Activate Pages deployment only with explicit approval.
11. Restore the recorded legacy Pages source if launch validation fails.
12. Retire the old publication workflow only after route, download, responsive, and accessibility checks pass.

## Expected Stage 3 file changes

Expected new files:

- `hugo.toml`
- `content/_index.md`
- `content/sections/index.md`
- `content/sections/now.md`
- `content/sections/work.md`
- `content/sections/writing.md`
- `content/sections/conversations.md`
- `content/sections/reading.md`
- `content/sections/other.md`
- `content/sections/about.md`
- `content/about/index.md`
- `content/work/_index.md`
- `content/work/precision-neurotechnologies/index.md`
- `content/writing/_index.md`
- `content/writing/analogue-quantum-simulation/index.md`
- `content/conversations/_index.md`
- `content/conversations/tom-scott/index.md`
- `assets/css/main.css`
- `layouts/_default/baseof.html`
- `layouts/_default/list.html`
- `layouts/_default/single.html`
- `layouts/partials/head.html`
- `layouts/partials/header.html`
- `layouts/partials/footer.html`
- `layouts/partials/home-section.html`
- `layouts/partials/content-list.html`
- `layouts/partials/publication-links.html`
- `layouts/publication/list.html`
- `layouts/publication/single.html`
- `layouts/shortcodes/cite.html`
- `layouts/shortcodes/figure.html`
- `layouts/home.html`
- `layouts/404.html`
- `scripts/check-legacy-routes.rb`
- `.github/workflows/hugo-check.yml`

Expected modified files:

- `.gitignore`, adding `/build/`;
- `README.md`, replacing template documentation with setup, editing, preview, build, and deployment guidance.

Expected removals from the active build:

- `config.toml`
- `config/_default/config.toml`
- `config/_default/languages.toml`
- `config/_default/menus.toml`
- `config/_default/params.toml`
- `go.mod`
- `go.sum`

These removals eliminate the Wowchemy module and conflicting configuration. They remain recoverable from Git history and the Stage 1 baseline. Existing authored content, assets, `netlify.toml`, and nested `public/` remain unchanged unless later approval changes scope.

The list may expand only if the first modern-Hugo build reveals a specific compatibility file needed by retained content. Report any material scope change before proceeding.

## Stage 3 validation

```bash
hugo version
hugo server
hugo --minify --environment production --cleanDestinationDir
ruby scripts/check-legacy-routes.rb build data/legacy-routes.json
git status --short --branch
git -C public status --short --branch
```

Validation must confirm:

- `hugo server` starts and live reload responds to a Markdown edit;
- the clean build succeeds without Wowchemy or Go module downloads;
- output is under `build/` and nested `public/` is clean;
- priority legacy routes resolve or redirect;
- all retained PDFs, BibTeX files, and the CV resolve;
- obsolete public-only PDFs are not required;
- the build-only workflow contains no deployment step.
