# Data & Accuracy

PokeChampions Core separates **data provenance** from **runtime authority**. The app does not assume that one source is correct for every kind of question.

## Authority model

The private data pipeline distinguishes between:

1. **Official Pokémon Champions information** for regulations, legal availability and published Champions-specific rules.
2. **Pinned technical references** for extracted master data, identifiers, learnsets and reproducible mechanical behavior.
3. **Champions-specific overrides** where an upstream general engine is explicitly superseded.
4. **Declarative project overrides** only when a rule has been independently justified and cannot be safely derived elsewhere.
5. **Human-readable descriptions** as documentation, never as mechanical authority by themselves.

## Offline-first catalogue strategy

Runtime catalogue data is packaged with the application. External research, import and generation happen during development rather than at runtime.

This gives each release a stable snapshot and prevents a mutable website or upstream repository from silently changing the behavior of an already-installed build.

## Pinned revisions and reproducibility

Where external technical references are used, the private tooling records immutable revisions and hashes where practical. Generated artefacts can therefore be compared against the exact inputs used to produce them.

## Conflict handling

A Champions-specific official rule takes precedence over a generic interpretation. A Champions-specific technical override takes precedence over a general engine rule where the override is applicable.

When evidence is insufficient, the preferred outcomes are:

- explicit insufficient context;
- a documented unsupported interaction;
- or a carefully scoped override backed by evidence.

The project intentionally avoids filling gaps merely because another Pokémon format behaves similarly.

## Regulation changes

New regulations are treated as data changes with their own acceptance work. Historical large-scale validation is not automatically inherited by newly introduced participants, mechanics or catalogue entries.

That distinction prevents an old green test campaign from being presented as proof for a state that did not exist when those tests were run.
