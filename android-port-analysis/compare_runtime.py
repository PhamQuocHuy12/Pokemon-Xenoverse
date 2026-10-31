import json, re, subprocess
from pathlib import Path
root = Path(__file__).resolve().parent
source = root/'runtime-source'/'app'/'jni'/'mkxp-z'/'binding'
files = list(source.glob('*.cpp'))+list(source.glob('*.h'))
audit = json.loads((root/'compatibility-audit.json').read_text(encoding='utf-8'))
rows = []
for api, count in audit['engine_apis'].items():
    owner, method = api.split('.', 1)
    candidates = [p for p in files if p.name.startswith(owner.lower()+'-')]
    if owner == 'System': candidates = [source/'binding-mri.cpp']
    if owner == 'HTTPLite': candidates = [source/'http-binding.cpp']
    hits = []
    for path in candidates:
        for n, line in enumerate(path.read_text(encoding='utf-8', errors='replace').splitlines(),1):
            if '"'+method+'"' in line:
                hits.append(dict(file=path.relative_to(root).as_posix(), line=n, text=line.strip()))
    rows.append(dict(api=api, candidate_uses=count, status='binding string found' if hits else 'unresolved: inspect macros, Ruby overrides or false positive', evidence=hits))
commit = subprocess.check_output(['git','-C',str(root/'runtime-source'),'rev-parse','HEAD'], text=True).strip()
(root/'runtime-api-comparison.json').write_text(json.dumps(dict(commit=commit, limitations='Literal binding registration search only; neither behavior nor build availability validated.', apis=rows),indent=2),encoding='utf-8')
print('Commit:',commit)
print('Binding strings found:',sum(bool(x['evidence']) for x in rows),'/',len(rows))
print('Unresolved:', ', '.join(x['api'] for x in rows if not x['evidence']))
