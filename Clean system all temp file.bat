@echo off

:: (Run as Admin code starts)
REM  Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\icacls.exe" "%SYSTEMROOT%\system32\config\system"

REM If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Now Running As Administrative Privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
    pushd "%CD%"
    CD /D "%~dp0"
:: (Run as Admin code ends)
::=======================================
::=======================================


:: (Your code is start from here:)
::===========================>

@echo off
color 1E
Title Clear Command by Omman
echo This delete will stop your update running service and deleting "Update files"
echo Are your sure want to clean and delete files?
Pause
echo.
cls
echo.
cls
echo.
echo.
echo Loading Please Wait...
echo ----------------------------------
echo Progress:  = 1%%
echo =========================================================================================== >>"C:\Users\Public\Desktop\Log.txt" 
echo Last Clear Time: %DATE% %TIME% >>"C:\Users\Public\Desktop\Log.txt" 
echo =========================================================================================== >>"C:\Users\Public\Desktop\Log.txt" 
echo 1) Current Windows Temp Folder files >>"C:\Users\Public\Desktop\Log.txt" 
Tree %windir%\Temp /F /A >>"C:\Users\Public\Desktop\Log.txt" 
echo =========================================================================================== >>"C:\Users\Public\Desktop\Log.txt" 
echo 1) Deleting Windows Temp Folder >>"C:\Users\Public\Desktop\Log.txt" 
del /s /f /q %windir%\Temp\*.* >>"C:\Users\Public\Desktop\Log.txt" 
rd /s /q %windir%\Temp >>"C:\Users\Public\Desktop\Log.txt" 
md %windir%\Temp >>"C:\Users\Public\Desktop\Log.txt" 
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading Please Wait...
echo ----------------------------------
echo Progress: == 2%%
echo =========================================================================================== >>"C:\Users\Public\Desktop\Log.txt" 
echo 2) Current Local %Temp% Folder files >>"C:\Users\Public\Desktop\Log.txt" 
Tree %USERPROFILE%\APPDATA\Local\Temp /F /A >>"C:\Users\Public\Desktop\Log.txt" 
echo =========================================================================================== >>"C:\Users\Public\Desktop\Log.txt" 
echo 2) Deleting Local %Temp% Folder >>"C:\Users\Public\Desktop\Log.txt" 
del /s /f /q %Temp%\*.* >>"C:\Users\Public\Desktop\Log.txt" 
rd /s /q %Temp% >>"C:\Users\Public\Desktop\Log.txt" 
md %Temp%\ >>"C:\Users\Public\Desktop\Log.txt" 
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading Please Wait...
echo ----------------------------------
echo Progress: == 3%%
echo =========================================================================================== >>"C:\Users\Public\Desktop\Log.txt" 
echo 3) Current Windows Prefetch Folder files >>"C:\Users\Public\Desktop\Log.txt" 
Tree %windir%\Prefetch /F /A >>"C:\Users\Public\Desktop\Log.txt" 
echo =========================================================================================== >>"C:\Users\Public\Desktop\Log.txt" 
echo 3) Deleting Windows Prefetch Folder >>"C:\Users\Public\Desktop\Log.txt" 
del /s /f /q %windir%\Prefetch\*.* >>"C:\Users\Public\Desktop\Log.txt" 
rd /s /q %windir%\Prefetch >>"C:\Users\Public\Desktop\Log.txt" 
md %windir%\Prefetch >>"C:\Users\Public\Desktop\Log.txt" 
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading Please Wait...
echo ----------------------------------
echo Progress: === 10%%
echo =========================================================================================== >>"C:\Users\Public\Desktop\Log.txt" 
echo 4) Current User Local Setting Temp Folder files >>"C:\Users\Public\Desktop\Log.txt" 
Tree %USERPROFILE%\APPDATA\Local\Temp /F /A >>"C:\Users\Public\Desktop\Log.txt" 
echo =========================================================================================== >>"C:\Users\Public\Desktop\Log.txt" 
echo 4) Deleting User Local Setting Temp Folder >>"C:\Users\Public\Desktop\Log.txt" 
del /s /f /q "%USERPROFILE%\Local Settings\Temp"\*.* >>"C:\Users\Public\Desktop\Log.txt" 
rd /s /q "%USERPROFILE%\Local Settings\Temp" >>"C:\Users\Public\Desktop\Log.txt" 
md "%USERPROFILE%\Local Settings\Temp" >>"C:\Users\Public\Desktop\Log.txt" 
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading Please Wait...
echo ----------------------------------
echo Progress: ==== 15%%
echo =========================================================================================== >>"C:\Users\Public\Desktop\Log.txt" 
echo 5) Current Recent Folder from Windows 10/11 only files >>"C:\Users\Public\Desktop\Log.txt" 
Tree "%APPDATA%\Microsoft\Windows\Recent" /F /A >>"C:\Users\Public\Desktop\Log.txt" 
echo =========================================================================================== >>"C:\Users\Public\Desktop\Log.txt" 
echo 5) Deleting Recent Folder from Windows 10/11 only >>"C:\Users\Public\Desktop\Log.txt" 
del /s /f /q "%APPDATA%\Microsoft\Windows\Recent"\*.* >>"C:\Users\Public\Desktop\Log.txt" 
rd /s /q "%APPDATA%\Microsoft\Windows\Recent" >>"C:\Users\Public\Desktop\Log.txt" 
md "%APPDATA%\Microsoft\Windows\Recent" >>"C:\Users\Public\Desktop\Log.txt" 
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading Please Wait...
echo ----------------------------------
echo Progress: ===== 20%%
echo =========================================================================================== >>"C:\Users\Public\Desktop\Log.txt" 
echo 6) Current Recent Explor Folder from Windows 10/11 only files >>"C:\Users\Public\Desktop\Log.txt" 
Tree "%APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations" /F /A >>"C:\Users\Public\Desktop\Log.txt" 
echo =========================================================================================== >>"C:\Users\Public\Desktop\Log.txt" 
echo 6) Deleting Recent Explor Folder from Windows 10/11 only >>"C:\Users\Public\Desktop\Log.txt" 
del /s /f /q "%APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations"\*.* >>"C:\Users\Public\Desktop\Log.txt" 
rd /s /q "%APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations" >>"C:\Users\Public\Desktop\Log.txt" 
md "%APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations" >>"C:\Users\Public\Desktop\Log.txt" 
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading Please Wait...
echo ----------------------------------
echo Progress: ====== 25%%
echo =========================================================================================== >>"C:\Users\Public\Desktop\Log.txt" 
echo 7) Current Recent Custom Explor Folder from Windows 10/11 only files >>"C:\Users\Public\Desktop\Log.txt" 
Tree "%APPDATA%\Microsoft\Windows\Recent\CustomDestinations" /F /A >>"C:\Users\Public\Desktop\Log.txt" 
echo =========================================================================================== >>"C:\Users\Public\Desktop\Log.txt" 
echo 7) Deleting Recent Custom Explor Folder from Windows 10/11 only >>"C:\Users\Public\Desktop\Log.txt" 
del /s /f /q "%APPDATA%\Microsoft\Windows\Recent\CustomDestinations"\*.* >>"C:\Users\Public\Desktop\Log.txt" 
rd /s /q "%APPDATA%\Microsoft\Windows\Recent\CustomDestinations" >>"C:\Users\Public\Desktop\Log.txt" 
md "%APPDATA%\Microsoft\Windows\Recent\CustomDestinations" >>"C:\Users\Public\Desktop\Log.txt" 
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading Please Wait...
echo ----------------------------------
echo Progress: ======= 30%%
echo =========================================================================================== >>"C:\Users\Public\Desktop\Log.txt" 
echo 8) Current Run Command History from Registry files >>"C:\Users\Public\Desktop\Log.txt" 
REG Query HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU >>"C:\Users\Public\Desktop\Log.txt" 
echo =========================================================================================== >>"C:\Users\Public\Desktop\Log.txt" 
echo 8) Deleting Run Command History from Registry >>"C:\Users\Public\Desktop\Log.txt" 
REG Query HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU >>"C:\Users\Public\Desktop\Log.txt" 
REG Delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /VA /F >>"C:\Users\Public\Desktop\Log.txt" 
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading Please Wait...
echo ----------------------------------
echo Progress: ======== 35%%
echo =========================================================================================== >>"C:\Users\Public\Desktop\Log.txt" 
echo 9) Current Run Command History from Registry files >>"C:\Users\Public\Desktop\Log.txt" 
REG Query HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths >>"C:\Users\Public\Desktop\Log.txt" 
echo =========================================================================================== >>"C:\Users\Public\Desktop\Log.txt" 
echo 9) Deleting Path History from File Explorer Registry >>"C:\Users\Public\Desktop\Log.txt" 
REG Delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths /VA /F >>"C:\Users\Public\Desktop\Log.txt" 
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading Please Wait...
echo ----------------------------------
echo Progress: ========= 40%%
echo =========================================================================================== >>"C:\Users\Public\Desktop\Log.txt" 
echo 10) Current Windows Prefetch Folder files >>"C:\Users\Public\Desktop\Log.txt" 
Tree %windir%\Prefetch /F /A >>"C:\Users\Public\Desktop\Log.txt" 
echo =========================================================================================== >>"C:\Users\Public\Desktop\Log.txt" 
echo 10) Deleting Windows Prefetch Folder >>"C:\Users\Public\Desktop\Log.txt" 
del C:\Windows\Prefetch\*.* /Q >>"C:\Users\Public\Desktop\Log.txt" 
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading Please Wait...
echo ----------------------------------
echo Progress: ========== 45%%
echo =========================================================================================== >>"C:\Users\Public\Desktop\Log.txt" 
echo 11) Current Windows .bak files >>"C:\Users\Public\Desktop\Log.txt" 
Tree %windir%\Prefetch /F /A >>"C:\Users\Public\Desktop\Log.txt" 
echo =========================================================================================== >>"C:\Users\Public\Desktop\Log.txt" 
echo 11) Deleting Windows .bak files >>"C:\Users\Public\Desktop\Log.txt" 
del /s /q /f c:\*.bak >>"C:\Users\Public\Desktop\Log.txt" 
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading Please Wait Almost Done...
echo ----------------------------------
echo Progress: =========== 50%%
echo =========================================================================================== >>"C:\Users\Public\Desktop\Log.txt" 
echo 12) Current Windows Update Download files >>"C:\Users\Public\Desktop\Log.txt" 
Tree %windir%\softwaredistribution /F /A >>"C:\Users\Public\Desktop\Log.txt" 
echo =========================================================================================== >>"C:\Users\Public\Desktop\Log.txt" 
echo 12) Deleting Current Windows Update Download files >>"C:\Users\Public\Desktop\Log.txt" 
net stop wuauserv >>"C:\Users\Public\Desktop\Log.txt" 
rmdir %windir%\softwaredistribution  /s /q >>"C:\Users\Public\Desktop\Log.txt" 
net start wuauserv >>"C:\Users\Public\Desktop\Log.txt" 
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading Please Wait...
echo ----------------------------------
echo Progress: ============ 55%%
echo =========================================================================================== >>"C:\Users\Public\Desktop\Log.txt" 
echo 13) Current Recyclebin files >>"C:\Users\Public\Desktop\Log.txt" 
Tree c:\$Recycle.bin /F /A >>"C:\Users\Public\Desktop\Log.txt" 
Tree d:\$Recycle.bin /F /A >>"C:\Users\Public\Desktop\Log.txt" 
Tree e:\$Recycle.bin /F /A >>"C:\Users\Public\Desktop\Log.txt" 
echo =========================================================================================== >>"C:\Users\Public\Desktop\Log.txt" 
echo 13) Deleting Recyclebin Files >>"C:\Users\Public\Desktop\Log.txt" 
del c:\$Recycle.bin\*.* /f /s /q >>"C:\Users\Public\Desktop\Log.txt" 
del d:\$Recycle.bin\*.* /f /s /q >>"C:\Users\Public\Desktop\Log.txt" 
del e:\$Recycle.bin\*.* /f /s /q >>"C:\Users\Public\Desktop\Log.txt" 
call powershell.exe Clear-RecycleBin -force -ErrorAction:Ignore >>"C:\Users\Public\Desktop\Log.txt" 
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading Please Wait Almost Done...
echo ----------------------------------
echo Progress: ============== 60%%
echo =========================================================================================== >>"C:\Users\Public\Desktop\Log.txt" 
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading Please Wait Almost Done...
echo ----------------------------------
echo Progress: =============== 65%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading...
echo ----------------------------------
echo Progress: ================ 70%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading...
echo ----------------------------------
echo Progress: ================== 80%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading...
echo ----------------------------------
echo Progress: =================== 85%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading...
echo ----------------------------------
echo Progress: ==================== 90%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading...
echo ----------------------------------
echo Progress: ===================== 95%%
echo ----------------------------------
ping -n 1 localhost >nul
cls
echo.
echo.
echo Loading...
echo ----------------------------------
echo Progress: ====================== 100%%
echo ----------------------------------
GOTO END
:END
cls
echo.
echo.
echo Clear Files Successfully complete...
echo ----------------------------------
echo Progress: ====================== 100%%
echo.
echo.
Color 1A

echo ===========================================================================================
echo Last Clear Time: %DATE% %TIME%
echo ===========================================================================================
for /F %%a in ('echo prompt $E ^| cmd') do set "ESC=%%a"
echo ===========================================================================================%ESC%[1;31m
echo Deleting Temp, Prefetch, Recent, Windows Update Files, Empty Recyclebin, Explor Folder, Run Command, .bak%ESC%[1;32m
echo ===========================================================================================
echo Please Check this Deleting History Log file Where you Run this Command from a Folder
echo ===========================================================================================%ESC%[1;31m
echo Contact me as ommanb4u@gmail.com If you need any help..Thanks


echo Do Not Delete This Folder Or It Contents.
echo ====================================================================================================================
echo %windir%\installer

Pause
