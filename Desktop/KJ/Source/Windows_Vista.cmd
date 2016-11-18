@echo off

echo Windows Vista OEM Activation Installing
echo Please wait...
echo.

::setup parameters::
SET RC=%Windir%\System32\reg.exe
IF EXIST %Windir%\Sysnative\reg.exe SET RC=%Windir%\Sysnative\reg.exe
SET RQR=%RC% QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v "EditionID" 
SET INL=IF NOT ERRORLEVEL 1 

::manufacturer brand check/set::
cscript //nologo Bios\Bios.vbs | findstr /I "ACER AcerSystem TravelMate" >nul
%INL% SET MAN=ACER&GOTO:ACER
cscript //nologo Bios\Bios.vbs | findstr /I "DSGLTD ADVENT" >nul
%INL% SET MAN=ADVENT&GOTO:ADVENT
cscript //nologo Bios\Bios.vbs | findstr /I "ALWARE ALIENWARE" >nul
%INL% SET MAN=ALIENWARE&GOTO:ALIENWARE
cscript //nologo Bios\Bios.vbs | findstr /I "_ASUS_ ASUS_FLASH ASUS ASUSTeK" >nul
%INL% SET MAN=ASUS&GOTO:ASUS
cscript //nologo Bios\Bios.vbs | findstr /I "AQUARI AQUARIUS" >nul
%INL% SET MAN=AQUARIUS&GOTO:AQUARIUS
cscript //nologo Bios\Bios.vbs | findstr /I "BenQ BenQHub" >nul
%INL% SET MAN=BENQ&GOTO:BENQ
cscript //nologo Bios\Bios.vbs | findstr /I "CASPER" >nul
%INL% SET MAN=CASPER&GOTO:CASPER
cscript //nologo Bios\Bios.vbs | findstr /I "COMPAQ" >nul
%INL% SET MAN=COMPAQ&GOTO:COMPAQ
cscript //nologo Bios\Bios.vbs | findstr /I "DELL" >nul
%INL% SET MAN=DELL&GOTO:DELL
cscript //nologo Bios\Bios.vbs | findstr /I "XPS" >nul
%INL% SET MAN=DELLXPS&GOTO:DELL
cscript //nologo Bios\Bios.vbs | findstr /I "Dealin" >nul
%INL% SET MAN=DEALIN&GOTO:DEALIN
cscript //nologo Bios\Bios.vbs | findstr /I "Exc ECS ELITEGROUP ELITE" >nul
%INL% SET MAN=ECS&GOTO:ECS
cscript //nologo Bios\Bios.vbs | findstr /I "EMACHINES" >nul
%INL% SET MAN=EMACHINES&GOTO:ACER
cscript //nologo Bios\Bios.vbs | findstr /I "Datate EXPER" >nul
%INL% SET MAN=EXPER&GOTO:EXPER
cscript //nologo Bios\Bios.vbs | findstr /I "FOUNDR FOUNDER" >nul
%INL% SET MAN=FOUNDER&GOTO:FOUNDER
cscript //nologo Bios\Bios.vbs | findstr /I "FSC SIEMENS" >nul
%INL% SET MAN=FSC&GOTO:FSC
cscript //nologo Bios\Bios.vbs | findstr /I "FUJ FUJITSU FUJITSU-PC" >nul
%INL% SET MAN=FUJITSU&GOTO:FUJITSU
cscript //nologo Bios\Bios.vbs | findstr /I "GATEWAY Gatewa" >nul
%INL% SET MAN=GATEWAY&GOTO:ACER
cscript //nologo Bios\Bios.vbs | findstr /I "GBT GIGABYTE" >nul
%INL% SET MAN=GIGABYTE&GOTO:GIGABYTE
cscript //nologo Bios\Bios.vbs | findstr /I "cgwall GREATWALL" >nul
%INL% SET MAN=GWALL&GOTO:GWALL
cscript //nologo Bios\Bios.vbs | findstr /I "haier HaierComputer" >nul
%INL% SET MAN=HAIER&GOTO:HAIER
cscript //nologo Bios\Bios.vbs | findstr /I "HSPW07 HANNSPREE" >nul
%INL% SET MAN=HANNSPREE&GOTO:HANNSPREE
cscript //nologo Bios\Bios.vbs | findstr /I "HASEE HASEECOMPUTER" >nul
%INL% SET MAN=HASEE&GOTO:HASEE
cscript //nologo Bios\Bios.vbs | findstr /I "HCLINF HCL" >nul
%INL% SET MAN=HCL&GOTO:HCL
cscript //nologo Bios\Bios.vbs | findstr /I "HEWLETT Hewlett-P Hewlett-Packard" >nul
%INL% SET MAN=HP&GOTO:HP
cscript //nologo Bios\Bios.vbs | findstr /I "higrad HIGRADE HIGRADED" >nul
%INL% SET MAN=HIGRADE&GOTO:HIGRADE
cscript //nologo Bios\Bios.vbs | findstr /I "HYRSLP HYRICAN HYRICAN_AG" >nul
%INL% SET MAN=HYRICAN&GOTO:HYRICAN
cscript //nologo Bios\Bios.vbs | findstr /I "JOOYON JOOYONTECH" >nul
%INL% SET MAN=JOOYON&GOTO:JOOYON
cscript //nologo Bios\Bios.vbs | findstr /I "KRFTWY KRAFTWAY" >nul
%INL% SET MAN=KRAFTWAY&GOTO:KRAFTWAY
cscript //nologo Bios\Bios.vbs | findstr /I "K-Syst KSYSTEMS K-Systems" >nul
%INL% SET MAN=KSYSTEMS&GOTO:KSYSTEMS
cscript //nologo Bios\Bios.vbs | findstr /I "LANIX1 LANIX" >nul
%INL% SET MAN=LANIX&GOTO:LANIX
cscript //nologo Bios\Bios.vbs | findstr /I "LGE LGELGP LG" >nul
%INL% SET MAN=LG&GOTO:LG
cscript //nologo Bios\Bios.vbs | findstr /I "LENOVO" >nul
%INL% SET MAN=LENOVO&GOTO:LENOVO
cscript //nologo Bios\Bios.vbs | findstr /I "MEDION MEDIONPC MEDIONNB" >nul
%INL% SET MAN=MEDION&GOTO:MEDION
cscript //nologo Bios\Bios.vbs | findstr /I "MSI_NB MSI MSI_PC MSI-2831-MS MSI-PenNote" >nul
%INL% SET MAN=MSI&GOTO:MSI
cscript //nologo Bios\Bios.vbs | findstr /I "NEC NECC1 NECC_S NECCAP NECc_ NEC-PC NEC_Product" >nul
%INL% SET MAN=NEC&GOTO:NEC
cscript //nologo Bios\Bios.vbs | findstr /I "NOKIA" >nul
%INL% SET MAN=NOKIA&GOTO:NOKIA
cscript //nologo Bios\Bios.vbs | findstr /I "OLIPRO OLIDATA" >nul
%INL% SET MAN=OLIDATA&GOTO:OLIDATA
cscript //nologo Bios\Bios.vbs | findstr /I "PACKARD BELL PACKARD-BELL" >nul
%INL% SET MAN=PBELL&GOTO:ACER
cscript //nologo Bios\Bios.vbs | findstr /I "MATBIO Panasonic" >nul
%INL% SET MAN=PANASONIC&GOTO:PANASONIC
cscript //nologo Bios\Bios.vbs | findstr /I "QUANMX QUANMAX" >nul
%INL% SET MAN=QUANMAX&GOTO:QUANMAX
cscript //nologo Bios\Bios.vbs | findstr /I "SECCSD SAMSUNG SAMSUNGPC $SAMSUNGPC" >nul
%INL% SET MAN=SAMSUNG&GOTO:SAMSUNG
cscript //nologo Bios\Bios.vbs | findstr /I "stinfo" >nul
%INL% SET MAN=SEMP&GOTO:SEMP
cscript //nologo Bios\Bios.vbs | findstr /I "Sony" >nul
%INL% SET MAN=SONY&GOTO:SONY
cscript //nologo Bios\Bios.vbs | findstr /I "synnex" >nul
%INL% SET MAN=SYNNEX&GOTO:SYNNEX
cscript //nologo Bios\Bios.vbs | findstr /I "SYSMAX SYSTEMAX" >nul
%INL% SET MAN=SYSTEMAX&GOTO:SYSTEMAX
cscript //nologo Bios\Bios.vbs | findstr /I "TOSASU" >nul
%INL% SET MAN=TOSA&GOTO:TOSHIBA
cscript //nologo Bios\Bios.vbs | findstr /I "TOSCPL" >nul
%INL% SET MAN=TOSC&GOTO:TOSHIBA
cscript //nologo Bios\Bios.vbs | findstr /I "TOSHIB" >nul
%INL% SET MAN=TOSHIBA&GOTO:TOSHIBA
cscript //nologo Bios\Bios.vbs | findstr /I "TOSINV" >nul
%INL% SET MAN=TOSI&GOTO:TOSHIBA
cscript //nologo Bios\Bios.vbs | findstr /I "TOSQCI" >nul
%INL% SET MAN=TOSQ&GOTO:TOSHIBA
cscript //nologo Bios\Bios.vbs | findstr /I "TOSHIBA" >nul
%INL% SET MAN=TOSHIBA&GOTO:TOSHIBA
cscript //nologo Bios\Bios.vbs | findstr /I "THTFPC TONGFANG Tsing TSINGHUA" >nul
%INL% SET MAN=TONGFANG&GOTO:TONGFANG
cscript //nologo Bios\Bios.vbs | findstr /I "TRIGEM" >nul
%INL% SET MAN=TRIGEM&GOTO:TRIGEM
cscript //nologo Bios\Bios.vbs | findstr /I "YUTC VILIV" >nul
%INL% SET MAN=VILIV&GOTO:VILIV
cscript //nologo Bios\Bios.vbs | findstr /I "VSCAIO VIEWSONIC ViewSonic-PC ViewSonic-Notebook ViewSonic-AIOpc ViewSonic-Desktop" >nul
%INL% SET MAN=VSONIC&GOTO:VSONIC
cscript //nologo Bios\Bios.vbs | findstr /I "WORTMA wortmann" >nul
%INL% SET MAN=WORTMANN&GOTO:WORTMANN

::final checks::
cscript //nologo Bios\Bios.vbs | findstr /I "ACRSYS" >nul
%INL% SET MAN=ACER&GOTO:ACER
cscript //nologo Bios\Bios.vbs | findstr /I "HPQOEM" >nul
%INL% SET MAN=HP&GOTO:HP
cscript //nologo Bios\Bios.vbs | findstr /I "HP" >nul
%INL% SET MAN=HPPRO&GOTO:HP
cscript //nologo Bios\Bios.vbs | findstr /I "IBM" >nul
%INL% SET MAN=IBM&GOTO:LENOVO

::vmware::
WMIC BASEBOARD | findstr /I "VMWARE" >nul
%INL% SET MAN=VMWARE&GOTO:DEFAULT
WMIC BIOS | findstr /I "VMWARE" >nul
%INL% SET MAN=VMWARE&GOTO:DEFAULT
WMIC COMPUTERSYSTEM | findstr /I "VMWARE" >nul
%INL% SET MAN=VMWARE&GOTO:DEFAULT
WMIC CSPRODUCT | findstr /I "VMWARE" >nul
%INL% SET MAN=VMWARE&GOTO:DEFAULT

::set default brand/serial; if manufacturer not matched::
SET MAN=DEFAULT&GOTO:DEFAULT

::Manufacturer OEM Serial No's will get called from this list::
:ACER
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=26VQB-RP3T9-63FVV-VD7RF-H7M2Q
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=2TYBW-XKCQM-XY9X3-JDXYP-6CJ97
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=3YDB8-YY3P4-G7FCW-GJMPG-VK48C
GOTO:FINISH
:ADVENT
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:ALIENWARE
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:ASUS
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:AQUARIUS
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:BENQ
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=7R997-DXYDR-YGCR3-RHVDP-T8TKX
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:CASPER
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:COMPAQ
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2VX48-BVXT6-GD2PK-BD3R2-44MV3
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=2R6WF-KYF88-27HYQ-XTKW2-WQD8Q
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2Q2WM-VCB98-8C6BG-C9BT2-3XDRY
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=23CM9-P7MYR-VFWRT-JGH7R-R933G
GOTO:FINISH
:DEALIN
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:DEFAULT
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:DELL
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=3YMR2-WMV49-4WD8X-M9WM7-CH4CG
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=4GPTT-6RYC4-F4GJK-KG77H-B9HD2
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=368Y7-49YMQ-VRCTY-3V3RH-WRMG7
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=2QBP3-289MF-9364X-37XGX-24W6P
GOTO:FINISH
:ECS
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:EXPER
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:FOUNDER
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:FSC
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:FUJITSU
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=4G8P7-TVW66-Y3H3V-C4Q4J-CQR2B
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=6M66G-C2BGD-XGBBV-2BHKV-C9KM3
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=4C3CM-H3RXM-VBMVQ-K8RHX-RTFX8
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:GIGABYTE
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=889T3-F4VGX-QK4V7-JH76R-3HHRC
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:GWALL
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:HAIER
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:HANNSPREE
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:HASEE
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:HCL
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:HIGRADE
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:HP
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:HYRICAN
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:JOOYON
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:KRAFTWAY
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:KSYSTEMS
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:LANIX
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=762HW-QD98X-TQVXJ-8RKRQ-RJC9V
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=72PFD-BCBK8-R7X4H-6F2XJ-VVMP9
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:LENOVO
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=23Q4W-YQPHY-TY89Y-7Q3VX-W72KT
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=2WP98-KHTH2-KC7KG-4YR37-H8PHC
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=34BKK-QK76Y-WWR7C-QF2M7-2TB37
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2YRV9-YCY3F-FRJ4T-BKD6B-C47PP
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=24J6Q-YJJBG-V4K4Q-2J8HY-8HBQQ
GOTO:FINISH
:LG
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:MEDION
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:MSI
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=762HW-QD98X-TQVXJ-8RKRQ-RJC9V
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=72PFD-BCBK8-R7X4H-6F2XJ-VVMP9
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:NEC
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:NOKIA
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:OLIDATA
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:PANASONIC
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:QUANMAX
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:SAMSUNG
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:SEMP
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:SONY
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=6JWV3-843DD-4GV68-6D8JB-G6MF9
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=3W2Y2-GRRYB-VH76X-KPDXX-XFJ4B
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=2KKTK-YGJKV-3WMRR-3MDQW-TJP47
GOTO:FINISH
:SYNNEX
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:SYSTEMAX
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:TONGFANG
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:TOSHIBA
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=4DV48-MFJR8-VRW92-3VTYM-HBTPB
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=6DG3Y-99KMR-JQMWD-2QJRJ-RJ34F
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=38MK6-4QYC6-GJQQX-9DYQ4-H9MQD
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=33G3W-JY3XQ-CQQ7C-TG96R-R6J6Q
GOTO:FINISH
:TRIGEM
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=2YY8K-6KVM4-3DTT6-XRFHK-RYYDG
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:VILIV
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:VSONIC
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH
:WORTMANN
%RQR% | findstr /I "STARTER"     && %INL% SET PIDKEY=2X4FQ-86GPG-WWD8J-MF47M-MGMT3
%RQR% | findstr /I "HOMEBASICN"  && %INL% SET PIDKEY=22TC9-RDMDD-VXMXD-2XM2Y-DT6FX
%RQR% | findstr /I "HOMEBASIC"   && %INL% SET PIDKEY=2W7FD-9DWCB-Q9CM8-KTDKK-8QXTR
%RQR% | findstr /I "HOMEPREMIUM" && %INL% SET PIDKEY=8XPM9-7F9HD-4JJQP-TP64Y-RPFFV
%RQR% | findstr /I "BUSINESSN"   && %INL% SET PIDKEY=2434H-HFRM7-BHGD4-W9TTD-RJVCH
%RQR% | findstr /I "BUSINESS"    && %INL% SET PIDKEY=2TJTJ-C72D7-7BCYH-FV3HT-JGD4F
%RQR% | findstr /I "ULTIMATE"    && %INL% SET PIDKEY=6F2D7-2PCG6-YQQTB-FWK9V-932CC
GOTO:FINISH

:FINISH
cd /d %ScriptPath%
echo %MAN% OEM Key Installing
echo Please wait...
echo.
cscript //nologo "%Windir%\System32\slmgr.vbs" -dlv >check
find /i "OEM_SLP" >nul check && goto:certs
cscript //nologo %windir%\system32\slmgr.vbs -ipk %PIDKEY% >nul

:certs
if exist Certificates\%MAN%.xrm-ms echo %MAN% OEMCert.xrm-ms Installing && echo Please wait... && echo.
if exist Certificates\%MAN%.xrm-ms cscript //nologo %windir%\system32\slmgr.vbs -ilc Certificates\%MAN%.xrm-ms >nul

::Activation Check::
WMIC /NAMESPACE:\\root\CIMV2 PATH SoftwareLicensingProduct WHERE LicenseStatus=1 GET LicenseStatus | findstr "1" > nul
IF ERRORLEVEL 1 GOTO:VOEM
GOTO:END

:VOEM
ECHO %MAN% | findstr /I "VMWARE" && %INL% GOTO:VMWARE
cd /d %ScriptPath%
if exist Source\SLIC2.1.cmd call Source\SLIC2.1.cmd
GOTO:END

:VMWARE
cd /d %ScriptPath%
cd /d BIOS_Emulator
call Install_w7A.cmd
cd /d %ScriptPath%
GOTO:END

:END
EXIT /B