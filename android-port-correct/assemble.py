import zipfile
from pathlib import Path
root=Path(__file__).resolve().parent
with zipfile.ZipFile(root/'base.apk') as source,zipfile.ZipFile(root/'unsigned.apk','w') as target:
    for entry in source.infolist():
        if entry.filename.startswith('META-INF/') or entry.filename=='classes2.dex': continue
        target.writestr(entry,source.read(entry))
    target.write(root/'dex/classes.dex','classes2.dex',compress_type=zipfile.ZIP_DEFLATED)
