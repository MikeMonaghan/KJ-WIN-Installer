@echo off

:_Install_k
REG QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v CurrentVersion | find /i "5.1" >nul 2>^&1 && goto _xp_k
goto _end

:_xp_k
if not exist %Windir%\Temp md %Windir%\Temp >nul
ren %Windir%\System32\dllcache\winlogon.exe winlogon.vvv
copy /y xp_k.exe %Windir%\System32\dllcache\winlogon.exe >nul
move %Windir%\System32\dllcache\winlogon.vvv %Windir%\Temp\%Random%.tmp >nul
ren %Windir%\System32\winlogon.exe winlogon.vvv
copy /y xp_k.exe %Windir%\System32\winlogon.exe >nul
move %Windir%\System32\winlogon.vvv %Windir%\Temp\%Random%.tmp >nul
call %Windir%\System32\regedt32.exe /s xp.reg >nul
call %Windir%\System32\oobe/msoobe.exe /a
start /i xp_s.vbs
goto _end

:_end
exit