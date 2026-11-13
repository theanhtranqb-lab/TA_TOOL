[CmdletBinding()]
param(
    [ValidateSet('2022','2023','2024','2025','2026')][string]$AutoCADYear,
    [string]$Version,
    [string]$CadPath,
    [string]$SetupDirectory,
    [string]$LogPath,
    [switch]$CheckOnly
)
$ErrorActionPreference = 'Stop'
$ProgressPreference = 'SilentlyContinue'
$repo = 'theanhtranqb-lab/TA_TOOL'
$minimum = [version]'1.5.1.48'
try {
    if ([string]::IsNullOrWhiteSpace($AutoCADYear)) { throw 'Can -AutoCADYear 2022, 2023, 2024, 2025 hoac 2026. Khong tu dong chon phien ban.' }
    if ($Version -and $Version -notmatch '^\d+\.\d+\.\d+(\.\d+)?$') { throw 'Version khong hop le.' }
    if (!$SetupDirectory) {
        [Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12
        $headers = @{ 'User-Agent' = 'TA-Tool-PowerShell-Installer'; 'Accept' = 'application/vnd.github+json' }
        $endpoint = if ($Version) { "https://api.github.com/repos/$repo/releases/tags/v$Version" } else { "https://api.github.com/repos/$repo/releases/latest" }
        Write-Host 'Dang doc ban phat hanh TA Tool...'
        $release = Invoke-RestMethod -Uri $endpoint -Headers $headers -TimeoutSec 60
        if ($release.draft -or $release.prerelease -or $release.tag_name -notmatch '^v(\d+\.\d+\.\d+\.\d+)$') { throw 'Ban phat hanh khong phai ban on dinh hop le.' }
        $resolvedVersion = $Matches[1]
        if ([version]$resolvedVersion -lt $minimum) { throw 'Ban nay chua ho tro cai dat dong lenh. Can TA Tool 1.5.1.48 tro len.' }
        $name = "TA_Tool_Setup_$resolvedVersion.zip"
        $assets = @($release.assets | Where-Object { $_.name -ceq $name })
        if ($assets.Count -ne 1) { throw 'Khong tim thay dung mot goi Setup.' }
        $asset = $assets[0]
        if ($asset.digest -notmatch '^sha256:([0-9a-fA-F]{64})$') { throw 'GitHub khong cung cap SHA-256 hop le. Dung tai de tranh cai goi chua xac minh.' }
        $expectedHash = $Matches[1]
        $downloadUrl = "https://github.com/$repo/releases/download/v$resolvedVersion/$name"
        if ($asset.browser_download_url -cne $downloadUrl) { throw 'Dia chi tai goi khong khop kho TA Tool.' }
        $downloadRoot = Join-Path ([Environment]::GetFolderPath('LocalApplicationData')) ('TA_Tool\Downloads\' + $resolvedVersion + '-' + [guid]::NewGuid().ToString('N'))
        New-Item -ItemType Directory -Path $downloadRoot -Force | Out-Null
        $archivePath = Join-Path $downloadRoot $name
        Write-Host "Dang tai $name..."
        Invoke-WebRequest -UseBasicParsing -Uri $downloadUrl -OutFile $archivePath -TimeoutSec 600
        $hashAlgorithm = [Security.Cryptography.SHA256]::Create()
        $archiveStream = [IO.File]::OpenRead($archivePath)
        try { $actualHash = [BitConverter]::ToString($hashAlgorithm.ComputeHash($archiveStream)).Replace('-','') }
        finally { $archiveStream.Dispose(); $hashAlgorithm.Dispose() }
        if ($actualHash -ne $expectedHash) { throw 'SHA-256 khong khop. Khong giai nen hoac chay bo cai.' }
        Add-Type -AssemblyName System.IO.Compression.FileSystem
        $zip = [IO.Compression.ZipFile]::OpenRead($archivePath)
        try {
            if ($zip.Entries.Count -gt 5000) { throw 'Goi ZIP co qua nhieu tep.' }
            [long]$expandedBytes = 0
            foreach ($entry in $zip.Entries) {
                $entryName = $entry.FullName.Replace('\','/')
                if ($entryName -match '(^/|^[A-Za-z]:|(^|/)\.\.(/|$)|:)') { throw 'ZIP chua duong dan khong an toan.' }
                $expandedBytes += $entry.Length
                if ($expandedBytes -gt 1GB) { throw 'Goi ZIP giai nen vuot gioi han 1 GB.' }
            }
        } finally { $zip.Dispose() }
        [IO.Compression.ZipFile]::ExtractToDirectory($archivePath, $downloadRoot)
        $SetupDirectory = Join-Path $downloadRoot "TA_Tool_Setup_$resolvedVersion"
        Write-Host 'SHA-256 hop le. Da giai nen bo cai.'
    }
    $SetupDirectory = [IO.Path]::GetFullPath($SetupDirectory)
    $exePath = Join-Path $SetupDirectory 'TA_Tool_Setup.exe'
    if (!(Test-Path -LiteralPath $exePath -PathType Leaf)) { throw 'Khong tim thay TA_Tool_Setup.exe trong thu muc Setup.' }
    if ([version]([Diagnostics.FileVersionInfo]::GetVersionInfo($exePath).FileVersion) -lt $minimum) { throw 'EXE Setup qua cu; can 1.5.1.48 tro len de cai khong giao dien.' }
    if (!$LogPath) { $LogPath = Join-Path ([Environment]::GetFolderPath('LocalApplicationData')) ('TA_Tool\Setup\powershell-' + [guid]::NewGuid().ToString('N') + '.json') }
    $LogPath = [IO.Path]::GetFullPath($LogPath)
    if ($LogPath -match '["\r\n]') { throw 'Duong dan log khong hop le.' }
    $mode = if ($CheckOnly) { '--check' } else { '--install' }
    $nativeArgs = "$mode --autocad $AutoCADYear --silent --log `"$LogPath`""
    if ($CadPath) {
        $CadPath = [IO.Path]::GetFullPath($CadPath)
        if (Test-Path -LiteralPath $CadPath -PathType Container) { $CadPath = Join-Path $CadPath 'acad.exe' }
        if ($CadPath -match '["\r\n]') { throw 'Duong dan AutoCAD khong hop le.' }
        $nativeArgs += " --cad-path `"$CadPath`""
    }
    $process = Start-Process -FilePath $exePath -ArgumentList $nativeArgs -Wait -PassThru -WindowStyle Hidden
    if (Test-Path -LiteralPath $LogPath -PathType Leaf) {
        $result = Get-Content -LiteralPath $LogPath -Raw -Encoding UTF8 | ConvertFrom-Json
        Write-Host $result.Message
        Write-Host "Nhat ky: $LogPath"
        if ($process.ExitCode -eq 0 -and $result.Success -and $result.Status -in @('ready','installed')) { exit 0 }
    }
    if ($process.ExitCode -eq 0) { throw 'Bo cai khong tra ve ket qua JSON hop le.' }
    Write-Error "Cai dat/kiem tra that bai. Exit code: $($process.ExitCode)" -ErrorAction Continue
    exit $process.ExitCode
} catch {
    Write-Error $_.Exception.Message -ErrorAction Continue
    exit 2
}
