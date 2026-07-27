#!/usr/bin/env bash
export WINEPREFIX=/home/paulom/.wine-texmipper
export WINEDEBUG=-all
cd /home/paulom/Codex-Batavi/tools/sm2-batavi-heraldry/vendor/icon_texmipper_test
exec wine /home/paulom/Codex-Batavi/tools/sm2-batavi-heraldry/../sm2-batavi-ac-overlay/vendor/texmipper/texmipper.exe /home/paulom/Codex-Batavi/tools/sm2-batavi-heraldry/vendor/icon_texmipper_test/lpd_batavi_icon.tga
