@echo off 
title 小遊戲:猜數字
mode con cols=55 lines=20
:start
echo       第一關 level:1
echo=
set /a m=%random%%%3+1
set /p question=猜一個數字[1~3]:

if /i "%question%"=="" (
echo 輸入處不可為空!
timeout /t 1 >nul
cls&&goto start
)

if /i %question% gtr 3 (
echo 不得輸入大於3的數字!
timeout /t 1 >nul
cls&&goto start
)

if /i %question% LSS 1 (
echo 不得輸入小於1的數字!
timeout /t 1 >nul
cls&&goto start
)

if /i "%question%"=="%m%" (
color e
echo ************************
echo ************************
echo  猜對了!正確答案是:%m%!
echo ************************
echo ************************
echo 按任意鍵進行下一關!
pause>nul
color 7
cls
set count=2
goto level2
)else (
echo=
echo=
echo 猜錯了!正確答案是:%m%
set question=@
echo=
echo=
echo 按任意鍵返回..
pause>nul
cls
goto start
)


:level2
echo       第二關 level:2
echo=
set /a m=%random%%%5+1
set /p question=猜一個數字[1~5]:
if /i "%question%"=="" (
echo 輸入處不可為空!
timeout /t 1 >nul
cls&&goto level2
)

if /i %question% gtr 5 (
echo 不得輸入大於5的數字!
timeout /t 1 >nul
cls&&goto level2
)

if /i %question% LSS 1 (
echo 不得輸入小於1的數字!
timeout /t 1 >nul
cls&&goto level2
)

if /i "%question%"=="%m%" (
color e
echo ************************
echo ************************
echo  猜對了!正確答案是:%m%!
echo ************************
echo ************************
echo 按任意鍵進行下一關!
pause>nul
color 7
cls
set xxx=2
goto level3
)else (
echo=
echo=
echo 猜錯了!正確答案是:%m%
set question=@
echo=
echo=
set /a count=count-1
if "%count%"=="0" (
echo 已無機會.按任意鍵返回第一關..
pause>nul
cls
goto start
)
echo 還剩%count%次機會可以猜!
pause>nul
cls
goto level2
)
:level3
echo       第三關 level:3
echo=
set /a m=%random%%%10+1
set /p question=猜一個數字[1~10]:
if /i "%question%"=="" (
echo 輸入處不可為空!
timeout /t 1 >nul
cls&&goto level3
)

if /i %question% gtr 10 (
echo 不得輸入大於10的數字!
timeout /t 1 >nul
cls&&goto level3
)

if /i %question% LSS 1 (
echo 不得輸入小於1的數字!
timeout /t 1 >nul
cls&&goto level3
)

if /i "%question%"=="%m%" (
color e
echo ************************
echo ************************
echo  猜對了!正確答案是:%m%!
echo ************************
echo ************************
echo 按任意鍵進行下一關!
pause>nul
color 7
cls
set ooo=2
goto level4
)else (
echo=
echo=
echo 猜錯了!正確答案是:%m%
set question=@
echo=
echo=
set /a xxx=xxx-1
if "%xxx%"=="0" (
echo 已無機會.按任意鍵返回第二關..
pause>nul
cls
set count=2
goto level2
)
echo 還剩%xxx%次機會可以猜!
pause>nul
cls
goto level3
)

:level4
echo       第四關 level:4
echo=
set /a m=%random%%%15+1
set /p question=猜一個數字[1~15]:
if /i "%question%"=="" (
echo 輸入處不可為空!
timeout /t 1 >nul
cls&&goto level4
)

if /i %question% gtr 15 (
echo 不得輸入大於15的數字!
timeout /t 1 >nul
cls&&goto level4
)

if /i %question% LSS 1 (
echo 不得輸入小於1的數字!
timeout /t 1 >nul
cls&&goto level4
)

if /i "%question%"=="%m%" (
color e
echo ************************
echo ************************
echo  猜對了!正確答案是:%m%!
echo ************************
echo ************************
echo 按任意鍵進行下一關!
pause>nul
color 7
cls
set rrr=2
goto level5
)else (
echo=
echo=
echo 猜錯了!正確答案是:%m%
set question=@
echo=
echo=
set /a ooo=ooo-1
if "%ooo%"=="0" (
echo 已無機會.按任意鍵返回第三關..
pause>nul
cls
set xxx=2
goto level3
)
echo 還剩%ooo%次機會可以猜!
pause>nul
cls
goto level4
)

:level5
echo       第五關 level:5
echo=
set /a m=%random%%%30+1
set /p question=猜一個數字[1~30]:
if /i "%question%"=="" (
echo 輸入處不可為空!
timeout /t 1 >nul
cls&&goto level5
)

if /i %question% gtr 30 (
echo 不得輸入大於30的數字!
timeout /t 1 >nul
cls&&goto level5
)

if /i %question% LSS 1 (
echo 不得輸入小於1的數字!
timeout /t 1 >nul
cls&&goto level5
)

if /i "%question%"=="%m%" (
color d
echo ************************
echo ************************
echo  猜對了!!!正確答案是:%m%!!!
echo ************************
echo ************************
timeout /t 3 >nul
cls
echo=
echo=
echo  你已通關了所有關卡!!!
echo=
echo=
timeout /t 3 >nul
cls
echo=
echo=
echo  GAME OVER
echo=
echo=
pause >nul
exit
)else (
echo=
echo=
echo 猜錯了!正確答案是:%m%
set question=@
echo=
echo=
set /a rrr=rrr-1
if "%rrr%"=="0" (
echo 已無機會.按任意鍵返回第四關..
pause>nul
cls
set ooo=2
goto level4
)
echo 還剩%rrr%次機會可以猜!
pause>nul
cls
goto level5
)

