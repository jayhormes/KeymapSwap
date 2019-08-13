@echo off
rem Release Version:	V.1.0.0
rem Release Date:	2019/08/13
rem ================== History ==================
rem 2019/08/13 - V.1.0.0
rem - The first version.
rem ================== History ==================
rem ================== Setting ================== 

SET _RF_Path_=C:\Playpark\RFOnline

rem ================== Setting ================== 

SET _CurrectDir_=%CD%

SET _TabDisable_FilePath_=%CD%\en-ph\KeyMap.dat
SET _TabEnable_FilePath_=%CD%\zh-tw\KeyMap.dat
SET _RF_DataTable_FilePath_=%_RF_Path_%\DataTable\en-ph\KeyMap.dat

SET /P option=1: Enable tab function, 2: Disable tab function. Please input an option: 

IF %option% == 1 goto _Enable
IF %option% == 2 goto _Disable
goto _Exit


:_Enable

xcopy %_TabEnable_FilePath_% %_RF_DataTable_FilePath_% /Y
echo Enable tab function
Pause
exit

:_Disable
xcopy %_TabDisable_FilePath_% %_RF_DataTable_FilePath_% /Y
echo Disable tab function
Pause
exit 

:_Exit
echo Please use correct option
Pause
exit 