"""Stream runtime assets into the isolated app without a second on-device archive."""
import subprocess,tarfile
from pathlib import Path
root=Path(__file__).resolve().parent
game=root.parent/'Xenoverse-Source-main/Xenoverse-Source-main/Xenoverse'
command=['D:/android-sdk/platform-tools/adb.exe','-s','emulator-5554','exec-in','run-as','com.hatkid.mkxpz','tar','-xf','-','-C','files/game155']
process=subprocess.Popen(command,stdin=subprocess.PIPE)
try:
    count=0
    with tarfile.open(fileobj=process.stdin,mode='w|',format=tarfile.USTAR_FORMAT) as archive:
        for folder in ('Graphics','Audio','PBS'):
            for path in sorted((game/folder).rglob('*')):
                if not path.is_file() or path.suffix.lower() in ('.psd','.rar','.sfk','.avi','.log'): continue
                archive.add(path,arcname=path.relative_to(game).as_posix(),recursive=False)
                count+=1
                if count%2000==0: print(f'Transferred {count} assets',flush=True)
    process.stdin.close()
    if process.wait()!=0: raise RuntimeError('Asset extraction failed')
    print(f'Complete: {count} assets',flush=True)
finally:
    if process.poll() is None: process.terminate()
