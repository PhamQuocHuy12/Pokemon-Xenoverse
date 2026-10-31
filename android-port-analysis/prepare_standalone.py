"""Prepare a local standalone prototype around the published ARM64 runtime."""
import re, zipfile
from pathlib import Path
root = Path(__file__).resolve().parent
apk = root/'standalone-apk'
manifest = apk/'AndroidManifest.xml'
text = manifest.read_text()
text = re.sub(r'\s*<uses-permission[^>]+android.permission.(?:READ_EXTERNAL_STORAGE|WRITE_EXTERNAL_STORAGE|MANAGE_EXTERNAL_STORAGE)[^>]*/>', '', text)
text = text.replace('android:label="@string/app_name"','android:label="Xenoverse"').replace('android:label="mkxp-z"','android:label="Xenoverse"')
# Move the launcher intent filter from the engine activity to our installer.
match = re.search(r'<intent-filter>.*?</intent-filter>',text,re.S)
launcher = match.group(0); text=text[:match.start()]+text[match.end():]
text=text.replace('</application>', '<activity android:name="com.hatkid.mkxpz.SetupActivity" android:exported="true" android:screenOrientation="sensorLandscape">'+launcher+'</activity></application>')
manifest.write_text(text)
smali = apk/'smali/com/hatkid/mkxpz/MainActivity.smali'
text=smali.read_text()
needle='    invoke-super {p0, p1}, Lorg/libsdl/app/SDLActivity;->onCreate(Landroid/os/Bundle;)V'
text=text.replace(needle, '''    invoke-static {p0}, Lcom/hatkid/mkxpz/SetupActivity;->getGameDirectory(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v0
    sput-object v0, Lcom/hatkid/mkxpz/MainActivity;->GAME_PATH:Ljava/lang/String;
'''+needle)
# Private game assets do not need broad shared-storage access.
start=text.index('    :goto_0',text.index('.method protected onCreate'))
end=text.index('    :cond_0',start)
text=text[:start]+'    :goto_0\n'+text[end:]
smali.write_text(text)
assets=apk/'assets'; assets.mkdir(exist_ok=True)
game=root.parent/'Xenoverse-Ordem-et-Chaos-main'/'Xenoverse-Ordem-et-Chaos-main'
config=(root/'mkxp-test.json').read_text().replace('["android_bootstrap.rb"]','["android_bootstrap.rb", "game_speed.rb"]')
with zipfile.ZipFile(assets/'game.zip','w',compression=zipfile.ZIP_DEFLATED,compresslevel=1) as archive:
    for folder in ('Data','Graphics','Audio','Fonts'):
        for path in sorted((game/folder).rglob('*')):
            if path.is_file() and path.suffix.lower() not in ('.psd','.mdp'):
                archive.write(path,path.relative_to(game).as_posix())
    for name in ('Game.ini','soundfont.sf2'): archive.write(game/name,name)
    for name in ('android_bootstrap.rb','game_speed.rb'): archive.write(root/name,name)
    archive.writestr('mkxp.json',config)
print('Standalone sources and embedded assets prepared')
