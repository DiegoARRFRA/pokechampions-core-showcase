<p align="right"><a href="SCENARIOS.md">Español</a> · <strong>English</strong></p>

# Reproducible multilingual review

[← Overview](../README.en.md) · [Gallery](GALLERY.en.md) · [Validation](VALIDATION.en.md) · [Español](SCENARIOS.md)

Reviewed **14 November 2026**, published app **1.0.1**, Android code **46**, application revision `76e783aa1876e812bc971e5eafeeffd2aa38821f`. The UI deliberately displays 1.0.1; code 46 belongs to provenance. The anonymous Play listing was available and the author confirmed the code. No Play Console or personal phone was accessed.

The eight galleries contain **64 new images, eight per language**. Home, move library and tournaments provide **24 native release screenshots from an isolated Android 16/API 36 x86_64 emulator**. The remaining 40 are **real Flutter widget renders on Windows**, using that revision's engine and packaged catalogs with fictional isolated data. HOST renders do not prove Android execution. Portuguese is **pt-PT**; deliberately retained official English game terms follow the project's localization policy.

## Equivalent scenarios

Pokémon and move names are localized by the app. Canonical identities, configurations and conditions stay the same. No tournament spreads were invented or changed to obtain images. These examples are not competitive recommendations.

| Case | Setup and steps | Observed outcome |
| --- | --- | --- |
| HOME-01 / HOME-02 | Open Home; choose language and dark theme; restart the isolated app process. | Language and theme retained in all eight languages on Android. |
| VS-01 | Venusaur/Overgrow versus Blastoise/Torrent, neutral nature, zero SP, no item, full HP. Calculate Giga Drain up to four uses, then change move. | **84–98 HP**, possible and guaranteed KO in two calculated uses; changing the move clears the old result. HOST. |
| VS-flamethrower | Charizard → Venusaur, Flamethrower; neutral/zero SP/no item, first legal abilities. | **110–132 HP** in every language. HOST. |
| VS-hydropump | Blastoise → Charizard, Hydro Pump; same conditions. | **126–150 HP**. HOST. |
| VS-thunderbolt | Luxray → Politoed, Thunderbolt; same conditions. | **122–146 HP**. HOST. |
| BATTLE-01 | Politoed and Metagross versus Skarmory and Luxray; known Speed, manually selected sun. | Entry analysis, estimated order and selected effects. No turns executed. HOST. |
| BATTLE-02 | Start with zero, one or two occupied slots on either side; load a Venusaur note; toggle turn-one entry. | A unique vacancy is automatic; empty/full sides request a position. Partner, opposite side and source note preserved; no repository writes. Six variants per language, HOST. |
| OHKO-01 | Archaludon/Stamina, neutral/zero SP/no item, full HP, no critical or additional effects. Search and await completion. | **206 candidates** in all eight HOST runs and also Korean Android. HOST worker released on exit. This count is scenario-specific. |
| TEAM-01 | Venusaur, Skarmory, Metagross, Politoed, Luxray and Snorlax; open coverage. | Defensive matrix for six members. HOST. |
| TEAM-02 | Edit fictional team; cancel note selection; add note to slot 2, save and reopen. | Cancellation does not write; saved configuration reopens and source note stays intact. Controlled HOST repositories. |
| NOTES-01 | Two Venusaur/Chlorophyll notes: Modest2HP/32SpA/32Spe; Bold32HP/16Def/18SpD. | Two localized configurations spending 66 SP, without publication attribution. HOST. |
| NOTES-02 | Save without a nature, then explicitly choose Lonely and save. | Rejection preserves draft; success retains nature, ability, SP and Giga Drain. HOST. |
| LIB-01 | Open moves/users; select Physical and Special, apply. | **334 results** on HOST and Android in every language. |
| CAT-01 | My teams → official library → tournament selector. | Dates and historical regulation visible on HOST and Android. Season 2027 names may refer to events held in 2026. Packaged4November catalog; no new imports. |
| HISTORY-01 | Register fictional victory with Unicode opponent name; reopen screen/repository. | Result, names and team identities preserved. HOST with mocked preferences. |
| OPEN-01 | Two fictional six-member teams, packaged rules, seed 4242. Choose pair, open Battle, mark won and finish. | Locked pair, one saved practice and no match-history entry. HOST. |
| STORE-01 | Create note/team in a new temporary SQLite database, edit name, close connection and reopen the same file. | Full contents retained in every language. Real HOST SQLite; not Android storage. |
| VISUAL-01 / VISUAL-02 | Move library at 320logical px, text 130%, dark/light. | No layout exceptions; additional visual evidence retained privately. |

The [JSON matrix](review/scenarios.json) and [CSV](review/scenarios.csv) record conditions, steps, modality, status and observations per language. Their scenario descriptions are in Spanish. **217 approved observations and 24 unexecuted checks** are not independent test counts or a coverage percentage. Shared regressions and proposed fixes are reported separately.

## Reproduced defects and separate fixes

| Issue | Published release | Proposed correction |
| --- | --- | --- |
| Unknown SP wording | **Failed:** eight messages attribute unknown SP to a publication, including manually configured Pokémon without published provenance. | Neutral uncertainty message in eight languages. Domain reproduction passes; eight copy checks fail before and pass after. |
| Japanese Versus interpolation | **Failed:** three messages place the move and use count in an unnatural order. | Natural word order, preserving all placeholders and values; regression fails before and passes after. |
| Japanese HOST glyph | Windows fallback-font problem in the test harness; native Android displays the glyph correctly. | JA/KO renders repeated with the emulator's CJK font. No font asset added to the product or public repository. |

App corrections remain on a private review branch. **No new app release was published.** Current galleries retain the published wording, including the Japanese Versus sentence, and do not silently mix unreleased fixes into current-release screenshots. Repeated captures of the corrected source remain private review evidence.

## Evidence and limits

- Eight separate HOST capture runs, plus two CJK repetitions. Real widgets/catalogs/engine, fictional repositories where applicable; not a new global suite.
- Eleven interaction/storage tests per language: **88 passes** across eight separate processes. History uses mocked preferences; STORE-01 uses real SQLite.
- Existing calculation and lifecycle regressions check independent references and 1HITKO contracts. Matching languages alone does not prove engine accuracy. See dated results in [Validation](VALIDATION.en.md).
- Failed harness attempts, the initial System UI ANR and repetitions remain archived. A busy-state AX dump failure did not reuse stale XML. No unrelated app process was closed.
- **Not executed in this campaign:** physical phone QA, human audio/Bluetooth/call checks,16KiB runtime, Android durability for every entity in all eight languages, and every source/filter/effect combination per translation. Shared regressions do not replace that full localized walkthrough.
- All 64 images and 16 narrow/light/dark variants were visually reviewed. This is not native-speaker certification or screen-reader testing. No new performance improvement was measured.

Originals and full logs remain private. The [manifest](../media/manifest.json) identifies each image's scenario, version, source revision, environment, theme, resolution, scale, dimensions, bytes and SHA-256 without internal paths or personal usage data.
