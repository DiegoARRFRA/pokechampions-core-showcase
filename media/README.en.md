<p align="right"><a href="README.md">Español</a> · <strong>English</strong></p>

# Media files

[Gallery](../docs/GALLERY.en.md) · [Overview](../README.en.md)

Inventory dated **2026-11-05**: **8 current PNG screenshots, 1 transparent PNG logo, 7 PNG thumbnails and 7 historical MP4 videos**. All 23 files, sizes, dimensions, SHA-256 hashes and provenance appear in [manifest.json](manifest.json). No audio tracks, installers or private original recordings are included.

## Current screenshots

| Files | Source | Processing |
| --- | --- | --- |
| Home, Versus, 1HITKO, tournaments, Library | Release 1.0.1/46, Android API 36 x86_64 emulator; 2026-11-05. | Original 1080 × 2400; crop x=0, y=136, width=1080, height=2201, removing only system bars. Downscale to 720 × 1467. |
| Battle and Notes | Actual Flutter widgets, Windows HOST, source copy of 1.0.1/46; 2026-11-05. | Logical viewport 393 × 850, rendered at density 2 (786 × 1700); downscale to 720 × 1557. |
| Coverage | Actual Flutter widgets, Windows HOST, same source copy and date. | Logical viewport 390 × 844, rendered at density 2 (780 × 1688); downscale to 720 × 1558. |
| Logo | Transparent asset used inside the current application. | Proportional downscale to 256 px wide; alpha retained. Android launcher background is not used. |

Examples are fictional. HOST renders use actual application components and fonts; they are neither reconstructed screens nor physical Android captures. Selected viewports are preserved, including the scrolled 1HITKO view after search completion. Text, colours and results are not retouched.

Deterministic FFmpeg processing: crop, Lanczos downscale and PNG compression without additional loss. No image is enlarged. Source hashes support checking provenance against the private evidence archive without publishing its paths.

## Historical videos

The seven MP4s remain **byte-for-byte identical** to the previous showcase. Versus, EV Lab, Lead Trainer, Teams, History and Languages were prepared on **2026-09-22** from Android recordings supplied by the author; 1HITKO dates to **2026-09-17**. Their exact builds are unknown. They do not prove 1.0.1 additions.

| Group | Retained format | New thumbnail |
| --- | --- | --- |
| Six September 22 demos | H.264, 720 × 1440, 24 fps, silent | 180 × 360 PNG, frame at 4 s |
| September 17 1HITKO | H.264, 540 × 1080, 24 fps, silent | 180 × 360 PNG, frame at 4 s |

Recorded speed, excerpts and final holds from the historical exports are retained. The manifest preserves each clip's original parameters; thumbnails link to MP4s without autoplay. Complete music tracks are not distributed.

## Size and preservation

| Binary media inventory | Bytes | Decimal MB |
| --- | ---: | ---: |
| Before: 17 PNG + 7 GIF + 7 MP4 | 37,916,500 | 37.92 |
| After: 16 PNG + 7 MP4 | 11,801,898 | 11.80 |
| Reduction | 26,114,602 | **68.9%** |

Duplicate GIFs and superseded screenshots are removed from the current tree. **Git history is not rewritten**: previous revisions retain those files, so tree reduction is not the same as savings in a historical clone. All seven MP4s retain their previous SHA-256 hashes.

[How to validate](../CONTRIBUTING.en.md#showcase-validation) · [Notices and rights](../NOTICE.en.md)
