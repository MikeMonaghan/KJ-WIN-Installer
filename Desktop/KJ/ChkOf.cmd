@echo off
pushd %~dp0
cls
title K.J-Office Activator
echo Copyright (C) Microsoft Corporation. All rights reserved.
echo =========================================================
echo.
SET RC=%Windir%\System32\reg.exe
IF EXIST %Windir%\Sysnative\reg.exe SET RC=%Windir%\Sysnative\reg.exe

:CheckingOffice
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Office\15.0" >nul 2>^&1 && GOTO:Office15
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Office\14.0" >nul 2>^&1 && GOTO:Office14
exit

:Office15
cscript //nologo Office15\OSPP.VBS /dstatus
goto:anykey

:Office14
cscript //nologo Office14\OSPP.VBS /dstatus
goto:anykey

:anykey
if exist check del check
echo. & echo Press any key to exit...
pause >nul
exit

