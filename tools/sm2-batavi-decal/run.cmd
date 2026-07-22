@echo off
setlocal EnableExtensions
REM Always run the Batavi SM2 decal pipeline inside WSL (Linux).
REM Usage: run.cmd prepare-tga newslot
REM        run.cmd clone-sso
REM        run.cmd pack batavi_heraldry
REM        run.cmd install-local

where wsl >nul 2>&1
if errorlevel 1 (
  echo error: WSL not found. Install Windows Subsystem for Linux, then retry.
  exit /b 1
)

cd /d "%~dp0"

REM Convert this Windows folder to a WSL path and exec ./run there.
for /f "usebackq delims=" %%i in (`wsl wslpath -a "%CD%"`) do set "WSLDIR=%%i"
if not defined WSLDIR (
  echo error: failed to resolve WSL path for %CD%
  exit /b 1
)

REM Normalize LF shebangs (OneDrive/Windows editors often save CRLF) then run.
wsl -e bash -lc "cd \"$WSLDIR\" && sed -i 's/\r$//' run bin/*.sh lib/*.py 2>/dev/null; chmod +x run bin/*.sh lib/*.py 2>/dev/null; ./run %*"
exit /b %ERRORLEVEL%
