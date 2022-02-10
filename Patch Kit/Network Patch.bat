@echo off
echo ----------------------------------------
echo Drag/Drop Patch Script
echo ----------------------------------------
echo.
echo Currently configured for : %~n1.iso
echo.
echo ----------------------------------------
echo Select desired server host :
CHOICE /C AB /N /M "A: zwei.moe, B: wiimmfi.de"
IF ERRORLEVEL 1 SET SERVER_HOST=zwei.moe
IF ERRORLEVEL 2 SET SERVER_HOST=wiimmfi.de
echo ----------------------------------------
echo.
echo Host selected : %SERVER_HOST%
echo (DEBUG) : Output file - "%SERVER_HOST%-images/%~n1.iso"
echo.
wit cp . --DEST %SERVER_HOST%-images/ "%~1" --update --psel=data --http --domain %SERVER_HOST% -vv

pause
exit