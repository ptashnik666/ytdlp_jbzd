@echo off
title Pobieranie muzyki
:start
cls
set /p URL="[Wklej link do piosenki/playlisty]: "
"bin/yt-dlp" -q --no-warnings --progress --newline --console-title -o %homedrive%/Users/%username%/Desktop/yt_muzyka/%%(title)s.%%(ext)s -i --ignore-config -x --audio-format mp3 --audio-quality 0 "%URL%"
echo.
echo.
echo.
echo Ukonczono! Muzyke zapisano na pulpicie.
echo.
timeout 3 >nul
goto start