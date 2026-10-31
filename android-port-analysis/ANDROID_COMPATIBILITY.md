# Xenoverse Android compatibility investigation

## Result

The supplied game is script-accessible. An Android port can reuse the Ruby game logic and assets if its runtime implements the required RGSS and mkxp-z interfaces. Compatibility is not yet demonstrated: no Android build or game runtime was executed during this pass.

## Evidence and extraction

- REA identified Game.exe as x86_64 Windows PE, SHA-256 `f858123b2e3262e1a602f0712c98961d31097a87e2aaa15fc4d0079afdafb04c`. This executable cannot be used as an Android ARM library.
- `Game.ini` selects `Data/Scripts.rxdata`. `extracted/Scripts/0000_Settings.rb:432-434` declares Essentials 21.1 and target mkxp-z `2.4.2/c9378cf`. This establishes the scripts' intended runtime, not independent confirmation of the executable's exact source revision.
- Extracted 429 main scripts (5,620,857 bytes), 655 plugin scripts (4,624,028 bytes), and 427 backup scripts (5,539,276 bytes). Backups are preserved separately and excluded from the active compatibility scan.
- Extraction uses a restricted Ruby Marshal reader and zlib; it never evaluates Ruby. Every archive was consumed completely and every exported script decompressed successfully. Manifest records archive and script hashes and preserves ordering. Plugin structure is corroborated by PluginManager's compile/load code, lines 575-650.
- Original game files were left unchanged. Reproduce with `python android-port-analysis/extract_scripts.py`, then `python android-port-analysis/audit_scripts.py` from the workspace root.

## Findings

| Area | Observed evidence | Port requirement |
|---|---|---|
| Engine interfaces | Frequent `System.uptime`, `Graphics.delta`, extended input, text input, clipboard, bitmap and audio APIs; complete candidate list in compatibility-audit.json | A plain minimal RGSS1 implementation is insufficient. Verify each interface against the selected runtime. Regex inventory includes string literals and must not be treated as a precise call graph. |
| Windows native helper | `0302_KleinBitmapFuncs.rb:148` invokes Win32API with KleinBitmap; helper passes Ruby object IDs to native bitmap functions | Replace any reachable helper with portable bitmap operations. No KleinBitmap DLL was present in the inventoried game tree. Bounded caller search found definitions but no clear callers outside the helper for its distinctive effects; map event code and dynamic dispatch remain unchecked. This is a potential feature blocker, not proven startup failure. |
| Saves | `0024_SaveData.rb:8-9` and Auto Multi Save use `System.data_directory` | Supply an Android app-writable directory and test backup, migration, autosave, and resume. Audit fallback paths and the 129 candidate write lines. |
| Boot and plugins | Main runs PluginManager, Compiler, initialization, then scenes; plugin loader inflates/evaluates scripts in archive order | Preserve plugin order and metadata behavior; do not combine backup scripts with active scripts. Confirm release startup does not require writes to packaged assets. |
| Desktop presentation | Compatibility shim changes fullscreen, scale, centering and window title | Implement mobile equivalents; preserve the configured 512 x 384 aspect ratio and validate actual settings at runtime. |
| Input | Extended keys, mouse, clipboard, text input and standard RGSS actions | Map touch controls to actions; provide text entry. Some extended controls belong to developer editors; classify reachability before implementing all of them. |
| Media | Candidate `Graphics.play_movie`; one .ogv, Ogg/WAV/MP3 audio and a soundfont are shipped | Test the intro movie, audio playback and soundfont support on the chosen runtime. |
| Network | HTTPLite get/post_body calls and online_bitmap candidate | Inspect reachable callers, HTTPS support and permissions before enabling network features. Presence does not establish network use during play. |
| Assets | 17,968 files, 1,309,242,549 bytes including desktop binaries and authoring files; 14,772 PNGs | Plan asset loading and startup indexing. Do not package desktop DLLs as Android libraries. Measure installed size and memory before deciding what to exclude. |
| Path casing | No case-folding collisions among actual relative file paths | This does not prove script references match asset casing; resolve references and event paths separately. |

## Next implementation gates

1. Select an Android-capable runtime and compare its implemented API against the generated inventory, including Ruby 3.1 semantics, RGSS Marshal classes and mkxp-z additions.
2. Decode map/common event scripts and inspect their asset references and native-helper calls; assess plugin metadata and runtime method overrides.
3. Build an isolated Android boot prototype with logging, app-local saves, touch controls and the unmodified active script archives. Resolve actual first errors before broad script rewrites.
4. Verify title/movie, new game, movement, first battle, menus, save/load, autosave, app background/resume, text entry and audio on a physical device. Profile large battle animations and texture allocations.

## Limits

Static script extraction and candidate compatibility inventory are complete for the three named archives. This pass does not establish playability, runtime reachability, exact executable engine revision, complete asset-reference correctness, map-event compatibility, or compatibility with any particular Android engine. No APK has been built. The extractor supports only the Marshal types needed by these archives and is not a general game-data parser.
