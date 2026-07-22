@echo off
setlocal
where wsl >nul 2>&1 || (echo error: WSL required & exit /b 1)
cd /d "%~dp0"
for /f "usebackq delims=" %%i in (`wsl wslpath -a "%CD%"`) do set "WSLDIR=%%i"
wsl -e bash -lc "cd \"$WSLDIR\" && sed -i 's/\r$//' run bin/*.sh lib/*.py 2>/dev/null; chmod +x run bin/*.sh lib/*.py; ./run %*"
exit /b %ERRORLEVEL%
