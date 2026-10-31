import hashlib,json,re,sys,zlib
from pathlib import Path
root=Path(__file__).resolve().parent
game=root.parent/'Xenoverse-Source-main/Xenoverse-Source-main/Xenoverse'
sys.path.insert(0,str(root.parent/'android-port-analysis'))
from extract_scripts import MarshalReader
raw=(game/'Data/Scripts.rxdata').read_bytes(); reader=MarshalReader(raw); rows=reader.read()
sections=[]
for index,(_,title,packed) in enumerate(rows):
    code=zlib.decompress(packed)
    (root/f'loader-{index}.rb').write_bytes(code)
    sections.append(dict(index=index,title=title.decode('utf-8','replace'),sha256=hashlib.sha256(code).hexdigest()))
findings=[]; scripts=[]
for path in sorted((game/'Data/Scripts').rglob('*.rb')):
    content=path.read_bytes(); scripts.append(dict(path=path.relative_to(game).as_posix(),sha256=hashlib.sha256(content).hexdigest(),bytes=len(content)))
    for number,line in enumerate(content.decode('utf-8','replace').splitlines(),1):
        if re.search(r'Win32API|Graphics\.frame_rate\s*=|\$MKXP|https?://|KleinBitmap',line):
            findings.append(dict(file=path.relative_to(game).as_posix(),line=number,text=line.strip()))
files=[p for p in game.rglob('*') if p.is_file()]
report=dict(target=str(game),archive_sha256=hashlib.sha256(raw).hexdigest(),loader_sections=sections,source_scripts=scripts,candidate_findings=findings,file_count=len(files),total_bytes=sum(p.stat().st_size for p in files))
(root/'source-inventory.json').write_text(json.dumps(report,ensure_ascii=False,indent=2),encoding='utf-8')
print(json.dumps({k:v for k,v in report.items() if k not in ('source_scripts','candidate_findings')},indent=2))
print('Source scripts:',len(scripts))
