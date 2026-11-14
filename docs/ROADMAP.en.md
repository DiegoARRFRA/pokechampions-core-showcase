<p align="right"><a href="ROADMAP.md">Español</a> · <strong>English</strong></p>

# Status and next steps

[← Overview](../README.en.md) · [Available features](FEATURES.en.md) · [Validation](VALIDATION.en.md)

Availability updated on **14 November 2026**: the app is published on [Google Play](https://play.google.com/store/apps/details?id=com.pokechampionscore.external). The technical scope and outstanding checks below retain their **5 November 2026, 1.0.1** cutoff.

## Implemented

Battle with configuration loading and temporary adjustments; Versus, Master Mode and EV Lab; 1HITKO with progress and cancellation; teams and coverage; tournament catalogue with historical regulation; grouped notes and retained abilities; Library STATS, learnsets and combined category filters; Lead Trainer, History, eight languages, themes and optional audio. [Details and limits](FEATURES.en.md).

These features are no longer presented as future work. Their existence does not remove the accuracy, incomplete-data and platform limitations documented in validation.

## Proposed fixes on 14 November

Neutral unknown-SP wording in eight languages and three Japanese Versus interpolations. Reproduced and corrected on a private review branch, without integration or a new app release. Current screenshots retain the published release. [Evidence and limits](SCENARIOS.en.md).

## To verify or resolve

| Area | Next specific check |
| --- | --- |
| Physical Android | Current-release flows, persistence/reopening and prolonged audio with external focus, calls and Bluetooth. |
| Page size | Run on Android with 16 KiB pages; static alignment was already checked. |
| Historical data | Investigate the preserved incompatible older store; updating a fresh fixture does not resolve it. |
| Performance | Measure current startup and writes in a reproducible environment; do not reuse August's benchmark as a current value. |
| Distribution | Public listing confirmed on 2026-11-14. Check future release details and device availability in Play Console. |
| Public privacy policy | Update the external 1.0.0 reference; the URL is already public and accessible. |
| Catalogues and rules | Validate each new snapshot and resolve gaps with Champions evidence, retaining provenance and unknown states. |

[Results by platform](VALIDATION.en.md) · [Historical performance](PERFORMANCE.en.md)
