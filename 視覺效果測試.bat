@echo off 
mode con cols=25 lines=14
set gg=0
:loop
set "x%z%=  "
set /a z=z+1
if not %z% == 100 goto loop
:top
set z=0
set r=0
set y=0
:random1
set /a c=%random%%%100+0
set x%c%=¡½
set /a r=r+1
if not %r% == 20 goto random1
:random2
set /a g=%random%%%100+0
set x%g%=  
set /a y=y+1
if not %y% == 25 goto random2
cls
echo   ......................
echo   .%x0%%x10%%x20%%x30%%x40%%x50%%x60%%x70%%x80%%x90%.
echo   .%x1%%x11%%x21%%x31%%x41%%x51%%x61%%x71%%x81%%x91%.
echo   .%x2%%x12%%x22%%x32%%x42%%x52%%x62%%x72%%x82%%x92%.
echo   .%x3%%x13%%x23%%x33%%x43%%x53%%x63%%x73%%x83%%x93%.
echo   .%x4%%x14%%x24%%x34%%x44%%x54%%x64%%x74%%x84%%x94%.
echo   .%x5%%x15%%x25%%x35%%x45%%x55%%x65%%x75%%x85%%x95%.
echo   .%x6%%x16%%x26%%x36%%x46%%x56%%x66%%x76%%x86%%x96%.
echo   .%x7%%x17%%x27%%x37%%x47%%x57%%x67%%x77%%x87%%x97%.
echo   .%x8%%x18%%x28%%x38%%x48%%x58%%x68%%x78%%x88%%x98%.
echo   .%x9%%x19%%x29%%x39%%x49%%x59%%x69%%x79%%x89%%x99%.
echo   ......................
set /a gg=gg+1
echo %gg%
goto top
