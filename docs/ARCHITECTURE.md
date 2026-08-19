# Current site architecture

This document describes the production system. The other design and migration documents in `docs/` are historical records.

## Build system

- Hugo Extended `0.164.0`, pinned locally and in GitHub Actions
- one root configuration file: `hugo.toml`
- Markdown content, plain Hugo templates, and plain CSS
- no Hugo theme, Hugo Module, Go dependency, Node/npm dependency, CMS, database, or JavaScript framework
- production output in ignored `build/`
- GitHub Pages deployment from `main` in `.github/workflows/deploy-pages.yml`

## Canonical source tree

```text
content/
  _index.md                  homepage, artwork setting, and navigation
  neurotechnology/_index.md Neurotechnology
  science/_index.md         Projects
  conversations/_index.md   podcasts, talks, and media
  other/_index.md           teaching, projects, and reading
  about/index.md            biography and chronology
  publication/              formal publication archive and downloads

layouts/
  _default/                 shared list and single-page layouts
  partials/                 head, header, footer, icons, publication links
  publication/              publication archive and record layouts
  shortcodes/               figure and side-by-side text/image
  home.html                 compact split homepage
  404.html                  not-found page

assets/css/
  base.css                  structural foundation
  main.css                  approved visual system and typography controls
  fonts/                    selectable body-font declarations

static/
  fonts/                    self-hosted fonts and licences
  images/homepage/          homepage artwork
  media/poster.jpg          teaching image

scripts/check-legacy-routes.rb
data/legacy-routes.json
```

## Routes

Canonical routes are `/`, `/neurotechnology/`, `/science/`, `/conversations/`, `/other/`, `/about/`, and `/publication/`, plus the 17 publication records.

Compatibility aliases preserve the approved legacy contract:

- `/scaling/`, `/work/`, and retired programme-detail routes → Neurotechnology
- `/writing/`, `/project/`, and the four old project routes → Projects
- `/press/`, its six old items, `/post/`, and `/talk/` → Conversations
- `/shouting/` and its six old items → Other
- `/author/jacques-carolan/` → About

The homepage also emits the required legacy fragment IDs. `data/legacy-routes.json` is the authoritative validation manifest.

## Templates and assets

`layouts/_default/baseof.html` provides the HTML shell, header, main element, and footer. Page copy is rendered from Markdown; templates contain only structural interface text.

Hugo fingerprints `assets/css/base.css`, the selected font declaration, and `assets/css/main.css`. The `font_variant` parameter in `hugo.toml` chooses one body font without loading the other self-hosted families.

Publication bundles retain their local PDFs and BibTeX files. `layouts/partials/publication-links.html` discovers those resources automatically.

## Validation and deployment

Local and CI validation use:

```sh
hugo --minify --environment production --cleanDestinationDir
ruby scripts/check-legacy-routes.rb build
```

On every push to `main`, `.github/workflows/deploy-pages.yml` installs the pinned Hugo release, verifies its checksum, builds and validates the site, uploads `build/` as a Pages artifact, and deploys it to <https://jacquescarolan.github.io/>. Generated HTML is never committed.

The nested `public/` checkout and its generated `master` branch are frozen rollback material. They are not part of the active build or publishing workflow and must not be edited.
