# Editing guide

Run `hugo server`, open <http://localhost:1313/>, and save a Markdown or CSS file. Hugo normally reloads the page automatically.

## Where the text lives

| What to edit | Source file |
|---|---|
| Homepage name, introduction, artwork, crop position, and navigation labels | `content/_index.md` |
| Neurotechnology and further reading | `content/neurotechnology/_index.md` |
| Projects: Neuroscience, Programmable Photonics, Quantum Photonics, reviews, philosophy, and patents | `content/science/_index.md` |
| Podcasts, radio, talks, panels, and media | `content/conversations/_index.md` |
| Teaching, other projects, and Things I return to | `content/other/_index.md` |
| About biography, experience, education, and interests | `content/about/index.md` |
| Publication archive title | `content/publication/_index.md` |
| Individual publication metadata, PDF, and BibTeX | `content/publication/<publication-slug>/` |
| Footer profile links | `layouts/partials/footer.html` |

All primary-navigation labels and destinations are in the `navigation` list at the top of `content/_index.md`.

## Images and figures

For an image used on one page, put it beside that page's Markdown. For example, the Neurotechnology images live in `content/neurotechnology/`.

```text
{{< figure
  src="image.png"
  alt="A concise description of the image"
  scale="0.7"
  mobile_scale="0.85"
  transparent="true"
  rounded="true"
  caption="Caption text."
>}}
```

- `scale="0.7"` makes the figure 70% of its content-column width. Use a value greater than 0 and no greater than 1.
- `mobile_scale="0.85"` optionally gives the figure a separate width on phones without changing its desktop size. It works with both `figure` and `text-image`.
- `width="650px"` sets an explicit width. Use either `scale` or `width`; if both are present, `scale` wins.
- `transparent="true"` removes the site's image background and border for an image with transparency.
- `rounded="true"` rounds the image corners.
- `alt` describes the image for accessibility. Keep it concise and meaningful.
- `caption` is optional and supports Markdown links and emphasis.

To place text beside an image:

```text
{{< text-image
  src="image.png"
  alt="A concise description of the image"
  position="right"
>}}
Text written here appears beside the image.
{{< /text-image >}}
```

Use `position="left"` or `position="right"`. The layout stacks naturally on small screens.

The homepage artwork path and vertical crop are the `hero_image` and `hero_image_y` values in `content/_index.md`.

## Typography and body font

All central font-size controls and the display/title font are at the top of `assets/css/main.css`. The most useful variables are:

- `--font-size-page-title`
- `--font-size-section-title`
- `--font-size-subsection-title`
- `--font-size-item-title`
- `--font-size-body`
- `--font-size-nav`
- `--font-display`

CSS changes live-reload without restarting Hugo.

The body-font option is the single setting under `[params]` in `hugo.toml`:

```toml
font_variant = "space"
```

Accepted values:

- `current` — Avenir Next, provided by macOS with fallbacks
- `plex` — self-hosted IBM Plex Sans
- `public` — self-hosted Public Sans
- `source` — self-hosted Source Sans 3
- `space` — self-hosted Space Grotesk, currently selected

Only the selected self-hosted font is loaded. Hugo usually reloads after changing `hugo.toml`; restart `hugo server` if a configuration-only change is not detected.

## Adding a conversation, talk, or media item

Add one Markdown list item under the appropriate heading in `content/conversations/_index.md`:

```markdown
- [Title](https://example.com/), Outlet (2026)
```

Keep podcast platform links on the same list item when appropriate. No template change is needed.

## Adding a publication

Create a page bundle:

```text
content/publication/example-paper/
  index.md
  example-paper.pdf   # optional
  cite.bib            # optional
```

Use the existing publication bundles as examples. The fields used by the current templates are `title`, `date`, `authors`, `publication`, `abstract`, and optional external `links`. Hugo automatically exposes any PDF and `cite.bib` in the bundle on the publication page and archive.

After adding or changing a publication, run the production build and legacy validator.

## Build, generated output, and deployment

```sh
hugo --minify --environment production --cleanDestinationDir
ruby scripts/check-legacy-routes.rb build
```

Generated output is written to ignored `build/`. Never edit `build/`, and never build into or modify nested `public/`.

`.github/workflows/deploy-pages.yml` performs the same build and validation after every push to `main`. If validation succeeds, it uploads `build/` as a GitHub Pages artifact and deploys the site. Generated HTML is not committed.

For a normal update, edit the source, check it locally, commit it, and push `main`:

```sh
hugo server
git add <edited-files>
git commit -m "Describe the site update"
git push
```

The push triggers automatic production deployment to <https://jacquescarolan.github.io/>.
