"""Decode inert Marshal records and export event commands without Ruby evaluation."""
import hashlib, json, re
from pathlib import Path
from extract_scripts import MarshalReader

root = Path(__file__).resolve().parent
data = root.parent/'Xenoverse-Ordem-et-Chaos-main'/'Xenoverse-Ordem-et-Chaos-main'/'Data'
commands = []; checked = []; failures = []
def clean(value):
    if isinstance(value, bytes): return value.decode('utf-8', errors='replace')
    if isinstance(value, list): return [clean(x) for x in value]
    if isinstance(value, dict): return {str(clean(k)):clean(v) for k,v in value.items()}
    return value
def walk(value, location, seen):
    if not isinstance(value, (list, dict)) or id(value) in seen: return
    seen.add(id(value))
    if isinstance(value, dict):
        fields = value.get('__fields__', {})
        if value.get('__class__') in (b'RPG::EventCommand', b'RPG::MoveCommand'):
            code = fields.get(b'@code'); params = fields.get(b'@parameters')
            commands.append(dict(location=location, kind=clean(value['__class__']), code=code, parameters=clean(params)))
        for key, child in value.items(): walk(child, location+'/'+str(clean(key)), seen)
    else:
        for i, child in enumerate(value): walk(child, location+'/'+str(i), seen)

for path in sorted(data.glob('*.rxdata')):
    if not (re.fullmatch(r'Map\d+', path.stem) or path.stem in ('CommonEvents','Troops')): continue
    raw = path.read_bytes()
    try:
        reader = MarshalReader(raw); value = reader.read()
        if reader.pos != len(raw): raise ValueError('Trailing bytes')
        walk(value, path.name, set()); checked.append(dict(file=path.name, sha256=hashlib.sha256(raw).hexdigest()))
    except Exception as error: failures.append(dict(file=path.name, error=str(error)))
scripts = [x for x in commands if (x['kind']=='RPG::EventCommand' and x['code'] in (355,655)) or (x['kind']=='RPG::MoveCommand' and x['code']==45)]
risks = [x for x in commands if re.search(r'Win32API|klein|\.dll|to_retro|modify_color|add_outline|to_negative|set_pattern|save_pallete|modify_pallete|compare_klein|scroll_(?:up|down|left|right)', json.dumps(x['parameters']), re.I)]
result = dict(checked=checked, failures=failures, command_count=len(commands), script_commands=scripts, native_candidates=risks,
              asset_commands=[x for x in commands if x['kind']=='RPG::EventCommand' and x['code'] in (131,132,133,222,231,241,245,249,250)])
(root/'event-audit.json').write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding='utf-8')
print(json.dumps(dict(files=len(checked), failures=failures, commands=len(commands), script_commands=len(scripts), native_candidates=len(risks)), indent=2))
