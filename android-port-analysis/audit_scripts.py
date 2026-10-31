"""Reproducible static inventory; matches are candidates, not runtime proof."""
import collections, hashlib, json, re
from pathlib import Path

root = Path(__file__).resolve().parent
game = root.parent/'Xenoverse-Ordem-et-Chaos-main'/'Xenoverse-Ordem-et-Chaos-main'
patterns = {
    'native_windows': r'Win32API|Fiddle|DL::|\.dll\b|ENV\[|IO\.popen|Process\.|\bsystem\(',
    'engine_api': r'\b(?:System|Graphics|Input|Audio|Bitmap|HTTPLite)\.[A-Za-z_!?]+',
    'writes': r'File\.(?:open|write|binwrite|delete|rename)|save_data\(',
    'requires': r'^\s*require(?:_relative)?\b',
}
findings = {key: [] for key in patterns}
apis = collections.Counter()
for folder in ('Scripts', 'PluginScripts'):
    for path in sorted((root/'extracted'/folder).glob('*.rb')):
        for number, line in enumerate(path.read_text(encoding='utf-8', errors='replace').splitlines(), 1):
            if line.lstrip().startswith('#'): continue
            for key, pattern in patterns.items():
                matches = re.findall(pattern, line)
                if matches:
                    findings[key].append(dict(file=path.relative_to(root).as_posix(), line=number, text=line.strip()))
                    if key == 'engine_api': apis.update(matches)
inventory = []; cases = collections.defaultdict(list); extensions = collections.Counter()
for path in sorted(game.rglob('*')):
    if not path.is_file(): continue
    rel = path.relative_to(game).as_posix(); size = path.stat().st_size
    inventory.append(dict(path=rel, bytes=size)); cases[rel.casefold()].append(rel)
    extensions[path.suffix.lower()] += 1
result = dict(scope='Active main and plugin archives; backup excluded. Text scan, not Ruby semantic analysis. Map event scripts not decoded.',
    exe_sha256=hashlib.sha256((game/'Game.exe').read_bytes()).hexdigest(),
    findings=findings, engine_apis=dict(apis.most_common()),
    files=len(inventory), bytes=sum(x['bytes'] for x in inventory), extensions=dict(extensions),
    case_collisions=[v for v in cases.values() if len(v)>1], inventory=inventory)
(root/'compatibility-audit.json').write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding='utf-8')
print(json.dumps({k:v for k,v in result.items() if k not in ('findings','inventory')}, indent=2))
print('Candidate matches:', {k:len(v) for k,v in findings.items()})
