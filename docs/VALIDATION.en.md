<p align="right"><a href="VALIDATION.md">Español</a> · <strong>English</strong></p>

# Validation and QA

[← Overview](../README.en.md) · [Technical overview](TECHNICAL_OVERVIEW.en.md) · [Documentation](README.en.md)

Documentation cutoff: **5 November 2026**. Each result belongs to its version, platform and execution mode; focused campaigns are not added to a global suite, and HOST results are not extrapolated to physical Android. Full records remain private.

## 1.0.1 evidence from 5 November

| Check | Environment and result | Limit |
| --- | --- | --- |
| Final global suite, 2026-11-05 | Windows HOST, copy of release 1.0.1/46, serial unfiltered execution: **13,706 passes, 0 failures, 17 omissions, exit 0; 92 min 48 s**. | Omissions are optional captures; the count is not a coverage percentage. |
| Analysis and localisation, 2026-11-05 | Static analysis and i18n checks passed during final preparation. | Does not prove behaviour on physical hardware. |
| Focused checks, 2026-11-05 | 21 initial passes and 13 final passes on the delivery copy. | Separate runs; not added to 13,706. |
| Update 1.0.0/31 → 1.0.1/46 | Android API 36 emulator, x86_64, 4 KiB pages, release installation. Retained the fixture's team, ability/SP note, match and preferences. | Synthetic data in a dedicated store. Does not certify every historical store. |
| Native flows in 1.0.1/46 | Same emulator: notes in Battle/Versus, missing-ability selection, 1HITKO, Lead Trainer, Library filters and audio play/pause/resume. | Not a physical test, Bluetooth test or benchmark. |
| 16 KiB compatibility | Static ELF alignment and ZIP packaging checks on the artifact. | Actual execution with 16 KiB pages remains outstanding. |

Updating a fresh fixture does not resolve an older incompatible store: that case remains open and its data was preserved. Universal recovery or compatibility with every previous state is not claimed.

The [gallery's](GALLERY.en.md) HOST captures render real widgets with fictional data; they check presentation, not Android backend execution. Their capture tests are not added to the earlier global total.

## Historical evidence

| Campaign | Retained result and scope |
| --- | --- |
| HOST suite, 2026-09-20 | **5,058 passes, 0 failures, 0 omissions, exit 0**. Serial and unfiltered; started on the 19th and accepted at 00:44 Europe/Madrid on the 20th. No longer the current total. |
| September focused repairs | 373 focused passes with traceability for 79 earlier failures. Not another global suite. |
| HOST suite, 2026-09-14 | 4,849 passes, 0 failures and 0 omissions after an import correction. |
| Historical Versus comparison | 104,091 scenarios within that campaign's catalogue and scope. |
| Historical 1HITKO validation | 361 forms and 12,987 attacker/defender pairs from that campaign. |
| Historical physical QA | POCO F5, Android 15: installation, identity, navigation, persistence, appearance and updates of early releases, including 1.0.0+2. Does not certify 1.0.1/46. |

The last three campaigns already appeared in the September showcase. Their exact dates and full revisions are not identified in the public summary: they remain background evidence, not recent measurements or guarantees for the current catalogue. Failed attempts and later revalidation remain in private records.

## Outstanding checks

Physical testing of the current release, prolonged audio with focus changes/calls/Bluetooth, execution with 16 KiB pages and investigation of the incompatible historical store. No recent startup or write benchmark exists here for 1.0.1; the [performance study](PERFORMANCE.en.md) is historical and emulator-based.

Play Console has not been inspected: the effective track, tester access, used codes and registered upload certificate need evidence there. This concerns delivery details; the public listing was independently checked on 2026-11-14 as recorded below.

## Public links

On 2026-11-05, anonymous HTTP requests returned **200** for the [privacy policy](https://pokechampions-core-privacidad.pages.dev/) and [contact profile](https://github.com/DiegoARRFRA). The public policy still identifies version **1.0.0**: it is accessible, but an external editorial update remains outstanding. Its displayed email address has not been tested by sending a message.

During the **2026-11-05** review, an anonymous Google Play request returned HTTP **404**. That historical result no longer describes current availability.

On **2026-11-14**, the [public Google Play listing](https://play.google.com/store/apps/details?id=com.pokechampionscore.external) was retrieved without signing in. It showed **POKECHAMPIONS CORE**, developer **Rakull Dev**, a download action and the first public release description: free, with no ads, in-app purchases or registration. The overview now links to this listing. This verifies the published listing; it does not install the app or certify every device, territory or later release.

The privacy policy was also checked again on 2026-11-14 and still identifies version 1.0.0. Its external editorial update remains outstanding.

## Showcase checks

The [validator](../CONTRIBUTING.en.md#showcase-validation) checks links, anchors, path case, ES/EN technical pairs, overviews and galleries in eight languages, inventory, hashes and media decoding. Visual and private-information review are separate. [Media documentation](../media/README.en.md) distinguishes provenance and transformations. These checks do not rebuild or certify the application.
