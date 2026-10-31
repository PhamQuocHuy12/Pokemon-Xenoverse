# Local security check — 2026-10-30

Microsoft Defender custom scans with automatic remediation disabled completed successfully and reported no threats for both the original game folder and Xenoverse-Android.apk. No files were submitted to a third-party scanning website. This records the local scan result, not a guarantee of safety or verification of Defender definition freshness.

Scanned APK SHA-256: FB9B36E524DF3B66E21E2E8E37F678973D38608FCBC14F30C758BF541805C407.

Verified permissions directly from the built APK using aapt: INTERNET, ACCESS_NETWORK_STATE, VIBRATE. It does not request camera, microphone, SMS, contacts, accessibility service or broad shared-storage permissions. Game files are installed in private app storage.

Bounded static searches of active main/plugin scripts and exported event script commands did not identify obvious shell-command launchers or credential-stealing behavior. Engine Java/smali searches did not surface an obvious external code loader or shell execution in the gamepad/launcher package. These are pattern searches, not a full semantic security audit. Ruby eval exists for ordinary event/plugin loading and does not alone establish malicious behavior. The original Game.exe is unsigned; that fact alone is not a malware finding.

Specific concern: Scripts/0332_UI_MysteryGift.rb downloads a Pastebin URL and calls Marshal.restore on decompressed remote input (line 338). Deserializing unauthenticated external Ruby Marshal data is a security-sensitive design. No payload from that URL was fetched or evaluated during this review. Avoid the online Mystery Gift feature until it is disabled or redesigned with validated data. This is a vulnerability concern, not evidence that this copy contains a malicious payload.

The Android runtime includes prebuilt native libraries from the public upstream release; their byte-for-byte correspondence with source and all runtime behaviors have not been independently verified. Native dependencies are not comprehensively audited. Antivirus and bounded static review cannot rule out all malicious behavior or vulnerabilities.
