@echo off 
::mode con cols=18 lines=10
set winscore=30
:top
set p1=0
set p2=0

:ecc
cls
echo=
echo  p1分數:      p2分數:
echo   %p1%         %p2%
echo=
echo=
if %p1% == %winscore% goto p1win
if %p2% == %winscore% goto p2win


choice /c:ZM>NUL

if errorlevel 2 goto M  
if errorlevel 1 goto Z 

:Z
set /a p1=p1+1
goto ecc
:M
set /a p2=p2+1
goto ecc

:p1win
echo    p1獲勝!
timeout /t 5 /nobreak>nul
pause
goto top

:p2win
echo    p2獲勝!
timeout /t 5 /nobreak>nul
pause
goto top