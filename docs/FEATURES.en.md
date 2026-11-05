<p align="right"><a href="FEATURES.md">Español</a> · <strong>English</strong></p>

# Features

[← Overview](../README.en.md) · [Gallery](GALLERY.en.md) · [Index](README.en.md)

Verified on **5 November 2026**, against **1.0.1 (internal Android code 46)**. Spanish tool names in screenshots are explained below; SP is the stat-point system displayed by the application.

## Battle

Prepare a doubles scenario with up to two members per side and analyse speed, entry abilities, weather and effects. **Simulate the start of turn 1** sits immediately above **Configure effects**. Analysis distinguishes certainty, ties and unknown information; it does not resolve a complete battle, subsequent turns or an opponent's decisions.

Load members from saved teams, tournament teams or notes. Select one or two members: an explicitly chosen slot takes priority, the only free slot is used directly, and alternative destinations or replacements require a destination choice. Loading a configuration does not replace the remaining team.

Temporarily adjust SP and nature to compare scenarios without rewriting the saved source.

## Versus

Configure attacker, defender and move; inspect damage ranges, remaining HP and uses required for a possible or guaranteed KO. Battle conditions, stats, ability and item contribute to the calculation. **Master Mode** explores scenario effects and compares their influence.

Load notes into attacker or defender. Saved compatible fields are restored; a missing ability is not invented. Where a choice is needed, the editor requires a legal ability before saving.

## EV Lab

Still available within Versus to explore HP and defensive investment and search for a spread that survives the configured attack. Its historical name remains, although training controls display **SP**. Results depend on the chosen attack, nature, effects and constraints; they are not universal builds.

## 1HITKO

Search for one-hit KO candidates against the configured defender. Progress, cancellation, sorting and result filters are available; **defensive Master Mode** configures the relevant defensive scenario. Cancelled or superseded jobs must not publish another search's results.

**Guaranteed** means the minimum damage across the modelled rolls reaches the target HP under those conditions, **assuming the move lands**. It does not guarantee accuracy, absence of protection, an unconfigured critical hit or an unchanged opponent build. The search excludes multi-hit moves and extra ability-driven hits; those interactions can be analysed in Versus within its supported coverage.

## Teams and coverage

Create teams, configure members and save ability, item, nature, SP and moves. Add a Pokémon from a note and inspect defensive coverage, including weaknesses, resistances, immunities and supported ability effects.

## Tournaments and builds

Filter the team library by regulation, tournament and date, select multiple tournaments and sort results. Regulation belongs to the historical event: an older competition is not assigned today's regulation because of its viewing date. Unconfirmed regulation is shown as unknown.

The packaged catalogue dated **4 November 2026 contains 730 teams from 19 tournaments**. Selection uses **places 1–32 per event and official category**, not the first 32 file entries or 32 across a whole tournament. Published rank ranges qualify when their upper bound does not exceed 32; missing positions and data are not inferred.

**Smogon Strategies** builds and tournament teams retain their provenance. They are snapshots shipped with the app, not live queries or automatic synchronisation with Smogon, Victory Road or organisers. [Data and accuracy](DATA_AND_ACCURACY.en.md).

## Pokémon Notes

Configurations are grouped by Pokémon and form. The library supports localised alphabetical order and recent-update order; users choose a specific configuration within a group, even when only one exists.

Notes save nature, SP and ability; full configurations may also retain item and moves. They can be reused in Battle, Versus, 1HITKO and teams for compatible fields. Older notes without an ability remain readable without attributing a choice that was never recorded.

An incomplete published spread displays **—** for unknown SP. Loading uses zero as an editable starting point for those fields and shows a notice; this does not claim that the author published zero. Explicit confirmation of reviewed fields allows a complete personal configuration to be saved.

## Library

**STATS** provides statistics and each Pokémon's learnset. **Moves and users** lets users inspect a move and the Pokémon that can learn it.

Both move views share type, power and attack-category filters: **Physical, Special and Status**. Multiple categories are alternatives to each other and combine with other filters and search. Selecting none or all three leaves category unrestricted. Selections can be applied or cancelled, and lists can be sorted.

## Lead Trainer and History

**Lead Trainer** practises opening pairs against saved or catalogue teams: choose before revealing the opponent's lead, then manually record the practice outcome.

**History** stores matches, opponents, notes and team summaries. It does not automatically read results from the game. Draft confirmation uses identity and revision checks to prevent duplicates or silent overwrites. [Persistence](DATABASE.en.md).

## Appearance, languages and audio

Light, dark and system themes; current icons and a transparent in-app logo. Eight languages: Spanish, English, French, German, Italian, Portuguese, Japanese and Korean. Main tools and catalogues work offline; opening a source or the web privacy policy requires connectivity.

Audio is optional, with playback and volume controls. The catalogue includes **Tribute to Anime** and **Jojo´s rute** (exact displayed name). Public demos contain no audio and do not distribute complete tracks.

[Validation](VALIDATION.en.md) · [Outstanding work](ROADMAP.en.md)
