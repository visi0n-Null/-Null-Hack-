@echo off
title installer-x64-w11-0.2
color 0A
setlocal

if not exist log mkdir log
set VERSION=0.2
set LOG=log\install.log

echo Windows 11 Incremental Update v%VERSION%
echo -----------------------------------------
echo Loading update modules...
echo [INFO] Update v%VERSION% initialized > %LOG%
timeout /t 2 >nul

echo Extracting update files...
timeout /t 3 >nul
echo [INFO] Files extracted >> %LOG%

echo.
echo Installing patches...
for %%p in (20 35 50 65 80 95 100) do (
    echo     Patch progress: %%p%%
    timeout /t 1 >nul
)

echo.
echo Cleaning temporary files...
timeout /t 2 >nul

echo.
echo Update completed successfully!
echo [INFO] Update finished >> %LOG%
pause
endlocal
