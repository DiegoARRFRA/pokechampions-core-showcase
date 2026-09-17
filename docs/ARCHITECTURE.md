# Architecture

PokeChampions Core is a Flutter application designed around a strict separation between presentation, typed feature boundaries, domain logic, persistence and versioned local catalogues.

## Runtime shape

```text
Flutter UI
   ↓
Typed feature ports
   ↓
Pure domain rules / resolvers
   ↓
Validated result models

           ↘ Drift / SQLite
           ↘ local preferences
           ↘ packaged versioned catalogues
```

The private implementation follows a feature-oriented structure with shared core layers. UI code is not expected to reconstruct mechanics from labels or free-form descriptions. Instead, screens provide typed requests to domain services and render typed responses.

## Core concerns

### Domain logic

Damage, legality and battle-context rules are isolated from widgets as far as practical. This allows the same underlying calculation boundary to be reused by normal Versus analysis, EV Lab, 1HITKO and advanced scenarios without duplicating mechanical interpretation inside each screen.

### Persistence

User-owned data is stored locally using Drift/SQLite. Team data, battle history and other persisted state are separated from generated catalogue assets and lightweight preferences.

The migration strategy prioritises preservation: legacy data is not silently discarded merely because the current storage authority changes.

### Packaged data

PokeChampions Core is offline-first. Runtime catalogue reads come from assets packaged with the app. External research, generation and validation happen during development, then the resulting artefacts are versioned and shipped with a release.

This keeps runtime behaviour reproducible and avoids silently changing mechanics or legality because an upstream website changed.

### Feature boundaries

The application deliberately does not become a full autonomous battle simulator. Its analysis experiences remain separate:

- **Battle** represents an explicit 2v2 situation.
- **Versus** resolves damage for an explicit 1v1 scenario.
- **1HITKO** searches for guaranteed one-hit KO candidates.
- **Lead Trainer** practises initial choices rather than simulating complete matches.
- **Battle History** stores and analyses local records rather than replaying turns.

## Development-only tooling

The private repository also contains importers, generators, audit harnesses and validation artefacts. Those tools may transform pinned upstream data into runtime-safe assets, but they are intentionally outside the public showcase unless a specific component is later released under its own licence.

## Why the source remains private

The goal of this repository is to make the engineering visible without publishing the production implementation, full data pipeline or internal test corpus. That protects the work while still allowing architecture, methodology and measured results to be reviewed publicly.
