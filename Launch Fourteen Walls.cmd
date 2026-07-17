@echo off
setlocal
cd /d "%~dp0"
set "GAME=%CD%\index.html"

where msedge >nul 2>nul
if %errorlevel%==0 (
  start "" msedge --app="file:///%GAME:\=/%" --user-data-dir="%CD%\FourteenWallsData"
  exit /b
)

where chrome >nul 2>nul
if %errorlevel%==0 (
  start "" chrome --app="file:///%GAME:\=/%" --user-data-dir="%CD%\FourteenWallsData"
  exit /b
)

start "" "%GAME%"
