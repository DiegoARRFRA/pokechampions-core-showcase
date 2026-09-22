<p align="right">
  <a href="ENGINEERING.md">Español</a> · <strong>English</strong>
</p>

# Engineering decisions and trade-offs

[← Overview](../README.en.md) · [Technical overview](TECHNICAL_OVERVIEW.en.md) · [Documentation](README.en.md)

This page connects engineering problems with mechanisms observed in the implementation. It explains benefits and limitations without turning them into absolute quality claims or inventing test outcomes.

## 1. One mechanical question, several interfaces

**Problem.** Versus, EV Lab and 1HITKO could diverge if each screen reinterpreted abilities, items and conditions.

**Mechanism.** Typed requests/results and shared domain components where scopes overlap. Composition supplies an implementation of the calculation port to its consumer.

**Trade-off.** Shared rules do not remove the need to test each flow. Candidate search and defensive optimisation still ask different questions. Strict hexagonal architecture is not imposed across the entire app. [Architecture](ARCHITECTURE.en.md).

## 2. Migrate without turning a failure into an empty library

**Problem.** Moving previous storage to SQLite can lose data if “could not read” is treated as “nothing existed”.

**Mechanism.** Preserve originals, prepare and verify before activating repositories, classify errors and block inconsistent writes. Revision and SQL controls invalidate a verified generation if it changes.

**Trade-off.** Safer migration introduces more states and recovery cases. Hashes and preparation seals are not encryption or complete protection against an attacker. [Migration and integrity](DATABASE.en.md#migration-and-integrity).

## 3. Complete a match consistently

**Problem.** Double confirmation, a changed draft or failure between writes can duplicate a result or show success without persistence.

**Mechanism.** Transactional draft completion, record identity, expected revision and lookup of previous confirmations. The result and successor draft are coordinated within the operation.

**Trade-off.** Idempotency and recovery must distinguish an earlier confirmation from a newly rolled-back write. Disabling a button alone is insufficient. [Save sequence](TECHNICAL_OVERVIEW.en.md#saving-a-match).

## 4. SQL structure without normalising every game attribute

**Problem.** Teams, configurations and snapshots evolve, while frequent queries need stable IDs and ordering.

**Mechanism.** A hybrid schema: indexed columns for selection and uniqueness, validated JSON content and versioned codecs. Eleven tables, with one actual FK and separately documented logical associations.

**Trade-off.** Some integrity remains the application's responsibility and not all filters run in SQL. An index alone is not proof of fast queries, and imaginary domain tables are not presented as implemented. [Dictionary and relationships](DATABASE.en.md).

## 5. Cancellation and work ownership

**Problem.** A late operation can notify a disposed consumer or overwrite a more recent request's results.

**Mechanism.** Explicit resource ownership, coordinated closing, progress/cancellation and current-job checks. Native storage and 1HITKO search use isolation for different responsibilities.

**Trade-off.** An isolate does not imply freedom from blocking or guaranteed performance; measurements and specific lifecycle tests remain necessary. Examined repositories are not described as universally reactive. [Concurrency](TECHNICAL_OVERVIEW.en.md#concurrency-and-state).

## 6. Data accuracy and reproducibility

**Problem.** External references and regulations can change independently of an installed application's data.

**Mechanism.** Development-time imports, pinned revisions, provenance and stable identifiers. The application consumes packaged catalogues; a translation does not govern a mechanical rule.

**Trade-off.** Updating game data requires preparing and validating new artefacts. Insufficient evidence becomes a limitation rather than a guess based on another format. [Sources and accuracy](DATA_AND_ACCURACY.en.md).

## 7. Measure the improved part, not promise complete startup

The historical first-frame study separates Flutter work from total Android presentation time. Publishing a later degraded run under emulator pressure avoids attributing an environment-dependent result solely to the application. This is a documented historical case, not a new measurement of current code. [Performance](PERFORMANCE.en.md).

## Reading the evidence together

These mechanisms support discussion of product design, data modelling, transactions, asynchronous work, testing and maintenance. Demos show visible flows; documentation describes reviewed implementation; historical counts belong to their own checkpoints. None alone replaces a full review of private source.

[Validation & QA](VALIDATION.en.md) · [Database](DATABASE.en.md) · [Gallery](GALLERY.en.md)
