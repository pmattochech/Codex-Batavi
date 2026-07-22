#Requires -Version 5.1
# Always runs inside WSL. Prefer: run.cmd install-local "/mnt/c/.../Space Marine 2"
param(
    [string]$GameRoot = ''
)
$ErrorActionPreference = 'Stop'
$here = $PSScriptRoot
$wslDir = (& wsl wslpath -a $here).Trim()
if (-not $wslDir) { throw 'WSL not available or wslpath failed.' }
$extra = ''
if ($GameRoot) {
    $game = (& wsl wslpath -a $GameRoot).Trim()
    $extra = " '$game'"
}
$bash = "cd '$wslDir' && chmod +x run bin/*.sh lib/*.py 2>/dev/null; ./run install-local$extra"
& wsl -e bash -lc $bash
exit $LASTEXITCODE
