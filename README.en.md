<p align="right">
  <a href="README.md">Español</a> · <strong>English</strong>
</p>

# PokeChampions Core

An Android application for building teams, calculating damage and preparing Pokémon Champions matchups. It works offline and stores teams, notes and match records on the device.

Developed by **[Diego de Arriba](https://github.com/DiegoARRFRA)** · Flutter and Dart · Private source code.

[Technical overview](docs/TECHNICAL_OVERVIEW.en.md) · [Database](docs/DATABASE.en.md) · [Architecture](docs/ARCHITECTURE.en.md) · [Gallery](docs/GALLERY.en.md) · [Documentation](docs/README.en.md)

## Technologies and architecture

| Area | Implementation |
| --- | --- |
| **Interface** | Flutter and Dart; reusable components, eight languages and light, dark and system themes. |
| **Architecture** | Feature-first organisation and layers, typed contracts and constructor injection. Ports and adapters for calculation, audio and persistence. |
| **Analysis** | Domain rules and local catalogues for evaluating damage, KO and survival within the configured scenario. |
| **Persistence** | Drift and SQLite: 11 tables, indexed columns and JSON documents for teams, notes, history and opponents. |
| **Concurrency** | Storage on a Drift isolate, a FIFO operation queue and 1HITKO search with progress and cancellation. |
| **Integrity** | Transactional saves, draft revision checks and migrations that preserve and verify data. |
| **Development** | Dart/Flutter tests, static analysis, data generation and Android profiling. |

Calculation uses packaged rules and catalogues. Saving uses local repositories and SQLite, without accounts or external services.

## The application

Home, damage analysis and the team editor. Select a screenshot to enlarge it. Screenshots show the Spanish interface.

<p>
  <a href="media/screenshots/home.png"><img src="media/screenshots/home.png" width="220" alt="PokeChampions Core home in the light theme"></a>
  <a href="media/screenshots/versus-result.png"><img src="media/screenshots/versus-result.png" width="220" alt="Versus: damage range and uses required to achieve a KO"></a>
  <a href="media/screenshots/team-builder.png"><img src="media/screenshots/team-builder.png" width="220" alt="Team editor with members, abilities, items and natures"></a>
</p>

### Versus calculator

Configure the combatants, choose a move and inspect its damage range and KO conditions.

<a href="media/demos/versus.gif"><img src="media/demos/versus.gif" width="260" alt="Move selection and damage calculation in Versus"></a>

**[Watch video](media/demos/versus.mp4)** · [Teams and builds](docs/GALLERY.en.md#teams-and-builds) · [Lead Trainer](docs/GALLERY.en.md#lead-trainer) · [Battle History](docs/GALLERY.en.md#battle-history) · [All demos](docs/GALLERY.en.md)

## Design decisions

| Requirement | Solution | Details |
| --- | --- | --- |
| Preserve teams and matches during storage migration | Database preparation, verification and activation, with originals retained for recovery. | [Migrations](docs/DATABASE.en.md#migration-and-integrity) |
| Prevent duplicate records and partial saves | Transactional draft completion with identity and expected-revision checks. | [Saving matches](docs/TECHNICAL_OVERVIEW.en.md#saving-a-match) |
| Keep calculations consistent across tools | Shared rules, typed requests and separate evaluation and presentation. | [Architecture](docs/ARCHITECTURE.en.md) |
| Manage searches and storage operations | Isolates, cancellation and job lifecycle control. | [Concurrency](docs/TECHNICAL_OVERVIEW.en.md#concurrency-and-state) |

## Testing and performance

**5,058 tests passed, with no failures or omissions**, in the host suite of **20 September 2026**. Quality documentation covers the results, engine comparison scenarios and checks on POCO F5 with Android 15.

[Test results and scope](docs/VALIDATION.en.md) · [Emulator startup study](docs/PERFORMANCE.en.md)

## Technical documentation

| Document | Contents |
| --- | --- |
| [Technical overview](docs/TECHNICAL_OVERVIEW.en.md) | Technologies, module connections, calculation and save flows. |
| [Architecture](docs/ARCHITECTURE.en.md) | Layers, contracts, composition and startup. |
| [Database](docs/DATABASE.en.md) | Diagrams, tables, relationships, indexes and migrations. |
| [Engineering decisions](docs/ENGINEERING.en.md) | Persistence, concurrency and data management. |
| [Features](docs/FEATURES.en.md) | Teams, Versus, EV Lab, 1HITKO, Battle, Lead Trainer and Notes. |

[Full index](docs/README.en.md) · [Roadmap](docs/ROADMAP.en.md) · [Feedback and issues](CONTRIBUTING.en.md)

## Author and availability

**Diego de Arriba** · [GitHub profile](https://github.com/DiegoARRFRA).

A personal project in active development. This repository contains its documentation and demonstrations; source code is private and the application is not yet available for public download.

PokeChampions Core is an unofficial fan project with no affiliation to Nintendo, Creatures, GAME FREAK or The Pokémon Company. Pokémon and its assets and trademarks belong to their respective rights holders. [Ownership notice](NOTICE.en.md).
