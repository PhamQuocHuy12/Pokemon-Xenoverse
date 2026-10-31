param(
    [string]$AndroidSdk = 'D:\android-sdk',
    [string]$JavaHome = 'D:\Android Studio\jbr',
    [string]$BuildToolsVersion = '36.0.0',
    [string]$KeyStore = (Join-Path $PSScriptRoot '..\android-port-analysis\test-signing.p12')
)
$ErrorActionPreference = 'Stop'
$env:JAVA_HOME = $JavaHome
$buildTools = Join-Path $AndroidSdk "build-tools\$BuildToolsVersion"
foreach ($required in @('base.apk', 'dex\classes.dex', 'bundles\game-000.zip')) {
    if (!(Test-Path -LiteralPath (Join-Path $PSScriptRoot $required))) { throw "Missing local build input: $required" }
}
if (!(Test-Path -LiteralPath $KeyStore)) { throw "Missing local development signing key: $KeyStore" }
Push-Location $PSScriptRoot
try {
    python assemble_full.py
    if ($LASTEXITCODE -ne 0) { throw 'APK assembly failed' }
    & (Join-Path $buildTools 'zipalign.exe') -f -p 4 full-unsigned.apk full-aligned.apk
    if ($LASTEXITCODE -ne 0) { throw 'APK alignment failed' }
    # This is the existing disposable development key, not a production credential.
    & (Join-Path $buildTools 'apksigner.bat') sign --ks $KeyStore --ks-pass pass:android --out Xenoverse-1.5.5-Android.apk full-aligned.apk
    if ($LASTEXITCODE -ne 0) { throw 'APK signing failed' }
    & (Join-Path $buildTools 'apksigner.bat') verify Xenoverse-1.5.5-Android.apk
    if ($LASTEXITCODE -ne 0) { throw 'APK signature verification failed' }
    $artifact = Get-Item Xenoverse-1.5.5-Android.apk
    $checksum = Get-FileHash $artifact.FullName -Algorithm SHA256
    Write-Output "Built: $($artifact.FullName) ($($artifact.Length) bytes)"
    Write-Output "SHA-256: $($checksum.Hash)"
} finally { Pop-Location }
