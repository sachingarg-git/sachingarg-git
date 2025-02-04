@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

REM Batch script to configure Internet connection LAN settings

REM Set proxy server address and port
set PROXY_SERVER=127.0.0.1
set PROXY_PORT=80
set EXCEPTION_URLS=https://www.google.co.in;
:MENU
cls
echo -------------------------------------------
echo Proxy Configuration Menu
echo -------------------------------------------
echo 1. Add more URLs to exceptions
echo 2. Exit and apply settings
echo -------------------------------------------
set /p choice="Please choose an option (1 or 2): "

if "%choice%"=="1" (
    call :ADD_URL
    goto MENU
) else if "%choice%"=="2" (
    goto APPLY_SETTINGS
) else (
    echo Invalid option. Please choose 1 or 2.
    pause
    goto MENU
)

:ADD_URL
set /p new_url="Enter the URL to add to exceptions: "
if "!new_url!"=="" (
    echo You must enter a URL.
    pause
    goto :EOF
)
set EXCEPTION_URLS=!EXCEPTION_URLS!!new_url!;
set EXCEPTION_URLS=!EXCEPTION_URLS:;=;!;  REM Remove duplicate semicolons if any
echo URL added: !new_url!
pause
goto :EOF

:APPLY_SETTINGS
REM Enable proxy settings in the registry
echo Configuring proxy settings...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /t REG_SZ /d "%PROXY_SERVER%:%PROXY_PORT%" /f

REM Set the exceptions for the specific URLs
echo Configuring proxy exceptions...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyOverride /t REG_SZ /d "!EXCEPTION_URLS!" /f

REM Notify the user of the changes
echo Proxy server configured to %PROXY_SERVER%:%PROXY_PORT% with exceptions: !EXCEPTION_URLS!
echo Please restart your browser or applications to apply the new settings.

REM Error handling
if %errorlevel% neq 0 (
    echo An error occurred while configuring the proxy settings.
    exit /b %errorlevel%
)

exit /b 0
