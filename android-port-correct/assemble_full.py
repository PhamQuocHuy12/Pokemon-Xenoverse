import shutil,zipfile
from pathlib import Path
root=Path(__file__).resolve().parent
game=root.parent/'Xenoverse-Source-main/Xenoverse-Source-main/Xenoverse'
# APK ZIP records support unsigned 32-bit offsets. Avoid Python's conservative
# 2 GiB ZIP64 threshold; all entries and the complete APK remain below 4 GiB.
zipfile.ZIP64_LIMIT=0xFFFFFFFF
# Apply fixes to both fresh installations and existing app-private game data.
with zipfile.ZipFile(root/'compatibility.zip','w',zipfile.ZIP_DEFLATED) as patch_zip:
    for path in sorted((root/'patches').glob('*.rb')):
        patch_zip.write(path,'Data/Scripts/'+path.name)
    # Earlier bundles used broad name filters (e.g. Italian "vecchio").
    # Restore every excluded runtime-folder file regardless of its name.
    existing=set()
    for bundle in sorted((root/'bundles').glob('game-*.zip')):
        with zipfile.ZipFile(bundle) as archive: existing.update(archive.namelist())
    for folder in ('Data','Graphics','Audio','Fonts','PBS'):
        for path in sorted((game/folder).rglob('*')):
            if not path.is_file() or path.suffix.lower() in ('.psd','.rar','.sfk','.log'): continue
            name=path.relative_to(game).as_posix()
            if name not in existing: patch_zip.write(path,name)
    for path in sorted(game.iterdir()):
        if path.is_file() and (path.suffix.lower() in ('.anm','.bmp','.sf2') or path.name in ('Version.txt','intl.txt','intl_it.txt')):
            patch_zip.write(path,path.name)

with zipfile.ZipFile(root/'base.apk') as source,zipfile.ZipFile(root/'full-unsigned.apk','w',allowZip64=False) as target:
    for entry in source.infolist():
        if entry.filename.startswith(('META-INF/','assets/game')) or entry.filename=='classes2.dex': continue
        with source.open(entry) as inp,target.open(entry,'w') as out: shutil.copyfileobj(inp,out,1024*1024)
    target.write(root/'compatibility.zip','assets/compatibility.zip',compress_type=zipfile.ZIP_STORED)
    target.write(root/'dex/classes.dex','classes2.dex',compress_type=zipfile.ZIP_DEFLATED)
    for path in sorted((root/'bundles').glob('game-*.zip')):
        target.write(path,'assets/'+path.name,compress_type=zipfile.ZIP_STORED)
print('Full APK assembled',flush=True)
