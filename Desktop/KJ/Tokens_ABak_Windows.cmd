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

:EditionSet
%RQR% | findstr /I "Ultimate" >nul         && %INL% SET Edition=Ultimate&& GOTO:Build
%RQR% | findstr /I "Enterprise" >nul       && %INL% SET Edition=Enterprise&& GOTO:Build
%RQR% | findstr /I "ProfessionalWMC" >nul  && %INL% SET Edition=ProfessionalWMC&& GOTO:Build
%RQR% | findstr /I "Professional" >nul     && %INL% SET Edition=Professional&& GOTO:Build
%RQR% | findstr /I "Core" >nul             && %INL% SET Edition=Core&& GOTO:Build
%RQR% | findstr /I "Starter" >nul          && %INL% SET Edition=Starter&& GOTO:Build
%RQR% | findstr /I "Embedded" >nul         && %INL% SET Edition=Embedded&& GOTO:Build
%RQR% | findstr /I "ServerDatacenter" >nul && %INL% SET Edition=ServerDatacenter&& GOTO:Build
%RQR% | findstr /I "ServerStandard" >nul   && %INL% SET Edition=ServerStandard&& GOTO:Build
SET Edition=Windows

:Build
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
%RQR% | findstr /I "ServerDatacenter" >nul && %INL% GOTO:Stokens
%RQR% | findstr /I "ServerStandard" >nul   && %INL% GOTO:Stokens
cls
echo.
echo.  Working, Please wait ...
takeown /f "%SysPath%\spp\store" /r /d y >nul && icacls "%SysPath%\spp\store" /t /grant *S-1-5-32-544:F >nul
xcopy /cheriky "%SysPath%\spp\store" "%userprofile%\desktop\Tokens_Bak\Windows\Windows 8\%Edition%\store" >nul
goto:end

:Stokens
takeown /f "%SysPath%\spp\store" /r /d y >nul && icacls "%SysPath%\spp\store" /t /grant *S-1-5-32-544:F >nul
xcopy /cheriky "%SysPath%\spp\store" "%userprofile%\desktop\Tokens_Bak\Windows\Server 2012\%Edition%\store" >nul
goto:end

:7tokens
takeown /f "%Windir%\ServiceProfiles\NetworkService\AppData\Roaming\Microsoft\SoftwareProtectionPlatform" /r /d y >nul && icacls "%Windir%\ServiceProfiles\NetworkService\AppData\Roaming\Microsoft\SoftwareProtectionPlatform" /t /grant *S-1-5-32-544:F >nul
xcopy /cheriky "%Windir%\ServiceProfiles\NetworkService\AppData\Roaming\Microsoft\SoftwareProtectionPlatform" "%userprofile%\desktop\Tokens_Bak\Windows\%Edition%\SoftwareProtectionPlatform" >nul
goto:end

:Vistatokens
takeown /f "%Windir%\ServiceProfiles\NetworkService\AppData\Roaming\Microsoft\SoftwareLicensing" /r /d y >nul && icacls "%Windir%\ServiceProfiles\NetworkService\AppData\Roaming\Microsoft\SoftwareLicensing" /t /grant *S-1-5-32-544:F >nul
xcopy /cheriky "%Windir%\ServiceProfiles\NetworkService\AppData\Roaming\Microsoft\SoftwareLicensing" "%userprofile%\desktop\Tokens_Bak\Windows\%Edition%\SoftwareLicensing" >nul
goto:end

:end
cls
echo.
echo.     Done, Successfully.
ping 127.0.0.1 -n 2 >nul
attrib "%userprofile%\desktop\Tokens_Bak\*" /s /d -h -s -r >nul
start /i %userprofile%\desktop\Tokens_Bak\Windows
exit