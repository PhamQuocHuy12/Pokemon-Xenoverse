# Runtime and map-event follow-up

## Completed

Decoded all 731 Map/CommonEvents/Troops archives found by audit_events.py, consuming each Marshal file completely, with zero parse failures. Found 358,765 event/move command objects and 67,594 script commands (355/655/45). event-audit.json preserves locations and script command parameters. Continuation commands are exported individually, not reconstructed as Ruby programs. This is format validation and static inspection, not execution.

The native-helper candidate search returned two references to a character named Klein in Map335. Neither calls KleinBitmap. No clear native helper calls were found by the bounded pattern search; dynamically generated calls remain unresolved.

## Android candidate

Downloaded https://github.com/BookerRues9/mkxp-z-android-reworked at commit `b668e08cb58edf661d56fd4d396036ac31cd8332` into runtime-source. The project's own documentation describes an experimental Android mkxp-z port, including ARM64 and ARMv7 builds. Treat this as a prototype candidate, not confirmed Xenoverse support.

compare_runtime.py compared the game's 60 textual API candidates with local binding source: 41 have literal binding strings. runtime-api-comparison.json contains exact source lines and the unresolved candidates. This is deliberately conservative: constructors, inherited methods, macro-generated audio bindings and game-defined Ruby methods do not necessarily have literal registrations. For example Input.dir and System.rxdata include regex false positives. Absence in this search is not proof of a missing implementation.

Core bindings present include System.uptime/data_directory/user_language, Graphics.delta/play_movie, and Input.time?/extended keyboard/text_input/clipboard. The remaining work is behavioral verification on Android, particularly saves, touch input, movie playback, Ruby compatibility, filesystem paths and large battle effects.

## Prepared runtime probe

runtime_probe.rb checks important API presence and tests temporary-file creation inside System.data_directory. It must be run by the candidate engine, not standalone system Ruby. For an isolated test copy of the game, place the probe at the game root and add `"preloadScript": ["runtime_probe.rb"]` to that copy's mkxp.json, preserving its existing configuration. This singular key is confirmed in the candidate's src/config.cpp. Do not interpret presence checks as behavior tests. Original game configuration has not been edited.

## Build status and next gate

No APK was built. Java, ADB and CMake were absent from PATH; ANDROID_HOME and ANDROID_SDK_ROOT were empty, and standard Android SDK/Java install locations checked were absent. The upstream documented build uses Ubuntu 22.04, JDK 17, Android SDK 33, NDK 23.2.8568313 and native dependencies obtained by app/jni/get_deps.sh. No toolchains were installed and no upstream download/build scripts were executed.

Next: provision a Linux build environment with that toolchain, build the pinned candidate runtime, run the probe and game on an Android device, then address the first actual startup error. API comparison and map decoding are complete for this pass; device behavior, complete asset reference resolution, lifecycle handling and runtime patching remain open.
