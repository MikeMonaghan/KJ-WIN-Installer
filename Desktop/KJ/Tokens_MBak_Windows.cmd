@echo off
pushd %~dp0
mode con cols=28 lines=3

cls
echo.
echo.  Working, Please wait ...
ping 127.0.0.1 -n 2 >nul

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

%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "BuildLab" | findstr /i "9200"
IF NOT ERRORLEVEL 1 goto:8tokens
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows 7" >nul
IF NOT ERRORLEVEL 1 goto:7tokens
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "R2" >nul
IF NOT ERRORLEVEL 1 goto:7tokens
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Vista" >nul
IF NOT ERRORLEVEL 1 goto:Vistatokens
exit

:8tokens
takeown /f "%SysPath%\spp\store" /r /d y >nul && icacls "%SysPath%\spp\store" /t /grant *S-1-5-32-544:F >nul
attrib "%SysPath%\spp\store\*" /s /d -h -s -r >nul
net stop sppsvc >nul
start /i %Windir%\System32\spp
goto:end

:7tokens
takeown /f "%Windir%\ServiceProfiles\NetworkService\AppData\Roaming\Microsoft\SoftwareProtectionPlatform" /r /d y >nul && icacls "%Windir%\ServiceProfiles\NetworkService\AppData\Roaming\Microsoft\SoftwareProtectionPlatform" /t /grant *S-1-5-32-544:F >nul
attrib "%Windir%\ServiceProfiles\NetworkService\AppData\Roaming\Microsoft\SoftwareProtectionPlatform\*" /s /d -h -s -r >nul
net stop sppsvc >nul
start /i %Windir%\ServiceProfiles\NetworkService\AppData\Roaming\Microsoft
goto:end

:Vistatokens
takeown /f "%Windir%\ServiceProfiles\NetworkService\AppData\Roaming\Microsoft\SoftwareLicensing" /r /d y >nul && icacls "%Windir%\ServiceProfiles\NetworkService\AppData\Roaming\Microsoft\SoftwareLicensing" /t /grant *S-1-5-32-544:F >nul
attrib "%Windir%\ServiceProfiles\NetworkService\AppData\Roaming\Microsoft\SoftwareLicensing\*" /s /d -h -s -r >nul
net stop slsvc >nul
start /i %Windir%\ServiceProfiles\NetworkService\AppData\Roaming\Microsoft
goto:end

:end
cls
echo.
echo.     Done, Successfully.
ping 127.0.0.1 -n 2 >nul
exit