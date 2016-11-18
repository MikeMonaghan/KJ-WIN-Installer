@echo off

echo Please Wait.
REG QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | find /i "Windows Embedded Standard" >nul
IF NOT ERRORLEVEL 1 echo Installed OS successfully determined. & echo. & echo Installing key... & goto:EB

:_main
cls
echo.
echo.  ขั  OEM KEY INSTALL
echo,      First, Choose Your Edition
echo.

echo. ----------------------------------------------------------------------------

echo. 01) Ultimate
echo. 02) Professional
echo. 03) HomePremium
echo. 04) HomeBasic
echo. 05) Starter

echo. ----------------------------------------------------------------------------

echo. X)  Exit
echo.

:_set
set _ok=
set /p _ok=. Enter your choice : 
if "%_ok%" == "1" goto _e01
if "%_ok%" == "2" goto _e02
if "%_ok%" == "3" goto _e03
if "%_ok%" == "4" goto _e04
if "%_ok%" == "5" goto _e05
if "%_ok%" == "01" goto _e01
if "%_ok%" == "02" goto _e02
if "%_ok%" == "03" goto _e03
if "%_ok%" == "04" goto _e04
if "%_ok%" == "05" goto _e05

if "%_ok%" == "x" goto _end
if "%_ok%" == "X" goto _end

goto _main

:_e01
cls
echo.
echo. ----------------------------------------------------------------------------

echo. 01) Ultimate:     FJGCP-4DFJD-GJY49-VJBQ7-HYRR2 --- ACER/GATEWAY/PACKARD
echo. 02) Ultimate:     VQ3PY-VRX6D-CBG4J-8C6R2-TCVBD --- ALIENWARE
echo. 03) Ultimate:     2Y4WT-DHTBF-Q6MMK-KYK6X-VKM6G --- ASUS
echo. 04) Ultimate:     342DG-6YJR8-X92GV-V7DCV-P4K27 --- DELL
echo. 05) Ultimate:     9CW99-79BBF-D4M3X-9BK9M-4RPH9 --- FUJITSU
echo. 06) Ultimate:     MHFPT-8C8M2-V9488-FGM44-2C9T3 --- HP
echo. 07) Ultimate:     6K2KY-BFH24-PJW6W-9GK29-TMPWP --- LENOVO/IBM (Re-released)
echo. 08) Ultimate:     49PB6-6BJ6Y-KHGCQ-7DDY6-TF7CD --- SAMSUNG
echo. 09) Ultimate:     YJJYR-666KV-8T4YH-KM9TB-4PY2W --- SONY

echo. ----------------------------------------------------------------------------

echo. M)  Main
echo.

:_set
set _ok=
set /p _ok=. Enter your choice : 
if "%_ok%" == "1" goto _01
if "%_ok%" == "2" goto _02
if "%_ok%" == "3" goto _03
if "%_ok%" == "4" goto _04
if "%_ok%" == "5" goto _05
if "%_ok%" == "6" goto _06
if "%_ok%" == "7" goto _07
if "%_ok%" == "8" goto _08
if "%_ok%" == "9" goto _09
if "%_ok%" == "01" goto _01
if "%_ok%" == "02" goto _02
if "%_ok%" == "03" goto _03
if "%_ok%" == "04" goto _04
if "%_ok%" == "05" goto _05
if "%_ok%" == "06" goto _06
if "%_ok%" == "07" goto _07
if "%_ok%" == "08" goto _08
if "%_ok%" == "09" goto _09

if "%_ok%" == "m" goto _main
if "%_ok%" == "M" goto _main

goto _main

:_e02
cls
echo.
echo. ----------------------------------------------------------------------------

echo. 10) Professional: YKHFT-KW986-GK4PY-FDWYH-7TP9F --- ACER/GATEWAY/PACKARD
echo. 11) Professional: 4CFBX-7HQ6R-3JYWF-72GXP-4MV6W --- ALIENWARE
echo. 12) Professional: 2WCJK-R8B4Y-CWRF2-TRJKB-PV9HW --- ASUS
echo. 13) Professional: 32KD2-K9CTF-M3DJT-4J3WC-733WD --- DELL
echo. 14) Professional: PT9YK-BC2J9-WWYF9-R9DCR-QB9CK --- FUJITSU
echo. 15) Professional: 2QTV2-3CMPP-FQBYK-GRD62-D7XMW --- HCL
echo. 16) Professional: 74T2M-DKDBC-788W3-H689G-6P6GT --- HP
echo. 17) Professional: 237XB-GDJ7B-MV8MH-98QJM-24367 --- LENOVO/IBM
echo. 18) Professional: 2QGXM-V9W9W-6Q7MR-64C4X-R26CV --- LG ?
echo. 19) Professional: GMJQF-JC7VC-76HMH-M4RKY-V4HX6 --- SAMSUNG
echo. 20) Professional: H9M26-6BXJP-XXFCY-7BR4V-24X8J --- SONY
echo. 21) Professional: 2V8P2-QKJWM-4THM3-74PDB-4P2KH --- TOSHIBA
echo. 22) Professional: 6JKVQ-WJTWW-JVPRB-77TGD-2DV7M --- WORTMANN

echo. ----------------------------------------------------------------------------

echo. M)  Main
echo.

:_set
set _ok=
set /p _ok=. Enter your choice : 
if "%_ok%" == "10" goto _10
if "%_ok%" == "11" goto _11
if "%_ok%" == "12" goto _12
if "%_ok%" == "13" goto _13
if "%_ok%" == "14" goto _14
if "%_ok%" == "15" goto _15
if "%_ok%" == "16" goto _16
if "%_ok%" == "17" goto _17
if "%_ok%" == "18" goto _18
if "%_ok%" == "19" goto _19
if "%_ok%" == "20" goto _20
if "%_ok%" == "21" goto _21
if "%_ok%" == "22" goto _22

if "%_ok%" == "m" goto _main
if "%_ok%" == "M" goto _main

goto _main


:_e03
cls
echo.
echo. ----------------------------------------------------------------------------

echo. 23) HomePremium:  VQB3X-Q3KP8-WJ2H8-R6B6D-7QJB7 --- ACER/GATEWAY/PACKARD
echo. 24) HomePremium:  2QDBX-9T8HR-2QWT6-HCQXJ-9YQTR --- ASUS
echo. 25) HomePremium:  6RBBT-F8VPQ-QCPVQ-KHRB8-RMV82 --- DELL
echo. 26) HomePremium:  C6MHH-TRRPT-74TDC-FHRMV-XB88W --- FUJITSU
echo. 27) HomePremium:  4FG99-BC3HD-73CQT-WMF7J-3Q6C9 --- HP
echo. 28) HomePremium:  27GBM-Y4QQC-JKHXW-D9W83-FJQKD --- LENOVO/IBM
echo. 29) HomePremium:  4G3GR-J6JDJ-D96PV-T9B9D-M8X2Q --- MSI
echo. 30) HomePremium:  CQBVJ-9J697-PWB9R-4K7W4-2BT4J --- SAMSUNG
echo. 31) HomePremium:  H4JWX-WHKWT-VGV87-C7XPK-CGKHQ --- SONY
echo. 32) HomePremium:  6GF36-P4HWR-BFF84-6GFC2-BWX77 --- TOSHIBA

echo. ----------------------------------------------------------------------------

echo. M)  Main
echo.

:_set
set _ok=
set /p _ok=. Enter your choice : 
if "%_ok%" == "23" goto _23
if "%_ok%" == "24" goto _24
if "%_ok%" == "25" goto _25
if "%_ok%" == "26" goto _26
if "%_ok%" == "27" goto _27
if "%_ok%" == "28" goto _28
if "%_ok%" == "29" goto _29
if "%_ok%" == "30" goto _30
if "%_ok%" == "31" goto _31
if "%_ok%" == "32" goto _32

if "%_ok%" == "m" goto _main
if "%_ok%" == "M" goto _main

goto _main


:_e04
cls
echo.
echo. ----------------------------------------------------------------------------

echo. 33) HomeBasic:    MB4HF-2Q8V3-W88WR-K7287-2H4CP --- ACER/GATEWAY/PACKARD
echo. 34) HomeBasic:    89G97-VYHYT-Y6G8H-PJXV6-77GQM --- ASUS
echo. 35) HomeBasic:    36T88-RT7C6-R38TQ-RV8M9-WWTCY --- DELL
echo. 36) HomeBasic:    8W3JQ-BP2HY-F47QX-6CQ94-2BKQB --- FUJITSU
echo. 37) HomeBasic:    DX8R9-BVCGB-PPKRR-8J7T4-TJHTH --- HP
echo. 37) HomeBasic:    22MFQ-HDH7V-RBV79-QMVK9-PTMXQ --- LENOVO/IBM
echo. 39) HomeBasic:    2P6PB-G7YVY-W46VJ-BXJ36-PGGTG --- SAMSUNG
echo. 40) HomeBasic:    YV7QQ-RCXQ9-KTBHC-YX3FG-FKRW8 --- SONY
echo. 41) HomeBasic:    9DBMT-GXRWM-6Q9Y3-WMYM8-FJCBW --- TONGFANG
echo. 42) HomeBasic:    9H4FH-VD69Y-TGBD2-4PM4K-DRMMH --- TOSHIBA

echo. ----------------------------------------------------------------------------

echo. M)  Main
echo.

:_set
set _ok=
set /p _ok=. Enter your choice : 
if "%_ok%" == "33" goto _33
if "%_ok%" == "34" goto _34
if "%_ok%" == "35" goto _35
if "%_ok%" == "36" goto _36
if "%_ok%" == "37" goto _37
if "%_ok%" == "38" goto _38
if "%_ok%" == "39" goto _39
if "%_ok%" == "40" goto _40
if "%_ok%" == "41" goto _41
if "%_ok%" == "42" goto _42

if "%_ok%" == "m" goto _main
if "%_ok%" == "M" goto _main

goto _main


:_e05
cls
echo.
echo. ----------------------------------------------------------------------------

echo. 43) Starter:      RDJXR-3M32B-FJT32-QMPGB-GCFF6 --- ACER/GATEWAY/PACKARD
echo. 44) Starter:      6K6WB-X73TD-KG794-FJYHG-YCJVG --- ASUS (Eee)
echo. 45) Starter:      6PB94-MC2C6-4F37H-KTJ32-PF2PT --- CASPERERA
echo. 46) Starter:      36Q3Y-BBT84-MGJ3H-FT7VD-FG72J --- DELL
echo. 47) Starter:      4FRH4-WQDGJ-M9HRY-K73D8-RGT3C --- EXPER
echo. 48) Starter:      RH98C-M9PW4-6DHR7-X99PJ-3FGDB --- HP
echo. 49) Starter:      PMXH9-M23P9-QJJMB-2FWRC-7CDKP --- FUJITSU
echo. 50) Starter:      273P4-GQ8V6-97YYM-9YTHF-DC2VP --- LENOVO/IBM
echo. 51) Starter:      22P26-HD8YH-RD96C-28R8J-DCT28 --- LENOVO/IBM
echo. 52) Starter:      2W4DJ-JFFJV-DMCPP-2C3X8-883DP --- MSI
echo. 53) Starter:      2YKPV-BFXFW-X8GJQ-9KQFF-KCXGD --- MSI
echo. 54) Starter:      2XGHP-9TQK2-8CF28-BM2P2-8FRX8 --- NOKIA
echo. 55) Starter:      344HQ-3YHDT-C7VCT-BDPBV-4KTR3 --- OLIDATA
echo. 56) Starter:      PV9BD-YBRX6-CTMG6-CCMJY-X8XG7 --- SAMSUNG
echo. 57) Starter:      32J2V-TGQCY-9QJXP-Q3FVT-X8BQ7 --- SONY
echo. 58) Starter:      TGBKB-9KBGJ-3Y3J6-K8M2F-J2HJQ --- TOSHIBA
echo. 59) Starter:      7W842-2HCPJ-BC3MJ-B79K6-TD2HQ --- VILIV

echo. ----------------------------------------------------------------------------

echo. M)  Main
echo.

:_set
set _ok=
set /p _ok=. Enter your choice : 
if "%_ok%" == "43" goto _43
if "%_ok%" == "44" goto _44
if "%_ok%" == "45" goto _45
if "%_ok%" == "46" goto _46
if "%_ok%" == "47" goto _47
if "%_ok%" == "48" goto _48
if "%_ok%" == "49" goto _49
if "%_ok%" == "50" goto _50
if "%_ok%" == "51" goto _51
if "%_ok%" == "52" goto _52
if "%_ok%" == "53" goto _53
if "%_ok%" == "54" goto _54
if "%_ok%" == "55" goto _55
if "%_ok%" == "56" goto _56
if "%_ok%" == "57" goto _57
if "%_ok%" == "58" goto _58
if "%_ok%" == "59" goto _59

if "%_ok%" == "m" goto _main
if "%_ok%" == "M" goto _main

goto _main

:_01
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk FJGCP-4DFJD-GJY49-VJBQ7-HYRR2
goto _end

:_02
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk VQ3PY-VRX6D-CBG4J-8C6R2-TCVBD
goto _end

:_03
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 2Y4WT-DHTBF-Q6MMK-KYK6X-VKM6G
goto _end

:_04
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 342DG-6YJR8-X92GV-V7DCV-P4K27
goto _end

:_05
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 9CW99-79BBF-D4M3X-9BK9M-4RPH9
goto _end

:_06
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk MHFPT-8C8M2-V9488-FGM44-2C9T3
goto _end

:_07
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 6K2KY-BFH24-PJW6W-9GK29-TMPWP
goto _end

:_08
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 49PB6-6BJ6Y-KHGCQ-7DDY6-TF7CD
goto _end

:_09
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk YJJYR-666KV-8T4YH-KM9TB-4PY2W
goto _end

:_10
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk YKHFT-KW986-GK4PY-FDWYH-7TP9F
goto _end

:_11
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 4CFBX-7HQ6R-3JYWF-72GXP-4MV6W
goto _end

:_12
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 2WCJK-R8B4Y-CWRF2-TRJKB-PV9HW
goto _end

:_13
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 32KD2-K9CTF-M3DJT-4J3WC-733WD
goto _end

:_14
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk PT9YK-BC2J9-WWYF9-R9DCR-QB9CK
goto _end

:_15
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 2QTV2-3CMPP-FQBYK-GRD62-D7XMW
goto _end

:_16
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 74T2M-DKDBC-788W3-H689G-6P6GT
goto _end

:_17
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 237XB-GDJ7B-MV8MH-98QJM-24367
goto _end

:_18
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 2QGXM-V9W9W-6Q7MR-64C4X-R26CV
goto _end

:_19
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk GMJQF-JC7VC-76HMH-M4RKY-V4HX6
goto _end

:_20
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk H9M26-6BXJP-XXFCY-7BR4V-24X8J
goto _end

:_21
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 2V8P2-QKJWM-4THM3-74PDB-4P2KH
goto _end

:_22
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 6JKVQ-WJTWW-JVPRB-77TGD-2DV7M
goto _end

:_23
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk VQB3X-Q3KP8-WJ2H8-R6B6D-7QJB7
goto _end

:_24
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 2QDBX-9T8HR-2QWT6-HCQXJ-9YQTR
goto _end

:_25
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 6RBBT-F8VPQ-QCPVQ-KHRB8-RMV82
goto _end

:_26
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk C6MHH-TRRPT-74TDC-FHRMV-XB88W
goto _end

:_27
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 4FG99-BC3HD-73CQT-WMF7J-3Q6C9
goto _end

:_28
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 27GBM-Y4QQC-JKHXW-D9W83-FJQKD
goto _end

:_29
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 4G3GR-J6JDJ-D96PV-T9B9D-M8X2Q
goto _end

:_30
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk CQBVJ-9J697-PWB9R-4K7W4-2BT4J
goto _end

:_31
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk H4JWX-WHKWT-VGV87-C7XPK-CGKHQ
goto _end

:_32
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 6GF36-P4HWR-BFF84-6GFC2-BWX77
goto _end

:_33
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk MB4HF-2Q8V3-W88WR-K7287-2H4CP
goto _end

:_34
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 89G97-VYHYT-Y6G8H-PJXV6-77GQM
goto _end

:_35
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 36T88-RT7C6-R38TQ-RV8M9-WWTCY
goto _end

:_36
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 8W3JQ-BP2HY-F47QX-6CQ94-2BKQB
goto _end

:_37
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk DX8R9-BVCGB-PPKRR-8J7T4-TJHTH
goto _end

:_38
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 22MFQ-HDH7V-RBV79-QMVK9-PTMXQ
goto _end

:_39
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 2P6PB-G7YVY-W46VJ-BXJ36-PGGTG
goto _end

:_40
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk YV7QQ-RCXQ9-KTBHC-YX3FG-FKRW8
goto _end

:_41
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 9DBMT-GXRWM-6Q9Y3-WMYM8-FJCBW
goto _end

:_42
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 9H4FH-VD69Y-TGBD2-4PM4K-DRMMH
goto _end

:_43
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk RDJXR-3M32B-FJT32-QMPGB-GCFF6
goto _end

:_44
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 6K6WB-X73TD-KG794-FJYHG-YCJVG
goto _end

:_45
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 6PB94-MC2C6-4F37H-KTJ32-PF2PT
goto _end

:_46
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 36Q3Y-BBT84-MGJ3H-FT7VD-FG72J
goto _end

:_47
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 4FRH4-WQDGJ-M9HRY-K73D8-RGT3C
goto _end

:_48
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk RH98C-M9PW4-6DHR7-X99PJ-3FGDB
goto _end

:_49
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk PMXH9-M23P9-QJJMB-2FWRC-7CDKP
goto _end

:_50
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 273P4-GQ8V6-97YYM-9YTHF-DC2VP
goto _end

:_51
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 22P26-HD8YH-RD96C-28R8J-DCT28
goto _end

:_52
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 2W4DJ-JFFJV-DMCPP-2C3X8-883DP
goto _end

:_53
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 2YKPV-BFXFW-X8GJQ-9KQFF-KCXGD
goto _end

:_54
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 2XGHP-9TQK2-8CF28-BM2P2-8FRX8
goto _end

:_55
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 344HQ-3YHDT-C7VCT-BDPBV-4KTR3
goto _end

:_56
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk PV9BD-YBRX6-CTMG6-CCMJY-X8XG7
goto _end

:_57
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 32J2V-TGQCY-9QJXP-Q3FVT-X8BQ7
goto _end

:_58
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk TGBKB-9KBGJ-3Y3J6-K8M2F-J2HJQ
goto _end

:_59
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk 7W842-2HCPJ-BC3MJ-B79K6-TD2HQ
goto _end

:EB
cls
echo.
echo        xxxxxxx Please Wait 30sec...........Installing Product Key xxxxxxx
call %Windir%\System32\slmgr.vbs -ipk XGY72-BRBBT-FF8MH-2GG8H-W7KCW
if exist %Windir%\System32\wlms\wlms.exe takeown /F %Windir%\System32\wlms\wlms.exe >nul 
if exist %Windir%\System32\wlms\wlms.exe icacls %Windir%\System32\wlms\wlms.exe /deny everyone:F >nul
if exist %Windir%\Sysnative\wlms\wlms.exe takeown /F %Windir%\Sysnative\wlms\wlms.exe >nul 
if exist %Windir%\Sysnative\wlms\wlms.exe icacls %Windir%\Sysnative\wlms\wlms.exe /deny everyone:F >nul
goto _end

:_end
cls
exit
