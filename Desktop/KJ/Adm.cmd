@echo off
mode con cols=28 lines=3
pushd %~dp0

start /i UI\UI\UI.exe

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
if /i "%par%" == "1" goto _Active
if /i "%par%" == "2" goto _Remove
if /i "%par%" == "3" goto _CMD
if /i "%par%" == "4" goto _CMDR
if /i "%par%" == "5" goto _IE
if /i "%par%" == "6" goto _IER
if /i "%par%" == "7" goto _CMDFILE
if /i "%par%" == "8" goto _CMDFILER
if /i "%par%" == "x" goto _end
if /i "%par%" == "X" goto _end
goto _main

:_Active
cls
echo.
echo.  Working, Please wait ...
ping -n 2 localhost >nul
cls
echo.
echo.   Windows Logoff 03sec
ping -n 2 localhost >nul
cls
echo.
echo.   Windows Logoff 02sec
ping -n 2 localhost >nul
cls
echo.
echo.   Windows Logoff 01sec
ping -n 2 localhost >nul
cls
echo.
echo.   Windows Logoff 00sec
ping -n 2 localhost >nul
cls
echo.
echo.     System Logoff
ping -n 2 localhost >nul
cls
echo.
net user Administrator /active:yes
ping -n 2 localhost >nul
shutdown /l
exit

:_Remove
cls
echo.
echo.  Working, Please wait ...
ping -n 2 localhost >nul
cls
echo.
echo.   Windows Logoff 03sec
ping -n 2 localhost >nul
cls
echo.
echo.   Windows Logoff 02sec
ping -n 2 localhost >nul
cls
echo.
echo.   Windows Logoff 01sec
ping -n 2 localhost >nul
cls
echo.
echo.   Windows Logoff 00sec
ping -n 2 localhost >nul
cls
echo.
echo.     System Logoff
ping -n 2 localhost >nul
cls
echo.
net user Administrator /active:no 
ping -n 2 localhost >nul
shutdown /l
exit

:_CMD
cls
echo.
echo.  Working, Please wait ...
ping -n 2 localhost >nul
%RC% ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /f >nul
%RC% ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%HOMEDRIVE%\Windows\System32\cmd.exe" /d "~ RUNASADMIN" /f >nul
%RC% ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /f >nul
%RC% ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%HOMEDRIVE%\Windows\System32\cmd.exe" /d "~ RUNASADMIN" /f >nul
IF NOT EXIST %Windir%\SysWOW64\cmd.exe GOTO:END
%RC% ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%HOMEDRIVE%\Windows\SysWOW64\cmd.exe" /d "~ RUNASADMIN" /f >nul
%RC% ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%HOMEDRIVE%\Windows\SysWOW64\cmd.exe" /d "~ RUNASADMIN" /f >nul
GOTO:END

:_CMDR
cls
echo.
echo.  Working, Please wait ...
ping -n 2 localhost >nul
%RC% DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%HOMEDRIVE%\Windows\System32\cmd.exe" /f >nul
%RC% DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%HOMEDRIVE%\Windows\System32\cmd.exe" /f >nul
IF NOT EXIST %Windir%\SysWOW64\cmd.exe GOTO:END
%RC% DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%HOMEDRIVE%\Windows\SysWOW64\cmd.exe" /f >nul
%RC% DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%HOMEDRIVE%\Windows\SysWOW64\cmd.exe" /f >nul
GOTO:END

:_IE
taskkill /f /im iexplore.exe >nul
cls
echo.
echo.  Working, Please wait ...
ping -n 2 localhost >nul
xcopy iexplore_adm "%HOMEDRIVE%\Windows\iexplore_adm" /cheriky >nul
%RC% ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /f >nul
%RC% ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%HOMEDRIVE%\Windows\iexplore_adm\iexplore_adm.exe" /d "~ RUNASADMIN" /f >nul
cls
echo.
echo.  Checking, LocaleName ...
FOR %%i IN (ConsentPromptBehaviorAdmin PromptOnSecureDesktop) DO %RC% ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "%%i" /t REG_DWORD /d 0 /f >nul
%RQL% | findstr /I "KOR" && %INL% GOTO:KOR
GOTO:ENU

:KOR
cls
%RC% ADD HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu /v "{871C5380-42A0-1069-A2EA-08002B30301D}" /t REG_DWORD /d 0 /f >nul
%RC% ADD HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel /v "{871C5380-42A0-1069-A2EA-08002B30301D}" /t REG_DWORD /d 0 /f >nul
%RC% COPY HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D} HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30301D} /s /f >nul
%RC% ADD HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30301D} /ve /d "Internet Explorer" /f >nul
%RC% ADD HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30301D}\shell\Properties /ve /d "관리자 권한으로 실행(&A)" /f >nul
%RC% ADD HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30301D}\shell\Properties\command /ve /d "%HOMEDRIVE%\Windows\iexplore_adm\iexplore_adm.exe" /f >nul
%RC% ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{871C5380-42A0-1069-A2EA-08002B30301D} /f >nul
%RC% ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\DesktopBackground\Shell\admie" /f
%RC% ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\DesktopBackground\Shell\admie" /v "" /d "관리자 권한 IE" /f
%RC% ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\DesktopBackground\Shell\admie" /v "Icon" /d "%HOMEDRIVE%\Program Files\Internet Explorer\iexplore.exe" /f
%RC% ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\DesktopBackground\Shell\admie" /v "HasLUAShield" /d "" /f
%RC% ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\DesktopBackground\Shell\admie" /v "NoWorkingDirectory" /d "" /f
%RC% ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\DesktopBackground\Shell\admie\command" /ve /d "%HOMEDRIVE%\Windows\iexplore_adm\iexplore_adm.exe" /f >nul
GOTO:END

:ENU
cls
%RC% ADD HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu /v "{871C5380-42A0-1069-A2EA-08002B30301D}" /t REG_DWORD /d 0 /f >nul
%RC% ADD HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel /v "{871C5380-42A0-1069-A2EA-08002B30301D}" /t REG_DWORD /d 0 /f >nul
%RC% COPY HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D} HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30301D} /s /f >nul
%RC% ADD HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30301D} /ve /d "Internet Explorer" /f >nul
%RC% ADD HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30301D}\shell\Properties /ve /d "Run as administrator(&A)" /f >nul
%RC% ADD HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30301D}\shell\Properties\command /ve /d "%HOMEDRIVE%\Windows\iexplore_adm\iexplore_adm.exe" /f >nul
%RC% ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{871C5380-42A0-1069-A2EA-08002B30301D} /f >nul
%RC% ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\DesktopBackground\Shell\admie" /f
%RC% ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\DesktopBackground\Shell\admie" /v "" /d "Adm iexplore" /f
%RC% ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\DesktopBackground\Shell\admie" /v "Icon" /d "%HOMEDRIVE%\Program Files\Internet Explorer\iexplore.exe" /f
%RC% ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\DesktopBackground\Shell\admie" /v "HasLUAShield" /d "" /f
%RC% ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\DesktopBackground\Shell\admie" /v "NoWorkingDirectory" /d "" /f
%RC% ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\DesktopBackground\Shell\admie\command" /ve /d "%HOMEDRIVE%\Windows\iexplore_adm\iexplore_adm.exe" /f >nul
GOTO:END

:_IER
taskkill /f /im iexplore.exe >nul
cls
echo.
echo.  Working, Please wait ...
ping -n 2 localhost >nul
rd /s /q "%HOMEDRIVE%\Windows\iexplore_adm" >nul
%RC% DELETE "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%HOMEDRIVE%\iexplore_adm\iexplore_adm.exe" /f >nul
%RC% ADD HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu /v "{871C5380-42A0-1069-A2EA-08002B30301D}" /t REG_DWORD /d 0 /f >nul
%RC% ADD HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel /v "{871C5380-42A0-1069-A2EA-08002B30301D}" /t REG_DWORD /d 0 /f >nul
%RC% DELETE HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30301D} /f >nul
%RC% DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{871C5380-42A0-1069-A2EA-08002B30301D} /f >nul
%RC% DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Classes\DesktopBackground\Shell\admie /f >nul
GOTO:END

:_CMDFILE
cls
echo.
echo.  Working, Please wait ...
ping -n 2 localhost >nul
%RC% ADD "HKLM\SOFTWARE\Classes\cmdfile\shell" /ve /d "runas" /f >nul
GOTO:END

:_CMDFILER
cls
echo.
echo.  Working, Please wait ...
ping -n 2 localhost >nul
%RC% ADD "HKLM\SOFTWARE\Classes\cmdfile\shell" /ve /d "" /f >nul
GOTO:END

:END
cls
echo.
echo.   Done, Successfully.
ping 127.0.0.1 -n 2 >nul
call F5.vbs
taskkill /f /im UI.exe >nul
exit

