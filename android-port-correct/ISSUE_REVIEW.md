# Failure review and asset verification — 2026-11-01

The diagnosed failures do not share a missing-asset cause. Most arise from running Windows/Ruby 1.8 game scripts on the Android mkxp runtime with modern Ruby. Asset presence and runtime support are separate checks.

| Observed issue | Root cause / change | Missing game asset? |
|---|---|---|
| Windows startup, window, registry, font, socket and user-name operations | Scripts requested Windows APIs/DLLs unavailable on Android; use supported engine/Ruby functions or platform defaults. | No; Windows DLLs cannot supply Android implementations. |
| Bitmap, sprite and LargePlane initialization errors | Legacy bitmap memory operations and native parent initialization contract. | No |
| Directory mistaken for an audio file | File-existence helper accepted directories; reject directories. | No |
| Binary/map/starter data reader errors | Ruby byte indexing changed from numeric bytes to strings; preserve the numeric reader contract. | No |
| Silent exit after Versil's conversation | Nonlocal `return` in a map-change callback unwound the active loose-script loader; use local `next`. | No |
| Empty player name error and keyboard remaining visible | Windows account lookup and text-input lifecycle. | No |
| Trainer entrance crash | Compatibility script replaced native `Graphics.snap_to_bitmap` with a nonexistent `mkxp_snap_to_bitmap` alias; preserve the native implementation when the alias is absent. | No |
| Later move-animation fallback error | `playGlobalMoveAnimation` formatted `id` before assigning it. Remove that unused early assignment; retain the actual animation selection and playback. | No |
| Viewport, Enter control and gameplay speed | Display, input overlay and scheduling configuration; audio calls remain unchanged. | No |
| MIDI unavailable | Upstream Android runtime lacks MIDI synthesis support. A supplied soundfont alone does not implement it. | No; runtime limitation remains. |

The superseded, incorrect game version is not used for this audit. Original supplied source files remain unchanged.

## Separate packaging defect found and corrected

The earlier bundler excluded names containing `backup`, `working`, `vecchio` or `prima di`. `vecchio` is also an ordinary Italian word used by valid character assets. Seven graphics were omitted: AttackBaseBackup.png, Old_Vecchio.png, vecchiostregato.png, and four vecchio mugshots. These omissions did not explain the recorded exceptions, but could affect later scenes.

Removed the filename filter for future full bundles. The upgrade archive now restores all 13 files excluded by that filter within runtime folders, including the six older data backups, plus 13 supplied root support assets (animation-editor files, BMP markers, translation text, version text and soundfont). Existing installs receive the restored files when opening the launcher. Saves are outside the archive.

## Verification scope

`verify_assets.py` reads and hashes every bundled file, compares unmodified files with the correct supplied source, compares overrides with the current replacement scripts, and verifies that the APK embeds exactly the audited archives. SHA-256 comparisons check bytes, while reading complete ZIP members also checks their CRC. The audit records every excluded source file individually.

The effective package contains 19,481 files: 16,290 Graphics, 2,108 Audio, 1,006 Data, 36 PBS, 23 Fonts and 18 root/configuration/credit/support files. The source comparison reports no unexpected runtime omissions, no duplicate bundle paths and no byte mismatches. All 2,108 audio files match the source without recompression of their audio content.

The 81 excluded source files comprise 17 authoring/archive/log/sidecar files within runtime folders, plus 64 Windows executables/libraries, editor/project tools, backups, historical logs or exported SavedMaps outside runtime folders. Full paths and reasons are retained in asset-audit.json.

This establishes completeness relative to the supplied source. It does not prove that every reference in the original game resolves, every original asset is valid, or every mechanic works on Android. A full playthrough and physical-device tests remain necessary.

## Grass exit confirmed and corrected
Bounded exit trace ends at 101_PItem_PokeRadar.rb:189, a nonlocal return in EncounterModifier's registered proc. Corrected the roaming and radar encounter callbacks to local next, and radar event guards likewise; the shiny-grass loop uses break. Reproduced northward exit before correction and repeated the route plus additional grass movement successfully after both patches. Normal preload restored. Broader callback audit remains outstanding.
