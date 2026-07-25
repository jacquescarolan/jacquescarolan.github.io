# Jacques Carolan — website source

This branch contains the in-progress replacement for the former Wowchemy site. It is a small custom Hugo site: normal visible copy lives in Markdown, templates use plain Hugo HTML, and styling is plain CSS.

The redesign is not deployed yet. The existing nested `public/` repository is legacy generated output and must not be edited or used for local builds.

## Prerequisite

Install **Hugo Extended 0.164.0**. Confirm the installed version with:

```sh
hugo version
```

The output must include both `v0.164.0` and `extended`.

## Local preview

From the repository root, run:

```sh
hugo server
```

Open <http://localhost:1313/>. Hugo watches the source files and reloads the browser after a saved change. Development output follows `publishDir` into the ignored `build/` directory; it never writes the site into `public/`.

To test the editing workflow, change `content/sections/now.md` and save it. The homepage should update within seconds.

## Where homepage text lives

The introduction is in `content/_index.md`. Every other homepage section has one clearly named Markdown file:

- `content/sections/now.md`
- `content/sections/work.md`
- `content/sections/writing.md`
- `content/sections/conversations.md`
- `content/sections/reading.md`
- `content/sections/other.md`
- `content/sections/about.md`

Section order is controlled by the small `weight` number in each file. Set `hidden: true` to hide a section without deleting it.

Work, writing and conversation items live in their matching folders under `content/`. Add `home_featured: true` to an item's front matter to include it in the corresponding homepage list.

Recommendations remain a curated list in `content/sections/reading.md`; they do not require individual pages.

## Production build and checks

Run a clean production build with:

```sh
hugo --minify --environment production --cleanDestinationDir
```

Generated HTML is written to the ignored `build/` directory. Then validate the retained legacy routes and downloads:

```sh
ruby scripts/check-legacy-routes.rb build
```

The workflow in `.github/workflows/hugo-check.yml` performs the same build and validation on GitHub. It is deliberately build-only: it contains no Pages deployment step and cannot change the live website.

The intended eventual user-site address is <https://jacquescarolan.github.io/>. Repository and GitHub Pages changes are deferred until an explicitly approved launch stage.

## Architecture and migration notes

See `docs/NEW_HUGO_ARCHITECTURE.md` for the design of this foundation and `docs/LEGACY_BASELINE.md` for the routes and files that must survive migration.
