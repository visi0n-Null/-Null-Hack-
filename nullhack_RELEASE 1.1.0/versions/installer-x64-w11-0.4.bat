@echo off
title installer-x64-w11-0.4
color 0A
setlocal

if not exist log mkdir log
set VERSION=0.4
set LOG=log\install.log

echo Windows 11 Final Update v%VERSION%
echo -----------------------------------
echo Starting installer...
echo [INFO] Final update started > %LOG%
timeout /t 2 >nul

echo Preparing system...
timeout /t 2 >nul

echo.
echo Installing latest components...
for %%p in (5 20 40 60 80 95 100) do (
    echo     Installing... %%p%%
    timeout /t 1 >nul
)

echo.
echo Final cleanup...
timeout /t 2 >nul

echo.
echo Installation finished successfully!
echo [INFO] Final update completed >> %LOG%
pause
endlocal
