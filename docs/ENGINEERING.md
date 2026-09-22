# Engineering

PokeChampions Core uses a modular, feature-first architecture with layered separation and ports and adapters in key components. The engineering priorities are reproducibility, explicit state ownership and evidence tied to a defined scope. These boundaries are applied where useful; they do not make the entire application a pure hexagonal system or independent of Flutter. See [Architecture](ARCHITECTURE.md).

## Typed boundaries

Feature UIs pass typed requests into shared domain services and receive typed results back. This reduces the risk that multiple screens interpret the same mechanic differently.

Normal Versus analysis, EV Lab, 1HITKO and advanced calculation flows reuse the same underlying mechanical boundary where their scopes overlap.

## Pure and deterministic logic

Rules that can be expressed without UI or storage dependencies are kept pure and deterministic. This makes large automated comparison campaigns practical and keeps regression tests independent from rendering.

## Storage migration

The application moved user-owned state toward a shared SQLite authority while preserving legacy data. Migration work is treated as a correctness problem: original data is retained and incoherent states are blocked rather than silently rewritten.

## Runtime ownership

Asynchronous work and lifecycle boundaries are explicitly audited. Recent runtime work has covered cancellation, controller disposal, workers, listeners and resource ownership so background completion cannot update already-destroyed consumers.

## Localisation as a product feature

The eight locale packages are treated atomically. Runtime fallback is not used as a quiet substitute for missing curated content. Translation, typography and terminology therefore have their own validation contracts.

## Reproducible imports

External data is not fetched live by the production app. Development tooling pins upstream revisions, checks hashes where relevant, generates deterministic artefacts and keeps provenance separate from runtime data.

## Failure philosophy

The calculation policy is:

> A visible unknown is preferable to a plausible but unverified answer.

If available evidence cannot safely resolve a Champions-specific interaction, the implementation should expose insufficient context, preserve a documented block or require an explicit override backed by evidence.

## Scope discipline

PokeChampions Core intentionally refuses to become a full turn simulator simply because upstream references contain enough information to build one. Mechanics are integrated only when they support the declared product questions.
