# Validation & QA

PokeChampions Core treats testing as scoped evidence. A green test count is useful only when it is tied to a known commit, dataset and product boundary.

## Current public snapshot

The latest documented host checkpoint completed with:

- **4,849 passed**
- **0 failed**
- **0 omitted**
- exit code **0**

That checkpoint followed a focused import correction and belongs to the application state validated in mid-September 2026.

## Larger historical campaigns

Earlier validation work includes:

- a Versus comparison campaign containing **104,091 scoped scenarios**;
- an exhaustive historical 1HITKO acceptance campaign across **361 forms and 12,987 attacker/defender pairs**;
- focused regression suites around persistence, localisation, regulation changes, runtime lifecycle and Android packaging;
- deterministic checks for generated catalogues and selected external-import artefacts.

These figures should not be added together as if they represented one universal certification. A new regulation, new participant or newly implemented mechanic can fall outside an older campaign.

## Physical Android QA

The project also maintains device-level acceptance rather than relying exclusively on widget and host tests. Recent physical QA on a **POCO F5 running Android 15** has covered selected flows including:

- installation and application identity;
- navigation through core modules;
- persistence across process restarts;
- light/dark/system appearance behavior;
- selected Versus paths;
- external build installation and update behavior;
- preservation of existing user data during an update between early external builds.

Physical-device evidence remains deliberately narrower than the entire automated host matrix.

## What remains separate

Some concerns require their own evidence and are not silently folded into the main pass count:

- broader device coverage;
- accessibility/TalkBack acceptance;
- prolonged audible-session testing;
- platform-specific performance behavior;
- newly added regulation content that did not exist during earlier exhaustive campaigns.

## Why failed historical runs are kept

The private audit trail preserves failed runs instead of rewriting history after a fix. A later passing remediation can close a finding, but the original failure remains useful evidence of what was discovered and how the regression contract evolved.

That approach makes the project easier to audit and avoids turning documentation into a sequence of retrospective “everything was always green” claims.
