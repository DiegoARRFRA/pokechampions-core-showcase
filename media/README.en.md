<p align="right"><a href="README.md">Español</a> · <strong>English</strong></p>

# Media files

[Gallery](../docs/GALLERY.en.md) · [Reproducible cases](../docs/SCENARIOS.en.md) · [Overview](../README.en.md)

Inventory dated **14 November 2026**: **64 current WebP screenshots** (eight per language), **eight historical PNG screenshots**, one transparent logo, seven PNG thumbnails and seven historical MP4 videos. All **87 files** have dimensions, byte counts, SHA-256 and provenance in [manifest.json](manifest.json). No installers, audio tracks, fonts, usage data or private originals are included.

## Current captures

| Group | Origin | Processing |
| --- | --- | --- |
| Home, library and tournaments: 24 images | Android release **1.0.1/46**, API 36 x86_64, isolated emulator. Original 1080×2674, density 440. | Only OS bars removed: 1080×2475 crop at x0/y136; proportional Lanczos reduction to 786 px wide; lossless WebP. |
| Versus, Battle, 1HITKO, coverage and notes: 40 images | Real Flutter widgets on Windows with the published revision's engine/catalogs and fictional isolated data. Logical 393×900, PNG 786×1800, text scale 1. | Lossless WebP preserving original dimensions and pixels. |
| Logo | Existing transparent in-app asset, retained from the previous delivery. | PNG 256 px wide, alpha unchanged; no white Android launcher background. |

Languages: es, en, fr, de, it, **pt-PT**, ja and ko. Main theme dark. App revision: `76e783aa1876e812bc971e5eafeeffd2aa38821f`. No production patches in current images. Each caption identifies Android or HOST; HOST is not physical-phone evidence. CJK HOST renders were repeated using the emulator font to avoid a Windows fallback limitation; the font is not distributed here.

FFmpeg verified identical decoded RGBA pixels between **all 64 WebP files** and their PNG references. Native references are cropped/resized PNGs; HOST references are complete originals. No generated UI, translated pixels or edited results. Lossless compression follows the declared geometric transformations.

## Weight and preservation

| Measurement scope | Bytes |
| --- | ---: |
| Selected 64 source screenshots | 16,351,161 |
| Selected 64 public copies | 7,181,262 |
| Copy savings against their sources | **9,169,899 (56.1%)** |
| Previous media tree: 23 files | 11,801,898 |
| Current media tree: 87 files | **18,983,160** |

The tree grows by 7.18 MB because it adds eight localized galleries and retains all previous media. Compression savings and historical Git clone size are different measurements. A PNG downscale trial increased size; it remains private. WebP was selected after verifying actual savings and pixel equality.

## Historical media

The eight **5November 2026** screenshots remain at their original paths as `historical-screenshot` entries. Current pages use their own language folders exclusively.

All seven MP4 videos and seven thumbnails remain **byte-for-byte unchanged**. Six demos were prepared22 September 2026 from the author's Android recordings; 1HITKO retains its17 September export. Exact app builds are unverified. These are historical examples, not 1.0.1 updates. Silent H.264: six videos at 720×1440, one at 540×1080, 24 fps; thumbnails 180×360. Original segment and final-hold metadata remains in the manifest. No homepage GIFs or autoplay.

[Validation instructions](../CONTRIBUTING.en.md#showcase-validation) · [Rights and notices](../NOTICE.en.md)
