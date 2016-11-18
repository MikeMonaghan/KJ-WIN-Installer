@echo off

:_main
cls
echo.
echo.  ขั  OEM KEY INSTALL
echo.

echo. ----------------------------------------------------------------------------

echo. 01) Server2008 R2 Standard:    D7TCH-6P8JP-KRG4P-VJKYY-P9GFF
echo. 02) Server2008 R2 Enterprise:  BKCJJ-J6G9Y-4P7YF-8D4J7-7TCWD
echo. 03) Server2008 R2 Datacenter:  26FXG-KYC7Q-XG29P-T2HFQ-KPF96 
echo. 04) Server2008 R2 Foundation:  VMYRB-8BRVQ-KXWFF-334J3-F2WHJ

echo. ----------------------------------------------------------------------------

echo. X)  Exit 
echo.

:_set
set _ok=
set /p _ok=.Enter your choice : 
if "%_ok%" == "1" goto _01
if "%_ok%" == "2" goto _02
if "%_ok%" == "3" goto _03
if "%_ok%" == "4" goto _03
if "%_ok%" == "01" goto _01
if "%_ok%" == "02" goto _02
if "%_ok%" == "03" goto _03
if "%_ok%" == "04" goto _04
if "%_ok%" == "x" goto _end
if "%_ok%" == "X" goto _end

goto _main

:_01
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk D7TCH-6P8JP-KRG4P-VJKYY-P9GFF
goto _end

:_02
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk BKCJJ-J6G9Y-4P7YF-8D4J7-7TCWD
goto _end


:_03
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 26FXG-KYC7Q-XG29P-T2HFQ-KPF96
goto _end

:_04
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk VMYRB-8BRVQ-KXWFF-334J3-F2WHJ
goto _end

:_end
cls
exit


