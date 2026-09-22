<p align="right">
  <a href="CONTRIBUTING.md">Español</a> · <strong>English</strong>
</p>

# Participation and showcase validation

[← Overview](README.en.md) · [Documentation](docs/README.en.md)

PokeChampions Core is developed in a private production repository. This public space documents the product, architecture, validation and selected engineering work.

You may open an issue for suggestions, reproducible bugs in a build you are authorised to test, documentation corrections, accessibility feedback, data corrections with verifiable references or showcase proposals. This repository does not provide a public application download.

Do not attach protected Pokémon assets, leaked material, signing keys, private datasets or code from other projects without a compatible licence.

## Bug reports

Include the version, device/operating system, language and theme where relevant, exact steps, expected and actual results, and whether the issue persists after restarting.

## Mechanical or data corrections

Provide a reproducible source for claims about Pokémon Champions mechanics, legality or regulation. The project prefers an explicit unknown state to silently adopting an unverified rule.

## Documentation and translations

Public PRs can improve showcase documentation, navigation and utilities; they do not provide implementation access. Do not attach private audits or original recordings containing personal information.

Each document uses `NAME.md` for Spanish and `NAME.en.md` for English, with a reciprocal selector at the top and links to same-language content. Update both when facts, limits or navigation change. The [bilingual index](docs/README.en.md) lists all pairs. Do not translate technical identifiers, package names, commands, hashes or file paths; translate their explanations and image alt text.

## Source contributions

The production source is private and unavailable for public PRs. Suggestions and issues are welcome without implying a commitment to release components.

## Showcase validation

From the complete repository root, with PowerShell 5.1 or later, run the [verification utility](tools/verify-showcase.ps1). The execution permission applies only to that process and does not change permanent machine settings.

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File tools/verify-showcase.ps1
```

The check requires all **34 media files** in the updated manifest: 18 PNGs and eight GIF/MP4 pairs. It checks local Markdown/HTML links and heading anchors, reciprocal document selectors, image alt text, inventory, sizes and SHA-256. Locally installed `ffprobe` and `ffmpeg` check dimensions, duration, frame count, absence of audio and full decoding. It also requires the three original 1HITKO file hashes to remain unchanged. It does not install software, access the network or modify files.

For text-only work without media, use `-DocumentsOnly`: it excludes links to expected binaries. This mode does not validate media or authorise integration; other absent destinations still fail. Neither mode verifies external URLs, renders GitHub, proves provenance or replaces review for private information.

The [portable media check](tools/verify-media.py), using Python 3.9 or later, FFmpeg and FFprobe, independently checks files, hashes, 1HITKO preservation and decoding. It does not check documents or links:

```text
python tools/verify-media.py
```

Before integration, run the complete check from the repository, inspect the overviews and galleries, compare the manifest and examine the diff. An update folder may omit unchanged documents: apply it to the correct checkout before document verification. Do not change hashes to conceal mismatches; keep incomplete media work in a draft PR.
