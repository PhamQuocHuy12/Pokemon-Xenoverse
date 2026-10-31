# Android emulator prototype

## Emulator relocation

Moved Medium_Phone's complete AVD directory to `D:/Android/AVD/Medium_Phone.avd`. Registration remains in the small `C:/Users/Admin/.android/avd/Medium_Phone.ini` file and now points to D:. Verified hardware-qemu.ini uses the D: userdata and encryption disks and Android reports boot completed. The earlier -datadir option did not actually relocate the live AVD; its files were on C: until this move. Copied shared game files survived; the test APK was not registered after restart and was restored by reinstalling Xenoverse-Android.apk successfully. Registration backup is in D:/Android/AVD/Medium_Phone.registration-backup.ini.

- SDK found at D:/android-sdk; Android Studio bundled Java at D:/Android Studio/jbr. Existing environment variables refer to a different missing toolchain, so use explicit paths.
- Medium_Phone uses Android 36.1 x86_64 and advertises arm64-v8a translation. Engine APK installed successfully.
- Published candidate release v1.0.0 contains unsigned-release.apk (package com.hatkid.mkxpz, engine app version 0.1.1). Downloaded, aligned and locally test-signed as candidate-test.apk. This is an upstream runtime, not a newly compiled Xenoverse APK.
- Emulator first failed due to insufficient C: space. Started with isolated data in this analysis folder on D:, 1536 MB RAM, no snapshot save. Android boot completed.
- Game scripts executed. First reproducible failure: PluginManager::Zlib missing at Section008:627. Adding android_bootstrap.rb with require 'zlib' via preloadScript resolved this and execution advanced to the intro movie.
- Missing intro movie error during partial copy was a transfer artifact. Full game-test.tar created, transferred and extracted successfully, then test preload configuration restored.
- Fixed lower-left miniature rendering in the emulator test copy: fullscreen enabled, aspect ratio preserved, and preload shim prevents desktop Graphics.scale/center requests from resizing the Android surface and forces fullscreen requests on. Verified intro renders centered at a substantially larger size. Black margins preserve the original game/video proportions on the wide phone. Gameplay remains unverified. latest-runtime.log retains the initial post-extraction startup logs.
- Runtime reports libfluidsynth.so.3 unavailable; MIDI playback disabled. Full gameplay and save testing remain unverified.

Test files: android_bootstrap.rb, mkxp-test.json, candidate-test.apk. Original game files unchanged. first-runtime.log preserves the initial error sequence. Local test signing credentials are intentionally disposable and are not production signing material.
