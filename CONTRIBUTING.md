# Contributing

PokeChampions Core is currently developed in a private production repository. This public repository exists to document the product, architecture, validation approach and selected engineering work.

You are welcome to open an issue for:

- product feedback;
- reproducible bug reports from a build you have been authorised to test (this repository provides no public application download);
- documentation corrections;
- accessibility feedback;
- data-source corrections with verifiable references;
- suggestions for public showcase material.

Please do **not** submit copyrighted Pokémon assets, leaked material, signing keys, private datasets or source copied from other projects without a compatible licence.

## Bug reports

A useful report should include the app version, device/OS, language/theme when relevant, exact steps, expected result, actual result and whether the issue reproduces after restarting the app.

## Mechanical or data corrections

For claims about Pokémon Champions mechanics, legality or regulation, include a reproducible source whenever possible. The project intentionally prefers an explicit unknown state over silently adopting an unverified rule.

## Documentation contributions

Public pull requests can improve this showcase's documentation, navigation and validation utility. They do not provide access to the application implementation. Do not attach private audit material or original recordings containing personal information.

## Source contributions

The production application source is private and is not available for public pull requests. Suggestions and issues are welcome; they do not imply a commitment to open-source components.

## Validación del showcase / Showcase validation

Desde la raíz del repositorio, con PowerShell 5.1 o posterior, ejecuta [la utilidad de verificación](tools/verify-showcase.ps1). El permiso de ejecución del comando se limita a ese proceso; no cambia la configuración permanente del equipo.

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File tools/verify-showcase.ps1
```

The default check requires all 14 media files. It checks local Markdown/HTML links (including heading anchors), reciprocal language navigation, image alt text, the expected inventory, file sizes and SHA-256 against the existing manifest. It uses locally installed `ffprobe` and `ffmpeg` to check dimensions, duration, frame counts, audio absence and full decoding. It does not install software, access the network or modify files.

For text-only work while media is unavailable, use `-DocumentsOnly`. That mode explicitly excludes links to the 14 expected binaries and does **not** validate multimedia or permit integration. Other missing targets still fail. Neither mode verifies external URLs, renders GitHub pages, proves media provenance or replaces review for private information.

Before integration, run the default check, inspect both READMEs and galleries on GitHub, compare any supplied package manifest before copying files, and review the publication diff. Keep incomplete media work in a draft PR. Do not change manifest hashes merely to make a mismatch pass.
