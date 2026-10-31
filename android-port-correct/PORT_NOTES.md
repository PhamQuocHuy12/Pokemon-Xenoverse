# Xenoverse 1.5.5 Android test port

The active source is Xenoverse-Source-main/Xenoverse-Source-main/Xenoverse. Original source files are untouched. Android replacements live in patches and are overlaid into the packaged loose-script directory. The loader remains the supplied Scripts.rxdata loose-file loader.

## Implemented compatibility work

- Replaced Windows window APIs with Android engine equivalents; preserve fullscreen and a 512 × 384 logical screen.
- Use native Ruby sockets instead of initializing WinHTTP/Winsock DLLs. Legacy HTTP helpers and online battle behavior require further validation; online features are not claimed working.
- Replace bitmap memory-pointer operations with raw_data/to_file; initialize the native LargePlane parent before disposing it.
- Use bundled fonts rather than installing system fonts through GDI. Use default settings where a Windows registry does not exist.
- Parse Game.ini directly, keep saves and temporary files inside app-private storage, and reject directories in safeExists?.
- Correct two legacy begin/else constructs for modern Ruby and a byte comparison that changed meaning after Ruby 1.8.
- Use native video/export APIs instead of Windows MCI/GDI. The original mkxp source path already skips its AVI intro; AVI playback has not been added.
- Retain the Enter control, original game branding, source README and CodeAndModsGuidelines.md.

## Speed evidence

This version is predominantly frame-counted, so it uses a different speed patch from the superseded 21.1 game. The native scheduler runs at base rate × selected multiplier while scripts see their original base rate. fixedFramerate is 0 so script requests affect the scheduler; vsync is off. Audio calls and pitch are unchanged. Device performance can limit the achieved rate, and the engine caps scheduling at 120 updates/second.

Measured with a shipped MP3 and a 120-update test:

| Mode | Reported base FPS | Wall time | Audio progression |
|---|---:|---:|---:|
| 1× | 40 | 2.999 s | 3.020 s |
| 2× | 40 | 1.499 s | 1.480 s |

Raw measurements are in speed-result-1.txt and speed-result-2.txt. Every audio file in the package is copied unchanged; zip compression does not transcode it.

## Packaging and validation status

Assets are embedded in ten ZIP parts, allowing the installer to stream them with bounded memory. Final APK size is about 2.51 GB. It is an ARM64 test build using the previously downloaded native engine; it is not rebuilt from native engine source. Package ID remains com.hatkid.mkxpz. Current build is debuggable and locally test-signed for development, not a production release.

Verified on a fresh 16 GB Xenoverse155 AVD on D:: full APK installation, first-run extraction of all bundled assets, English selection, title/menu progression, new-game startup and the opening hospital scene with dialogue and correct viewport. The earlier directory/byte problem during map loading is resolved for this path. Screenshots are in full-game.png and full-installer.png; runtime log is full-runtime.log. Full playthrough, battles, save roundtrip, online services and physical-device performance remain unverified. MIDI playback remains unavailable in the upstream native runtime.

Earlier malware scan results do not apply to this corrected source/package. No claim of a complete security audit is made.

## Post-conversation fixes (2026-10-31)

Reproduced the silent exit after Versil's Nova Ranch house conversation. A bounded Ruby line trace ended at 089_PField_RoamingPokemon.rb:104 as the map changed from 28 to 36. Both guard returns in the onMapChange proc now use next. The loose-script loader evaluates scripts inside a method; a nonlocal return from the callback unwound that still-active loader and ended the game without an exception. The callback now exits locally, preserving its existing skip condition. Confirmed the full opening route reaches outdoor Versil dialogue, with the process still running; screenshot ranch-transition-fixed.png.

Also reproduced and fixed the Windows advapi32.dll lookup when confirming an empty player name: pbGetUserName now returns an empty string so the supplied Kay/Alice fallback applies. PokemonEntryScene now disables text input after disposing the naming screen, closing the Android keyboard. Both paths passed during replay.

SetupActivity applies compatibility.zip on each launcher opening, so existing installed assets receive script fixes without a full asset extraction. The archive contains only Data/Scripts replacements; saves and original audio are untouched. Temporary TracePoint diagnostics are excluded from packaging and the normal preload was restored on the emulator.

Update verification: signature check and emulator APK update passed. The updated launcher replaced an intentionally older roaming script; all three fixes in app-private storage match the packaged replacements. The normal preload hash matches and diagnostics are disabled.

Further playtest: corrected StringInput#getc in 043_SpriteWindow.rb to return a numeric byte with String#getbyte, preserving the original Ruby 1.8 contract consumed by FileInputMixin. Previously the growth-rate reader raised a String-vs-integer comparison during SceltaStarter initialization. Full replay now passes starter selection, Trishout choice, teen bedroom, follower rendering, walking, desk interaction and saving. See PLAYTEST.md.

## Trainer and asset review - 2026-11-01

Preserve native Graphics.snap_to_bitmap when mkxp_snap_to_bitmap is unavailable. Removed an unused animation-name expression that accessed id before assigning it in playGlobalMoveAnimation. See ISSUE_REVIEW.md for all earlier failure causes. Restored filename-filtered assets and supplied root support assets through the upgrade archive. The effective package has 19,481 files, including 2,108 unchanged audio files; source/ZIP/APK archive comparisons pass. MIDI remains a native-runtime limitation despite retaining the supplied soundfont.
