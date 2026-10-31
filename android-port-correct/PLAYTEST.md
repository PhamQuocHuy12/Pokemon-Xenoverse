# Android playtest — 2026-10-31

Tested installed APK on Xenoverse155 emulator with 2x gameplay enabled.

- Full opening hospital and house dialogue passed with empty player-name fallback.
- House -> outdoor ranch transition passed again.
- Ranch tour, fields, bridge movements and starter introduction reached normally.
- Starter creation exposed a binary reader incompatibility: StringInput#getc returned a one-character string under modern Ruby, so the growth-rate field could not be compared with an integer. Corrected to String#getbyte, preserving the legacy numeric contract used by FileInputMixin.
- Follow-up replay passed starter creation and selection of Trishout. The player reaches the teen bedroom with the matching follower.
- Directional walking, desk interaction, pause-menu navigation and saving passed. Save folder backed up to playtest-save-backup.tar.
- Updated APK rebuilt, signature verified and installed. Launcher deployed the fixed data reader. Game.rxdata remained byte-for-byte identical across the APK update; Continue loaded the bedroom checkpoint successfully, and movement after loading passed. Screenshot: playtest-save-loaded.png. One introductory wild battle now passed; see the battle session below.

## Battle session — 2026-11-01

User navigated to the introductory female level-2 Weedle battle. Trishout was level 5 with 21/21 HP. Tested opening Fight, navigating between the two available attacks, cancelling to the battle menu, reopening Fight and executing an attack. Attack animation ran, Weedle fainted, and Trishout received 10 experience points. The battle returned to the overworld and the post-battle NPC dialogue continued. No new error report was written (existing errorlog.txt retained its 2026-10-31 23:47 timestamp). Saved current progress successfully after the battle.

Evidence: battle-weedle-fainted.png and battle-xp-awarded.png. No code or APK changes were required in this session. Coverage is one introductory wild battle; opponent damage, status effects, items, catching, trainer battles, switching, level-up and loss scenarios are not yet validated.
