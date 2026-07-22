#Requires -Version 5.1
# Always runs inside WSL. Prefer: run.cmd pack batavi_heraldry
param(
    [string]$OutName = 'batavi_heraldry',
    [string]$StageDir = ''
)
$ErrorActionPreference = 'Stop'
$here = $PSScriptRoot
$wslDir = (& wsl wslpath -a $here).Trim()
if (-not $wslDir) { throw 'WSL not available or wslpath failed.' }
$extra = " '$OutName'"
if ($StageDir) {
    $stage = (& wsl wslpath -a $StageDir).Trim()
    $extra += " '$stage'"
}
$bash = "cd '$wslDir' && chmod +x run bin/*.sh lib/*.py 2>/dev/null; ./run pack$extra"
& wsl -e bash -lc $bash
exit $LASTEXITCODE
