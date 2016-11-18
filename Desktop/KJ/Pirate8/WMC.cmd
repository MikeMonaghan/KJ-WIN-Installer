@echo off
pushd %~dp0
mode con cols=28 lines=3

net stop sppsvc >nul

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

:Check1
%RQB% | findstr /I "9200" && %INL% GOTO:VER
exit

:VER
%RQR% | findstr /I "ProfessionalWMC" >nul  && %INL% GOTO:ProfessionalWMC
exit

:ProfessionalWMC
cls
echo.
echo.  Working, Please wait ...
xcopy /cheriky %SysPath%\spp\store %SysPath%\spp\store_bak >nul
if exist %SysPath%\spp\store takeown /f %SysPath%\spp\store /r /d y >nul && icacls %SysPath%\spp\store /t /grant *S-1-5-32-544:F >nul
if exist %SysPath%\sppsvc.exe xcopy tokens\ProfessionalWMC\store %SysPath%\spp\store /cheriky >nul
cscript //nologo %SysPath%\slmgr.vbs -ipk GGKFW-TBH8R-H8R6B-NDT88-K2BRQ >nul
cls
echo.
echo.     Done, Successfully.
ping 127.0.0.1 -n 3 >nul
start /i %SysPath%\slui.exe 3
exit


















