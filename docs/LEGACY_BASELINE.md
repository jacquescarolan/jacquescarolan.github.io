# Legacy site baseline

Captured on 2026-07-25 before replacing Wowchemy with a custom Hugo site.

This document records the bounded migration baseline for the legacy site. It is not a deployment guide. The nested `public/` repository was inspected but not modified.

## Repository state

Before the build:

- Source repository: `https://github.com/jacquescarolan/bio-website.git`
- Source branch: `redesign`
- Source commit: `b1e2156136976bc9d1146af59571cebbb0fed0f6`
- Source status: clean
- Nested publication repository: `public/`
- Publication remote: `https://github.com/jacquescarolan/jacq-car.github.io.git`
- Publication branch: `master`
- Publication commit: `7d96fe506db41f61e6addf544cffb7579dab170e`
- Publication status: clean
- Configured canonical site URL: `https://jacquescarolan.github.io/`

The mismatch between the configured canonical hostname and the publication repository name must be resolved before production deployment is changed.

## Legacy toolchain

- Hugo: `v0.75.1/extended darwin/amd64`
- Go: `go1.15.2 darwin/amd64`
- Generated-site theme identification: Source Themes Academic 4.8.0
- Pinned module: `github.com/wowchemy/wowchemy-hugo-modules/wowchemy v0.0.0-20200902195927-86da39719ccd`

No dependency was upgraded. The Wowchemy updater was not run.

## Isolated build

All module caches, Hugo caches, generated resources, and rendered output were isolated under:

```text
/tmp/starter-academic-legacy.CnYeKq
```

The first invocation was:

```bash
legacy_tmp_dir="$(mktemp -d /tmp/starter-academic-legacy.XXXXXX)"

GOMODCACHE="$legacy_tmp_dir/gomodcache" \
GOCACHE="$legacy_tmp_dir/gocache" \
HUGO_CACHEDIR="$legacy_tmp_dir/hugo-cache" \
hugo --gc --minify \
  --destination "$legacy_tmp_dir/site" \
  --resourceDir "$legacy_tmp_dir/resources" \
  --cleanDestinationDir
```

This did not start a build. Hugo 0.75.1 rejected the newer flag with:

```text
Error: unknown flag: --resourceDir
```

To preserve isolation with the older CLI, the source was copied into the temporary directory, excluding Git metadata and existing generated directories:

```bash
mkdir -p /tmp/starter-academic-legacy.CnYeKq/source
rsync -a \
  --exclude '.git/' \
  --exclude 'public/' \
  --exclude 'resources/' \
  --exclude '.DS_Store' \
  ./ /tmp/starter-academic-legacy.CnYeKq/source/
```

The successful build command was:

```bash
GOMODCACHE=/tmp/starter-academic-legacy.CnYeKq/gomodcache \
GOCACHE=/tmp/starter-academic-legacy.CnYeKq/gocache \
HUGO_CACHEDIR=/tmp/starter-academic-legacy.CnYeKq/hugo-cache \
hugo --gc --minify \
  --source /tmp/starter-academic-legacy.CnYeKq/source \
  --destination /tmp/starter-academic-legacy.CnYeKq/site \
  --cleanDestinationDir
```

### Result

The legacy build succeeded after downloading the exactly pinned Wowchemy module into the temporary module cache.

```text
hugo: downloading modules …
hugo: collected modules in 6476 ms
Start building sites …

                   | EN
-------------------+------
  Pages            | 262
  Paginator pages  |  10
  Non-page files   |  50
  Static files     |   8
  Processed images |  56
  Aliases          |  18
  Sitemaps         |   1
  Cleaned          |   0

Total in 12073 ms
```

The successful build emitted no warnings or errors. It did not write to the source repository's `public/` or `resources/` directories.

## Published output comparison

Excluding `.git` metadata and `.DS_Store` files:

- Current nested `public/` checkout: 373 files
- Fresh isolated legacy build: 363 files
- Fresh-build-only files: none
- Existing-public-only files: 10

The isolated build is therefore a strict subset of the current published checkout.

### Obsolete downloads found only in `public/`

These files are publicly addressable but absent from current source. They have been reviewed and approved as obsolete:

| Route | Size | SHA-1 |
|---|---:|---|
| `/files/Carolan_BBSRC_fellowship_interview.pdf` | 23,938,611 bytes | `6c2e729a939275039fc8ada273e153041238946a` |
| `/files/high_speed_jclub.pdf` | 7,475,038 bytes | `e00f316a1ccf82bb47d3d9017f881bfea8f05385` |
| `/files/neural_dust_j_club.pdf` | 10,782,633 bytes | `2fc735a141df823fe43f0392bc036f87c0ee534a` |

These files do not need to be preserved, redirected, or migrated. They may be removed when the old `public/` publishing workflow is retired.

### Other files found only in `public/`

- `/author/jacques-carolan/avatar.png` is byte-for-byte identical to the current source file `content/authors/admin/avatar_old.png`; it remains under its former published filename.
- `/author/jacques-carolan/avatar_hu8747d71c9e2f5e6ed0ada212fd0c73a5_197214_270x270_fill_lanczos_center_2.png` is its old generated thumbnail.
- Five `featured_hu...` files beneath the photonics, quantum AI, and quantum optics project routes are stale Hugo-generated image derivatives. The fresh build does not reference or regenerate them.

The generated image derivatives are not source content and do not need to become permanent migration inputs unless an external backlink to an exact hashed image URL is discovered.

## Important route families

The exact priority route inventory is stored in `data/legacy-routes.json`.

### Homepage and compatibility anchors

- `/`
- `/#about`
- `/#science`
- `/#shouting`
- `/#philosophy`
- `/#teaching`
- `/#press`
- `/#publications`

### Main legacy sections

- `/project/` with 4 project detail pages
- `/publication/` with 17 publication detail pages
- `/press/` with 6 press detail pages
- `/shouting/` with 6 public-engagement detail pages
- `/post/`
- `/talk/`
- `/author/jacques-carolan/`

The old site also generates many low-value taxonomy, co-author, pagination, RSS, search, and publication-type URLs. These should be handled as a route family during migration rather than copied into the new information architecture one by one.

## Downloads represented in source

- All 14 published publication PDFs are represented in their source page bundles.
- All 16 published BibTeX files are represented in their source page bundles.
- Three publications have no local PDF: `carolan-2020-scalable`, `gimeno-2017-relative`, and `harris-2019-apparatus`.
- The thesis has no BibTeX file.

## Migration baseline decision

Use both sources during migration:

1. Use the current Markdown repository as the authoritative content source.
2. Use the current nested `public/` checkout as the authoritative legacy URL and download baseline.
3. Treat `data/legacy-routes.json` as the minimum route contract for validation.
4. Do not delete the old source structure or nested publication checkout until the custom Hugo build has passed route and download checks. The three public-only PDFs marked obsolete in this document are excluded from the migration contract.

## Stage 1 integrity check

After the isolated build and inventory work, the source repository remained unchanged apart from the two new Stage 1 files. The nested `public/` repository remained clean and unchanged.
