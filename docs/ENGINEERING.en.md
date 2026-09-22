<p align="right">
  <a href="ENGINEERING.md">Español</a> · <strong>English</strong>
</p>

# Engineering decisions

[← Overview](../README.en.md) · [Technical overview](TECHNICAL_OVERVIEW.en.md) · [Documentation](README.en.md)

## Shared rules across tools

Versus, EV Lab and 1HITKO resolve common mechanics: abilities, items and battle conditions. Typed requests and shared domain components prevent each screen from interpreting those rules independently.

Each tool retains its own search or analysis flow and tests. Composition connects the calculation implementation to its consumer through a contract. [Architecture](ARCHITECTURE.en.md).

## Migration with data preservation

A read error must not be interpreted as an empty library. Migration preserves originals and separates SQLite preparation, content verification and repository activation.

A verified preparation loses that status if its content changes. Revisions and SQL controls detect the change before activation. Format, compatibility and access errors are handled differently. [Migration and integrity](DATABASE.en.md#migration-and-integrity).

## Saving and idempotency

Completing a match means saving its outcome and preparing the next draft. Both actions are coordinated in a transaction using a record identity and expected revision.

A repeated operation retrieves its existing confirmation. A changed draft produces a conflict. Recovery distinguishes a previously confirmed match from an insertion that has just been rolled back. [Save sequence](TECHNICAL_OVERVIEW.en.md#saving-a-match).

## Hybrid persistence model

Teams and snapshots contain structures that evolve with the product. They are stored as versioned JSON alongside columns used to identify, order and index records.

This avoids creating a table for every game attribute. In exchange, codecs and repositories handle part of the semantic validation and entity associations. SQLite provides transactions, uniqueness and selected indexes. [Tables and relationships](DATABASE.en.md).

## Cancellation and lifecycle

A search that finishes after leaving a screen must not replace another request's result. The 1HITKO service checks whether its job remains current and supports progress and cancellation.

Storage has a shared owner and an operation queue. Closing waits for admitted actions. The SQL isolate and calculation worker have different responsibilities and are managed separately. [Concurrency](TECHNICAL_OVERVIEW.en.md#concurrency-and-state).

## Reproducible data

Imports run during development from pinned references. Each release uses packaged catalogues and ID-based terminology; an external change does not alter an existing installation's data.

Updating a regulation requires generating and validating new artefacts. An interaction without sufficient support is documented as a limitation rather than borrowing a rule from another format. [Data and accuracy](DATA_AND_ACCURACY.en.md).

## Startup profiling

Analysis separates Flutter work from Android presentation time. This helps locate expensive initialisation and compare changes without confusing first-frame timing with complete startup.

The study records measurements, the emulator environment and variation across repeated runs. [Performance](PERFORMANCE.en.md).

[Validation & QA](VALIDATION.en.md) · [Database](DATABASE.en.md) · [Gallery](GALLERY.en.md)
