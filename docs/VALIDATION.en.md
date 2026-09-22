<p align="right">
  <a href="VALIDATION.md">Español</a> · <strong>English</strong>
</p>

# Validation and evidence

[← Overview](../README.en.md) · [Technical overview](TECHNICAL_OVERVIEW.en.md) · [Index](README.en.md)

**A test count describes a particular run, not complete product quality.** Documentation was reviewed on 22 September 2026 and distinguishes source inspection, host tests, physical checks and presentation material.

## Validation references

| Evidence | Result and scope |
| --- | --- |
| **Host suite accepted on 20 September 2026** | **5,058 passes, 0 failures, 0 omissions, exit 0**. Ordinary serial run without filters; investigation started on the 19th and was accepted at 00:44 Europe/Madrid on the 20th. |
| Focused repair in that campaign | 373 focused passes; traceability of 79 historical failures. Tests and references were aligned with current behaviour; that block introduced no production changes. |
| Earlier reference from 14 September 2026 | 4,849 passes, 0 failures and 0 omissions after an import fix. Retained as an earlier checkpoint, not the current count. |
| Historical Versus campaign | 104,091 scoped scenarios. Later participants or rules are not automatically covered. |
| Historical 1HITKO campaign | 361 forms and 12,987 attacker/defender pairs within that campaign's catalogue and conditions. |
| Selected physical QA | POCO F5/Android 15: installation, identity, navigation, persistence, appearance and updates between early external deliveries, including 1.0.0+2. |

These sets **are not additive**. The 5,058 passes do not show that every later change or APK ran the same suite. Host acceptance does not certify audible playback, mobile smoothness, store publication or complete coverage.

## What was inspected for this documentation

SQLite schema, migration, native opening, repository composition, team/round/history operations, dependencies and contracts support the architecture and persistence descriptions. Inspection confirms the visible implementation; it does not execute every case or inspect a real user database.

The overview distinguishes **11 application tables and one explicit FK**, logical references without FKs, per-entity JSON and one-shot Future-based reads. Generic library capabilities are not automatically presented as implemented features.

## Evidence levels

**Inspected implementation:** shows structure, rules and decisions visible in the reviewed source. **Tests executed at a checkpoint:** demonstrate acceptance within that state and case set. **Physical walkthrough:** provides evidence for the tested device and scenario. **Demo:** shows a selected interaction, not a benchmark or mechanical guarantee.

Complete internal evidence remains private. This repository publishes scoped summaries, not a public independent reproduction of every campaign. Technical dependencies were checked, but no global coverage percentage was recalculated.

## Separate outstanding work

Broader device and accessibility/TalkBack coverage; prolonged audio, external focus, calls and Bluetooth; frame pacing and spike attribution; write/large-collection measurements; and validation for data added by each new regulation.

The historical performance case uses an emulator. **Engine → first frame** is not **complete Android launch**. [Method and limitations](PERFORMANCE.en.md).

## Public repository validation

Links, ES/EN selectors, manifest and media have a dedicated verifier. It checks the showcase, not the private calculation engine. [Instructions and validation modes](../CONTRIBUTING.en.md#showcase-validation).

Current demos and the 1HITKO exception are identified in [the gallery](GALLERY.en.md) and [media provenance](../media/README.en.md). This documentation update changes neither media binaries nor their hashes.

## Preserving failures

Failed attempts remain in internal evidence packages. Fixing a test or implementation does not rewrite its original outcome: a later acceptance is recorded with defined scope. The 5,058-pass evidence comes from the repair summary and project status, not a run performed while editing this portfolio.
