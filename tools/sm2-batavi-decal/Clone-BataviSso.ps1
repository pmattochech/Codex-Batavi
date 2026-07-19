#Requires -Version 5.1
# Always runs inside WSL. Prefer: run.cmd clone-sso
param(
    [string]$TemplateDir = ''
)
$ErrorActionPreference = 'Stop'
$here = $PSScriptRoot
$wslDir = (& wsl wslpath -a $here).Trim()
if (-not $wslDir) { throw 'WSL not available or wslpath failed.' }
$extra = ''
if ($TemplateDir) {
    $tpl = (& wsl wslpath -a $TemplateDir).Trim()
    $extra = " '$tpl'"
}
$bash = "cd '$wslDir' && chmod +x run bin/*.sh lib/*.py 2>/dev/null; ./run clone-sso$extra"
& wsl -e bash -lc $bash
exit $LASTEXITCODE
