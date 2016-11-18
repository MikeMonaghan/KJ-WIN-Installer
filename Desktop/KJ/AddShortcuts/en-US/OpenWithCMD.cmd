@echo off
mode con cols=28 lines=3
pushd %~dp0

SET ScriptPath=%~dp0
IF EXIST %Windir%\Sysnative\sppsvc.exe set SysPath=%Windir%\Sysnative
IF EXIST %Windir%\System32\sppsvc.exe  set SysPath=%Windir%\System32
SET RC=%SysPath%\reg.exe
SET RQR=%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "EditionID" 
SET RQL=%RC% QUERY "HKEY_CURRENT_USER\Control Panel\International" /v "sLanguage"
SET RQN=%RC% QUERY "HKEY_CURRENT_USER\Control Panel\International" /v "LocaleName"
SET RQB=%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "BuildLab"
SET INL=IF NOT ERRORLEVEL 1
SET INH=IF ERRORLEVEL 1

set par=%~1
set par=%par:/=%
if /i "%par%" == "1" goto:OpenWithCMD
if /i "%par%" == "2" goto:OpenWithCMD-Undo
goto _main

:OpenWithCMD
cls
echo.
echo.  Working, Please wait ...
ping -n 2 localhost >nul
call %SysPath%\regedt32.exe /s OpenWithCMD.reg 
GOTO:END

:OpenWithCMD-Undo
cls
echo.
echo.  Working, Please wait ...
ping -n 2 localhost >nul
call %SysPath%\regedt32.exe /s OpenWithCMD-Undo.reg 
GOTO:END

:END
cls
echo.
echo.   Done, Successfully.
ping 127.0.0.1 -n 2 >nul
exit

