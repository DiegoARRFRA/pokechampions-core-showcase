<p align="right"><a href="VALIDATION.md">Español</a> · <strong>English</strong></p>

# Validation and QA

[← Overview](../README.en.md) · [Technical overview](TECHNICAL_OVERVIEW.en.md) · [Documentation](README.en.md)

Documentation cutoff: **5 November 2026**. Each result belongs to its version, platform and execution mode; focused campaigns are not added to a global suite, and HOST results are not extrapolated to physical Android. Full records remain private.

## Recent 1.0.1 evidence

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

Play Console has not been inspected: the effective track, tester access, used codes and registered upload certificate need evidence there. The author reports internal testing; local preparation does not establish publication in Alpha or public availability.

## Public links

On 2026-11-05, anonymous HTTP requests returned **200** for the [privacy policy](https://pokechampions-core-privacidad.pages.dev/) and [contact profile](https://github.com/DiegoARRFRA). The public policy still identifies version **1.0.0**: it is accessible, but an external editorial update remains outstanding. Its displayed email address has not been tested by sending a message.

The anonymous Google Play listing request returned HTTP **404** from this environment. No download button is therefore provided; this does not rule out access by authorised test accounts. Invitation links and tester details are not published.

## Showcase checks

The [validator](../CONTRIBUTING.en.md#showcase-validation) checks links, anchors, path case, ES/EN pairs, inventory, hashes and media decoding. Visual and private-information review are separate. [Media documentation](../media/README.en.md) distinguishes provenance and transformations. These checks do not rebuild or certify the application.
