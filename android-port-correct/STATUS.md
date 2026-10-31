# Corrected target

Active game source: `D:/Code/Pokemon Xenoverse/Xenoverse-Source-main/Xenoverse-Source-main/Xenoverse`.

This supersedes the Ordem et Chaos build investigated in android-port-analysis. Previous APKs and large asset bundles have been removed (5,992,063,322 bytes). The previous source download, reusable runtime source, Android launcher, signing material, control changes and historical evidence remain available. The corrected standalone test APK is Xenoverse-1.5.5-Android.apk; see INSTALL.md and PORT_NOTES.md for validated behavior and remaining limits.

Confirmed from supplied source:

- Game version constant is 1.5.5 in Data/Scripts/001_Settings.rb:482.
- Game.ini points to Data/Scripts.rxdata and RGSS102E.dll.
- Scripts.rxdata has one loader section. The final active call is load_scripts_from_folder("Data/Scripts"); it sorts and evaluates the loose script files. Scripts.xvd and backups are not the active loader path here.
- 257 loose Ruby scripts, 19,559 total supplied files, 2,904,760,611 bytes in the game folder.
- Windows calls occur in networking, save/window helpers and startup, including process-priority calls in 999_Main.rb. Many branches already test $MKXP; each remaining reachable call needs verification rather than globally stubbing all Windows APIs.
- Graphics.frame_rate is assigned in several subsystems. The earlier Essentials 21.1 clock scaling patch must not be carried over without evaluating this version's frame-based logic.
- Supplied credits, branding and CodeAndModsGuidelines.md must be retained in the corrected package.

source-inventory.json records script hashes and bounded candidate lines; loader-0.rb is extracted inert loader code. No supplied game source was modified or executed during this inspection. Previous security scan results only cover the earlier game and APK, not this new source.

Completed gates: exact loose-script loader tested, initial Windows/Ruby incompatibilities patched, 1×/2× frame timing measured with normal-speed audio, and full original-audio APK installed on a fresh 16 GB emulator on D:. Opening hospital gameplay renders with the corrected viewport and Enter control. Remaining gates include battles, save roundtrip, online behavior and physical-device tests.

2026-10-31 post-conversation regression: fixed map-change callback nonlocal returns, empty trainer-name Windows account lookup, and keyboard dismissal. Full hospital -> house -> outdoor ranch dialogue replay passed. Updated APK signed and installed successfully; launcher upgrade test restored an intentionally older roaming script, and all three installed files match packaged patches. APK SHA-256 CE2548DE5DD7B05E28B8ECA25477734795A7556C725627B7EAAC1CD3A5D36C1A (2,507,747,434 bytes).

Further playtest completed through starter selection (Trishout), teen bedroom, walking, interaction, pause menu, save creation and Continue reload. Fixed byte-valued StringInput#getc for modern Ruby; rebuilt and installed APK. Save preserved byte-for-byte across update, then loaded successfully. See PLAYTEST.md.

2026-11-01: introductory level-2 Weedle battle completed with Trishout. Fight/menu cancel/navigation, attack animation, fainting, 10 XP reward, overworld return, post-battle dialogue and saving passed. No new errors or patch changes. Broader battle mechanics remain untested; see PLAYTEST.md.

2026-11-01 build and Git setup: rebuilt full APK with both trainer animation fixes and restored assets; alignment/signature verification passed. Current APK SHA-256 4F7C3E8CC0DDB2370006052FCC0E1A18C35AC841782591962BD9099C460EB173 (2,517,729,386 bytes). This supersedes earlier build hashes above. Git initialized on main at the workspace root; build products, downloaded inputs, signing material and test state are ignored. No commit or remote was created. Updated APK installation and installed-file audit remain pending after the earlier stop request.
