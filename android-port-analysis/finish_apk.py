import zipfile
from pathlib import Path
root=Path(__file__).resolve().parent
bundle = root/'gamebundle.zip'
if not bundle.exists(): bundle = root/'standalone-apk/assets/game.zip'
with zipfile.ZipFile(root/'xenoverse-base.apk') as source, zipfile.ZipFile(root/'xenoverse-unsigned.apk','w') as target:
    for entry in source.infolist():
        if entry.filename.startswith('META-INF/') or entry.filename=='assets/game.zip': continue
        target.writestr(entry,source.read(entry))
    target.write(bundle,'assets/game.zip',compress_type=zipfile.ZIP_STORED)
    target.write(root/'launcher-dex/classes.dex','classes2.dex',compress_type=zipfile.ZIP_DEFLATED)
print('Standalone APK assembled')
