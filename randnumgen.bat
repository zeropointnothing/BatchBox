@echo off
title RNG V1.0
color 1

echo.
echo - RANDOM NUMBER GENERATOR [Coded By ZeroPointNothing]-
echo.
set /p max="INPUT MAX OUTPUT (will generate three)   -"

set /a max+=1
:start


set /a num=%RANDOM% %%%max%

echo %num%

set /a num=%RANDOM% %%%max%

echo %num%

set /a num=%RANDOM% %%%max%

echo %num%

echo.
echo Type exit to stop.
echo.
set /p opt=
if /I '%opt%'=='exit' (
    exit
)

goto start

:: All code can be modified freely, as this is but a simple Batch program.