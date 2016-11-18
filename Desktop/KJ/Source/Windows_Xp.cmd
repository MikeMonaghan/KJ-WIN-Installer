@echo off

echo Windows XP Activation Installing
echo Please wait...
echo.

SET RC=%Windir%\System32\reg.exe
IF EXIST %Windir%\Sysnative\reg.exe SET RC=%Windir%\Sysnative\reg.exe
SET RQR=%RC% QUERY "HKEY_CURRENT_USER\Control Panel\International" /v "sLanguage"  
SET INL=IF NOT ERRORLEVEL 1 
%RQR% | findstr /I "KOR" && %INL% GOTO:KOR
GOTO:ENG

:KOR
if exist %Windir%\System32\slmgr.vbs GOTO:END
if exist %Windir%\System32\dllcache\winlogon.exe del %Windir%\System32\dllcache\winlogon.exe >nul
copy xp_k.exe %Windir%\System32\dllcache\winlogon.exe >nul
ren %Windir%\System32\winlogon.exe winlogon.vvv
ping localhost -n 2 >nul 
copy xp_k.exe %Windir%\System32\winlogon.exe>nul
move %Windir%\System32\winlogon.vvv "%Windir%\Temp\%Random%.tmp">nul
call %Windir%\System32\regedt32.exe /s xp.reg
call %Windir%\System32\oobe/msoobe /a
cls
GOTO:END

:ENG
if exist %Windir%\System32\slmgr.vbs GOTO:END
if exist %Windir%\System32\dllcache\winlogon.exe del %Windir%\System32\dllcache\winlogon.exe >nul
copy xp_e.exe %Windir%\System32\dllcache\winlogon.exe >nul
ren %Windir%\System32\winlogon.exe winlogon.vvv
ping localhost -n 2 >nul
copy xp_e.exe %Windir%\System32\winlogon.exe>nul
move %Windir%\System32\winlogon.vvv "%Windir%\Temp\%Random%.tmp">nul
call %Windir%\System32\regedt32.exe /s xp.reg
call %Windir%\System32\oobe/msoobe /a
cls
GOTO:END

:END
EXIT /B