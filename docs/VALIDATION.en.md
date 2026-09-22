<p align="right">
  <a href="VALIDATION.md">Español</a> · <strong>English</strong>
</p>

# Validation & QA

[← Overview](../README.en.md) · [Documentation index](README.en.md)

Testing is treated as scoped evidence. A passing count is useful only when tied to a known revision, catalogue and product boundary.

## Public checkpoint through 14 September 2026

The host run recorded in that checkpoint completed with **4,849 passed, 0 failed, 0 omitted and exit code 0**, following a focused import correction.

It belongs to the application state validated in mid-September 2026. It does not establish that a later build passed the same suite. Zero failures does not mean complete coverage. Repository link and file checks are separate: see [Showcase validation](../CONTRIBUTING.en.md#showcase-validation).

## Larger historical campaigns

Earlier evidence includes a Versus campaign of **104,091 scoped scenarios** and historical exhaustive 1HITKO acceptance covering **361 forms and 12,987 attacker/defender pairs**. Focused regressions cover persistence, localisation, regulation, lifecycle and Android packaging, alongside deterministic checks of catalogues and selected imports.

These figures should not be added as a universal certification. A new regulation, participant or mechanic may lie outside an earlier campaign.

## Physical Android QA

Checks on a **POCO F5 running Android 15** have covered selected installation and identity flows, navigation, persistence across process closure, light/dark/system appearance, Versus paths, and external build installation and updates. Preservation of existing data between early external releases was also checked.

This physical evidence is deliberately narrower than the entire automated host matrix.

## Concerns with separate evidence

Broader device coverage, accessibility/TalkBack acceptance, prolonged audible sessions, platform-specific performance and new regulation content require their own checks. They are not silently folded into the main pass count.

## Why failed runs are preserved

The internal audit retains failed runs. A later remediation can close a finding, but the original failure still explains what was discovered and how the regression contract evolved.

History is not rewritten as if everything had always passed. Public demos are not new correctness tests or benchmarks either.

[Performance](PERFORMANCE.en.md) · [Data & Accuracy](DATA_AND_ACCURACY.en.md)
