<p align="right">
  <a href="CONTRIBUTING.md">Español</a> · <strong>English</strong>
</p>

# Participation and showcase validation

[← Overview](README.en.md) · [Documentation](docs/README.en.md)

PokeChampions Core is developed in a private production repository. This public space documents the product, architecture, validation and selected engineering work.

Issues can provide suggestions, reproducible application bugs, documentation corrections, accessibility feedback, verifiable data corrections or showcase suggestions. Download the app from [Google Play](https://play.google.com/store/apps/details?id=com.pokechampionscore.external); this repository hosts its presentation and documentation.

Do not attach copyrighted Pokémon assets, leaked material, signing keys, private datasets or other projects' code without a compatible licence.

## Bug reports

Use the [bug form](https://github.com/DiegoARRFRA/pokechampions-core-showcase/issues/new?template=bug_report.yml) or [suggestion form](https://github.com/DiegoARRFRA/pokechampions-core-showcase/issues/new?template=feature_request.yml). Fields are in Spanish and English; you may answer in your language. Issues are public; keep personal data out of text and screenshots.

Include version, device/operating system, language and theme where relevant, exact steps, expected and actual results, and whether the issue persists after restarting.

## Mechanical or data corrections

Provide a reproducible source for claims about Pokémon Champions mechanics, legality or regulation. The project prefers an explicit unknown state over silently adopting an unverified rule.

## Documentation and translations

Public PRs can improve showcase documentation, navigation and utilities; they do not grant implementation access. Do not attach private audits or original recordings containing personal data.

The overview is available in eight languages: `README.md` (Spanish) and `README.<language>.md` with the suffixes `en`, `fr`, `de`, `it`, `pt`, `ja` and `ko`. Every overview includes a reciprocal selector for all eight versions. The gallery also has eight versions, following the same suffix scheme under `docs/GALLERY`, with reciprocal selectors and translated alt text. Update all eight galleries when changing their facts, navigation or descriptions. Detailed technical documentation retains its Spanish (`NAME.md`) and English (`NAME.en.md`) versions; technical links from the other overviews and galleries identify English destinations. The [documentation index](docs/README.en.md) lists the overviews and technical pairs.

When changing overview facts, boundaries or navigation, update all eight versions; for other documents, update the Spanish/English pair and any additional existing translations. Keep the selector at the top and link to the same language when available; otherwise, identify the destination language. Do not translate technical identifiers, package names, commands, hashes or file paths; translate their explanations and alt text.

## Source contributions

Production source is private and unavailable for public PRs. Suggestions and issues are welcome without implying a commitment to open-source components.

## Showcase validation

From the repository root, with PowerShell 5.1 or later, run [the verification utility](tools/verify-showcase.ps1). The execution permission applies only to that process and does not change permanent machine configuration.

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File tools/verify-showcase.ps1
```

The default check requires all **23 media files**: eight screenshots, one transparent logo, seven thumbnails and seven historical MP4s. It inspects local Markdown/HTML links and heading anchors, reciprocal overview/gallery selectors, image alt text, the expected inventory, sizes and SHA-256. It uses locally installed `ffprobe` and `ffmpeg` for dimensions, duration, frame counts, audio absence and complete decoding. It does not install software, access the network or modify files.

For text work without media, use `-DocumentsOnly`: it explicitly excludes links to the 23 expected binaries. That mode does not validate media or authorise integration; other missing targets still fail. Neither mode verifies external URLs, renders GitHub, proves provenance or replaces private-information review.

Before integration, run the full check, inspect overviews and galleries on GitHub, compare any supplied package manifest and review the diff. Also inspect each document pair's selector and equivalence: automated selector checks cover every Markdown pair. Do not change hashes to conceal discrepancies; keep incomplete media work in draft.

A visual refresh can legitimately change hashes when replacing videos or stills: document the new source and crop, validate the files and update the manifest with actual values. Label retained earlier files rather than presenting them as evidence of the new version.

## Integrity-only validation

`-IntegrityOnly` checks all local links, language pairs and every media file against the fixed manifest (size and SHA-256), without requiring FFmpeg. It does not decode media or certify rendering. Use this mode only with a package whose exact bytes have already passed media decoding checks. The default mode still performs full decoding with local `ffmpeg` and `ffprobe`. Do not confuse this mode with `-DocumentsOnly`, which excludes the expected binary targets.

The current structure limits the gallery to eight main screenshots, uses three on the overview plus the logo, and links lightweight thumbnails to historical videos. The verifier also rejects common application binaries, databases, source files and signing material. This denylist does not replace manual review for secrets, personal information or misleading claims.

## Automated checks

GitHub Actions runs the full validator on each pull request and update to the main branch: documents, navigation across eight languages and all 23 media files. It uses read permissions, without persistent credentials or secrets. Content and translation review remain manual.
