<p align="right">
  <a href="VALIDATION.md">Español</a> · <strong>English</strong>
</p>

# Validation and QA

[← Overview](../README.en.md) · [Technical overview](TECHNICAL_OVERVIEW.en.md) · [Documentation](README.en.md)

Validation combines host tests, engine scenario comparisons and physical Android flows. Each campaign records its environment, result and scope.

## Test results

| Campaign | Result and scope |
| --- | --- |
| **Host suite — 20 September 2026** | **5,058 passes, 0 failures, 0 omissions, exit code 0**. Ordinary serial execution without filters. Started on the 19th and accepted at 00:44 Europe/Madrid on the 20th. |
| Focused suite repair | 373 focused passes and traceability for 79 detected failures. Tests and references were aligned with application behaviour, without changing production code in that work. |
| Host suite — 14 September 2026 | 4,849 passes, 0 failures and 0 omissions, following an import correction. |
| Versus comparison | 104,091 scenarios within the campaign's scope. |
| 1HITKO validation | 361 forms and 12,987 attacker/defender pairs using the campaign's catalogue and conditions. |
| Physical QA | POCO F5 with Android 15: installation, identity, navigation, persistence, appearance and updates between initial external builds, including 1.0.0+2. |

Results belong to the specified executions and are not added together as one suite. Later code, catalogue or configuration changes require their own tests. Host acceptance does not replace physical audio, performance or accessibility checks.

## Scope of checks

| Check | Contribution |
| --- | --- |
| Logic and interface tests | Acceptance of executed cases for a particular version. |
| Comparison campaigns | Engine result comparisons under defined scenarios. |
| Implementation review | Examination of the contracts, schema, repositories and flows described in the documentation. |
| Physical flows | Behaviour verification on a particular device under the test conditions. |
| Demos | Interface usage examples, not performance measurements or engine tests. |

Complete records are retained in the private repository. This page summarises their results; it does not publish the test corpus or a global coverage percentage.

## Outstanding tests

Expand the device matrix and TalkBack flows. Complete prolonged audio sessions and tests involving external focus, calls and Bluetooth. Measure writes and large-collection behaviour, investigate frame presentation times and validate additions for each regulation.

The [startup study](PERFORMANCE.en.md) details emulator measurements and distinguishes time to first frame from complete Android startup.

## Result records

Campaign records retain failed attempts and subsequent acceptance runs. Each correction remains traceable by case, environment and result. The 5,058-pass figure belongs to the suite-repair campaign accepted on 20 September 2026.

## Repository checks

The repository verifier checks links, ES/EN selectors, media inventory, file sizes and hashes. Its full modes also validate formats and file decoding. [Execution instructions](../CONTRIBUTING.en.md#showcase-validation).

Recording edit parameters and preparation dates are documented in [Media files](../media/README.en.md). These checks are separate from application tests.
