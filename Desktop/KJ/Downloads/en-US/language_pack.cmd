@echo off
mode con cols=28 lines=3
pushd %~dp0

cls
echo.
echo.  Working, Please wait ...
ping 127.0.0.1 -n 2 >nul
call mu_windows_8_language_pack_x64_dvd_917544.iso.torrent
call mu_windows_8_language_pack_x86_dvd_917546.iso.torrent
GOTO:END

:END
cls
echo.
echo.   Done, Successfully.
ping 127.0.0.1 -n 2 >nul
exit



