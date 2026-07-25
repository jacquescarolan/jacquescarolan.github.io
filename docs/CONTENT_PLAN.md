# Content plan

Status: Stage 4 planning document. This file audits existing sources and recommends future treatment. It does not approve factual claims, migrate content, change routes, or delete legacy material.

## Planning rules

The site is one-page-first. The homepage should provide a complete, selective overview; deeper pages should add argument, chronology, and curated evidence. The proposed launch structure is:

- Home — `/`
- Scaling — `/scaling/` (working label and route)
- Science — `/science/`
- Conversations — `/conversations/`
- Other — `/other/`
- About — `/about/`
- Publications — `/publication/` as the complete formal archive, linked from Science and the footer

There is no top-level ARIA, Writing, or Reading page at launch. Writing is classified by the question or field it advances. Recommendations begin as a small annotated list within About.

Disposition terms used below:

- **Retain** — keep the source item and public access.
- **Rewrite** — replace or substantially edit its copy using verified facts.
- **Move** — create a new canonical home for the content.
- **Merge** — incorporate useful material into a broader page or item.
- **Redirect** — preserve the old URL after its source page no longer competes.
- **Archive** — keep accessible but do not promote in the primary narrative.
- **Delete** — remove only after the replacement/redirect is approved and validated.

No authored legacy item should be deleted during the first structural pass. “Delete” recommendations are future actions, not Stage 4 or automatic Stage 5 instructions.

## 1. Current homepage-section audit

| Current source | Current role | Assessment | Recommended treatment |
|---|---|---|---|
| `content/_index.md` | Opening | Correct broad positioning, but ARIA appears before the longer intellectual arc and the introduction does not yet explain programme building. | **Retain + rewrite.** Keep name and concise scale; explain the physics/photonics → neuroscience → programme-building arc. Mention ARIA after the durable identity. |
| `content/sections/now.md` | Now | A useful current-role placeholder. It states only one programme and no current questions. | **Retain + rewrite.** Confirm current role, programme portfolio, and 1–3 questions. Avoid unmaintainable detail. |
| `content/sections/work.md` | Work | Combines scientific history and current work too broadly. | **Split + replace.** Its current material feeds Scaling and Science. Preserve `#science` compatibility when restructuring. |
| `content/sections/writing.md` | Writing | Conflicts with the decision not to launch a top-level Writing section. | **Merge + retire.** Programme theses/essays go to Scaling; scientific papers/book go to Science; interviews/talks go to Conversations. Preserve `#philosophy` and `#publications` anchors. |
| `content/sections/conversations.md` | Podcasts and interviews | Structurally sound but generic and based on one item. | **Retain + rename + rewrite.** Use “Conversations”; select 2–3 strong items and link to `/conversations/`. Preserve `#press` and `#shouting`. |
| `content/sections/reading.md` | Recommendations | Explicit placeholder with no recommendations. | **Merge + retire.** Move a small confirmed annotated list into About. Do not launch a Reading page unless the list grows enough to justify one. |
| `content/sections/other.md` | Other things | Correct territory but still a migration notice. | **Retain + rewrite.** Recommend visible label “Other”; feature teaching, communication, comedy, and one unusual project. Preserve `#teaching`. |
| `content/sections/about.md` | Short biography | Useful summary, but it lacks chronology and profile/contact links. | **Retain + rewrite.** Keep it shorter than the About page and add CV, Scholar, LinkedIn, and confirmed email. Preserve `#about`. |

Recommended future homepage order:

1. Opening
2. Now
3. Scaling
4. Science
5. Conversations
6. Other
7. About

## 2. Current collection audit

### Work

| Item | Assessment | Recommended treatment |
|---|---|---|
| `content/work/_index.md` | Generic foundation copy; “Work” is no longer a proposed top-level label. | **Replace** with Scaling and Science section pages after routes are agreed. Keep until new pages build. |
| `content/work/precision-neurotechnologies/index.md` | Verified high-level description adapted from biography, but explicitly marked as a foundation placeholder. | **Move + rewrite** into Scaling as a programme/project item. ARIA should be source/context metadata, not the category. Confirm whether this item should remain a standalone page and which current programme facts may be stated. |

The current Work collection is not large enough to express the agreed structure. The repository has no Markdown items yet for broader scaling questions, current programme theses, public ARIA essays, or a second current programme.

### Writing

| Item | Assessment | Recommended treatment |
|---|---|---|
| `content/writing/_index.md` | Generic foundation collection. | **Archive then remove/redirect** once every item has a thematic home. Do not promote `/writing/` at launch. |
| `content/writing/analogue-quantum-simulation/index.md` | Supported by legacy Philosophy copy and a publication record; foundation notice remains. | **Move + rewrite** into Science → Quantum Computing and Simulation, with the book and paper distinguished. Decide whether a standalone book page remains useful. |

### Conversations

| Item | Assessment | Recommended treatment |
|---|---|---|
| `content/conversations/_index.md` | Correct collection shape, generic wording. | **Retain + rewrite** as `/conversations/`. |
| `content/conversations/tom-scott/index.md` | Supported by a legacy public-engagement item and external video link; foundation notice remains. | **Retain + rewrite.** Strong candidate for the homepage, subject to selection approval and date/source confirmation. Preserve or redirect `/shouting/tom_scott/`. |

### About

`content/about/index.md` contains a supported short biography and a legacy author alias. It is not yet the requested 300–500 word biography, does not include a chronology, has no confirmed email, and relies on a CV created in 2023. **Retain + expand after confirmation.**

### Publications

The 17 existing bundles are the working formal archive and must remain at their current URLs with 14 PDFs and 16 BibTeX files. The archive stops at 2021, while the repository CV lists papers through 2023. The formal archive is therefore incomplete and should not be described as complete until reconciled against an authoritative current list.

### Posts and talks

`content/post/` and `content/talk/` contain index files but no items. They are empty archive shells, not evidence that no writing or talks exist. Recommended future treatment:

- `/post/`: **redirect** to Scaling only after any real essay material has a canonical home; otherwise preserve a simple compatibility page.
- `/talk/`: **redirect** to Conversations after talk selections and aliases are implemented.

## 3. Legacy content audit

### Project content

| Legacy route/item | Useful source material | Proposed destination | Recommendation |
|---|---|---|---|
| `/project/neuro/` — All-Optical Interrogation of Neural Circuits | Problem statement and techniques: holography, voltage indicators, optogenetics | Science → Neuroscience | **Rewrite + move + redirect.** Confirm what was completed, Jacques’s contribution, dates, outputs, and why it mattered. The current text uses present tense from 2020 and cannot be relaunched unchanged. |
| `/project/photonics/` — Programmable Photonics | Reprogrammable optical processors; links to three publications | Science → Programmable Photonics | **Rewrite + merge + redirect.** Correct “programable”; describe contribution and connection to later work only after confirmation. |
| `/project/quantum-ai/` — Quantum for AI & AI for Quantum | Interest in quantum/ML intersection; links to three publications | Science → Quantum Computing and Simulation | **Merge + redirect.** Avoid keeping a thin standalone category unless new context supports it. |
| `/project/quantum-optics/` — Quantum Photonics | Quantum photonic processor approach; links to four publications | Science → Quantum Computing and Simulation, with cross-links to Programmable Photonics | **Rewrite + merge + redirect.** Replace old present tense and unverified scale/impact framing with confirmed contribution. |

### Publication content

All existing publication records: **retain in `/publication/`**. Science should curate, annotate, and link; it should not duplicate or absorb the formal records.

| Existing publication | Provisional Science field | Editorial use | Disposition |
|---|---|---|---|
| Trace-free counterfactual communication with a nanophotonic processor | Quantum Computing and Simulation | Supporting record | **Retain; archive-level unless selected** |
| On the experimental verification of quantum complexity in linear optics | Quantum Computing and Simulation | Candidate selected publication | **Retain + annotate after confirmation** |
| Universal linear optics | Programmable Photonics / Quantum Computing | Candidate selected publication | **Retain + annotate after confirmation** |
| Scalable feedback control of single photon sources for photonic quantum technologies | Programmable Photonics / Quantum Computing | Candidate selected publication | **Retain + annotate after confirmation** |
| Scalable Feedback Control… (`US20200150511A1`) | Patents | Patent list | **Retain; verify identifier/family** |
| Variational quantum unsampling on a quantum photonic processor | Quantum Computing and Simulation | Candidate selected publication | **Retain + annotate after confirmation** |
| Universal linear optics — characterisation, verification and computation | Quantum Computing and Simulation | Thesis / chronology support | **Retain; link from About or Science where useful** |
| Cryogenic operation of silicon photonic modulators based on DC Kerr effect | Programmable Photonics | Candidate supporting/selected publication | **Retain + annotate after confirmation** |
| Relative multiplexing for minimising switching in linear-optical quantum computing | Quantum Computing and Simulation | Supporting record | **Retain; archive-level unless selected** |
| Analogue quantum simulation: A philosophical prospectus | Quantum Computing and Simulation | Candidate selected paper; related to book | **Retain + distinguish paper from 2022 book** |
| Linear programmable nanophotonic processors | Programmable Photonics | Candidate selected publication | **Retain + annotate after confirmation** |
| Apparatus and methods for optical neural network (`US10268232B2`) | Patents | Patent list | **Retain; verify identifier/family** |
| Hybrid integration methods for on-chip quantum photonics | Quantum Computing and Simulation / Programmable Photonics | Supporting record | **Retain; archive-level unless selected** |
| Accelerating recurrent Ising machines in photonic integrated circuits | Programmable Photonics / Quantum Computing | Candidate selected publication | **Retain + annotate after confirmation** |
| Simulating the vibrational quantum dynamics of molecules using photonics | Quantum Computing and Simulation | Candidate selected publication | **Retain + annotate after confirmation** |
| Quantum optical neural networks | Quantum Computing and Simulation | Candidate selected publication | **Retain + annotate after confirmation** |
| Quantum-dot-based deterministic photon–emitter interfaces for scalable photonic quantum technology | Quantum Computing and Simulation / Programmable Photonics | Supporting record | **Retain; archive-level unless selected** |

No existing publication bundle is clearly a neuroscience publication. The Science → Neuroscience section therefore needs confirmed newer publications, preprints, datasets, methods, or an explicit explanation that the work was tool development not represented in the present archive.

### Press content

The six legacy press entries all carry the same 2020 migration date, which is not reliable event metadata.

| Legacy route/item | Proposed destination | Recommendation |
|---|---|---|
| `/press/mc_cordis/` — CORDIS feature on VLS-QPP | Conversations → selected coverage, or related Science item | **Archive + merge.** Include only if it adds useful context beyond the formal record. Redirect old route to the chosen context. |
| `/press/nat_photon/` — Nature Photonics interview/commentary | Conversations | **Retain candidate + rewrite.** Confirm Jacques’s role and original publication date. |
| `/press/qonn_mit_tech_review/` — MIT Technology Review paper mention | Science → related link for Quantum optical neural networks | **Merge + archive + redirect.** Not a homepage Conversation unless the article contains substantive interview material. |
| `/press/ulo_vice/` — Vice feature on Universal linear optics | Science → related link for Programmable Photonics | **Merge + archive + redirect.** |
| `/press/vqu_mit/` — MIT News feature on Variational quantum unsampling | Science → related link; possible Conversations supporting item | **Merge + archive + redirect.** Promote only if it includes meaningful direct explanation by Jacques. |
| `/press/vqu_nat_rev_phys/` — Nature Reviews Physics highlight | Science → related link for publication | **Merge + archive + redirect.** |

### Public engagement (`shouting`)

The legacy label “Shouting” should disappear from visible navigation, while its URLs remain protected. All six items share a 2020 migration date that should not be presented as the event date.

| Legacy route/item | Proposed destination | Recommendation |
|---|---|---|
| `/shouting/tom_scott/` — Tom Scott | Conversations | **Retain + move + redirect.** Homepage candidate. |
| `/shouting/sw_futurists/` — South West Futurists talk | Conversations → selected talks | **Retain + move + redirect.** Confirm event date and preferred video start. |
| `/shouting/gormley/` — interview with Antony Gormley | Other → science/media communication, or Conversations if the selection principle broadens | **Retain + rewrite + move + redirect.** Confirm role, title spelling (“Antony” vs legacy “Anthony”), date, and link availability. |
| `/shouting/fame_lab/` — FameLab | Other → science communication | **Retain + rewrite + move + redirect.** Confirm Wales Winner/UK Finalist wording and event year. |
| `/shouting/coacs/` — Confessions of a Clumsy Scientist | Other → unusual projects / science communication | **Retain + rewrite + move + redirect.** Confirm Jacques’s role and whether the external project remains active. |
| `/shouting/comedy/` — Comedy | Other → comedy | **Retain + rewrite + move + redirect.** Confirm which teams, venues, and locations should remain public and current. |

### Legacy homepage content

| Legacy file | Status/content | Recommendation |
|---|---|---|
| `home/about.md` | Active wrapper around author profile | **Merge** into new Opening/About; **delete later** after aliases and copy are validated. |
| `home/science.md` | Active project index and useful one-sentence scope | **Merge** into Science; preserve `#science`; **delete later**. |
| `home/philosophy.md` | Active substantive book description, image, and four endorsement quotations | **Move** verified authored context to Science. **Archive** quotations unless permission/source and editorial need are confirmed; do not copy them automatically. Preserve `#philosophy`. |
| `home/teaching.md` | Active substantive MIT course description, slides, code, poster | **Move + rewrite** into Other. Verify links and factual detail; preserve `#teaching`. |
| `home/shouting.md` | Active legacy collection wrapper with typo and outdated label | **Split** items between Conversations and Other; preserve `#shouting`; **delete later**. |
| `home/press.md` | Active press collection wrapper | **Merge** selected items into Conversations/Science; preserve `#press`; **delete later**. |
| `home/publications.md` | Active filtered publication widget | **Replace** with curated Science selection and archive link; preserve `#publications`; **delete later**. |
| `home/accomplishments.md` | Inactive template certificates unrelated to documented biography | **Delete** as template boilerplate after migration validation. Do not treat as Jacques’s achievements. |
| `home/experience.md` | Inactive template roles (“GenCoin”, “University X”) | **Delete** as fabricated template boilerplate. Never migrate. |
| `home/demo.md` | Inactive Academic template demonstration | **Delete** after migration validation. |
| `home/hero.md` | Inactive Academic demo hero and scripts | **Delete** after migration validation. |
| `home/people.md` | Inactive team template | **Delete** after migration validation. |
| `home/skills.md` | Inactive demo skill percentages | **Delete** as template boilerplate. Never migrate. |
| `home/slider.md` | Inactive demo slider | **Delete** after migration validation. |
| `home/featured.md` | Inactive publication-widget configuration | **Delete** after replacement selection works. |
| `home/posts.md` | Inactive empty-post widget | **Delete** after `/post/` treatment is implemented. |
| `home/talks.md` | Inactive empty-talk widget | **Delete** after `/talk/` treatment is implemented. |
| `home/tags.md` | Inactive tag cloud | **Delete**; no launch taxonomy UI. |
| `home/contact.md` | Inactive contact widget with no address | **Delete** after confirmed email appears on About. |
| `home/index.md` | Legacy widget-page declaration | **Delete** only when no legacy content depends on it. |

### Other legacy/supporting files

- `content/authors/admin/_index.md`: **retain as a factual source, then archive/delete** after About, links, portrait, and author redirect are verified. It contains useful biography and social links, but also stale/placeholder fields (`position: test`, generic organisations, blank email).
- `content/privacy.md`: draft containing “test test”; **delete** before launch unless a real privacy page is required.
- `content/terms.md`: draft template placeholder; **delete** before launch unless actual terms are required.
- `static/admin/`: inactive legacy CMS files; **delete in a separate approved cleanup** once no CMS is desired and the migration is validated.
- `static/media/test.png`: likely placeholder; **review then delete** if unused.
- `static/media/book.jpg`, `poster.jpg`, `aqs.png`: **retain pending editorial use and rights/source check**.
- project, press, public-engagement, and portrait images: **retain pending item-level selection, alt text, credit, and rights review**.

## 4. Proposed mapping into the new structure

| Destination | Content sources | Launch role |
|---|---|---|
| Home | Current foundation sections; verified biography; selected Scaling, Science, Conversation, and Other items | Complete selective overview and intellectual map |
| Scaling | Precision Neurotechnologies item; confirmed current programmes; ARIA programme theses and public essays; future independent writing on adoption | Enduring question about getting tools/treatments to people and organising research around deployment |
| Science | Four legacy projects; selected publications; book; verified patents; newer neuroscience record | Curated scientific narrative across three fields |
| Conversations | Tom Scott; selected talk; selected written interviews/coverage; newer podcasts and long-form interviews | Places where visitors can understand how Jacques thinks |
| Other | MIT teaching; FameLab; Confessions project; Gormley interview/communication work; comedy; selected unusual projects | Lighter, personal, and public-facing work |
| About | Current biography; author profile; updated CV chronology; confirmed interests/recommendations; profile/contact links | Full biography and compact LinkedIn-independent chronology |
| Publications | Existing bundles plus verified missing records | Complete formal archive, unchanged in purpose |

Writing classification:

- ARIA programme theses and public programme essays → Scaling or the relevant standalone project.
- Scientific papers and the analogue-simulation book → Science, with formal papers retained in Publications.
- Interviews and talks → Conversations.
- Teaching and communication materials → Other.
- Future independent essays → classify thematically first; reconsider Ideas/Writing only when several items resist the existing structure.

## 5. Item-level disposition summary

The recommended launch actions are:

- **Retain:** every existing publication bundle/download, CV, useful authored legacy Markdown, selected images, and priority URLs until redirects pass.
- **Rewrite:** all four project narratives, homepage sections, About, current programme pages, teaching, and selected engagement items.
- **Move:** current programme material to Scaling; science projects/book to Science; Tom Scott and selected talks/interviews to Conversations; teaching/communication/comedy to Other.
- **Merge:** thin press mentions into the related scientific or Conversation context rather than create six equivalent cards.
- **Redirect:** every priority `/project/`, `/press/`, and `/shouting/` route only after its canonical replacement exists; `/post/` and `/talk/` need explicit compatibility destinations.
- **Archive:** non-selected press mentions, non-featured publications, outdated but useful source copy, and endorsement quotations not needed at launch.
- **Delete later:** demonstrably generic Academic template items, draft placeholder legal pages, inactive CMS files, and confirmed unused test assets.

## 6. Selected-publication plan

The Science page should begin with a conservative provisional selection, then change only after Jacques supplies contribution and significance notes.

### Neuroscience

Current repository support: project prose about all-optical interrogation of neural circuits and CV evidence of a UCL neuroscience/neurotechnology position from 2021. No neuroscience paper is present in the 17-item archive.

Launch requirement:

- identify any relevant papers, preprints, datasets, methods, or programme outputs;
- if none should be listed, explain the neuroscience contribution through verified project/tool work without implying a publication record that is not present;
- confirm the relationship between UCL research and later ARIA programme building.

No neuroscience publication is provisionally selected because the repository does not support one.

### Programmable Photonics

Provisional candidates:

- Universal linear optics;
- Linear programmable nanophotonic processors;
- Cryogenic operation of silicon photonic modulators based on DC Kerr effect;
- Scalable feedback control of single photon sources for photonic quantum technologies;
- Accelerating recurrent Ising machines in photonic integrated circuits.

Select approximately two or three after confirming Jacques’s contribution, the problem each represents, and whether the group tells a coherent field-level story.

### Quantum Computing and Simulation

Provisional candidates:

- On the experimental verification of quantum complexity in linear optics;
- Simulating the vibrational quantum dynamics of molecules using photonics;
- Variational quantum unsampling on a quantum photonic processor;
- Quantum optical neural networks;
- Analogue quantum simulation: A philosophical prospectus, paired carefully with the later book;
- Universal linear optics, if not used primarily under Programmable Photonics.

Select approximately three or four, allowing cross-links rather than duplicate annotations when one item spans fields.

### Annotation template

Each selected item needs verified answers to:

1. What problem did this work address?
2. What was Jacques’s specific contribution?
3. Why is it included in this narrative?
4. How did it influence or connect to later work?

The repository generally supplies titles, collaborators, venue/year, tags, and external links—but not contribution or significance. Those annotations require Jacques’s input.

## 7. Patent-content plan

The repository and 2023 CV disagree and are both incomplete as launch sources.

Existing publication bundles:

- “Scalable Feedback Control of Single-Photon Sources for Photonic Quantum Technologies” — `US20200150511A1`;
- “Apparatus and methods for optical neural network” — `US10268232B2`.

The 2023 CV lists four entries:

- “Scalable integration of hybrid optoelectronic and quantum optical systems into photonic circuits” — `US11054590B1`;
- “Quantum Optical Neural Networks” — `US2020037234A1` as written in the CV;
- “Scalable Feedback Control…” — `US2020015051A1` as written in the CV;
- “Apparatus and methods for optical neural network” — `US20190294199A1`.

Required before publication:

1. Reconcile application, publication, and grant identifiers; the differing identifiers may represent family stages or typographical omissions.
2. Confirm inventor order and Jacques’s inventor status from primary patent records.
3. Confirm which patents or families should appear publicly.
4. Decide whether each family has one canonical record or separate application/grant links.
5. Add no impact, commercialisation, ownership, or licensing claim without evidence and approval.

Recommended display: a compact verified list in Science with title, inventor list or concise attribution, jurisdiction/identifier, year, and a primary patent link. Keep patent records distinct from peer-reviewed publications while leaving compatible formal entries accessible in `/publication/` where already present.

## 8. ARIA writing and programme-thesis plan

ARIA should appear as the context, employer, programme vehicle, or publisher attached to specific work. It should not determine site hierarchy, colour, typography, or permanent section names.

Potential Scaling sources discovered on official ARIA pages, all requiring selection and role confirmation before migration:

- [Scalable Neural Interfaces](https://aria.org.uk/opportunity-spaces/scalable-neural-interfaces/) — opportunity-space overview and a current umbrella for programme work;
- [Precision Neurotechnologies](https://aria.org.uk/opportunity-spaces/scalable-neural-interfaces/precision-neurotechnologies) — programme overview and programme thesis;
- [Massively Scalable Neurotechnologies](https://aria.org.uk/opportunity-spaces/scalable-neural-interfaces/massively-scalable-neurotechnologies) — a second programme currently associated with Jacques on the official site;
- [Inside our new seed call for Scalable Neural Interfaces](https://aria.org.uk/insights/inside-our-new-seed-call-for-scalable-neural-interfaces/) — public explanation of motivations;
- [Exploring new frontiers in neurotech](https://aria.org.uk/insights/exploring-new-frontiers-in-neurotech) — discussion of building Precision Neurotechnologies;
- [Massively Scalable Neurotechnologies: a possible ARIA programme](https://aria.org.uk/insights/massively-scalable-neurotechnologies/) — public programme thinking about access and non-surgical delivery;
- programme-progress interviews and the Juan Benet conversation linked from the official opportunity-space pages.

Recommended content model for each selected item:

- title;
- format: programme, programme thesis, public essay, interview, talk, or project;
- concise summary in Jacques’s own words;
- source/publisher: ARIA;
- publication date from the primary page;
- Jacques’s role, confirmed rather than inferred;
- external canonical URL;
- optional relationship to a standalone project.

Homepage use: at most two or three items that explain the Scaling question. Do not reproduce a live feed of all ARIA updates, funding calls, teams, budgets, or programme news.

Deeper Scaling use: organise the public material around enduring constraints—delivery, procedure, cost, manufacturing, regulation, training, infrastructure, adoption—not around ARIA’s website taxonomy.

## 9. Homepage selection plan

### Opening

- 60–100 words across two short paragraphs;
- name, durable identity, current domain, and research/programme arc;
- ARIA appears in Now rather than the first clause unless the final copy reads better otherwise.

### Now

- 50–90 words;
- current role and confirmed programme portfolio;
- one short list or sentence containing 1–3 current questions;
- no detailed budget, team count, or funding status that will age quickly.

### Scaling

- 80–140 words of interpretation;
- two or three selected programme/project/writing links;
- likely candidates: one Precision item, one Massively Scalable or adoption item, and one public thesis/essay;
- final selection requires Jacques’s approval.

### Science

- 100–160 word overview;
- three field summaries of roughly 40–70 words each;
- three to five selected publications total, not per field;
- links to `/science/` and `/publication/`.

### Conversations

- two or three items only;
- provisional candidates: Tom Scott; the official ARIA/Juan Benet conversation; one long-form interview, written interview, or useful public talk chosen by Jacques;
- do not use a press mention merely to fill the third slot.

### Other

- short introduction;
- provisional selection: MIT teaching; FameLab or Confessions of a Clumsy Scientist; comedy or another unusual project;
- lighter tone, but all claims and links still verified.

### About

- 80–130 word biography distinct from the Opening;
- CV, Scholar, LinkedIn, email, and fuller About link;
- optional portrait only after selection and rights approval.

## 10. Launch-essential content

The following must be written or confirmed before launch:

1. final Opening and Now copy;
2. current role, programme portfolio, and current questions;
3. short Scaling essay and at least two supported items;
4. scientific-arc introduction;
5. field-level problem/contribution/connection summaries for Neuroscience, Programmable Photonics, and Quantum Computing and Simulation;
6. selected publication list and accurate annotations;
7. verified patent list or an explicit decision to defer patents;
8. two or three homepage Conversations plus enough material for the deeper page;
9. teaching, communication, and comedy selections for Other;
10. 300–500 word About biography and confirmed chronology;
11. current CV or an explicit label that the existing PDF is historical;
12. confirmed Google Scholar, LinkedIn, and email links;
13. a small recommendations list only if Jacques supplies it; otherwise omit it cleanly;
14. image selection, alt text, credits, and reuse confirmation;
15. redirects/aliases for every migrated priority legacy route.

## 11. Later additions

Useful but not required for the first launch:

- a fuller independent essay archive if enough essays emerge;
- an Ideas or Writing top-level page if thematic classification becomes strained;
- a separate Reading page after a substantial annotated list exists;
- fuller talk chronology or recordings archive;
- detailed project pages for individual ARIA-funded work where Jacques’s role and editorial purpose are clear;
- complete historical invited-talk list from the CV;
- awards/fellowships chronology beyond the compact About version;
- selected collaborators or team acknowledgements where useful;
- richer publication context, abstracts, DOI reconciliation, and newer records;
- a lightweight update date for Now if maintenance proves reliable.

## 12. Placeholder-content audit

Explicit Stage 3 placeholders to remove or replace before launch:

- `content/sections/reading.md`: entire body;
- `content/sections/other.md`: “Selected material will be edited…” sentence;
- `content/work/precision-neurotechnologies/index.md`: foundation-page notice;
- `content/writing/analogue-quantum-simulation/index.md`: foundation-page notice;
- `content/conversations/tom-scott/index.md`: foundation-page notice.

Generic foundation copy needing editorial replacement:

- `content/_index.md` second paragraph;
- `content/sections/work.md` once split;
- `content/sections/writing.md` once classified;
- collection index descriptions in Work, Writing, and Conversations;
- publication archive lede if patents/thesis categorisation changes.

Legacy boilerplate that must never be mistaken for real content:

- GenCoin/University X experience;
- Coursera/edX/DataCamp accomplishments;
- R/Statistics/Photography skill percentages;
- demo hero, slider, people, tags, and Academic Kickstart copy;
- draft privacy text “test test” and template terms copy;
- `position: test` in the legacy author profile.

## 13. Factual statements requiring Jacques’s confirmation

### Current role and chronology

- exact current title at ARIA and whether “founding Programme Director” remains preferred;
- ARIA start month/year;
- whether Honorary Associate Professor at UCL is current and should be prominent;
- UCL role title and dates after the CV’s “2021–” entry;
- complete chronology between the 2023 CV and the present;
- whether to describe Jacques as scientist, applied physicist, neuroscientist, programme builder, writer, or a specific combination in the opening line.

### Current work

- which current programmes Jacques leads or co-leads;
- whether Precision Neurotechnologies and Massively Scalable Neurotechnologies should both appear at launch;
- preferred one-sentence scope for each programme;
- which current questions are genuinely occupying him now;
- which public programme theses, essays, talks, funded projects, or progress reports he authored or wants to claim as representative;
- how broad the Scaling page should extend beyond neurotechnology today.

### Science

- exact contribution to each selected project/publication;
- why each selected paper mattered and its connection to later work;
- which newer neuroscience and photonics/quantum outputs are missing;
- whether the three proposed field labels are technically accurate and complete;
- whether the analogue quantum simulation book belongs primarily in Science, About interests, or both;
- whether any legacy present-tense project language remains accurate.

### Patents

- canonical patent families, identifiers, inventor lists, years, and desired links;
- whether all four CV patent entries remain accurate and public-facing;
- whether the two existing publication bundles represent applications, grants, or duplicate family stages.

### Conversations and Other

- strongest two or three Conversations for the homepage;
- actual event/publication dates for all legacy press and public-engagement items;
- whether the Gormley item belongs in Conversations or Other;
- FameLab title/year and preferred wording;
- Jacques’s role in Confessions of a Clumsy Scientist;
- which comedy groups, venues, and locations should remain public;
- whether old slide decks, GitHub tutorial code, Binder link, and videos still work and should be promoted.

### About and contact

- approved 300–500 word biography;
- updated role/education chronology and which awards belong in the compact version;
- current CV file and whether the 2023 PDF should be replaced before launch;
- public email address and whether to expose it as `mailto:`;
- confirmation of Google Scholar and LinkedIn URLs;
- whether Twitter/X remains relevant;
- current portrait choice and permission to publish;
- personal interests that should appear;
- books, blogs, or publications Jacques returns to, with short annotations;
- whether “things I enjoy reading and doing” should be first-person prose or two small lists.

### Editorial and legal

- preferred UK/US spelling and house style; recommendation: UK English;
- permission/source status for endorsement quotations in the legacy Philosophy section;
- rights and credits for press, project, teaching, and public-engagement images;
- whether a real privacy page is required for any future analytics, email signup, or contact mechanism.

## 14. Content decisions required from Jacques

These are the decisions needed to move from planning into controlled implementation. Items 1–8 block the earliest Stage 5 structural/content work; the rest can be resolved at later checkpoints.

1. Approve **Scaling** as the initial visible label, or supply the replacement.
2. Decide whether `/scaling/` should remain the durable URL even if the label changes later.
3. Approve **Other** rather than **Other things**.
4. Confirm the exact current ARIA title and programme portfolio to show in Now.
5. Supply or approve 1–3 current questions for Now.
6. Confirm whether both Precision Neurotechnologies and Massively Scalable Neurotechnologies belong in the launch version of Scaling.
7. Choose the first two or three Scaling items—programme, thesis, essay, talk, or project—to feature on the homepage.
8. Confirm the three Science field labels: Neuroscience; Programmable Photonics; Quantum Computing and Simulation.
9. Choose approximately two or three representative Programmable Photonics publications.
10. Choose approximately three or four representative Quantum Computing and Simulation publications.
11. Identify any Neuroscience publications or outputs to add, or approve a Science section without a formal neuroscience publication list.
12. Provide a brief contribution/significance note for every selected publication and project.
13. Decide whether patents are launch-essential or can follow later.
14. If patents are included, confirm the canonical four-family list and identifiers.
15. Choose the strongest two or three homepage Conversations.
16. Decide whether the Gormley interview belongs under Conversations or Other.
17. Choose the homepage Other items; recommended starting set is MIT teaching plus two of FameLab, Confessions, comedy, or Gormley.
18. Confirm which legacy press mentions should remain visible rather than merely redirect.
19. Approve the intended treatment of `/post/` and `/talk/` when their empty indexes are retired.
20. Supply or approve the 300–500 word About biography.
21. Supply an updated chronology from 2021 to the present and confirm all current affiliations.
22. Provide an updated CV or approve an explicit temporary treatment for the 2023 CV.
23. Confirm the public email address and whether it may be exposed directly.
24. Confirm Google Scholar, LinkedIn, and any Twitter/X link to retain.
25. Supply a small annotated recommendations list, or approve omitting recommendations at launch.
26. Confirm which personal interests and activities belong on About.
27. Select the portrait and approve its use.
28. Approve image selections/credits and identify any images that must not be reused.
29. Decide whether legacy book endorsements should be omitted, archived, or reused with confirmed permission/source.
30. Approve UK English as the site’s editorial standard.

## 15. Proposed Stage 5: first structural and visual pass

Stage 5 should follow the detailed checkpoint plan in `docs/DESIGN_BRIEF.md`:

1. Rename and create the agreed sections and routes.
2. Implement homepage hierarchy and navigation.
3. Establish typography and global page geometry.
4. Add Scaling and Science page structures.
5. Add Conversations, Other, and About page structures.
6. Conduct mobile and accessibility review.
7. Make final first-pass visual refinements.

At every checkpoint:

- modify only the content and layouts needed for that checkpoint;
- keep ordinary copy in Markdown;
- preserve `/publication/`, priority URLs, downloads, and legacy source until replacements validate;
- run a clean build and route validation;
- review locally before proceeding;
- do not deploy, push, or change Pages settings without separate approval.

Full content migration, large-scale legacy deletion, final design polish, and production deployment remain later work.
