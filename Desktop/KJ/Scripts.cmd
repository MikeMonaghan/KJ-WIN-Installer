@echo off
Set SC=%Windir%\system32\sc.exe
set par=%~1
set par=%par:/=%
set RC=%Windir%\System32\reg.exe
if exist %Windir%\Sysnative\reg.exe SET RC=%Windir%\Sysnative\reg.exe
if exist "%SystemDrive%\Program Files\Microsoft Office" Set ProPath=%SystemDrive%\Program Files
if exist "%SystemDrive%\Program Files (x86)\Microsoft Office" Set ProPath=%SystemDrive%\Program Files (x86)

cls

title K.J-KMS Activator
echo Microsoft (R) Windows Software Licensing.
echo Copyright (C) Microsoft Corporation. All rights reserved.
echo =========================================================
echo.

if /i "%par%" == "service" goto:ser
if /i "%par%" == "serviceB" goto:serBR
if /i "%par%" == "actOf" call:queryOf & call:queryOfv & call:chckms & call:actOf & goto:anykey
if /i "%par%" == "actOfB" call:queryOf & call:queryOfv & call:insB & call:chckms & call:actOf & goto:anykey
if /i "%par%" == "actWin" call:queryv & call:queryw & call:querywv & call:chckms & call:actWin & goto:anykey
if /i "%par%" == "actWinB" call:queryv & call:queryw & call:querywv & call:insB & call:chckms & call:actWin & goto:anykey
if /i "%par%" == "chkOf" call:queryOf & call:chkOf & goto:anykey
if /i "%par%" == "chkWin" call:queryw & call:chkWin & goto:anykey
if /i "%par%" == "KeyMngOf" call:queryOf & call:KeyMngOf & goto:anykey
if /i "%par%" == "KeyMngW" call:queryw & call:querywv & call:KeyMngW & goto:anykey
if /i "%par%" == "KeyMngM" call:queryw & call:querywv & call:KeyMngM & goto:anykey
if /i "%par%" == "RearmOf" call:queryOf & call:rearmOf & goto:anykey
if /i "%par%" == "RearmW" call:queryw & call:RearmW & goto:anykey

:queryv
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "BuildLab" | findstr /i "9200"
IF NOT ERRORLEVEL 1 goto:9200
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows 7 Professional N" >nul
IF NOT ERRORLEVEL 1 exit /b
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows 7 Professional" >nul
IF NOT ERRORLEVEL 1 exit /b
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows 7 Enterprise N" >nul
IF NOT ERRORLEVEL 1 exit /b
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows 7 Enterprise E" >nul
IF NOT ERRORLEVEL 1 exit /b
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows 7 Enterprise" >nul
IF NOT ERRORLEVEL 1 exit /b
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Embedded Standard" >nul
IF NOT ERRORLEVEL 1 echo Installed OS successfully determined. && echo. && GOTO:EMBEDDED
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "HPC Edition" >nul
IF NOT ERRORLEVEL 1 exit /b
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Server 2008 R2 Datacenter" >nul
IF NOT ERRORLEVEL 1 exit /b
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Server 2008 R2 Enterprise" >nul
IF NOT ERRORLEVEL 1 exit /b
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Server 2008 R2 Itanium" >nul
IF NOT ERRORLEVEL 1 exit /b
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Server 2008 R2 Standard" >nul
IF NOT ERRORLEVEL 1 exit /b
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Web Server 2008 R2" >nul
IF NOT ERRORLEVEL 1 exit /b
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Vista (TM) Business N" >nul
IF NOT ERRORLEVEL 1 exit /b
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Vista (TM) Business" >nul
IF NOT ERRORLEVEL 1 exit /b
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Vista (TM) Enterprise N" >nul
IF NOT ERRORLEVEL 1 exit /b
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Vista (TM) Enterprise" >nul
IF NOT ERRORLEVEL 1 exit /b
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Server (R) 2008 Datacenter" >nul
IF NOT ERRORLEVEL 1 exit /b
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Server (R) 2008 Itanium" >nul
IF NOT ERRORLEVEL 1 exit /b
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Server (R) 2008 Enterprise" >nul
IF NOT ERRORLEVEL 1 exit /b
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Server (R) 2008 Standard" >nul
IF NOT ERRORLEVEL 1 exit /b
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Web Server (R) 2008" >nul
IF NOT ERRORLEVEL 1 exit /b
EXIT

:9200
cd /d Pirate8
echo.
echo. Working, Please wait ...
echo.
ping 127.0.0.1 -n 4 >nul
start /b Install.vbs
EXIT

:EMBEDDED
if exist Source\Windows_Embedded.cmd call Source\Windows_Embedded.cmd
if exist check del /s /q check >nul
if exist %windir%\system32\slmgr.vbs cscript //nologo %windir%\system32\slmgr.vbs -dlv
pause
EXIT

:ser
%RC% QUERY "HKLM\SYSTEM\CurrentControlSet\Services\KMService" >nul 2>^&1 && goto:uninsq 
IF ERRORLEVEL 1 goto:insq
exit /b

:serBR
%RC% QUERY "HKLM\SYSTEM\CurrentControlSet\Services\KMService" >nul 2>^&1 && goto:unins
exit /b

:queryOf
echo Query Office ...
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Office\15.0" >nul 2>^&1 && echo       status: OK && exit /b
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Office\14.0" >nul 2>^&1 && echo       status: OK && exit /b
exit

:queryOfv
echo.
echo Query Office Volume ...
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Office\15.0" >nul 2>^&1 && cscript //nologo Office15\OSPP.VBS /dstatus >check && find /i "VOLUME_KMSCLIENT" >nul check && echo       status: OK && exit /b
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Office\14.0" >nul 2>^&1 && cscript //nologo Office14\OSPP.VBS /dstatus >check && find /i "VOLUME_KMSCLIENT" >nul check && echo       status: OK && exit /b
goto:novlo

:queryw
echo.
echo Query Windows ...
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v CurrentVersion | find /i "6.1" >nul 2>^&1 && echo       status: OK && exit /b
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v CurrentVersion | find /i "6.0" >nul 2>^&1 && echo       status: OK && exit /b
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v CurrentVersion | find /i "5.1" >nul 2>^&1 && echo       status: OK && exit /b 
goto:notfw

:querywv
if not exist %Windir%\System32\slmgr.vbs exit
exit /b

:service
%RC% QUERY "HKLM\SYSTEM\CurrentControlSet\Services\KMService" >nul 2>^&1 && goto:uninsq
IF ERRORLEVEL 1 goto:insq

:srv
PortQry -n 127.0.0.1 -e 1688 | findstr /i /r NOT.LISTENING >nul && goto:ins
exit /b

:insq
choice /C YN /N /M "KMService will be installed on your computer. Continue? [y/n]: "
IF ERRORLEVEL 2 exit
IF ERRORLEVEL 1 goto:ins

:ins
If not exist "%SC%" goto:SCNotFound
echo.
echo ##################################################
echo ##                                              ##
echo ##               Install KMService              ##
echo ##                                              ##
echo ##################################################
echo.
echo Copying files...
1>nul 2>nul copy /y srvany.exe %Windir%\System32\srvany.exe && 1>nul 2>nul copy /y KMService.exe %Windir%\KMService.exe && echo       status: OK
IF ERRORLEVEL 1 echo       status: Error
echo.
echo Installing service...
sc create KMService binpath= %Windir%\system32\srvany.exe >nul && echo       status: OK
IF ERRORLEVEL 1 echo       status: Error
echo.
echo Updating registry settings...
1>nul 2>nul rundll32 advpack,LaunchINFSection service.inf,DefaultInstall,0 && echo       status: OK
IF ERRORLEVEL 1 echo       status: Error
echo.
echo Running service...
net start KMService >nul && echo       status: OK
IF ERRORLEVEL 1 echo       status: Error
goto:anykey

:insB
%RC% QUERY "HKLM\SYSTEM\CurrentControlSet\Services\KMService" >nul 2>^&1 && exit /b
If not exist "%SC%" goto:SCNotFound
echo.
echo ##################################################
echo ##                                              ##
echo ##               Install KMService              ##
echo ##                                              ##
echo ##################################################
echo.
echo Copying files...
1>nul 2>nul copy /y srvany.exe %Windir%\System32\srvany.exe && 1>nul 2>nul copy /y KMService.exe %Windir%\KMService.exe && echo       status: OK
IF ERRORLEVEL 1 echo       status: Error
echo.
echo Installing service...
sc create KMService binpath= %Windir%\system32\srvany.exe >nul && echo       status: OK
IF ERRORLEVEL 1 echo       status: Error
echo.
echo Updating registry settings...
1>nul 2>nul rundll32 advpack,LaunchINFSection service.inf,DefaultInstall,0 && echo       status: OK
IF ERRORLEVEL 1 echo       status: Error
echo.
echo Running service...
net start KMService >nul && echo       status: OK
IF ERRORLEVEL 1 echo       status: Error
exit /b

:uninsq
choice /C YN /N /M "KMService will be removed from your computer. Continue? [y/n]: "
IF ERRORLEVEL 2 exit
IF ERRORLEVEL 1 goto:unins

:unins
If not exist "%SC%" goto:SCNotFound
echo.
echo ##################################################
echo ##                                              ##
echo ##              Uninstall KMService             ##
echo ##                                              ##
echo ##################################################
echo.
echo Shutting down process...
tasklist /fi "imagename eq KMService.exe" 2>nul | find /i /n "KMService.exe" >nul && taskkill /t /f /im KMService.exe 1>nul 2>nul && echo       status: OK
IF ERRORLEVEL 1 echo       status: Error
echo.
echo Service stopping...
sc stop KMService >nul && echo       status: OK
IF ERRORLEVEL 1 echo       status: Error
echo.
echo Uninstalling service...
sc delete KMService 1>nul 2>nul && echo       status: OK
IF ERRORLEVEL 1 echo       status: Error
echo.
echo Deleting files...
1>nul 2>nul del %Windir%\System32\srvany.exe & ping -n 3 localhost >nul && 1>nul 2>nul del %Windir%\KMService.exe && 1>nul 2>nul del %Windir%\KMService.dat && echo       status: OK
IF ERRORLEVEL 1 echo       status: Error
goto:anykey

:runonce
PortQry -n 127.0.0.1 -e 1688 | findstr /i /r NOT.LISTENING >nul && echo. && echo Emulator running... & call KMService.vbs >nul && echo       status: OK & exit /b
exit /b

:rest
If not exist "%SC%" goto:SCNotFound
sc stop KMService >nul && sc start KMService >nul
IF NOT ERRORLEVEL 1 cscript //nologo HS_MESSAGE.vbs "KMService it is successfully restarted." "Activation Tool" I OK 5 & exit
IF ERRORLEVEL 1 cscript //nologo HS_MESSAGE.vbs "KMService it not installing or not running." "Activation Tool" E OK 5 & exit

:chckms
echo.
echo Query kms ...
PortQry -n 127.0.0.1 -e 1688 | findstr /i /r NOT.LISTENING >nul || exit /b
echo       status: OK & call:runonce & exit /b

:actOf
echo.
echo Remove KMS host name (sets port to default).
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Office\15.0" >nul 2>^&1 && cscript //nologo Office15\OSPP.VBS /remhst >nul
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Office\14.0" >nul 2>^&1 && cscript //nologo Office14\OSPP.VBS /remhst >nul
echo       status: OK
echo.
echo Old KMS Server data deleted from the registry.
1>nul 2>nul REG DELETE "HKLM\SOFTWARE\Microsoft\OfficeSoftwareProtectionPlatform\59a52881-a989-479d-af46-f275c6370663" /f
echo       status: OK
echo.
echo Key Management Service machine name set to Localhost successfully.
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Office\15.0" >nul 2>^&1 && cscript //nologo Office15\OSPP.VBS /sethst:127.0.0.1 >nul
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Office\14.0" >nul 2>^&1 && cscript //nologo Office14\OSPP.VBS /sethst:127.0.0.1 >nul
echo       status: OK
echo.
echo Please wait. Executing activation requests...
set i=0
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Office\15.0" >nul 2>^&1 && cscript //nologo Office15\OSPP.VBS /act | find /i "0xC004F074" >nul && goto:errserv
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Office\14.0" >nul 2>^&1 && cscript //nologo Office14\OSPP.VBS /act | find /i "0xC004F074" >nul && goto:errserv

:repeatof1
set /A i=i+1
echo Activation requests (%I%)
if /i %i% == 17 goto:fatalof
if /i %i% == 8 Office15\OSPPREARM.exe >nul & ping -n 2 localhost >nul & goto:secondof1
goto:secondof1

:repeatof2
set /A i=i+1
echo Activation requests (%I%)
if /i %i% == 17 goto:fatalof
if /i %i% == 8 Office14\OSPPREARM.exe >nul & ping -n 2 localhost >nul & goto:secondof2
goto:secondof2

:secondof1
ping -n 2 localhost >nul
cscript //nologo Office15\OSPP.VBS /act >check
find /i "<Product activation successful>" >nul check && goto:fin
If ERRORLEVEL 1 goto:repeatof1

:secondof2
ping -n 2 localhost >nul
cscript //nologo Office14\OSPP.VBS /act >check
find /i "<Product activation successful>" >nul check && goto:fin
If ERRORLEVEL 1 goto:repeatof2

:fatalof
echo.
echo Failed... and no support.
echo.
ping -n 3 localhost >nul
goto:end

:fin
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Office\15.0" >nul 2>^&1 && cscript //nologo Office15\OSPP.VBS /dstatus & goto:end
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Office\14.0" >nul 2>^&1 && cscript //nologo Office14\OSPP.VBS /dstatus & goto:end
exit

:errserv
echo. & echo Error 0xC004F074. There is no running local KMS server found on your computer. & goto:end

:end
if exist check del check
%RC% QUERY "HKLM\SYSTEM\CurrentControlSet\Services\KMService" >nul 2>^&1
IF ERRORLEVEL 1 tasklist /fi "imagename eq KMService.exe" 2>nul | find /i /n "KMService.exe" >nul && taskkill /t /f /im KMService.exe 1>nul 2>nul
exit /b

:chkOf
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Office\15.0" >nul 2>^&1 && cscript //nologo Office15\OSPP.VBS /dstatus & exit /b
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Office\14.0" >nul 2>^&1 && cscript //nologo Office14\OSPP.VBS /dstatus & exit /b


:KeyMngOf
echo.
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Office\15.0" >nul 2>^&1 && call "%ProPath%\Common Files\microsoft shared\OFFICE15\Office Setup Controller\Setup.exe" & exit
set a=0
echo ##################################################
echo ##                                              ##
echo ##          Key Manager Office 2010 VL          ##
echo ##                                              ##
echo ##################################################
echo.

:keysof
set /A a=a+1
echo a)  Professional Plus 2010         k)  Word 2010
echo b)  Standard 2010                  l)  Excel 2010
echo c)  Small Business Basics 2010     m)  PowerPoint 2010
echo d)  Project 2010 Professional      n)  Outlook 2010
echo e)  Project 2010 Standard          o)  Access 2010
echo f)  Visio 2010 Premium             p)  Groove 2010
echo g)  Visio 2010 Professional        q)  InfoPath 2010
echo h)  Visio 2010 Standard            r)  OneNote 2010
echo i)  Office 2010 Mondo              s)  Publisher 2010
echo j)  Office 2010 Mondo 2
echo.
choice /C abcdefghijklmnopqrs /N /M "Select installed Office 2010 edition [a-s]: "
echo.
IF ERRORLEVEL 19 goto:So
IF ERRORLEVEL 18 goto:Ro
IF ERRORLEVEL 17 goto:Qo
IF ERRORLEVEL 16 goto:Po
IF ERRORLEVEL 15 goto:Oo
IF ERRORLEVEL 14 goto:No
IF ERRORLEVEL 13 goto:Mo
IF ERRORLEVEL 12 goto:Lo
IF ERRORLEVEL 11 goto:Ko
IF ERRORLEVEL 10 goto:Jo
IF ERRORLEVEL 9 goto:Io
IF ERRORLEVEL 8 goto:Ho
IF ERRORLEVEL 7 goto:Go
IF ERRORLEVEL 6 goto:Fo
IF ERRORLEVEL 5 goto:Eo
IF ERRORLEVEL 4 goto:Do
IF ERRORLEVEL 3 goto:Co
IF ERRORLEVEL 2 goto:Bo
IF ERRORLEVEL 1 goto:Ao

:Ao
set keyo=VYBBJ-TRJPB-QFQRF-QFT4D-H3GVB
cscript //nologo Office14\OSPP.VBS /unpkey:H3GVB >nul & echo Product key uninstall successful.
cscript //nologo Office14\OSPP.VBS /inpkey:VYBBJ-TRJPB-QFQRF-QFT4D-H3GVB | find /i "0xC004F050" >nul && goto:errkof
echo. & echo Selected key %keyo% successfully installed. & exit /b

:Bo
set keyo=V7QKV-4XVVR-XYV4D-F7DFM-8R6BM
cscript //nologo Office14\OSPP.VBS /unpkey:8R6BM >nul & echo Product key uninstall successful.
cscript //nologo Office14\OSPP.VBS /inpkey:V7QKV-4XVVR-XYV4D-F7DFM-8R6BM | find /i "0xC004F050" >nul && goto:errkof
echo. & echo Selected key %keyo% successfully installed. & exit /b

:Co
set keyo=D6QFG-VBYP2-XQHM7-J97RH-VVRCK
cscript //nologo Office14\OSPP.VBS /unpkey:VVRCK >nul & echo Product key uninstall successful.
cscript //nologo Office14\OSPP.VBS /inpkey:D6QFG-VBYP2-XQHM7-J97RH-VVRCK | find /i "0xC004F050" >nul && goto:errkof
echo. & echo Selected key %keyo% successfully installed. & exit /b

:Do
set keyo=YGX6F-PGV49-PGW3J-9BTGG-VHKC6
cscript //nologo Office14\OSPP.VBS /unpkey:VHKC6 >nul & echo Product key uninstall successful.
cscript //nologo Office14\OSPP.VBS /inpkey:YGX6F-PGV49-PGW3J-9BTGG-VHKC6 | find /i "0xC004F050" >nul && goto:errkof
echo. & echo Selected key %keyo% successfully installed. & exit /b

:Eo
set keyo=4HP3K-88W3F-W2K3D-6677X-F9PGB
cscript //nologo Office14\OSPP.VBS /unpkey:F9PGB >nul & echo Product key uninstall successful.
cscript //nologo Office14\OSPP.VBS /inpkey:4HP3K-88W3F-W2K3D-6677X-F9PGB | find /i "0xC004F050" >nul && goto:errkof
echo. & echo Selected key %keyo% successfully installed. & exit /b

:Fo
set keyo=D9DWC-HPYVV-JGF4P-BTWQB-WX8BJ
cscript //nologo Office14\OSPP.VBS /unpkey:WX8BJ >nul & echo Product key uninstall successful.
cscript //nologo Office14\OSPP.VBS /inpkey:D9DWC-HPYVV-JGF4P-BTWQB-WX8BJ | find /i "0xC004F050" >nul && goto:errkof
echo. & echo Selected key %keyo% successfully installed. & exit /b

:Go
set keyo=7MCW8-VRQVK-G677T-PDJCM-Q8TCP
cscript //nologo Office14\OSPP.VBS /unpkey:Q8TCP >nul & echo Product key uninstall successful.
cscript //nologo Office14\OSPP.VBS /inpkey:7MCW8-VRQVK-G677T-PDJCM-Q8TCP | find /i "0xC004F050" >nul && goto:errkof
echo. & echo Selected key %keyo% successfully installed. & exit /b

:Ho
set keyo=767HD-QGMWX-8QTDB-9G3R2-KHFGJ
cscript //nologo Office14\OSPP.VBS /unpkey:KHFGJ >nul & echo Product key uninstall successful.
cscript //nologo Office14\OSPP.VBS /inpkey:767HD-QGMWX-8QTDB-9G3R2-KHFGJ | find /i "0xC004F050" >nul && goto:errkof
echo. & echo Selected key %keyo% successfully installed. & exit /b

:Io
set keyo=YBJTT-JG6MD-V9Q7P-DBKXJ-38W9R
cscript //nologo Office14\OSPP.VBS /unpkey:38W9R >nul & echo Product key uninstall successful.
cscript //nologo Office14\OSPP.VBS /inpkey:YBJTT-JG6MD-V9Q7P-DBKXJ-38W9R | find /i "0xC004F050" >nul && goto:errkof
echo. & echo Selected key %keyo% successfully installed. & exit /b

:Jo
set keyo=7TC2V-WXF6P-TD7RT-BQRXR-B8K32
cscript //nologo Office14\OSPP.VBS /unpkey:B8K32 >nul & echo Product key uninstall successful.
cscript //nologo Office14\OSPP.VBS /inpkey:7TC2V-WXF6P-TD7RT-BQRXR-B8K32 | find /i "0xC004F050" >nul && goto:errkof
echo. & echo Selected key %keyo% successfully installed. & exit /b
:Ko

set keyo=HVHB3-C6FV7-KQX9W-YQG79-CRY7T
cscript //nologo Office14\OSPP.VBS /unpkey:CRY7T >nul & echo Product key uninstall successful.
cscript //nologo Office14\OSPP.VBS /inpkey:HVHB3-C6FV7-KQX9W-YQG79-CRY7T | find /i "0xC004F050" >nul && goto:errkof
echo. & echo Selected key %keyo% successfully installed. & exit /b

:Lo
set keyo=H62QG-HXVKF-PP4HP-66KMR-CW9BM
cscript //nologo Office14\OSPP.VBS /unpkey:CW9BM >nul & echo Product key uninstall successful.
cscript //nologo Office14\OSPP.VBS /inpkey:H62QG-HXVKF-PP4HP-66KMR-CW9BM | find /i "0xC004F050" >nul && goto:errkof
echo. & echo Selected key %keyo% successfully installed. & exit /b

:Mo
set keyo=RC8FX-88JRY-3PF7C-X8P67-P4VTT
cscript //nologo Office14\OSPP.VBS /unpkey:P4VTT >nul & echo Product key uninstall successful.
cscript //nologo Office14\OSPP.VBS /inpkey:RC8FX-88JRY-3PF7C-X8P67-P4VTT | find /i "0xC004F050" >nul && goto:errkof
echo. & echo Selected key %keyo% successfully installed. & exit /b

:No
set keyo=7YDC2-CWM8M-RRTJC-8MDVC-X3DWQ
cscript //nologo Office14\OSPP.VBS /unpkey:X3DWQ >nul & echo Product key uninstall successful.
cscript //nologo Office14\OSPP.VBS /inpkey:7YDC2-CWM8M-RRTJC-8MDVC-X3DWQ | find /i "0xC004F050" >nul && goto:errkof
echo. & echo Selected key %keyo% successfully installed. & exit /b

:Oo
set keyo=V7Y44-9T38C-R2VJK-666HK-T7DDX
cscript //nologo Office14\OSPP.VBS /unpkey:T7DDX >nul & echo Product key uninstall successful.
cscript //nologo Office14\OSPP.VBS /inpkey:V7Y44-9T38C-R2VJK-666HK-T7DDX | find /i "0xC004F050" >nul && goto:errkof
echo. & echo Selected key %keyo% successfully installed. & exit /b

:Po
set keyo=QYYW6-QP4CB-MBV6G-HYMCJ-4T3J4
cscript //nologo Office14\OSPP.VBS /unpkey:4T3J4 >nul & echo Product key uninstall successful.
cscript //nologo Office14\OSPP.VBS /inpkey:QYYW6-QP4CB-MBV6G-HYMCJ-4T3J4 | find /i "0xC004F050" >nul && goto:errkof
echo. & echo Selected key %keyo% successfully installed. & exit /b

:Qo
set keyo=K96W8-67RPQ-62T9Y-J8FQJ-BT37T
cscript //nologo Office14\OSPP.VBS /unpkey:BT37T >nul & echo Product key uninstall successful.
cscript //nologo Office14\OSPP.VBS /inpkey:K96W8-67RPQ-62T9Y-J8FQJ-BT37T | find /i "0xC004F050" >nul && goto:errkof
echo. & echo Selected key %keyo% successfully installed. & exit /b

:Ro
set keyo=Q4Y4M-RHWJM-PY37F-MTKWH-D3XHX
cscript //nologo Office14\OSPP.VBS /unpkey:D3XHX >nul & echo Product key uninstall successful.
cscript //nologo Office14\OSPP.VBS /inpkey:Q4Y4M-RHWJM-PY37F-MTKWH-D3XHX | find /i "0xC004F050" >nul && goto:errkof
echo. & echo Selected key %keyo% successfully installed. & exit /b

:So
set keyo=BFK7F-9MYHM-V68C7-DRQ66-83YTP
cscript //nologo Office14\OSPP.VBS /unpkey:83YTP >nul & echo Product key uninstall successful.
cscript //nologo Office14\OSPP.VBS /inpkey:BFK7F-9MYHM-V68C7-DRQ66-83YTP | find /i "0xC004F050" >nul && goto:errkof
echo. & echo Selected key %keyo% successfully installed. & exit /b

:errkof
if /i %a% == 3 echo. & echo Error! Key %keyo% installation failed. & exit /b
echo. & echo Error! Key %keyo% installation failed. Try more.  & echo. & goto:keysof

:rearmOf
echo.
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Office\15.0" >nul 2>^&1 && GOTO:Office15
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Office\14.0" >nul 2>^&1 && GOTO:Office14
goto:notfOf

:Office15
choice /C YN /N /M "You have selected Office 2013 trial reset. Continue? [y/n]: "
echo.
IF ERRORLEVEL 2 exit
IF ERRORLEVEL 1 goto:startr1

:Office14
choice /C YN /N /M "You have selected Office 2010 trial reset. Continue? [y/n]: "
echo.
IF ERRORLEVEL 2 exit
IF ERRORLEVEL 1 goto:startr2

:startr1
Office15\OSPPREARM.exe | find /i "Microsoft Office rearm successful." >nul && echo Microsoft Office rearm successful. & echo. & echo Please wait... & cscript //nologo Office15\OSPP.VBS /dstatus & exit /b
echo Error! Operation is not completed. & exit /b

:startr2
Office14\OSPPREARM.exe | find /i "Microsoft Office rearm successful." >nul && echo Microsoft Office rearm successful. & echo. & echo Please wait... & 1>nul 2>nul cscript //nologo Office14\OSPP.VBS /osppsvcrestart & exit /b
echo Error! Operation is not completed. & exit /b

:ActWin
cscript //nologo "%Windir%\System32\slmgr.vbs" -dlv >check
find /i "VOLUME_KMSCLIENT" >nul check && goto:actW1
find /i "VOLUME_BA" >nul check && goto:okkw2
If ERRORLEVEL 1 call:KeyMngW

:actW1
echo.
echo Key Management Service machine name set to Localhost...
if exist %Windir%\System32\sppsvc.exe  call %Windir%\System32\regedt32.exe /s  Server_7.reg >nul && echo       status: OK
if exist %Windir%\Sysnative\sppsvc.exe call %Windir%\Sysnative\regedt32.exe /s Server_7.reg >nul && echo       status: OK
if exist %Windir%\System32\SLsvc.exe   call %Windir%\System32\regedt32.exe /s  Server_v.reg >nul && echo       status: OK
if exist %Windir%\Sysnative\SLsvc.exe  call %Windir%\Sysnative\regedt32.exe /s Server_v.reg >nul && echo       status: OK
cscript //nologo "%Windir%\System32\slmgr.vbs" -ato | find /i "0xC004F074" >nul && goto:errserv
echo.
echo Please wait. Executing activation requests...

:repeatw
set /A f=f+1
echo Activation requests (%I%)
if /i %f% == 17 goto:fatalw
if /i %f% == 8 goto:Rearm
ping -n 4 localhost >nul
cscript //nologo "%Windir%\System32\slmgr.vbs" -ato >check
1>nul 2>nul findstr "0x8007000D 0xC004C008 0x8007232B Error" check
If %ERRORLEVEL% EQU 1 echo       status: OK & echo. & echo --------------------------------------------------------- & echo. & cscript //nologo "%Windir%\System32\slmgr.vbs" -dlv & echo --------------------------------------------------------- & goto:end
If %ERRORLEVEL% EQU 0 goto:repeatw

:Rearm
if exist %Windir%\System32\sppsvc.exe  goto:System32Rearm
if exist %Windir%\Sysnative\sppsvc.exe goto:SysnativeRearm
goto:repeatw

:System32Rearm
cscript //nologo %Windir%\System32\slmgr.vbs -rearm >nul
net stop sppsvc /y >nul
takeown /f %Windir%\System32\sppwinob.dll >nul && icacls %Windir%\System32\sppwinob.dll /deny *S-1-5-32-544:F >nul
net start sppsvc >nul
takeown /f %Windir%\System32\sppwinob.dll >nul && icacls %Windir%\System32\sppwinob.dll /grant *S-1-5-32-544:F>nul
net stop sppsvc /y >nul
ping -n 4 localhost >nul
net start sppsvc >nul
goto:repeatw

:SysnativeRearm
cscript //nologo %Windir%\Sysnative\slmgr.vbs -rearm >nul
net stop sppsvc /y >nul
takeown /f %Windir%\Sysnative\sppwinob.dll >nul && icacls %Windir%\Sysnative\sppwinob.dll /deny *S-1-5-32-544:F >nul
net start sppsvc >nul
takeown /f %Windir%\Sysnative\sppwinob.dll >nul && icacls %Windir%\Sysnative\sppwinob.dll /grant *S-1-5-32-544:F>nul
net stop sppsvc /y >nul
ping -n 4 localhost >nul
net start sppsvc >nul
goto:repeatw

:KeyMngW
set b=0
echo Initializing installed OS...
echo.
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows 7 Professional N" >nul
IF NOT ERRORLEVEL 1 echo Installed OS successfully determined. & echo. & echo Installing key... & goto:Bw
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows 7 Professional" >nul
IF NOT ERRORLEVEL 1 echo Installed OS successfully determined. & echo. & echo Installing key... & goto:Aw
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows 7 Enterprise N" >nul
IF NOT ERRORLEVEL 1 echo Installed OS successfully determined. & echo. & echo Installing key... & goto:Ew
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows 7 Enterprise E" >nul
IF NOT ERRORLEVEL 1 echo Installed OS successfully determined. & echo. & echo Installing key... & goto:Dw
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows 7 Enterprise" >nul
IF NOT ERRORLEVEL 1 echo Installed OS successfully determined. & echo. & echo Installing key... & goto:Cw
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "HPC Edition" >nul
IF NOT ERRORLEVEL 1 echo Installed OS successfully determined. & echo. & echo Installing key... & goto:Fw
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Server 2008 R2 Datacenter" >nul
IF NOT ERRORLEVEL 1 echo Installed OS successfully determined. & echo. & echo Installing key... & goto:Gw
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Server 2008 R2 Enterprise" >nul
IF NOT ERRORLEVEL 1 echo Installed OS successfully determined. & echo. & echo Installing key... & goto:Hw
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Server 2008 R2 Itanium" >nul
IF NOT ERRORLEVEL 1 echo Installed OS successfully determined. & echo. & echo Installing key... & goto:Iw
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Server 2008 R2 Standard" >nul
IF NOT ERRORLEVEL 1 echo Installed OS successfully determined. & echo. & echo Installing key... & goto:Jw
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Web Server 2008 R2" >nul
IF NOT ERRORLEVEL 1 echo Installed OS successfully determined. & echo. & echo Installing key... & goto:Kw
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Vista (TM) Business N" >nul
IF NOT ERRORLEVEL 1 echo Installed OS successfully determined. & echo. & echo Installing key... & goto:Mw
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Vista (TM) Business" >nul
IF NOT ERRORLEVEL 1 echo Installed OS successfully determined. & echo. & echo Installing key... & goto:Lw
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Vista (TM) Enterprise N" >nul
IF NOT ERRORLEVEL 1 echo Installed OS successfully determined. & echo. & echo Installing key... & goto:Ow
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Vista (TM) Enterprise" >nul
IF NOT ERRORLEVEL 1 echo Installed OS successfully determined. & echo. & echo Installing key... & goto:Nw
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Server (R) 2008 Datacenter" >nul
IF NOT ERRORLEVEL 1 echo Installed OS successfully determined. & echo. & echo Installing key... & goto:Pw
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Server (R) 2008 Itanium" >nul
IF NOT ERRORLEVEL 1 echo Installed OS successfully determined. & echo. & echo Installing key... & goto:Qw
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Server (R) 2008 Enterprise" >nul
IF NOT ERRORLEVEL 1 echo Installed OS successfully determined. & echo. & echo Installing key... & goto:Rw
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Server (R) 2008 Standard" >nul
IF NOT ERRORLEVEL 1 echo Installed OS successfully determined. & echo. & echo Installing key... & goto:Sw
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Web Server (R) 2008" >nul
IF NOT ERRORLEVEL 1 echo Installed OS successfully determined. & echo. & echo Installing key... & goto:Tw
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Embedded Standard" >nul
IF NOT ERRORLEVEL 1 echo Installed OS successfully determined. & echo. & echo Installing key... & goto:EB
if /i "%par%" == "all" echo Error! Can not determine installed OS. & echo. & exit /b 22
if /i "%par%" == "all1" echo Error! Can not determine installed OS. & echo. & exit /b 22
if /i "%par%" == "actWin3" goto:errhide
if /i "%par%" == "actWin4" goto:errhide
goto:anykey

:KeyMngM
echo.
echo ##################################################
echo ##                                              ##
echo ##  Windows KMS Client keys manager (6.0; 6.1)  ##
echo ##                                              ##
echo ##################################################
echo.

:keys
set /A b=b+1
echo a) Windows 7 Professional                l) Windows Vista Business
echo b) Windows 7 Professional N              m) Windows Vista Business N
echo c) Windows 7 Enterprise                  n) Windows Vista Enterprise
echo d) Windows 7 Enterprise E                o) Windows Vista Enterprise N
echo e) Windows 7 Enterprise N                p) Windows Server 2008 Datacenter
echo f) Windows Server 2008 R2 HPC Edition    q) Windows Server 2008 Itanium
echo g) Windows Server 2008 R2 Datacenter     r) Windows Server 2008 Enterprise
echo h) Windows Server 2008 R2 Enterprise     s) Windows Server 2008 Standard
echo i) Windows Server 2008 R2 Itanium        t) Windows Server 2008 Web
echo j) Windows Server 2008 R2 Standard  
echo k) Windows Server 2008 R2 Web            x)exit
echo.
choice /C abcdefghijklmnopqrstx /N /M "Select installed Windows edition [a-x]: "

IF ERRORLEVEL 21 goto:anykey
IF ERRORLEVEL 20 goto:Tw
IF ERRORLEVEL 19 goto:Sw
IF ERRORLEVEL 18 goto:Rw
IF ERRORLEVEL 17 goto:Qw
IF ERRORLEVEL 16 goto:Pw
IF ERRORLEVEL 15 goto:Ow
IF ERRORLEVEL 14 goto:Nw
IF ERRORLEVEL 13 goto:Mw
IF ERRORLEVEL 12 goto:Lw
IF ERRORLEVEL 11 goto:Kw
IF ERRORLEVEL 10 goto:Jw
IF ERRORLEVEL 9 goto:Iw
IF ERRORLEVEL 8 goto:Hw
IF ERRORLEVEL 7 goto:Gw
IF ERRORLEVEL 6 goto:Fw
IF ERRORLEVEL 5 goto:Ew
IF ERRORLEVEL 4 goto:Dw
IF ERRORLEVEL 3 goto:Cw
IF ERRORLEVEL 2 goto:Bw
IF ERRORLEVEL 1 goto:Aw
:Aw
set os=Windows 7 Professional
set keyw=FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4
cscript //nologo "%Windir%\System32\slmgr.vbs" -ipk FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4 | find /i "FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4" >nul && goto:okkw
goto:errskw

:Bw
set os=Windows 7 Professional N
set keyw=MRPKT-YTG23-K7D7T-X2JMM-QY7MG
cscript //nologo "%Windir%\System32\slmgr.vbs" -ipk MRPKT-YTG23-K7D7T-X2JMM-QY7MG | find /i "MRPKT-YTG23-K7D7T-X2JMM-QY7MG" >nul && goto:okkw
goto:errskw

:Cw
set os=Windows 7 Enterprise
set keyw=33PXH-7Y6KF-2VJC9-XBBR8-HVTHH
cscript //nologo "%Windir%\System32\slmgr.vbs" -ipk 33PXH-7Y6KF-2VJC9-XBBR8-HVTHH | find /i "33PXH-7Y6KF-2VJC9-XBBR8-HVTHH" >nul && goto:okkw
goto:errskw

:Dw
set os=Windows 7 Enterprise E
set keyw=YDRBP-3D83W-TY26F-D46B2-XCKRJ
cscript //nologo "%Windir%\System32\slmgr.vbs" -ipk YDRBP-3D83W-TY26F-D46B2-XCKRJ | find /i "YDRBP-3D83W-TY26F-D46B2-XCKRJ" >nul && goto:okkw
goto:errskw

:Ew
set os=Windows 7 Enterprise N
set keyw=C29WB-22CC8-VJ326-GHFJW-H9DH4
cscript //nologo "%Windir%\System32\slmgr.vbs" -ipk C29WB-22CC8-VJ326-GHFJW-H9DH4 | find /i "C29WB-22CC8-VJ326-GHFJW-H9DH4" >nul && goto:okkw
goto:errskw

:Fw
set os=Windows Server 2008 R2 HPC Edition
set keyw=FKJQ8-TMCVP-FRMR7-4WR42-3JCD7
cscript //nologo "%Windir%\System32\slmgr.vbs" -ipk FKJQ8-TMCVP-FRMR7-4WR42-3JCD7 | find /i "FKJQ8-TMCVP-FRMR7-4WR42-3JCD7" >nul && goto:okkw
goto:errskw

:Gw
set os=Windows Server 2008 R2 Datacenter
set keyw=74YFP-3QFB3-KQT8W-PMXWJ-7M648
cscript //nologo "%Windir%\System32\slmgr.vbs" -ipk 74YFP-3QFB3-KQT8W-PMXWJ-7M648 | find /i "74YFP-3QFB3-KQT8W-PMXWJ-7M648" >nul && goto:okkw
goto:errskw

:Hw
set os=Windows Server 2008 R2 Enterprise
set keyw=489J6-VHDMP-X63PK-3K798-CPX3Y
cscript //nologo "%Windir%\System32\slmgr.vbs" -ipk 489J6-VHDMP-X63PK-3K798-CPX3Y | find /i "489J6-VHDMP-X63PK-3K798-CPX3Y" >nul && goto:okkw
goto:errskw
:Iw
set os=Windows Server 2008 R2 Itanium
set keyw=GT63C-RJFQ3-4GMB6-BRFB9-CB83V
cscript //nologo "%Windir%\System32\slmgr.vbs" -ipk GT63C-RJFQ3-4GMB6-BRFB9-CB83V | find /i "GT63C-RJFQ3-4GMB6-BRFB9-CB83V" >nul && goto:okkw
goto:errskw

:Jw
set os=Windows Server 2008 R2 Standard
set keyw=YC6KT-GKW9T-YTKYR-T4X34-R7VHC
cscript //nologo "%Windir%\System32\slmgr.vbs" -ipk YC6KT-GKW9T-YTKYR-T4X34-R7VHC | find /i "YC6KT-GKW9T-YTKYR-T4X34-R7VHC" >nul && goto:okkw
goto:errskw

:Kw
set os=Windows Web Server 2008 R2
set keyw=6TPJF-RBVHG-WBW2R-86QPH-6RTM4
cscript //nologo "%Windir%\System32\slmgr.vbs" -ipk 6TPJF-RBVHG-WBW2R-86QPH-6RTM4 | find /i "6TPJF-RBVHG-WBW2R-86QPH-6RTM4" >nul && goto:okkw
goto:errskw

:Lw
set os=Windows Vista (TM) Business
set keyw=YFKBB-PQJJV-G996G-VWGXY-2V3X8
cscript //nologo "%Windir%\System32\slmgr.vbs" -ipk YFKBB-PQJJV-G996G-VWGXY-2V3X8 | find /i "YFKBB-PQJJV-G996G-VWGXY-2V3X8" >nul && goto:okkw
goto:errskw

:Mw
set os=Windows Vista (TM) Business N
set keyw=HMBQG-8H2RH-C77VX-27R82-VMQBT
cscript //nologo "%Windir%\System32\slmgr.vbs" -ipk HMBQG-8H2RH-C77VX-27R82-VMQBT | find /i "HMBQG-8H2RH-C77VX-27R82-VMQBT" >nul && goto:okkw
goto:errskw

:Nw
set os=Windows Vista (TM) Enterprise
set keyw=VKK3X-68KWM-X2YGT-QR4M6-4BWMV
cscript //nologo "%Windir%\System32\slmgr.vbs" -ipk VKK3X-68KWM-X2YGT-QR4M6-4BWMV | find /i "VKK3X-68KWM-X2YGT-QR4M6-4BWMV" >nul && goto:okkw
goto:errskw

:Ow
set os=Windows Vista (TM) Enterprise N
set keyw=VTC42-BM838-43QHV-84HX6-XJXKV
cscript //nologo "%Windir%\System32\slmgr.vbs" -ipk VTC42-BM838-43QHV-84HX6-XJXKV | find /i "VTC42-BM838-43QHV-84HX6-XJXKV" >nul && goto:okkw
goto:errskw

:Pw
set os=Windows Server 2008 (R) Datacenter
set keyw=7M67G-PC374-GR742-YH8V4-TCBY3
cscript //nologo "%Windir%\System32\slmgr.vbs" -ipk 7M67G-PC374-GR742-YH8V4-TCBY3 | find /i "7M67G-PC374-GR742-YH8V4-TCBY3" >nul && goto:okkw
goto:errskw

:Qw
set os=Windows Server 2008 (R) Itanium
set keyw=4DWFP-JF3DJ-B7DTH-78FJB-PDRHK
cscript //nologo "%Windir%\System32\slmgr.vbs" -ipk 4DWFP-JF3DJ-B7DTH-78FJB-PDRHK | find /i "4DWFP-JF3DJ-B7DTH-78FJB-PDRHK" >nul && goto:okkw
goto:errskw

:Rw
set os=Windows Server 2008 (R) Enterprise
set keyw=YQGMW-MPWTJ-34KDK-48M3W-X4Q6V
cscript //nologo "%Windir%\System32\slmgr.vbs" -ipk YQGMW-MPWTJ-34KDK-48M3W-X4Q6V | find /i "YQGMW-MPWTJ-34KDK-48M3W-X4Q6V" >nul && goto:okkw
goto:errskw

:Sw
set os=Windows Server 2008 (R) Standard
set keyw=TM24T-X9RMF-VWXK6-X8JC9-BFGM2
cscript //nologo "%Windir%\System32\slmgr.vbs" -ipk TM24T-X9RMF-VWXK6-X8JC9-BFGM2 | find /i "TM24T-X9RMF-VWXK6-X8JC9-BFGM2" >nul && goto:okkw
goto:errskw

:Tw
set os=Windows Web Server 2008 (R)
set keyw=WYR28-R7TFJ-3X2YQ-YCY4H-M249D
cscript //nologo "%Windir%\System32\slmgr.vbs" -ipk WYR28-R7TFJ-3X2YQ-YCY4H-M249D | find /i "WYR28-R7TFJ-3X2YQ-YCY4H-M249D" >nul && goto:okkw
goto:errskw

:EB
if exist %Windir%\System32\wlms\wlms.exe takeown /F %Windir%\System32\wlms\wlms.exe >nul 
if exist %Windir%\System32\wlms\wlms.exe icacls %Windir%\System32\wlms\wlms.exe /deny *S-1-5-32-544:F >nul
if exist %Windir%\Sysnative\wlms\wlms.exe takeown /F %Windir%\Sysnative\wlms\wlms.exe >nul 
if exist %Windir%\Sysnative\wlms\wlms.exe icacls %Windir%\Sysnative\wlms\wlms.exe /deny *S-1-5-32-544:F >nul
set os=Windows Embedded Standard Version
set keyw=XGY72-BRBBT-FF8MH-2GG8H-W7KCW
cscript //nologo "%Windir%\System32\slmgr.vbs" -ilc SPP\pkeyconfig-embedded.xrm-ms >nul
cscript //nologo "%Windir%\System32\slmgr.vbs" -ilc SPP\Security-SPP-Component-SKU-Embedded-VLBA-ul.xrm-ms >nul
cscript //nologo "%Windir%\System32\slmgr.vbs" -ilc SPP\Security-SPP-Component-SKU-Embedded-VLBA-ul-oob.xrm-ms >nul
cscript //nologo "%Windir%\System32\slmgr.vbs" -ipk XGY72-BRBBT-FF8MH-2GG8H-W7KCW | find /i "XGY72-BRBBT-FF8MH-2GG8H-W7KCW" >nul && goto:okkw2
goto:errskw

:okkw
echo. & echo Installed OS is %os%. & echo. & echo Key %keyw% successfully installed. & exit /b
:okkw2
echo. & echo Installed OS is %os%. & echo. & echo Key %keyw% successfully installed.
echo.
echo ---------------------------------------------------------
echo. & cscript //nologo "%Windir%\System32\slmgr.vbs" -dlv
echo ---------------------------------------------------------
goto:anykey

:errskw
if /i "%par%" == "all" echo. & echo Error! Key %keyw% installation failed. & echo. & exit /b 22
if /i "%par%" == "actWin3" goto:errhide
if /i "%par%" == "actWin4" goto:errhide
echo.
if /i %b% == 3 echo Error! Key %keyw% installation failed. & goto:anykey
echo Error! Key %keyw% installation failed. Try more. & echo. & goto:keys

:fatalw
if /i "%par%" == "all" exit /b
if /i "%par%" == "actWin3" goto:errhide
if /i "%par%" == "actWin4" goto:errhide
echo       status: Error
echo.
echo After %f% plenty of attempts Windows activation failed.
echo Please try more later.
echo.
echo Errors detected:
echo.
ping -n 2 localhost >nul
echo ---------------------------------------------------------
echo.
type check
echo ---------------------------------------------------------
goto:end

:errskms
if /i "%par%" == "actWin3" goto:errhide
if /i "%par%" == "actWin4" goto:errhide
echo Error! Operation is not completed.
echo.
echo Errors detected:
echo.
ping -n 2 localhost >nul
echo ---------------------------------------------------------
echo.
type check
echo ---------------------------------------------------------
goto:end

:ChkWin
if not exist "%Windir%\System32\slmgr.vbs" call %Windir%\System32\oobe/msoobe.exe /a
if not exist "%Windir%\System32\slmgr.vbs" exit 
cscript //nologo "%Windir%\System32\slmgr.vbs" -dlv
echo ---------------------------------------------------------
exit /b

:RearmW
choice /C YN /N /M "You have selected Windows trial reset. Continue? [y/n]: "
echo.
IF ERRORLEVEL 2 exit
IF ERRORLEVEL 1 cscript //nologo "%Windir%\System32\slmgr.vbs" -rearm
exit /b

:auto
echo Searching for installed Volume products...
echo.
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v CurrentVersion | find /i "6.1" >nul 2>^&1 && goto:step1
IF ERRORLEVEL 1 %RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v CurrentVersion | find /i "6.0" >nul 2>^&1 || goto:step2

:step1
echo --------------------------------------------------------- & echo Volume Windows activation... & echo --------------------------------------------------------- & echo.
call:KeyMngW
IF ERRORLEVEL 22 goto:step2
echo. & call:actW1 & echo. & echo. & goto:step2

:step2
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Office\14.0" >nul 2>^&1 || goto:err
sc start osppsvc >nul
%RC% QUERY "HKLM\SYSTEM\CurrentControlSet\services\osppsvc" >nul 2>^&1 || goto:err
cscript //nologo Office14\OSPP.VBS /dstatus | find /i "VOLUME_KMSCLIENT" >nul || goto:err
echo --------------------------------------------------------- & echo Volume Office 2010 activation... echo --------------------------------------------------------- & echo. & call:actOf & exit /b

:err
if /i "%par%" == "actOf3" goto:errhide
if /i "%par%" == "actOf4" goto:errhide
if /i "%par%" == "actWin3" goto:errhide
if /i "%par%" == "actWin4" goto:errhide
2>nul %RC% QUERY "HKLM\SYSTEM\CurrentControlSet\Services\KMService" /v DisplayName | findstr /i KMService 1>nul
IF ERRORLEVEL 1 tasklist /fi "imagename eq KMService.exe" 2>nul | find /i /n "KMService.exe" >nul && taskkill /t /f /im KMService.exe 1>nul 2>nul
echo No supported volume products found on your computer. & goto:anykey

:errhide
2>nul %RC% QUERY "HKLM\SYSTEM\CurrentControlSet\Services\KMService" /v DisplayName | findstr /i KMService 1>nul
IF ERRORLEVEL 1 tasklist /fi "imagename eq KMService.exe" 2>nul | find /i /n "KMService.exe" >nul && taskkill /t /f /im KMService.exe 1>nul 2>nul
if exist check del check
cscript //nologo HS_MESSAGE.vbs "Error! Operation is not completed." "Activation Tool" W OK 5 & exit

:notfOf
if /i "%par%" == "actOf3" goto:errhide
if /i "%par%" == "actOf4" goto:errhide
echo There are no installed Office 2010 or 2013 products. & echo This activator are for corporate versions of Office 2010 or 2013! & goto:anykey

:novlo
%RC% QUERY "HKLM\SOFTWARE\Microsoft\Office\14.0" >nul 2>^&1 && goto:novlo14
echo Installed Office edition detected is not a VL edition. & goto:anykey

:novlo14
echo. & echo Change VOLUME_KMSCLIENT...
echo       status: OK
call OfficeVL.cmd >nul
exit /b

:notfw
if /i "%par%" == "actWin3" goto:errhide
if /i "%par%" == "actWin4" goto:errhide
echo This function is not available on your OS. & echo The function can work on Windows 6.0 or newer only. & goto:anykey

:novlw
if /i "%par%" == "actWin3" goto:errhide
if /i "%par%" == "actWin4" goto:errhide
echo Installed Windows edition detected is not a VL edition. & goto:anykey

:anykey
if exist check del check
echo. & echo Press any key to exit...
pause >nul
exit

