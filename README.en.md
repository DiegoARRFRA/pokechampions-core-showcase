<p align="right">
  <a href="README.md">Español</a> · <strong>English</strong>
</p>

# PokeChampions Core

**Prepare teams and analyse Pokémon Champions with a Flutter application that works offline, without an account or backend.**

> A public product and engineering showcase. The application source is private; this repository is not an open-source project.

## The application, in pictures

Home, a Versus result and a 1HITKO search. Real Android screenshots show the **Spanish interface in the dark theme**; select an image to enlarge it.

<p>
  <a href="media/screenshots/home.png"><img src="media/screenshots/home.png" width="220" alt="Home with links to the PokeChampions Core tools"></a>
  <a href="media/screenshots/versus-result.png"><img src="media/screenshots/versus-result.png" width="220" alt="Versus: damage range, factors, KO and calculation limits"></a>
  <a href="media/screenshots/1hitko-results.png"><img src="media/screenshots/1hitko-results.png" width="220" alt="1HITKO: candidates, moves and damage ranges"></a>
</p>

### Versus in action · 13 seconds

Choose a move, calculate and inspect damage and KO results in a 1v1 scenario.

<a href="media/demos/versus.gif"><img src="media/demos/versus.gif" width="260" alt="Versus demo: move selection and result inspection"></a>

**[Watch Versus in MP4](media/demos/versus.mp4)** · [1HITKO demo](docs/GALLERY.en.md#1hitko) · [Lead Trainer demo](docs/GALLERY.en.md#lead-trainer) · **[Complete gallery](docs/GALLERY.en.md)**

Demos are edited for presentation and are not benchmarks. The still Versus screenshot and its demo show different moves. [Provenance and editing](media/README.md#english).

## What you can do

| Tool | Purpose |
| --- | --- |
| **Teams / Team Builder** | Create and save six-slot teams with forms, abilities, natures, training, items and moves. |
| **Battle** | Compare speed and context in a doubles situation. It does not execute turns or resolve complete matches. |
| **Versus** | Inspect damage dealt and received in a 1v1 scenario, with normal and advanced configuration. |
| **1HITKO** | Find one-hit KO candidates under explicit conditions. Guaranteed damage does not guarantee move accuracy. |
| **EV Lab** | Explore defensive investment and survival thresholds against configured attacks. |
| **Lead Trainer** | Practise opening choices; practice outcomes are entered manually. |
| **Battle History and Pokémon Notes** | Save declared outcomes, team snapshots, observations and configurations. |
| **Settings** | Choose among eight languages and light, dark or system appearance. |

[Feature scope and limits](docs/FEATURES.md). The gallery includes eight screenshots; it contains no views of the team editor or Battle History module. The displayed record belongs to Lead Trainer.

## Engineering and documentation

**A modular, feature-first architecture with layered separation and ports and adapters applied to key components.**

Flutter and Dart power the application; Drift and SQLite hold user data; packaged, versioned catalogues support offline operation. Shared calculation components consume typed requests and results. Rules that can be isolated remain pure and deterministic: this does not imply that the whole application is independent of Flutter or follows a pure hexagonal architecture.

The following technical documentation is **in English**:

| Document | Contents |
| --- | --- |
| [Architecture](docs/ARCHITECTURE.md) | Component organisation, boundaries and responsibilities. |
| [Engineering](docs/ENGINEERING.md) | Decisions about state, persistence, localisation and reproducible imports. |
| [Validation & QA](docs/VALIDATION.md) | Historical campaigns, scope and outstanding checks. |
| [Performance](docs/PERFORMANCE.md) | An emulator startup case study and its limitations. |
| [Data & Accuracy](docs/DATA_AND_ACCURACY.md) | Sources, uncertainty and regulation updates. |
| [Roadmap](docs/ROADMAP.md) | Product and showcase direction. |

### Dated, scoped evidence

The public application checkpoint covers work through **14 September 2026**. It records a host suite with **4,849 passed, 0 failed and 0 omitted**. Separate historical campaigns document **104,091 Versus scenarios** and **361 forms / 12,987 1HITKO pairs**. These are separate sets: they are not additive and do not certify complete coverage or a later version.

Selected physical QA used a **POCO F5 / Android 15**, including an update to external QA build **1.0.0+2**. The performance study used an **emulator**: its engine-to-first-frame improvement is not a measurement of complete Android startup. Demos prepared on **17 September 2026** do not independently identify an exact build and are not new application tests.

## Status and limits

The product remains in development. Feedback can address suggestions, issues and public documentation: [participation guide](CONTRIBUTING.md).

This repository contains documentation and selected presentation material; it does not distribute application source, internal datasets, private tests, credentials, APKs or music. It does not offer a public application download.

Checks for this repository are described in [Showcase validation](CONTRIBUTING.md#validación-del-showcase--showcase-validation). They are separate from historical application evidence.

## Ownership and unofficial project

This showcase does not grant an open-source licence. [Ownership notice](NOTICE.md).

PokeChampions Core is an **unofficial fan project**. Pokémon, Pokémon Champions and their names, characters, assets and trademarks belong to their respective rights holders. The project is not affiliated with, endorsed or sponsored by Nintendo, Creatures, GAME FREAK or The Pokémon Company.