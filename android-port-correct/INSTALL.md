# Xenoverse 1.5.5 Android test build

Install Xenoverse-1.5.5-Android.apk on an ARM64 Android device. All runtime game files are bundled, including unchanged original audio. APK size is about 2.52 GB; allow at least 8 GB free for the APK installation, extracted assets and installation temporary files. Android's installer may need additional space when updating an existing copy.

Final APK SHA-256: 3D052A6500C40A8E07E06D75E8DEB49CE721CE6DCA241548F5A4EB706CA7F069. Final signature verified. This rebuilt APK was installed on the emulator; both encounter callback patches were verified after opening the launcher. Walking north into grass and additional grass movement passed. Android's app metadata retains the upstream engine version 0.1.1; the bundled game's Settings constant is 1.5.5.

On first launch, wait while the game files install. Leave “2x gameplay - normal-speed music” checked for the measured 2× update rate, or uncheck it for normal speed. Tap Play Xenoverse. ENTER is at the bottom center; C also confirms, X cancels, and the left pad controls movement. Black side margins preserve the game's proportions.

This is a development test build, not a complete validated release. Opening gameplay, empty-name confirmation, keyboard dismissal, the house-to-ranch transition and standalone installation were tested in the emulator. A bedroom save and Continue reload passed, including preservation across an APK update. One introductory wild battle passed through attack animation, victory, experience award and return to the map. Broader battle mechanics, save/load behavior, online features and physical devices need more testing. MIDI playback is not available in the current native runtime. Most music is MP3 and those files are unchanged.

Package ID is com.hatkid.mkxpz and it shares the earlier prototype's local test key. Its game files and saves use a separate game155 directory, so earlier-version saves are not silently loaded. Preserve any saves before uninstalling an existing app. Future package updates should use the same signing key and retain app data.

The supplied CodeAndModsGuidelines.md and original branding are retained inside the game's private installation. Source patches and test measurements are in this directory; the original source download remains untouched.

Updated builds refresh compatibility scripts when the launcher opens, without re-extracting all assets or overwriting saves. Install this APK over the earlier test build and open Xenoverse from its app icon before playing.
