@echo off
mode con cols=28 lines=3
pushd %~dp0

cls
echo.
echo.  Working, Please wait ...
ping 127.0.0.1 -n 2 >nul
if exist "%Userprofile%\¹ÙÅÁ È­¸é" copy /y "KJ_Starter\KJ_Starter.lnk" "%Userprofile%\¹ÙÅÁ È­¸é\KJ_Starter.lnk" >nul
if not exist "%Systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\KJ_Starter.lnk" copy /y "KJ_Starter\KJ_Starter.lnk" "%Systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\KJ_Starter.lnk" >nul
if not exist "%Userprofile%\Desktop\KJ_Starter.lnk" copy /y "KJ_Starter\KJ_Starter.lnk" "%Userprofile%\Desktop\KJ_Starter.lnk" >nul
if not exist "%Windir%\KJ.exe" copy /y "KJ_Starter\KJ_Starter.exe" "%Windir%\KJ.exe" >nul
cls
echo.
echo.     Done, Successfully.
ping 127.0.0.1 -n 2 >nul

