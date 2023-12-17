@echo off
title Pobieranie filmu
:start
cls
set /p URL="[Wklej link do filmu/playlisty]: "
"bin/yt-dlp" -q --no-warnings --progress --newline --console-title -o %homedrive%/Users/%username%/Desktop/yt_filmy/%%(title)s.%%(ext)s -i --ignore-config -S ext "%URL%"
echo.
echo.
echo.
echo Ukonczono! Film/filmy zapisano na pulpicie.
echo.
timeout 3 >nul
goto start
