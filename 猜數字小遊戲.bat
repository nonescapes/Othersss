@echo off 
title �p�C��:�q�Ʀr
mode con cols=55 lines=20
:start
echo       �Ĥ@�� level:1
echo=
set /a m=%random%%%3+1
set /p question=�q�@�ӼƦr[1~3]:

if /i "%question%"=="" (
echo ��J�B���i����!
timeout /t 1 >nul
cls&&goto start
)

if /i %question% gtr 3 (
echo ���o��J�j��3���Ʀr!
timeout /t 1 >nul
cls&&goto start
)

if /i %question% LSS 1 (
echo ���o��J�p��1���Ʀr!
timeout /t 1 >nul
cls&&goto start
)

if /i "%question%"=="%m%" (
color e
echo ************************
echo ************************
echo  �q��F!���T���׬O:%m%!
echo ************************
echo ************************
echo �����N��i��U�@��!
pause>nul
color 7
cls
set count=2
goto level2
)else (
echo=
echo=
echo �q���F!���T���׬O:%m%
set question=@
echo=
echo=
echo �����N���^..
pause>nul
cls
goto start
)


:level2
echo       �ĤG�� level:2
echo=
set /a m=%random%%%5+1
set /p question=�q�@�ӼƦr[1~5]:
if /i "%question%"=="" (
echo ��J�B���i����!
timeout /t 1 >nul
cls&&goto level2
)

if /i %question% gtr 5 (
echo ���o��J�j��5���Ʀr!
timeout /t 1 >nul
cls&&goto level2
)

if /i %question% LSS 1 (
echo ���o��J�p��1���Ʀr!
timeout /t 1 >nul
cls&&goto level2
)

if /i "%question%"=="%m%" (
color e
echo ************************
echo ************************
echo  �q��F!���T���׬O:%m%!
echo ************************
echo ************************
echo �����N��i��U�@��!
pause>nul
color 7
cls
set xxx=2
goto level3
)else (
echo=
echo=
echo �q���F!���T���׬O:%m%
set question=@
echo=
echo=
set /a count=count-1
if "%count%"=="0" (
echo �w�L���|.�����N���^�Ĥ@��..
pause>nul
cls
goto start
)
echo �ٳ�%count%�����|�i�H�q!
pause>nul
cls
goto level2
)
:level3
echo       �ĤT�� level:3
echo=
set /a m=%random%%%10+1
set /p question=�q�@�ӼƦr[1~10]:
if /i "%question%"=="" (
echo ��J�B���i����!
timeout /t 1 >nul
cls&&goto level3
)

if /i %question% gtr 10 (
echo ���o��J�j��10���Ʀr!
timeout /t 1 >nul
cls&&goto level3
)

if /i %question% LSS 1 (
echo ���o��J�p��1���Ʀr!
timeout /t 1 >nul
cls&&goto level3
)

if /i "%question%"=="%m%" (
color e
echo ************************
echo ************************
echo  �q��F!���T���׬O:%m%!
echo ************************
echo ************************
echo �����N��i��U�@��!
pause>nul
color 7
cls
set ooo=2
goto level4
)else (
echo=
echo=
echo �q���F!���T���׬O:%m%
set question=@
echo=
echo=
set /a xxx=xxx-1
if "%xxx%"=="0" (
echo �w�L���|.�����N���^�ĤG��..
pause>nul
cls
set count=2
goto level2
)
echo �ٳ�%xxx%�����|�i�H�q!
pause>nul
cls
goto level3
)

:level4
echo       �ĥ|�� level:4
echo=
set /a m=%random%%%15+1
set /p question=�q�@�ӼƦr[1~15]:
if /i "%question%"=="" (
echo ��J�B���i����!
timeout /t 1 >nul
cls&&goto level4
)

if /i %question% gtr 15 (
echo ���o��J�j��15���Ʀr!
timeout /t 1 >nul
cls&&goto level4
)

if /i %question% LSS 1 (
echo ���o��J�p��1���Ʀr!
timeout /t 1 >nul
cls&&goto level4
)

if /i "%question%"=="%m%" (
color e
echo ************************
echo ************************
echo  �q��F!���T���׬O:%m%!
echo ************************
echo ************************
echo �����N��i��U�@��!
pause>nul
color 7
cls
set rrr=2
goto level5
)else (
echo=
echo=
echo �q���F!���T���׬O:%m%
set question=@
echo=
echo=
set /a ooo=ooo-1
if "%ooo%"=="0" (
echo �w�L���|.�����N���^�ĤT��..
pause>nul
cls
set xxx=2
goto level3
)
echo �ٳ�%ooo%�����|�i�H�q!
pause>nul
cls
goto level4
)

:level5
echo       �Ĥ��� level:5
echo=
set /a m=%random%%%30+1
set /p question=�q�@�ӼƦr[1~30]:
if /i "%question%"=="" (
echo ��J�B���i����!
timeout /t 1 >nul
cls&&goto level5
)

if /i %question% gtr 30 (
echo ���o��J�j��30���Ʀr!
timeout /t 1 >nul
cls&&goto level5
)

if /i %question% LSS 1 (
echo ���o��J�p��1���Ʀr!
timeout /t 1 >nul
cls&&goto level5
)

if /i "%question%"=="%m%" (
color d
echo ************************
echo ************************
echo  �q��F!!!���T���׬O:%m%!!!
echo ************************
echo ************************
timeout /t 3 >nul
cls
echo=
echo=
echo  �A�w�q���F�Ҧ����d!!!
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
echo �q���F!���T���׬O:%m%
set question=@
echo=
echo=
set /a rrr=rrr-1
if "%rrr%"=="0" (
echo �w�L���|.�����N���^�ĥ|��..
pause>nul
cls
set ooo=2
goto level4
)
echo �ٳ�%rrr%�����|�i�H�q!
pause>nul
cls
goto level5
)

