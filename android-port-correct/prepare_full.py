import json,zipfile
from pathlib import Path
root=Path(__file__).resolve().parent
game=root.parent/'Xenoverse-Source-main/Xenoverse-Source-main/Xenoverse'
java=(root/'SetupActivity.java').read_text()
java=java.replace('.installed-155-test1','.installed-155-full1')
old='''                try (ZipInputStream zip = new ZipInputStream(new BufferedInputStream(getAssets().open("game.zip"),262144))) {'''
new='''                String[] bundles = getAssets().list("");
                java.util.Arrays.sort(bundles);
                int bundleCount = 0;
                for (String bundle : bundles) {
                  if (!bundle.startsWith("game-") || !bundle.endsWith(".zip")) continue;
                  bundleCount++;
                  try (ZipInputStream zip = new ZipInputStream(new BufferedInputStream(getAssets().open(bundle),262144))) {'''
if old in java:
    java=java.replace(old,new).replace('                if (!marker.createNewFile())','                }\n                if (bundleCount == 0) throw new IOException("Bundled game assets missing");\n                if (!marker.createNewFile())')
(root/'SetupActivity.java').write_text(java,encoding='utf-8')
config=json.loads((root/'mkxp.json').read_text()); config['fixedFramerate']=0
(root/'mkxp.json').write_text(json.dumps(config,indent=2))
bundles=root/'bundles'; bundles.mkdir(exist_ok=True)
items=[]
for folder in ('Data','Graphics','Audio','Fonts','PBS'):
    for path in sorted((game/folder).rglob('*')):
        if not path.is_file() or path.suffix.lower() in ('.psd','.rar','.sfk','.log'): continue
        relative=path.relative_to(game).as_posix()
        patch=root/'patches'/path.name if path.parent==game/'Data/Scripts' else None
        items.append((patch if patch and patch.exists() else path,relative))
items += [(game/'Game.ini','Game.ini'),(root/'mkxp.json','mkxp.json'),(root/'android155.rb','android155.rb')]
items += [(game.parent/'CodeAndModsGuidelines.md','CodeAndModsGuidelines.md'),(game.parent/'README.md','Source-README.md')]
archive=None; size=0; part=-1; manifest=[]
try:
    for path,relative in items:
        if archive is None or size>=256*1024*1024:
            if archive: archive.close()
            part+=1; size=0
            archive=zipfile.ZipFile(bundles/f'game-{part:03d}.zip','w',zipfile.ZIP_DEFLATED,compresslevel=1)
            print(f'Bundling part {part}',flush=True)
        archive.write(path,relative); size+=path.stat().st_size
        manifest.append(dict(file=relative,source=str(path),bytes=path.stat().st_size,part=part))
finally:
    if archive: archive.close()
(root/'bundle-manifest.json').write_text(json.dumps(manifest,ensure_ascii=False,indent=2),encoding='utf-8')
print(f'Bundled {len(items)} files in {part+1} parts; audio files copied unchanged',flush=True)
