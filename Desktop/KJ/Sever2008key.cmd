@echo off

:_main
cls
echo.
echo.  ขั  OEM KEY INSTALL
echo.

echo. ----------------------------------------------------------------------------

echo. 01) Server 2008 Standard:       223PV-8KCX6-F9KJX-3W2R7-BB2FH
echo. 02) Server 2008 Standard:       28QVP-KR6WC-PW76Q-YVX4X-FM3BM
echo. 03) Server 2008 Standard:       2793X-9B2WQ-3B27F-P6CKH-VC9YP
echo. 04) Server 2008 Enterprise:     26Y2H-YTJY6-CYD4F-DMB6V-KXFCQ
echo. 05) Server 2008 Foundation:     BHFGK-YDHVJ-49M49-FT9B3-WKG8Y
echo. 06) Small Business Server 2008: 76GGM-4MQ6T-XCJH9-6R2XQ-PW2D2

echo. ----------------------------------------------------------------------------

echo. X)  Exit 
echo.

:_set
set _ok=
set /p _ok=.Enter your choice : 
if "%_ok%" == "1" goto _01
if "%_ok%" == "2" goto _02
if "%_ok%" == "3" goto _03
if "%_ok%" == "4" goto _04
if "%_ok%" == "5" goto _05
if "%_ok%" == "6" goto _06
if "%_ok%" == "01" goto _01
if "%_ok%" == "02" goto _02
if "%_ok%" == "03" goto _03
if "%_ok%" == "04" goto _04
if "%_ok%" == "05" goto _05
if "%_ok%" == "06" goto _06
if "%_ok%" == "x" goto _end
if "%_ok%" == "X" goto _end

goto _main

:_01
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 223PV-8KCX6-F9KJX-3W2R7-BB2FH
goto _end

:_02
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 28QVP-KR6WC-PW76Q-YVX4X-FM3BM
goto _end

:_03
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 2793X-9B2WQ-3B27F-P6CKH-VC9YP
goto _end

:_04
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 26Y2H-YTJY6-CYD4F-DMB6V-KXFCQ
goto _end

:_05
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk BHFGK-YDHVJ-49M49-FT9B3-WKG8Y
goto _end

:_06
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 76GGM-4MQ6T-XCJH9-6R2XQ-PW2D2
goto _end

:_end
cls
exit


