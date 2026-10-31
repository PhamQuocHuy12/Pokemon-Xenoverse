import sys,subprocess,time
from pathlib import Path
adb=['D:/android-sdk/platform-tools/adb.exe','-s','emulator-5554']
controls={'enter':(1200,1010),'up':(220,730),'down':(220,985),'left':(85,855),'right':(350,855),'cancel':(2145,980),'confirm':(2290,980)}
x,y=controls[sys.argv[2] if len(sys.argv)>2 else 'enter']
duration=sys.argv[3] if len(sys.argv)>3 else '100'
for _ in range(int(sys.argv[1]) if len(sys.argv)>1 else 0):
 subprocess.run(adb+['shell','input','swipe',str(x),str(y),str(x),str(y),duration],check=True,capture_output=True)
 time.sleep(.55)
raw=subprocess.check_output(adb+['exec-out','screencap','-p'])
Path(__file__).with_name('bug-current.png').write_bytes(raw)
