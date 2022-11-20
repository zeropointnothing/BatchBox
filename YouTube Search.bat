@echo off
title YouTube Search
color 4
echo.
echo -Welcome to YouTube! What would you like to search today?- [YTS Coded By ZeroPointNothing]
echo.
timeout 1 /nobreak >nul
:query
set /p que="Awaiting Query . . .     "

echo - Attempting to search for '%que%' with your default browser. Please wait. . .
set que=%que: =+%

timeout 1 /nobreak >nul

start "iexplore" https://www.youtube.com/results?search_query=%que%

timeout 1 /nobreak >nul
:serAg
echo.

set ans=
set /p ans="Attempt Complete. Search again? (y/n)     "


if '%ans%'=='n' exit
if not '%ans%'=='y' goto serAg
if '%ans%'=='y' goto query


:: All code can be modified freely, as this is but a simple Batch program.