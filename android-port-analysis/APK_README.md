# Xenoverse Android prototype APK

Install `Xenoverse-Android.apk` on an ARM64 Android device (runtime minimum Android 6). The APK contains the game assets; no separate game-folder copy or engine installation is required. First launch extracts the game into app-private storage. Allow roughly 3 GB free for installation and extracted assets, plus temporary space required by the Android package installer. APK size: 1,158,348,247 bytes.

Choose the 2× checkbox before pressing Play; uncheck for 1×. Simulation timing is doubled while native audio playback stays at its requested pitch/rate. Intro video playback stays at its original speed. This scales System.uptime and Graphics.delta, not every possible frame-count-based plugin animation; exact uniform 2× behavior throughout all battles has not been verified.

Touch controls: the bottom-center button previously labeled ALT is now ENTER and sends Android KEYCODE_ENTER (66), including press and release. C, Ctrl and Shift remain available. This remapping is implemented in GamepadConfig.java and the corresponding packaged smali class.

Timing probe: 3.0128 real seconds produced 6.0258 simulation seconds; music position advanced 2.8600 seconds, including playback startup latency. Audio pitch was 100. The test discovered this Android runtime reports microseconds where Essentials expects seconds, so the compatibility layer normalizes the units in both 1× and 2× modes.

Verified: APK signature, emulator installation, automatic bundled-asset extraction, startup from `/data/user/0/com.hatkid.mkxpz/files/game`, centered display, plugin initialization and intro rendering. Full playthrough, battles, saves and device-specific performance remain unverified. MIDI is currently disabled by the upstream engine's missing fluidsynth library.

This is a locally test-signed prototype using the published mkxp-z Android Reworked v1.0.0 ARM64 native runtime. It is not a native engine rebuilt from source. Package ID remains com.hatkid.mkxpz, so it replaces the earlier test runtime when signed with the same local key; an existing differently signed mkxp-z installation may conflict. Preserve any saves before uninstalling an existing app. Do not uninstall the app to troubleshoot without first exporting any saves.

Source of upstream runtime: https://github.com/BookerRues9/mkxp-z-android-reworked (local pinned source in runtime-source). Custom source: SetupActivity.java, android_bootstrap.rb, game_speed.rb, prepare_standalone.py and finish_apk.py. The decoded package and native library license notices remain in standalone-apk and runtime-source. Local test signing material is disposable and unsuitable for a public release.
