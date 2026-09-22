<p align="right">
  <a href="TECHNICAL_OVERVIEW.md">Español</a> · <strong>English</strong>
</p>

# Technical overview and execution flow

[← Overview](../README.en.md) · [Documentation index](README.en.md)

**Flutter and Dart for the interface and logic; Drift/SQLite for user data; versioned local catalogues for analysis.** The application works without an account or backend. This overview describes technologies and responsibilities checked against the project's dependency manifest and components; it does not publish their implementation.

## Technologies and actual responsibilities

| Area | Technology | Use in PokeChampions Core |
| --- | --- | --- |
| Interface and language | **Flutter · Dart** | Mobile screens, reusable components, light/dark/system themes and typed models. |
| Architecture | **Feature-first · layers · ports and adapters** | Separates features, coordination, rules and data access. Composition connects implementations through contracts in key components. |
| State | **Controllers · ChangeNotifier · Futures · Streams** | Coordinates loading, visible state, events and lifecycle. This does not imply an external state framework or that every SQL query is reactive. |
| Calculation | **Dart domain logic · typed requests and responses** | Validates scenarios and applies rules shared by Versus and related tools where their scopes overlap. Isolatable rules are pure and deterministic. |
| Searches | **Dart isolates · messages · cancellation** | The 1HITKO service has an isolated search worker, publishes progress and prevents cancelled or superseded jobs from applying results. Not every calculation uses isolates. |
| Persistence | **Drift · SQLite through sqlite3 · path_provider** | Keeps teams, notes and history through local repositories; separates user storage, catalogues and preferences. |
| Preferences | **shared_preferences** | Stores lightweight language, appearance and audio settings; does not replace the teams/history database. |
| Localisation | **flutter_localizations · intl · ARB · ID-based catalogues** | Interface and game terminology in Spanish, English, German, French, Italian, Portuguese, Japanese and Korean. |
| Audio | **just_audio · audio_session** | Local player behind a contract, playback preferences and session/lifecycle coordination. Prolonged audible-session QA has a separate scope. |
| Generation | **drift_dev · build_runner · data generators** | Generates persistence support and prepares artefacts during development; not a compilation service inside the app. |
| Integrity | **crypto · SHA-256 · versioned JSON** | Integrity hashes and artefact traceability. SHA-256 does not mean the data is encrypted. |
| Testing and analysis | **flutter_test · test · analyzer · flutter_lints** | Logic and widget tests, regressions and static analysis; campaigns retain their dates and scope. |
| Delivery and profiling tools | **Git · Flutter/Android tools · ADB · traces** | Version control, Android builds, physical-device flows and startup diagnosis. Does not imply store publication or public CI for the private source. |

Package versions are managed in the production project; this overview is not an installable dependency manifest. Flutter's cross-platform capabilities are not presented as evidence that every platform is released or validated.

## From user action to result

```text
User configures a team, combatants and conditions
  → The screen passes structured state to the controller
  → The flow builds a typed request and checks the context
  → The calculation service applies rules and local catalogues
  → It returns damage, KO conditions or an explicit limitation
  → The interface renders the result

Saving: interface → repository → Drift / SQLite
Lightweight settings: interface → preferences repository
1HITKO search: scenario → worker → progress / result / cancellation
```

This summarises responsibilities, not an identical sequence for every screen. Inspecting damage does not require saving the scenario; storage is not a mandatory part of each calculation.

## How the tools connect

**Teams and Notes** preserve reusable configurations. **Versus** resolves damage in an explicit one-on-one scenario; **EV Lab** explores defensive investment needed to survive configured attacks. **1HITKO** searches candidates under its own constraints and can transfer a scenario to Versus for inspection.

**Battle** represents a doubles situation and compares speed, field conditions and relevant effects; it does not play a match. **Lead Trainer** prepares opening choices and opens the corresponding Battle situation; outcomes are entered manually. **Battle History** stores declared matches and local snapshots: it does not reconstruct turns and is distinct from Lead Trainer's practice record.

## Three data categories, three responsibilities

| Data | Where and why |
| --- | --- |
| User-owned | SQLite: teams, notes and records that must survive process closure and updates. Migrations prioritise retaining previous data. |
| Configuration | Local preferences: language, appearance and audio. |
| Game data | Packaged, versioned catalogues: forms, moves, abilities, items and terminology. Imports and verification take place during development, not through silent website requests for each calculation. |

## Important boundaries

This is a modular architecture with ports/adapters in key components, **not a claim of pure hexagonal architecture or total independence from Flutter**. The product does not require a server, accounts or cloud sync and is not presented as an autonomous turn simulator or an application querying AI to decide damage.

Contracts allow implementations to be replaced at defined points and logic to be tested without the full UI. They do not establish complete coverage or guarantee every mechanic's correctness. Unverified context must remain a limitation, not become an invented answer.

[Architecture](ARCHITECTURE.en.md) · [Engineering decisions](ENGINEERING.en.md) · [Features](FEATURES.en.md) · [Validation](VALIDATION.en.md)
