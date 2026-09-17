# Features

PokeChampions Core groups several competitive workflows in one offline-first mobile application.

## Team Builder

Create and persist six-slot teams with legal Pokémon forms, abilities, natures, training values, held items and up to four moves. The team workflow also feeds downstream analysis tools rather than existing as an isolated editor.

## Battle

Battle represents a user-defined doubles situation rather than an autonomous simulator. The current product can model relevant battle context such as speed order, weather, Tailwind, Trick Room, temporary HP and selected verified interactions.

The user remains in control of the scenario. The application does not choose turns or play the battle to completion.

## Versus

Versus is the 1v1 analysis surface. It shares a typed calculation boundary with related tools so mechanical behavior is not independently reimplemented in each UI.

It supports ordinary analysis plus advanced scenario configuration and serves as the destination for snapshots transferred from other modules.

## EV Lab

EV Lab focuses on defensive survivability. It allows controlled exploration of HP, Defense and Special Defense investment and can search for the minimum investment required to survive configured attacks under the current scenario.

## 1HITKO

1HITKO searches the legal local catalogue for candidates that can guarantee a one-hit KO against a configured defender. The historical exhaustive campaign covered 361 forms and 12,987 attacker/defender pairs within its then-current scope.

The tool is deliberately narrower than a battle simulator: it answers a one-hit question under explicit assumptions.

## Lead Trainer

Lead Trainer is an offline practice mode for opening choices. It can use the player's own teams or curated competitive team data and keeps the rival opening hidden until the choice is committed.

The goal is decision practice, not autonomous turn simulation.

## Battle History

Battle History stores wins, losses, opponent information and immutable team snapshots locally. It provides filtering and summary views without turning the recorded match into a replay engine.

## Pokémon Notes

A separate notes library lets the user maintain Pokémon-specific observations and reusable configurations independently from saved teams.

## Localisation and appearance

The application currently ships eight complete locale packages:

- Spanish
- English
- German
- French
- Italian
- Portuguese
- Japanese
- Korean

Appearance supports light, dark and system modes.

## Audio

The app includes a persistent local playlist and remembers playback preferences. Audio has undergone both host-side and physical-device investigation, but prolonged audible-session QA remains a distinct validation concern rather than something hidden behind a generic “done” label.

## Deliberate non-goals

PokeChampions Core is not intended to provide accounts, cloud sync, social features, online battles, payments or a complete autonomous Pokémon battle simulator. Those exclusions keep the product focused on preparation, analysis and review.
