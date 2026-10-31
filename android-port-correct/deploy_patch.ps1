param([Parameter(Mandatory=$true)][string]$Name)
$ErrorActionPreference='Stop'
if ($Name -notmatch '^[\w .-]+\.rb$') { throw 'Invalid patch name' }
$adb='D:\android-sdk\platform-tools\adb.exe'
& $adb -s emulator-5554 push (Join-Path $PSScriptRoot "patches\$Name") "/data/local/tmp/$Name"
if ($LASTEXITCODE -ne 0) { throw 'Push failed' }
& $adb -s emulator-5554 shell run-as com.hatkid.mkxpz cp "'/data/local/tmp/$Name'" "'files/game155/Data/Scripts/$Name'"
if ($LASTEXITCODE -ne 0) { throw 'Copy failed' }
& $adb -s emulator-5554 shell am force-stop com.hatkid.mkxpz
& $adb -s emulator-5554 shell am start -n com.hatkid.mkxpz/.MainActivity
