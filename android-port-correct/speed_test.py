import json,subprocess,time
from pathlib import Path
root=Path(__file__).resolve().parent
adb='D:/android-sdk/platform-tools/adb.exe'
def run(*args): return subprocess.run([adb,'-s','emulator-5554',*args],check=True,capture_output=True,text=True).stdout
def deploy(path,name):
    run('push',str(path),'/data/local/tmp/'+name)
    run('shell','run-as','com.hatkid.mkxpz','cp','/data/local/tmp/'+name,'files/game155/'+name)
config=json.loads((root/'mkxp.json').read_text()); config['customScript']='speed_measure.rb'
(root/'speed-config.json').write_text(json.dumps(config))
run('shell','am','force-stop','com.hatkid.mkxpz')
for name in ('android155.rb','speed_measure.rb'): deploy(root/name,name)
deploy(root/'speed-config.json','mkxp.json')
try:
    for factor in (1,2):
        flag=root/'speed-flag.txt'; flag.write_text(str(factor)+'.0'); deploy(flag,'speed_config.rb')
        run('shell','am','force-stop','com.hatkid.mkxpz'); run('shell','am','start','-n','com.hatkid.mkxpz/.MainActivity')
        for _ in range(20):
            time.sleep(1)
            result=subprocess.run([adb,'-s','emulator-5554','shell','run-as','com.hatkid.mkxpz','cat',f'files/game155/speed-{factor}.txt'],capture_output=True,text=True)
            if result.returncode==0:
                (root/f'speed-result-{factor}.txt').write_text(result.stdout)
                print(result.stdout,flush=True); break
        else: raise RuntimeError('Timing test did not finish')
finally:
    run('shell','am','force-stop','com.hatkid.mkxpz')
    deploy(root/'mkxp.json','mkxp.json')
