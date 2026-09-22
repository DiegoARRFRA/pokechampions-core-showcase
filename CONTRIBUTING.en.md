<p align="right">
  <a href="CONTRIBUTING.md">Español</a> · <strong>English</strong>
</p>

# Participation and showcase validation

[← Overview](README.en.md) · [Documentation](docs/README.en.md)

PokeChampions Core is developed in a private production repository. This public space documents the product, architecture, validation and selected engineering work.

Issues can provide suggestions, reproducible bugs from a build you are authorised to test, documentation corrections, accessibility feedback, verifiable data corrections or showcase suggestions. This repository does not provide a public application download.

Do not attach copyrighted Pokémon assets, leaked material, signing keys, private datasets or other projects' code without a compatible licence.

## Bug reports

Include version, device/operating system, language and theme where relevant, exact steps, expected and actual results, and whether the issue persists after restarting.

## Mechanical or data corrections

Provide a reproducible source for claims about Pokémon Champions mechanics, legality or regulation. The project prefers an explicit unknown state over silently adopting an unverified rule.

## Documentation and translations

Public PRs can improve showcase documentation, navigation and utilities; they do not grant implementation access. Do not attach private audits or original recordings containing personal data.

Each document uses `NAME.md` for Spanish and `NAME.en.md` for English, with a reciprocal selector at the top and links to content in the same language. Update both when changing facts, boundaries or navigation. The [bilingual index](docs/README.en.md) lists the pairs. Do not translate technical identifiers, package names, commands, hashes or file paths; translate their explanations and alt text.

## Source contributions

Production source is private and unavailable for public PRs. Suggestions and issues are welcome without implying a commitment to open-source components.

## Showcase validation

From the repository root, with PowerShell 5.1 or later, run [the verification utility](tools/verify-showcase.ps1). The execution permission applies only to that process and does not change permanent machine configuration.

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File tools/verify-showcase.ps1
```

The default check requires all **31 media files** in the manifest: 17 PNGs and seven GIF/MP4 demos. It inspects local Markdown/HTML links and heading anchors, reciprocal overview/gallery selectors, image alt text, the expected inventory, sizes and SHA-256. It uses locally installed `ffprobe` and `ffmpeg` for dimensions, duration, frame counts, audio absence and complete decoding. It does not install software, access the network or modify files.

For text work without media, use `-DocumentsOnly`: it explicitly excludes links to the 31 expected binaries. That mode does not validate media or authorise integration; other missing targets still fail. Neither mode verifies external URLs, renders GitHub, proves provenance or replaces private-information review.

Before integration, run the full check, inspect overviews and galleries on GitHub, compare any supplied package manifest and review the diff. Also inspect each document pair's selector and equivalence: automated selector checks focus on overviews and galleries. Do not change hashes to conceal discrepancies; keep incomplete media work in draft.

A visual refresh can legitimately change hashes when replacing videos or stills: document the new source and crop, validate the files and update the manifest with actual values. Label retained earlier files rather than presenting them as evidence of the new version.

## Integrity-only validation

`-IntegrityOnly` checks all local links, language pairs and every media file against the fixed manifest (size and SHA-256), without requiring FFmpeg. It does not decode media or certify rendering. Use this mode only with a package whose exact bytes have already passed media decoding checks. The default mode still performs full decoding with local `ffmpeg` and `ffprobe`. Do not confuse this mode with `-DocumentsOnly`, which excludes the expected binary targets.
