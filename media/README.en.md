<p align="right">
  <a href="README.md">Español</a> · <strong>English</strong>
</p>

# Media files

[Gallery](../docs/GALLERY.en.md) · [Overview](../README.en.md)

The inventory contains **17 PNG screenshots and seven demos in MP4 and GIF**. Recordings come from the author's Android application. Origins, preparation dates and file hashes are recorded in [manifest.json](manifest.json).

## Exports

| Files | MP4 video | GIF preview |
| --- | --- | --- |
| Versus, EV Lab, Lead Trainer, Teams, Battle History and Languages | H.264, 720 × 1440, 24 fps | 360 × 720, 10 fps, up to 192 colours |
| 1HITKO | H.264, 540 × 1080, 24 fps | 300 × 600, 8 fps, up to 128 colours |

Screenshots are 720 × 1440 PNGs. Demos have no audio. Android system bars are cropped out while preserving the screen's proportions.

## Selected excerpts

| Demo | Recording | Original segment (s) | Final hold (s) |
| --- | --- | ---: | ---: |
| Versus | `update-recording-02` | 14.2–24.8 | 2.0 |
| EV Lab | `update-recording-02` | 28.0–42.8 | 2.0 |
| Lead Trainer | `update-recording-03` | 8.0–16.5 | 1.5 |
| Teams | `update-recording-06` | 32.0–51.3 | 1.7 |
| Battle History | `update-recording-05` | 31.8–39.8 | 1.2 |
| Languages | `update-recording-01` | 7.1–19.1 | 1.9 |

These segments are extracted from 1080 × 2400 recordings using crop `[0, 110, 1080, 2160]`. Each demo retains its recorded speed and adds a hold on the last frame. The manifest also includes the 1HITKO parameters, prepared on 17 September 2026; the other clips were prepared on 22 September 2026.

## Interpreting the demos

Recordings show usage flows and are not used to measure performance. The interface is Spanish, except in the language demo, which also shows English and German.

Lead Trainer outcomes and Battle History matches are entered manually. Screenshots can represent different points in a session: History match-list and analysis views precede the save shown in the summary. The Versus result screenshot comes from the same excerpt as its video.

Dates identify media preparation; the exact build number has not been verified for the recordings. Files retain their original metadata and hashes in the manifest.

[File verification](../CONTRIBUTING.en.md#showcase-validation) · [Ownership](../NOTICE.en.md)
