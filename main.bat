:: The MIT License
:: Copyright 2024 Dale Rafael Bumanglag
:: 
:: Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
:: 
:: The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
:: 
:: THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

@echo off
setlocal enabledelayedexpansion
:: ........ ADB SETTINGS MANAGER ........ ::
cls
title "[ADB] - SETTINGS MANAGER - Initializing..."
echo ============ [i] INITIALIZING ============
echo.
goto init

:init
:: Initialize checking variables
set "adbInstalled=false"
set "deviceConnected=false"

:: Check "adb" (Android Debug Bridge Command)
where adb >nul 2>nul
if not errorlevel 1 (
    set "adbInstalled=true"
)

:: Check if any devices are detected
for /f "skip=1 tokens=1" %%i in ('adb devices') do (
    if "%%i" neq "" (
        set "deviceConnected=true"
        goto :check_results
    )
)

:check_results
cls
if "!adbInstalled!" == "true" (
    if "!deviceConnected!" == "true" (
        echo ADB is installed and a device is connected.
        pause
        set "returnLabel=mmenu"
        goto mmenu
    ) else (
        echo ADB is installed but no device is connected.
        pause
        exit /b
    )
) else (
    echo ADB command not found. Please install ADB first.
    pause
    exit /b
)

:mmenu
cls
title "[ADB] - SETTINGS MANAGER - Options"
echo =========================================================
echo         ADB SETTINGS PROVIDER EDITOR [TERMINAL]
echo =========================================================
echo Options:
echo - 1. List all defined keys (System, Secure, Global)
echo - 2. Search for a key
echo - 3. Set a specific key
echo - 4. Delete a specific key
echo - 5. Backup all defined settings
echo - 6. Restore a settings file [^^!]
echo - 7. Export specific settings
echo - 8. Import specific settings
echo - 9. Disconnect and Exit
echo =========================================================
set /p choice="Select an option (1-9): "

if "%choice%"=="1" goto list_keys
if "%choice%"=="2" goto search_key
if "%choice%"=="3" goto set_key
if "%choice%"=="4" goto delete_key
if "%choice%"=="5" goto backup_settings
if "%choice%"=="6" goto restore_settings
if "%choice%"=="7" goto export_settings
if "%choice%"=="8" goto import_settings
if "%choice%"=="9" goto exit_program

set "returnLabel=mmenu"
goto ierror

:list_keys
cls
echo 
set "returnLabel=mmenu"
goto mmenu

:search_key
cls
echo 
:: Add logic for searching a key here
set "returnLabel=mmenu"
goto mmenu

:set_key
cls
echo 
:: Add logic for setting a key here
set "returnLabel=mmenu"
goto mmenu

:delete_key
cls
echo 
:: Add logic for deleting a key here
set "returnLabel=mmenu"
goto mmenu

:backup_settings
cls
echo 
:: Add logic for backing up settings here
set "returnLabel=mmenu"
goto mmenu

:restore_settings
cls
echo 
:: Add logic for restoring settings here
set "returnLabel=mmenu"
goto mmenu

:export_settings
cls
echo 
:: Add logic for exporting settings here
set "returnLabel=mmenu"
goto mmenu

:import_settings
cls
echo 
:: Add logic for importing settings here
set "returnLabel=mmenu"
goto mmenu

:exit_program
exit

:ierror
cls
echo -------------------
echo   INVALID OPTION !
pause
goto :%returnLabel%
