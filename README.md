# Xenoverse Android port workspace

Android compatibility patches, launcher source, packaging utilities and investigation notes for the supplied Xenoverse 1.5.5 source. The current implementation and test status are in android-port-correct. android-port-analysis retains historical investigation tools; its earlier game target is superseded.

Build the current standalone development APK on Windows:

```powershell
.\android-port-correct\build.ps1
```

The script assembles, aligns, signs and verifies the APK. Its existing local inputs are the supplied game under Xenoverse-Source-main, the prepared engine base.apk, compiled launcher dex/classes.dex, ten bundles/game-*.zip asset archives, Android SDK build tools 36.0.0, the Android Studio JBR, and the local disposable development signing key. These inputs are not downloaded by the script. This repository alone is not a complete native-runtime rebuild kit.

Output: android-port-correct/Xenoverse-1.5.5-Android.apk. Installation and controls are documented in android-port-correct/INSTALL.md. Diagnosed failures and asset verification are documented in android-port-correct/ISSUE_REVIEW.md.

Git excludes build products, compiled binaries, game downloads, upstream runtime checkout, generated inventories, emulator data, save backups, screenshots and signing keys. Keep local inputs and the signing key outside version history. No remote repository is configured by this setup.
