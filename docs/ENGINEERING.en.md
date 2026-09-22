<p align="right">
  <a href="ENGINEERING.md">Español</a> · <strong>English</strong>
</p>

# Engineering decisions

[← Overview](../README.en.md) · [Documentation index](README.en.md)

PokeChampions Core combines feature-first organisation, layers and ports/adapters in key components. Its priorities are reproducibility, explicit state ownership and evidence tied to a defined scope. These boundaries do not make the whole app purely hexagonal or independent of Flutter. See [Architecture](ARCHITECTURE.en.md) and [Technical overview](TECHNICAL_OVERVIEW.en.md).

## Typed contracts

Feature interfaces pass typed requests to shared services and receive typed results. This reduces the risk that multiple screens interpret the same mechanic differently. Normal Versus, EV Lab, 1HITKO and advanced flows reuse the underlying mechanics where their scopes overlap.

## Pure and deterministic rules

Rules that can be expressed without interface or storage dependencies remain pure and deterministic. This supports large comparison campaigns and regression tests separated from rendering.

## Storage migration

User state moved towards a shared SQLite authority while preserving earlier data. Migration is treated as a correctness problem: originals are retained and incoherent states blocked rather than silently rewritten.

## State, tasks and lifecycle

Controllers coordinate visible state and asynchronous operations. Cancellation, controller disposal, workers, listeners and resource ownership are reviewed so a background completion cannot update a destroyed consumer. The 1HITKO search service has an isolated worker and checks that a job is still current before publishing progress or results; that does not imply an isolate for every calculation.

## Localisation as a feature

The eight locale packages are treated as complete units. Silent fallback to another language is not used to conceal missing curated content. Translation, typography and terminology have their own validation contracts.

## Reproducible imports

The application does not fetch external data live for each calculation. Development tools pin revisions, check hashes where applicable, generate deterministic artefacts and keep provenance separate from runtime data.

## Failure handling

> A visible limitation is preferable to a plausible but unverified answer.

If evidence cannot safely resolve a Champions interaction, the application must expose insufficient context, preserve a documented block or require an explicit exception supported by evidence.

## Scope discipline

An external reference containing enough rules to simulate turns does not automatically expand the product. Mechanics are incorporated to answer preparation, analysis and review questions, not to build a complete autonomous simulator.
