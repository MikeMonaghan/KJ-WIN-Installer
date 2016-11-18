@echo off
mode con cols=28 lines=3
pushd %~dp0
if not exist %Windir%\Cleaner goto:end

echo.
echo.  Working, Please wait ...
ping 127.0.0.1 -n 2 >nul
mode con cols=28 lines=10
echo.
echo.   ShowHidden file ...
1>nul 2>nul attrib %Windir%\Cleaner /d -h -s -r && echo       status: OK
IF ERRORLEVEL 1 echo       status: Error
ping 127.0.0.1 -n 2 >nul
echo.
echo.   Deleting file ...
1>nul 2>nul rd /s /q %Windir%\Cleaner && echo       status: OK
IF ERRORLEVEL 1 echo       status: Error
ping 127.0.0.1 -n 2 >nul
echo.
echo.   Uninstalling Task ...
1>nul 2>nul schtasks /delete /tn "\Microsoft\Windows\Windows Activation Technologies\Cleaner" /f && echo       status: OK
IF ERRORLEVEL 1 echo       status: Error
ping 127.0.0.1 -n 2 >nul
cls
mode con cols=28 lines=3
echo.
echo.     Done, Successfully.
ping 127.0.0.1 -n 2 >nul
goto:end

:end
exit

















