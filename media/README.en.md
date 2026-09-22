<p align="right">
  <a href="README.md">Español</a> · <strong>English</strong>
</p>

# PokeChampions Core · Visual material

[Gallery](../docs/GALLERY.en.md) · [Overview](../README.en.md)

## Visual refresh · 22 September 2026

The project owner supplied six updated screen recordings. They replace every previous screenshot and demo **except the 1HITKO GIF, MP4 and PNG**, which retain their exact bytes and 17 September 2026 provenance. The package contains **18 screenshots and eight demos in two formats (34 media files)**: 31 new files and three preserved files.

The exact application build is not independently identified by these recordings. This is a visual update, not a new QA campaign or certification of the current implementation. Historical technical metrics retain their original dates and scope.

## Editing

Each new demo is a continuous excerpt at the original recording speed followed by a short hold of the final frame. No internal cuts, speed-ups or fake waiting periods are introduced. Android status/navigation bars are cropped; all audio is removed. Cropping and resizing preserve proportions. No UI, result, warning or text is generated or retouched.

New MP4 files are H.264 at **720 × 1440 / 24 fps**, with fast-start metadata. GIF previews are **360 × 720 / 10 fps**. New screenshots are **900 × 1800 PNG**, extracted from selected frames. The three retained 1HITKO files keep their earlier dimensions, duration and encoding.

## Demos

| Demo | Approximate duration | State |
| --- | ---: | --- |
| [Versus](demos/versus.mp4) | 10 s | New |
| [EV Lab](demos/ev-lab.mp4) | 15 s | New |
| [Master Mode](demos/modo-maestro.mp4) | 15 s | New |
| [Team Builder](demos/equipos.mp4) | 11 s | New |
| [Lead Trainer](demos/entradas.mp4) | 11 s | New |
| [Battle History](demos/historico.mp4) | 13 s | New |
| [Languages](demos/idiomas.mp4) | 8 s | New |
| [1HITKO](demos/1hitko.mp4) | 13 s | Retained unchanged |

## Themes, language and scope

Most new media shows Spanish in the light theme. The language demo switches from Spanish to English in the dark theme; its screenshot shows English. 1HITKO remains Spanish/dark. The site documentation is bilingual; media is not duplicated or translated artificially.

Practice results and Battle History counts are manually entered examples. They do not establish real tournament results. `lead-record.png` now shows the actual Lead Trainer Register tab; `history-*` files show the separate Battle History module. `battle-speed.png` keeps a compatibility path but now shows speed analysis in Versus. Scenario details can vary between screenshots and demos.

## Integrity and distribution

[manifest.json](manifest.json) records exact lengths, SHA-256, dimensions, source labels, timestamps and edit boundaries. Its `retained_unchanged` entries lock the three original 1HITKO files. It documents a mixed-generation set rather than presenting every file as newly captured.

Only selected presentation exports are included: no full recordings, music, font files, credentials, APKs, application source or private datasets. Existing [ownership notices](../NOTICE.en.md) continue to apply.
