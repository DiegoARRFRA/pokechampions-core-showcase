<p align="right">
  <a href="FEATURES.md">Español</a> · <strong>English</strong>
</p>

# Features and boundaries

[← Overview](../README.en.md) · [Documentation index](README.en.md)

PokeChampions Core groups competitive preparation and analysis flows in a mobile application designed to work offline. The [technical overview](TECHNICAL_OVERVIEW.en.md) explains their connections.

## Teams / Team Builder

Creates and preserves six-slot teams with legal forms, abilities, natures, training, items and up to four moves. Configurations feed other analysis tools instead of remaining in an isolated editor.

## Battle

Represents a user-defined doubles situation: speed order, weather, Tailwind, Trick Room, temporary HP and verified interactions. The user controls the scenario; the app does not choose turns or play the match to completion.

## Versus

The 1v1 analysis surface shares a typed calculation boundary with related tools, avoiding mechanical reinterpretation in each UI. It offers normal and advanced configuration and receives snapshots transferred from other modules.

## EV Lab

Focuses on defensive survival. It supports exploring HP, Defense and Special Defense investment and searching for the minimum investment needed to survive configured attacks within the current scenario.

## 1HITKO

Searches the legal local catalogue for candidates that can guarantee a one-hit KO against the configured defender. The historical exhaustive campaign covered 361 forms and 12,987 pairs within its then-current scope, not every future catalogue.

It answers a question limited to one hit and explicit conditions. A damage guarantee assumes the hit lands: it does not guarantee accuracy or winning the match.

## Lead Trainer

An offline mode for practising opening choices with personal teams or curated competitive data. The opposing opening remains hidden until the choice is confirmed. It opens the corresponding Battle situation; the practice outcome is entered manually, not obtained by simulating turns.

## Battle History

Stores wins, losses, opponent information and immutable team snapshots locally. It offers filters and summaries without turning the recorded match into an automatic replay. It is separate from Lead Trainer's practice record.

## Pokémon Notes

A separate library of Pokémon-specific observations and reusable configurations, independent from saved teams.

## Languages and appearance

Eight complete locale packages: Spanish, English, German, French, Italian, Portuguese, Japanese and Korean. Appearance supports light, dark and system modes. Showcase documentation has two languages; that does not limit the application's eight.

## Audio

Includes a persistent local playlist and remembers preferences. Audio has been investigated on host and physical devices; prolonged audible-session validation remains a separate concern rather than something covered by a generic completed label.

## Outside the default scope

Accounts, cloud sync, social features, online battles, payments and complete autonomous battle simulation are not planned in the default scope. The focus remains preparation, analysis and review.

[Gallery and demos](GALLERY.en.md) · [Validation & QA](VALIDATION.en.md)
