# Design brief

Status: Stage 4 planning document. This brief defines a direction for review; it does not implement visual design, change routes, or approve final copy.

## Design proposition

The working direction is **early-web information architecture with contemporary editorial typography**.

The site should feel like a thoughtful person has arranged a durable set of pages, not like a company has filled a portfolio template. Its distinctiveness should come from editorial judgement, typography, rhythm, and precise links rather than interface effects. Serious scientific work, programme building, teaching, interviews, comedy, and personal interests should coexist without being forced into one corporate tone.

The homepage is both a complete front page and an index into deeper pages. A visitor should understand the broad arc—from physics and photonics through neuroscience to building ambitious programmes—without opening another page. Deeper pages then answer the natural next questions: what is the underlying idea, what was the work, what is the evidence, and where can I learn more?

“Scaling” is a working label, not a permanent brand. The intellectual territory is more important than the word: how powerful tools and treatments reach the people who need them, and how deployability changes the technical problem.

## 1. Intended audience

Primary audiences:

- scientists and engineers considering the technical questions, projects, or programmes;
- potential collaborators across research, technology, medicine, policy, funding, and institution building;
- people trying to understand Jacques’s current work and the intellectual thread connecting it to earlier work;
- journalists, podcast hosts, event organisers, and curious general readers seeking an accurate introduction;
- future colleagues or collaborators who need a useful biography and chronology without relying on LinkedIn.

Secondary audiences:

- students and early-career researchers encountering the teaching or public-engagement material;
- readers interested in how research programmes are conceived and organised;
- people arriving through an old publication, project, press, or public-engagement URL.

The site should not assume that a visitor knows ARIA, quantum photonics, neural interfaces, or the structure of an academic CV.

## 2. Desired first impression

Within the first screen and first minute, the site should communicate:

1. This is Jacques Carolan’s own site.
2. He is a scientist and programme builder working on ambitious technologies, currently focused on neurotechnology.
3. His work has a coherent arc, despite crossing physics, photonics, quantum technologies, neuroscience, and programme design.
4. He cares about whether powerful technologies can actually reach people.
5. The site is intellectually serious but not institutionally stiff.

Useful adjectives: authored, lucid, curious, warm, selective, technically grounded, durable.

Avoid the impression of: startup pitch, employer microsite, academic résumé template, personal brand funnel, press clippings archive, or experimental digital garden.

## 3. Core positioning

Primary positioning:

> A scientist and programme builder working on ambitious technologies, with an enduring interest in how they become useful and widely accessible.

Supporting arc:

> Applied physics and photonics led to quantum computing and simulation, then to systems neuroscience and neurotechnology, and now to building research programmes around technical capability and real-world adoption.

These are planning formulations, not approved homepage copy. The final wording must be reviewed for factual precision and tone.

ARIA is evidence of what Jacques is doing now and a vehicle for current programmes. It is not the site’s permanent identity, a top-level section, or the source of its visual language.

## 4. Editorial voice

The voice should be:

- first person, direct, and specific;
- confident about documented work, cautious about impact claims;
- interested in questions and constraints, not only outcomes;
- accessible without flattening technical content;
- concise on the homepage and more reflective on deeper pages;
- capable of becoming lighter in Other without turning whimsical everywhere.

Preferred habits:

- start with the problem or question;
- use concrete nouns and active verbs;
- explain why an item is present, not merely that it exists;
- distinguish Jacques’s contribution from a team’s collective work;
- link to primary sources at the point where they matter;
- annotate selected work in one or two sentences rather than reproducing abstracts;
- use dates and institutional names as supporting metadata, not as the main story.

Avoid:

- inflated claims such as “world-changing”, “revolutionary”, or “industry-leading” unless directly quoted and necessary;
- unexplained employer language;
- third-person corporate biography on first-person pages;
- résumé fragments presented as prose;
- generic labels such as “thought leadership”, “innovation”, or “impact” without a concrete referent;
- invented publication significance, project outcomes, roles, dates, or quotations.

## 5. Site hierarchy

Provisional primary navigation:

1. Home — `/`
2. Scaling — `/scaling/` (working label and route pending approval)
3. Science — `/science/`
4. Conversations — `/conversations/`
5. Other — `/other/`
6. About — `/about/`

Secondary destinations:

- Publications — `/publication/`
- CV — `/files/carolan_cv.pdf`
- Google Scholar
- LinkedIn
- email

The publication archive is important but secondary in navigation because Science supplies the editorial interpretation. CV and profile links belong in About and the footer rather than competing with the main intellectual structure.

Recommendation: use **Other** rather than **Other things** in navigation and as the page title. It is shorter and sits cleanly beside the other nouns. “Other things” can still appear conversationally in introductory copy, and the label can be revisited.

## 6. Homepage narrative

The homepage should read as one continuous argument rather than a stack of independent feature panels.

### Opening

- name;
- concise first-person introduction;
- two or three sentences describing the arc from physics and photonics to neuroscience and programme building;
- no giant slogan, portrait-as-hero, employer logo, or primary call-to-action button.

### Now

- current role at ARIA;
- current programme or programmes, once confirmed;
- two or three questions occupying Jacques now;
- date or “updated” label only if it can be maintained reliably.

### Scaling

- introduce the enduring question in plain language;
- explain that access, delivery, cost, procedure, manufacturing, regulation, training, and infrastructure can be part of the technical problem;
- show at most two or three current programmes, projects, theses, or public essays;
- identify ARIA as context or publisher at item level;
- end with a quiet text link to the deeper Scaling page.

### Science

- one short paragraph describing the research arc;
- three compact field introductions: Neuroscience; Programmable Photonics; Quantum Computing and Simulation;
- a short annotated selection of publications or patents, not the complete archive;
- links to the Science page and full publication archive.

### Conversations

- two or three items that best reveal how Jacques thinks;
- combine podcasts, long-form interviews, selected written interviews, and useful public talks;
- show format, source, and date as metadata where confirmed;
- link to the complete curated Conversations page.

### Other

- a short, more personal introduction;
- a selective mix of teaching, science communication, comedy, and unusual projects;
- avoid presenting it as a miscellaneous dumping ground;
- link to the deeper Other page.

### About

- a compact biography that adds personal and chronological context;
- CV, Google Scholar, LinkedIn, and email links;
- link to the fuller About page;
- no duplicate full chronology on the homepage.

The current standalone recommendations section should not survive on the homepage at launch. A small annotated reading list belongs on About unless the material later becomes substantial enough to justify a separate page.

## 7. Relationship between homepage and deeper pages

The homepage and deeper pages have different jobs:

| Layer | Job | Typical length | Selection rule |
|---|---|---:|---|
| Homepage | Complete overview and intellectual map | Short sections | Only items that explain the overall story |
| Deeper section page | Context, argument, and curated evidence | Medium to long | Items that deepen that section’s question |
| Item page | Project, essay, conversation, or other detail | As needed | One coherent subject |
| Publication archive | Complete formal record | Exhaustive | Preserve all verified records and downloads |

Deeper pages should not begin with the same paragraph used on the homepage. Each should advance from summary to explanation. The homepage may reuse item titles and metadata automatically, but the surrounding prose should be written for its particular narrative role.

## 8. Role of each top-level section

### Home

Answers: Who is Jacques, what is he doing, what connects the work, and where should I go next?

### Scaling

Answers: What enduring adoption problem motivates current programme building? How do deployment constraints reshape research questions? What current projects, programmes, and public theses explore that problem?

The page must explicitly acknowledge that scale is not the only measure of value. Foundational understanding, rare-disease work, enabling tools, and ideas with narrow initial application can be valuable without immediate mass adoption.

### Science

Answers: What scientific problems has Jacques worked on, what was his contribution, why did the work matter, and how did one field lead to another?

Science is an editorial layer. It does not replace `/publication/`.

### Conversations

Answers: Where can a visitor hear or read Jacques explaining ideas at useful length? What selected interviews, podcasts, media, and talks reveal his way of thinking?

This is not a comprehensive press-clippings page.

### Other

Answers: What has Jacques taught, communicated, performed, or made outside the main professional narrative? What gives a fuller sense of the person?

### About

Answers: What is the chronology, what experience and education support the work, what interests endure across roles, and how can someone find authoritative profiles or make contact?

## 9. Navigation principles

- Keep the primary navigation to the six agreed labels.
- Use ordinary text links, not buttons, pills, dropdown mega-menus, or icons without labels.
- On the homepage, section links may target anchors; on internal pages they should lead to canonical pages.
- Make the site title or name an unambiguous link home.
- Keep Publications available from Science and the footer.
- Keep CV and external profiles available from About and the footer.
- Indicate the current page with more than colour alone.
- Preserve legacy homepage fragments invisibly or unobtrusively during migration.
- Allow the visible label “Scaling” to change without requiring an employer-led category. Decide whether `/scaling/` remains the durable route before Stage 5 creates it.
- Avoid sticky navigation unless testing shows it materially helps long pages; it is not part of the first pass.

## 10. Typography principles

Use system and broadly available font stacks in Stage 5; do not buy, download, self-host, or introduce a font build step.

Recommended hierarchy:

- headings and selected introductory prose: a restrained serif stack such as `Iowan Old Style`, `Palatino Linotype`, `Book Antiqua`, `Georgia`, serif;
- body, navigation, captions, and metadata: `system-ui`, `-apple-system`, `BlinkMacSystemFont`, `Segoe UI`, sans-serif;
- dates and occasional category labels: `ui-monospace`, `SFMono-Regular`, `Menlo`, `Consolas`, monospace.

Principles:

- use scale and weight sparingly; hierarchy should remain legible without dramatic jumps;
- reserve the largest type for the name and page titles, not slogans;
- body text should generally sit around 17–19 CSS pixels with comfortable line height;
- prevent all-caps mono labels from becoming decorative noise;
- keep publication metadata smaller but never faint or cramped;
- use real typographic characters through authored Markdown, while maintaining robust fallbacks.

The influence of Andy Matuschak should stop at careful hierarchy, readable measure, and generous spacing. Do not reproduce stacked notes, backlinks, marginal interaction, or custom reading systems.

## 11. Page-width and spacing principles

- primary prose measure: approximately 62–72 characters;
- wider editorial container: approximately 68–76rem for navigation, annotated lists, and figures;
- long-form pages should retain a dominant single reading column;
- use optional side metadata only where it remains below or beside the content without fragmenting reading order;
- use whitespace, fine rules, and heading rhythm to divide sections;
- avoid boxed modules as the default separator;
- desktop section spacing should feel generous but not cinematic; roughly 4–7rem is a useful implementation range to test;
- mobile spacing should tighten proportionally, usually 2.5–4rem between major sections;
- use one consistent spacing scale rather than arbitrary per-page values.

## 12. Colour principles

Use a warm neutral ground, dark near-black text, and one restrained accent. Colour should support reading and wayfinding rather than encode the site’s categories.

Recommended family for the first prototype:

| Role | Paper + deep green |
|---|---|
| Background | `#F5F1E8` |
| Primary text | `#20231F` |
| Muted text | `#62675F` |
| Rules | `#D7D1C5` |
| Accent/link | `#245D52` |
| Accent hover | `#173F38` |

Two restrained alternatives within the same direction:

| Family | Background | Text | Accent |
|---|---|---|---|
| Parchment + oxide | `#F7F1E7` | `#27211D` | `#914D38` |
| Chalk + cobalt | `#F3F1EC` | `#22242A` | `#345B86` |

These are prototype values, not approved tokens. Every pairing must pass contrast checks in implementation. Do not use gradients. Avoid tinting entire sections simply to manufacture variety.

## 13. Link treatment

- Body links should be visibly underlined by default.
- The accent colour may distinguish links, but underline and focus treatment must carry meaning without colour.
- Navigation links may omit underlines at rest if the navigation context is unambiguous; hover and focus states must remain clear.
- External links do not need an icon on every occurrence. Use explicit labels such as “Programme thesis”, “Watch”, or “Google Scholar” when useful.
- Do not use vague repeated labels such as “Learn more” when a more descriptive link is possible.
- Visited-link styling is desirable for long archives if it remains visually coherent and accessible.
- Keep downloadable formats explicit: PDF, BibTeX, CV PDF.

## 14. Image treatment

Treat images as editorial artefacts, not decorative banners.

- Use a portrait as a biographical figure, not a full-bleed hero.
- Preserve project diagrams, book covers, teaching posters, and event photographs when they add evidence or texture.
- Let meaningful images retain their natural aspect ratio within a consistent figure system.
- Provide concise alt text for informative images; use empty alt text for genuinely decorative images.
- Add captions and source/credit where known.
- Do not crop technical diagrams or publication imagery merely to fit a card ratio.
- Avoid automatic image grids and repetitive thumbnails on archive pages.
- Verify ownership and reuse rights for press screenshots and third-party images before relaunch.
- Prefer one strong figure to several weak illustrations.

The current repository contains a usable portrait, project images, a book cover, a teaching poster, and public-engagement images, but their editorial value and rights need item-level review before selection.

## 15. Internal-page principles

- Begin each page with a direct title and one-paragraph orientation.
- Make the page’s central question visible early.
- Use a small number of meaningful subheadings.
- Place selected items in annotated lists separated by rules or spacing, not cards.
- Show dates, formats, collaborators, publications, or institutions as metadata beneath the relevant item.
- Keep primary-source links adjacent to the claim or item they support.
- End with a deliberate onward path: related section, complete archive, CV, or contact—not a generic recommendation carousel.
- Use the same visual grammar across Scaling, Science, Conversations, Other, and About while allowing content-specific structures.
- Publication detail pages should remain formal and compact, with title, authors, venue, year, abstract when available, and resource links.

## 16. Mobile behaviour

- Design from a single readable column first.
- The six-item navigation may wrap cleanly or use a small semantic disclosure; do not assume a hamburger menu is necessary.
- Maintain a minimum comfortable tap target around 44 by 44 CSS pixels where links behave like controls.
- Avoid horizontal scrolling at 320 CSS pixels except for intentionally scrollable code or data.
- Stack chronology dates above entries when a two-column timeline becomes cramped.
- Keep figures within the viewport and captions immediately adjacent.
- Preserve heading hierarchy and line length rather than simply shrinking desktop type.
- Do not hide substantive content on small screens.
- Test long publication titles, collaborator lists, URLs, and PDF/BibTeX links for wrapping.

## 17. Accessibility requirements

Stage 5 should target WCAG 2.2 AA as the practical baseline.

- semantic landmarks: header, nav, main, article/section, footer;
- one clear `h1` per rendered page and logical heading order;
- working skip link;
- full keyboard access and visible focus indicators;
- text contrast of at least 4.5:1, with 3:1 only for qualifying large text;
- information never communicated by colour alone;
- meaningful link text and explicit file formats;
- useful alt text, captions, and image credits;
- no autoplay, animation dependency, or motion required to understand content;
- honour `prefers-reduced-motion` if any motion is later introduced;
- touch-friendly targets and sufficient spacing;
- responsive text zoom without clipping or loss of content;
- correct language metadata;
- no empty headings, duplicate IDs, or inaccessible compatibility anchors;
- test with keyboard, browser zoom, automated checks, and at least one screen-reader pass before launch.

## 18. Explicit anti-patterns

Do not introduce:

- a startup landing-page hero or conversion funnel;
- employer logos or colours as the site identity;
- giant slogans, metric counters, testimonial quotations, or “trusted by” strips;
- corporate portfolio polish that erases individual voice;
- academic-template sidebars, publication widgets, icon clouds, or résumé timelines as the homepage;
- card-heavy grids, equal-height tiles, carousels, filters, or masonry;
- gradients, glass effects, shadows as structure, pill controls, or dashboard styling;
- animations, scroll effects, parallax, or route transitions;
- retro-web parody, faux terminal styling, pixel fonts, or novelty cursors;
- backlinks, hover-note panes, transclusion, or digital-garden machinery;
- a top-level ARIA or Writing page at launch;
- generic stock photography or oversized hero banners;
- JavaScript for layout or navigation that semantic HTML can handle;
- paid fonts, font services, Node tooling, or a complex asset pipeline.

## Reference synthesis

The direction takes principles, not layouts or wording, from the agreed references:

- [Patrick Collison](https://patrickcollison.com/): concise biography; plain, specific indexes of questions and interests; understated information architecture.
- Pete Shadbolt: an authored, early-web looseness in which serious and unusual work can sit together. This interpretation follows the supplied reference direction; no layout should be copied.
- [Robin Sloan](https://www.robinsloan.com/): warmth, editorial personality, strong typography, restrained colour, and a personal site that feels made rather than branded.
- [Andy Matuschak](https://andymatuschak.org/): careful typographic hierarchy and readable long-form spacing, without adopting his interaction model.
- [Max Hodak](https://maxhodak.com/): direct one-page front matter, a concise statement of interests, and simple paths into writing.
- [Adam Marblestone](https://www.adammarblestone.org/): compact chronology, project context, and direct links to publications, patents, CV, and contact.

The combined lesson is to make the content structure obvious, then allow a small amount of warmth and irregularity to signal authorship.

## 19. Neutral text wireframes

These wireframes describe information order only. They do not prescribe a final grid, typeface, colour, or component library.

### Homepage

```text
[Jacques Carolan]  Home  Scaling  Science  Conversations  Other  About
-----------------------------------------------------------------------

JACQUES CAROLAN
Concise introduction: scientist + programme builder.
Short arc: physics/photonics -> neuroscience -> programmes.

NOW                                                     [small date?]
Current role and current problems.
1–3 specific questions.

-----------------------------------------------------------------------
SCALING
How do powerful tools and treatments reach the people who need them?
Short interpretive paragraph.

Selected programme/project/thesis — annotation — source/date
Selected programme/project/thesis — annotation — source/date
Read Scaling ->

-----------------------------------------------------------------------
SCIENCE
Short research arc.

Neuroscience — problem + contribution
Programmable Photonics — problem + contribution
Quantum Computing and Simulation — problem + contribution

Selected publication — one-line annotation
Selected publication — one-line annotation
Read Science ->    Complete publications ->

-----------------------------------------------------------------------
CONVERSATIONS
Selected podcast/interview/talk — format, source, date
Selected podcast/interview/talk — format, source, date
Selected podcast/interview/talk — format, source, date
All conversations ->

-----------------------------------------------------------------------
OTHER
Teaching / science communication / comedy / unusual projects.
Two or three selected links.
More other things ->

-----------------------------------------------------------------------
ABOUT
Short biography.
About ->  CV [PDF]  Scholar  LinkedIn  Email

[Footer: Publications · CV · Scholar · LinkedIn · Email]
```

### Scaling page

```text
[Primary navigation]

SCALING                                                [working title]
How do we get powerful tools and treatments to the people who need them?

[Opening essay: the problem and why deployment can be technical]

CURRENT PROGRAMMES + PROJECTS
Title — context, Jacques's role, question, primary links
Title — context, Jacques's role, question, primary links

PUBLIC THESES + WRITING
Programme thesis / essay / talk — annotation, publisher, date

RECURRING QUESTIONS
Cost and procedure
Manufacturing and infrastructure
Regulation and training
Organisation around adoption

WHAT SCALE DOES NOT MEAN
Short qualification: scale is not the only measure of value.

[Related: Science · Conversations]
```

### Science page

```text
[Primary navigation]

SCIENCE
Opening account of the scientific arc.

NEUROSCIENCE
Problem / contribution / why it mattered / connection forward
Selected work and publications [annotated]

PROGRAMMABLE PHOTONICS
Problem / contribution / why it mattered / connection forward
Selected work and publications [annotated]

QUANTUM COMPUTING AND SIMULATION
Problem / contribution / why it mattered / connection forward
Selected work, book, and publications [annotated]

PATENTS
Verified compact records with links

COMPLETE RECORD
Complete publication archive ->
Google Scholar ->
```

### Conversations page

```text
[Primary navigation]

CONVERSATIONS
Short selection principle: places to understand how I think.

FEATURED
Title — podcast/interview/talk — source — date
Two-sentence annotation and primary link

SELECTED CONVERSATIONS
Chronological or editorial list, grouped lightly by format if useful

RELATED MEDIA
Only written coverage that adds context; not every mention
```

### Other page

```text
[Primary navigation]

OTHER
Lighter introduction.

TEACHING
How to Program a Quantum Computer — description + materials

SCIENCE COMMUNICATION + PUBLIC ENGAGEMENT
FameLab / Confessions of a Clumsy Scientist / selected projects

COMEDY
Short first-person account + selected evidence or links

MISCELLANEOUS
Only projects with enough context to be meaningful
```

### About page

```text
[Primary navigation]

ABOUT
[Portrait as an editorial figure, optional]
300–500 word chronological biography.

CHRONOLOGY
Year–year   Role / programme / institution — one line
Year–year   Role / institution — one line
Year–year   Education — one line

ENDURING INTERESTS
Short prose, not a tag cloud.

THINGS I RETURN TO
Small annotated list of books, blogs, or publications.

CV [PDF]  Google Scholar  LinkedIn  Email
```

### Publication page

```text
[Primary navigation]

PUBLICATIONS / YEAR OR FIELD [optional breadcrumb]

PUBLICATION TITLE
Authors
Venue / patent identifier / thesis context · Year

PDF  BibTeX  DOI/arXiv/Web

ABSTRACT [only when verified and present]

CONTEXT [optional editorial note on selected items]
What problem this addressed; Jacques's contribution; related Science section.

Back to complete publications ->
```

## 20. Staged Stage 5 implementation plan

Stage 5 should implement only the first structural and visual pass. Content migration and final refinement must remain split into reviewable checkpoints.

### Checkpoint 1: rename and create agreed sections and routes

Goal: establish `/scaling/`, `/science/`, `/conversations/`, `/other/`, and `/about/` with clear Markdown sources, while retaining legacy content and route validation.

Likely work:

- agree the final visible label and durable route for Scaling;
- rename homepage section Markdown files where approved;
- create top-level section index files;
- preserve old anchors and add aliases only where source routes no longer compete;
- keep `/publication/` unchanged.

Validation: clean build, route validator, no writes to `public/`, source content still recoverable.

Commit checkpoint: `feat: establish editorial site sections`

### Checkpoint 2: homepage hierarchy and navigation

Goal: implement the agreed homepage order and selective lists without final copy migration.

Likely work:

- update navigation generation;
- update homepage section ordering and section-to-collection relationships;
- provide explicit deeper-page links;
- limit featured Conversations to two or three items;
- keep temporary copy clearly marked.

Validation: keyboard navigation, anchor links, mobile wrapping, legacy fragments, no duplicate IDs.

Commit checkpoint: `feat: implement homepage narrative structure`

### Checkpoint 3: typography and global page geometry

Goal: implement the first version of the editorial design system using only existing Hugo and CSS.

Likely work:

- system serif/sans/mono stacks;
- primary palette family;
- type scale, measures, spacing scale, rules, link and focus treatment;
- figure and caption defaults;
- no decorative component expansion.

Validation: contrast, browser zoom, long titles, no layout shift from external fonts, no new dependency.

Commit checkpoint: `style: establish editorial typography and geometry`

### Checkpoint 4: Scaling and Science page templates

Goal: support the two most structurally distinctive editorial pages.

Likely work:

- reusable annotated-item and field-section patterns;
- selected publications and patents displayed without replacing the archive;
- publisher/source/date metadata for public theses and programme writing;
- restrained figures where approved.

Validation: selected items derive from Markdown, publication URLs/downloads remain intact, no employer-led page chrome.

Commit checkpoint: `feat: add Scaling and Science editorial layouts`

### Checkpoint 5: Conversations, Other and About pages

Goal: apply the same visual grammar to lighter lists, chronology, profile links, and longer biography.

Likely work:

- featured and full Conversation lists;
- Teaching, communication, comedy, and miscellaneous sections;
- accessible compact chronology;
- external-profile and contact links;
- optional portrait treatment after image approval.

Validation: chronological data confirmed, external links checked, email exposure explicitly approved, images credited.

Commit checkpoint: `feat: complete secondary editorial pages`

### Checkpoint 6: mobile and accessibility review

Goal: resolve functional issues before aesthetic polishing.

Likely work:

- 320px, 375px, tablet, and wide-desktop checks;
- keyboard and visible-focus review;
- screen-reader landmark and heading review;
- contrast and zoom testing;
- long URL, author-list, chronology, and download-link wrapping.

Validation: automated accessibility scan plus manual keyboard, zoom, and screen-reader checks.

Commit checkpoint: `fix: improve responsive and accessible presentation`

### Checkpoint 7: final visual refinement

Goal: make small, evidence-based adjustments after complete-page review.

Likely work:

- tune spacing, rule weight, caption hierarchy, and accent usage;
- resolve awkward page-specific cases;
- remove foundation-only notices once approved copy replaces them;
- avoid adding new patterns without a demonstrated need.

Validation: complete visual review across every top-level page, publication detail, 404, and representative legacy route.

Commit checkpoint: `style: refine editorial presentation`

Stage 5 must stop at each checkpoint for review. It must not combine wholesale legacy-content deletion, full editorial rewriting, final deployment, or the production switch with the first visual pass.

## Decisions needed before Stage 5

The consolidated content and factual decisions are listed in `docs/CONTENT_PLAN.md`. The design decisions that block the earliest visual checkpoints are:

1. Confirm **Scaling** as the Stage 5 visible label, and decide whether `/scaling/` should be treated as a durable URL even if the label changes later.
2. Confirm **Other** rather than **Other things** for the navigation and page title.
3. Select the primary palette family; recommendation: Paper + deep green.
4. Approve the system serif/sans/mono typography approach.
5. Decide whether the current portrait may be used and whether it belongs on About only or also near the homepage About section.
6. Decide whether the navigation should remain simple and wrapping on mobile for the first pass, with a menu disclosure added only if testing requires it.
