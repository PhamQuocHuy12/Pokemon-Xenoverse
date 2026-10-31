"""Read script-only Ruby Marshal arrays without loading Ruby or executing game code."""
import hashlib, json, re, zlib
from pathlib import Path

class MarshalReader:
    def __init__(self, data):
        self.data, self.pos, self.objects, self.symbols = data, 2, [], []
        if data[:2] != b'\x04\x08': raise ValueError('Expected Marshal 4.8')
    def take(self, n):
        if n < 0 or self.pos+n > len(self.data): raise ValueError('Invalid length')
        value = self.data[self.pos:self.pos+n]; self.pos += n
        return value
    def integer(self):
        c = int.from_bytes(self.take(1), 'little', signed=True)
        if c == 0: return 0
        if c > 4: return c-5
        if c < -4: return c+5
        raw = self.take(abs(c))
        return int.from_bytes(raw, 'little') - (1 << (8*abs(c)) if c < 0 else 0)
    def read(self):
        tag = self.take(1)
        if tag == b'0': return None
        if tag == b'T': return True
        if tag == b'F': return False
        if tag == b'i': return self.integer()
        if tag == b':':
            value = self.take(self.integer()); self.symbols.append(value); return value
        if tag == b';': return self.symbols[self.integer()]
        if tag == b'@': return self.objects[self.integer()]
        if tag == b'"':
            value = self.take(self.integer()); self.objects.append(value); return value
        if tag == b'[':
            value = []; self.objects.append(value)
            for _ in range(self.integer()): value.append(self.read())
            return value
        if tag == b'{':
            value = {}; self.objects.append(value)
            for _ in range(self.integer()):
                key = self.read(); value[key] = self.read()
            return value
        if tag == b'o':
            value = {'__class__': self.read(), '__fields__': {}}; self.objects.append(value)
            for _ in range(self.integer()):
                key = self.read(); value['__fields__'][key] = self.read()
            return value
        if tag == b'u':
            value = {'__class__': self.read(), '__payload__': self.take(self.integer())}
            self.objects.append(value); return value
        if tag == b'f':
            value = float(self.take(self.integer())); self.objects.append(value); return value
        if tag == b'I':
            value = self.read()
            for _ in range(self.integer()): self.read(); self.read()
            return value
        raise ValueError(f'Unsupported Marshal tag {tag!r} at {self.pos-1}')

def main():
    root = Path(__file__).resolve().parent
    game = root.parent/'Xenoverse-Ordem-et-Chaos-main'/'Xenoverse-Ordem-et-Chaos-main'
    manifest = []
    for name in ('Scripts.rxdata', 'PluginScripts.rxdata', 'ScriptsBackup.rxdata'):
        path = game/'Data'/name
        raw = path.read_bytes(); reader = MarshalReader(raw); rows = reader.read()
        if reader.pos != len(raw): raise ValueError(f'Trailing bytes in {name}')
        folder = root/'extracted'/path.stem; folder.mkdir(parents=True, exist_ok=True)
        entries = []
        if name == 'PluginScripts.rxdata':
            flattened = []
            for plugin_name, metadata, scripts in rows:
                for filename, compressed in scripts:
                    flattened.append([plugin_name.decode('utf-8', errors='replace'), plugin_name+b'__'+filename, compressed])
            rows = flattened
        for index, row in enumerate(rows):
            if not isinstance(row, list) or len(row) != 3: raise ValueError(f'Invalid script row {index}: {str(row)[:300]}')
            script_id, title, compressed = row
            code = zlib.decompress(compressed)
            title_text = title.decode('utf-8', errors='replace')
            safe = re.sub(r'[^\w .-]', '_', title_text).strip(' .')[:100] or 'untitled'
            target = folder/f'{index:04d}_{safe}.rb'; target.write_bytes(code)
            entries.append(dict(index=index, id=script_id, title=title_text, file=target.relative_to(root).as_posix(), bytes=len(code), sha256=hashlib.sha256(code).hexdigest()))
        manifest.append(dict(archive=name, sha256=hashlib.sha256(raw).hexdigest(), consumed_bytes=reader.pos, entries=entries))
        print(f'{name}: {len(entries)} scripts, {sum(e["bytes"] for e in entries):,} bytes')
    (root/'script-manifest.json').write_text(json.dumps(manifest, ensure_ascii=False, indent=2), encoding='utf-8')

if __name__ == '__main__': main()
