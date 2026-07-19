#Requires -Version 5.1
# Always runs inside WSL. Prefer: run.cmd prepare-tga newslot
param(
    [ValidateSet('Replace', 'NewSlot')]
    [string]$Mode = 'NewSlot',
    [string]$SealPath = ''
)
$ErrorActionPreference = 'Stop'
$here = $PSScriptRoot
$modeArg = if ($Mode -eq 'Replace') { 'replace' } else { 'newslot' }
$wslDir = (& wsl wslpath -a $here).Trim()
if (-not $wslDir) { throw 'WSL not available or wslpath failed.' }
$extra = ''
if ($SealPath) {
    $sealWsl = (& wsl wslpath -a $SealPath).Trim()
    $extra = " '$sealWsl'"
}
$bash = "cd '$wslDir' && chmod +x run bin/*.sh lib/*.py 2>/dev/null; ./run prepare-tga $modeArg$extra"
& wsl -e bash -lc $bash
exit $LASTEXITCODE
