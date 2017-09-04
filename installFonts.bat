@echo off
copy /Y *.ttf %SystemRoot%\Fonts
copy /Y *.ttc %SystemRoot%\Fonts 2>nul
explorer %SystemRoot%\Fonts
pause
