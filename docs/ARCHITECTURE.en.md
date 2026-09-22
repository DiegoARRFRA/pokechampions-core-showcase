<p align="right">
  <a href="ARCHITECTURE.md">Español</a> · <strong>English</strong>
</p>

# Architecture

[← Overview](../README.en.md) · [Documentation index](README.en.md)

PokeChampions Core uses a modular, feature-first architecture with layered separation and ports and adapters in key components. Presentation, application coordination, domain rules, persistence and versioned local catalogues have distinct responsibilities. This is not a claim that the whole application is purely hexagonal or independent of Flutter.

## Organisation and flow

```text
Application features
  ├─ Presentation and controllers
  ├─ Coordination and typed contracts
  └─ Adapters and repositories where appropriate

Shared core
  ├─ Models and domain rules
  ├─ Versioned local catalogues
  └─ Persistence and preferences access

Calculation: interface → typed request → rules / catalogues → result → interface
Saving: interface → repository → Drift / SQLite
```

This summarises responsibilities, not every project dependency. Features reuse shared layers where appropriate; not every feature has an identical folder structure. Ports and adapters isolate selected boundaries, particularly calculation and audio. Calculation screens pass typed requests and render responses rather than reconstructing mechanics from labels or descriptions.

## Core responsibilities

### Domain logic

Damage, legality and context rules are isolated from widgets as far as practical. Normal Versus, EV Lab, 1HITKO and advanced scenarios reuse rules or calculation boundaries where their scopes overlap, without reinterpreting every mechanic in each screen.

### Composition and adapters

Composition supplies controllers with the implementations they need. A calculation contract separates its consumer from the concrete engine; a player contract separates audio coordination from the playback library. These are concrete uses of ports and adapters, not certification of every application dependency.

### Persistence

User-owned data is stored locally through Drift/SQLite. Teams, history and other persisted state are separate from generated catalogues and lightweight preferences. Migration prioritises preservation: originals are not silently discarded when storage authority changes.

### Packaged data

Catalogues are read from assets shipped with the app. External research, generation and validation happen during development. A website or upstream reference therefore does not silently change rules in an already-installed version.

## Product boundaries

**Battle** represents an explicit 2v2 state. **Versus** resolves damage in a 1v1 scenario. **1HITKO** finds KO candidates under declared conditions. **Lead Trainer** practises opening choices. **Battle History** stores and analyses local records. None turns the product into an autonomous full-match simulator.

## Development tooling and publication

Importers, generators, audit harnesses and internal tests belong to the production project. They prepare artefacts from pinned references but are not distributed in this showcase.

The public goal is to demonstrate architecture, methodology and selected results without exposing implementation, the full pipeline or test corpus. Public documentation and GitHub rules do not guarantee protection against copying.

[Technical overview and execution flow](TECHNICAL_OVERVIEW.en.md) · [Engineering decisions](ENGINEERING.en.md)
