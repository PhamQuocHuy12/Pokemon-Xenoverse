"""Compare shipped bytes with source and intentional overlays; never execute game data."""
import collections, hashlib, json, subprocess, tarfile, zipfile, sys
from pathlib import Path
ROOT=Path(__file__).resolve().parent
GAME=ROOT.parent/'Xenoverse-Source-main/Xenoverse-Source-main/Xenoverse'
def digest(stream):
    h=hashlib.sha256()
    while block:=stream.read(1024*1024): h.update(block)
    return h.hexdigest()
def filehash(path):
    with path.open('rb') as f: return digest(f)
if '--installed' in sys.argv:
    expected=json.loads((ROOT/'asset-audit.json').read_text(encoding='utf-8'))['effective_files']
    targets=sorted({p.split('/')[0] for p in expected if p!='mkxp.json'})
    command=['D:/android-sdk/platform-tools/adb.exe','-s','emulator-5554','exec-out','run-as','com.hatkid.mkxpz','tar','-cf','-','-C','files/game155',*targets]
    process=subprocess.Popen(command,stdout=subprocess.PIPE,stderr=subprocess.PIPE)
    actual={}
    with tarfile.open(fileobj=process.stdout,mode='r|') as archive:
        for entry in archive:
            if entry.isfile(): actual[entry.name.removeprefix('./')]=digest(archive.extractfile(entry))
    errors=process.stderr.read().decode(errors='replace'); code=process.wait()
    # mkxp.json is runtime-managed and omitted from this installed immutable-file comparison.
    expected.pop('mkxp.json',None)
    missing=sorted(set(expected)-set(actual))
    changed=[p for p in expected.keys() & actual.keys() if actual[p]!=expected[p]]
    result=dict(checked=len(expected),missing=missing,changed=changed,extra=sorted(set(actual)-set(expected)),exit_code=code,stderr=errors)
    (ROOT/'installed-asset-audit.json').write_text(json.dumps(result,indent=2))
    print(json.dumps(result)); sys.exit(bool(code or missing or changed))
source={p.relative_to(GAME).as_posix():p for p in GAME.rglob('*') if p.is_file()}
manifest=json.loads((ROOT/'bundle-manifest.json').read_text(encoding='utf-8'))
bundled={}; duplicates=[]; problems=[]; overlays=[]
for part in sorted((ROOT/'bundles').glob('game-*.zip')):
    with zipfile.ZipFile(part) as archive:
        for entry in archive.infolist():
            if entry.is_dir(): continue
            if entry.filename in bundled: duplicates.append(entry.filename)
            with archive.open(entry) as stream: bundled[entry.filename]=digest(stream)
    print('Verified',part.name,flush=True)
for entry in manifest:
    name=entry['file']; path=Path(entry['source'])
    if name not in bundled: problems.append(dict(file=name,issue='missing from bundles'))
    elif path.parent==ROOT/'patches':
        overlays.append(name) # Older bundle patch is intentionally superseded below.
    elif bundled[name]!=filehash(path): problems.append(dict(file=name,issue='bundle differs from source'))
effective=dict(bundled)
with zipfile.ZipFile(ROOT/'compatibility.zip') as archive:
    for entry in archive.infolist():
        with archive.open(entry) as stream: value=digest(stream)
        local=ROOT/'patches'/Path(entry.filename).name if entry.filename.startswith('Data/Scripts/') else GAME/entry.filename
        if value!=filehash(local): problems.append(dict(file=entry.filename,issue='compatibility archive mismatch'))
        effective[entry.filename]=value
        if entry.filename.startswith('Data/Scripts/') and entry.filename not in overlays: overlays.append(entry.filename)
omitted=[]
for name,path in source.items():
    if name in effective: continue
    if name.split('/')[0] not in ('Data','Graphics','Audio','Fonts','PBS'):
        reason='outside packaged runtime folders (review individually)'
    elif path.suffix.lower() in ('.psd','.rar','.sfk','.log'):
        reason='packaging extension exclusion'
    elif any(word in path.name.lower() for word in ('backup','working','vecchio','prima di')):
        reason='packaging filename exclusion (review individually)'
    else: reason='UNEXPECTED runtime omission'; problems.append(dict(file=name,issue=reason))
    omitted.append(dict(file=name,bytes=path.stat().st_size,reason=reason))
# Compare embedded archives byte-for-byte to audited archives (APK CRC also checked).
with zipfile.ZipFile(ROOT/'full-unsigned.apk') as apk:
    for path in [*sorted((ROOT/'bundles').glob('game-*.zip')),ROOT/'compatibility.zip']:
        with apk.open('assets/'+path.name) as stream: value=digest(stream)
        if value!=filehash(path): problems.append(dict(file=path.name,issue='APK archive differs'))
    print('Verified APK embedded archives',flush=True)
result=dict(source_file_count=len(source),bundled_file_count=len(bundled),effective_file_count=len(effective),original_audio_files=sum(p.startswith('Audio/') for p in effective),duplicates=duplicates,problems=problems,intentional_script_overlays=sorted(overlays),omitted_source_files=omitted,effective_files=effective)
(ROOT/'asset-audit.json').write_text(json.dumps(result,indent=2,ensure_ascii=False),encoding='utf-8')
print(json.dumps({k:v for k,v in result.items() if k not in ('effective_files','omitted_source_files')},indent=2))
print('Omitted source files:',len(omitted))
