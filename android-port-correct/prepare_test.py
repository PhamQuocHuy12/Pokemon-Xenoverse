import json,shutil,zipfile
from pathlib import Path
root=Path(__file__).resolve().parent
old=root.parent/'android-port-analysis'
game=root.parent/'Xenoverse-Source-main/Xenoverse-Source-main/Xenoverse'
apk=root/'apk'
if not apk.exists(): shutil.copytree(old/'standalone-apk',apk,ignore=shutil.ignore_patterns('build','dist'))
manifest=apk/'AndroidManifest.xml'
text=manifest.read_text()
if 'android:debuggable="true"' not in text: text=text.replace('<application ','<application android:debuggable="true" ',1)
manifest.write_text(text)
java=(old/'SetupActivity.java').read_text().replace('"game"','"game155"').replace('.installed-v1','.installed-155-test1')
(root/'SetupActivity.java').write_text(java,encoding='utf-8')
config=dict(rgssVersion=1,fullscreen=True,fixedAspectRatio=True,defScreenW=512,defScreenH=384,vsync=False,fixedFramerate=60,preloadScript=['android155.rb'],pathCache=True)
(root/'mkxp.json').write_text(json.dumps(config,indent=2))
assets=apk/'assets'; assets.mkdir(exist_ok=True)
with zipfile.ZipFile(assets/'game.zip','w',zipfile.ZIP_DEFLATED,compresslevel=1) as archive:
    for folder in ('Data','Fonts','Graphics/Titles','Graphics/Windowskins'):
        for path in sorted((game/folder).rglob('*')):
            if path.is_file() and not any(w in path.name.lower() for w in ('backup','working','vecchio','prima di')):
                patch=root/'patches'/path.name if path.parent == game/'Data/Scripts' else None
                archive.write(patch if patch and patch.exists() else path,path.relative_to(game).as_posix())
    archive.write(game/'Game.ini','Game.ini')
    for name in ('mkxp.json','android155.rb'): archive.write(root/name,name)
print('Corrected-version boot-test bundle ready')
