@echo off


set x=1
set y=0


:choice
goto loc
:res

::Checks for user input "W, A, S, D, and E"

choice -n /c WASDE /m "Use WASD to control. Press E to exit."

if errorlevel 5 goto ext
if errorlevel 4 goto right
if errorlevel 3 goto down
if errorlevel 2 goto left
if errorlevel 1 goto up



:up
cls

set /a y+=1
goto choice

:left
cls

set /a x-=1
goto choice

:down
cls

set /a y-=1
goto choice

:right
cls

set /a x+=1
goto choice

:ext
cls
echo.
echo Exiting . . .
timeout 2 /nobreak >nul
exit



:loc

::Jumps to the Y-axis check depending on what the current X-axis value is

if '%x%'=='1' goto x1
if '%x%'=='2' goto x2
if '%x%'=='3' goto x3
if '%x%'=='4' goto x4
if '%x%'=='5' goto x5
if '%x%'=='6' goto x6
if '%x%'=='7' goto x7
if '%x%'=='8' goto x8
if '%x%'=='9' goto x9
if '%x%'=='10' goto xMax
if '%x%'=='0' goto xMin


:x1
::Checks the Y-axis value and jumps to the echo command for the combined x and y values.
cls
if '%y%'=='0' goto x1y0
if '%y%'=='-1' goto x1y-1
if '%y%'=='-2' goto x1y-2
if '%y%'=='-3' goto x1y-3
if '%y%'=='-4' goto x1y-4
if '%y%'=='-5' goto x1y-5
if '%y%'=='-6' goto x1y-6
if '%y%'=='-7' goto x1y-7
if '%y%'=='-8' goto x1y-8
if '%y%'=='1' goto yMin
if '%y%'=='-9' goto yMax
goto res

:x2
cls
if '%y%'=='0' goto x2y0
if '%y%'=='-1' goto x2y-1
if '%y%'=='-2' goto x2y-2
if '%y%'=='-3' goto x2y-3
if '%y%'=='-4' goto x2y-4
if '%y%'=='-5' goto x2y-5
if '%y%'=='-6' goto x2y-6
if '%y%'=='-7' goto x2y-7
if '%y%'=='-8' goto x2y-8
if '%y%'=='1' goto yMin
if '%y%'=='-9' goto yMax
goto res

:x3
cls
if '%y%'=='0' goto x3y0
if '%y%'=='-1' goto x3y-1
if '%y%'=='-2' goto x3y-2
if '%y%'=='-3' goto x3y-3
if '%y%'=='-4' goto x3y-4
if '%y%'=='-5' goto x3y-5
if '%y%'=='-6' goto x3y-6
if '%y%'=='-7' goto x3y-7
if '%y%'=='-8' goto x3y-8
if '%y%'=='1' goto yMin
if '%y%'=='-9' goto yMax
goto res

:x4
cls
if '%y%'=='0' goto x4y0
if '%y%'=='-1' goto x4y-1
if '%y%'=='-2' goto x4y-2
if '%y%'=='-3' goto x4y-3
if '%y%'=='-4' goto x4y-4
if '%y%'=='-5' goto x4y-5
if '%y%'=='-6' goto x4y-6
if '%y%'=='-7' goto x4y-7
if '%y%'=='-8' goto x4y-8
if '%y%'=='1' goto yMin
if '%y%'=='-9' goto yMax
goto res

:x5
cls
if '%y%'=='0' goto x5y0
if '%y%'=='-1' goto x5y-1
if '%y%'=='-2' goto x5y-2
if '%y%'=='-3' goto x5y-3
if '%y%'=='-4' goto x5y-4
if '%y%'=='-5' goto x5y-5
if '%y%'=='-6' goto x5y-6
if '%y%'=='-7' goto x5y-7
if '%y%'=='-8' goto x5y-8
if '%y%'=='1' goto yMin
if '%y%'=='-9' goto yMax
goto res

:x6
cls
echo -----+---
echo x%x%y%y%
goto res

:x7
cls
echo ------+--
echo x%x%y%y%
goto res

:x8
cls
echo -------+-
echo x%x%y%y%
goto res

:x9
cls
echo --------+
echo x%x%y%y%
goto res

:xMax
set /a x-=1
goto choice

:xMin
set /a x+=1
goto choice

:yMax
set /a y+=1
goto choice

:yMin
set /a y-=1
goto choice


:: creates x1 text

:x1y0
echo +--------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x1y-1
cls
echo ---------
echo +--------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x1y-2
cls
echo ---------
echo ---------
echo +--------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x1y-3
cls
echo ---------
echo ---------
echo ---------
echo +--------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x1y-4
cls
echo ---------
echo ---------
echo ---------
echo ---------
echo +--------
echo ---------
echo ---------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x1y-5
cls
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo +--------
echo ---------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x1y-6
cls
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo +--------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x1y-7
cls
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo +--------
echo ---------
echo x%x%y%y%
goto res


:x1y-8
cls
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo +--------
echo x%x%y%y%
goto res


:: [x2] ----------------------------------------------------------------------------------------------

:x2y0
echo -+-------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x2y-1
cls
echo ---------
echo -+-------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x2y-2
cls
echo ---------
echo ---------
echo -+-------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x2y-3
cls
echo ---------
echo ---------
echo ---------
echo -+-------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x2y-4
cls
echo ---------
echo ---------
echo ---------
echo ---------
echo -+-------
echo ---------
echo ---------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x2y-5
cls
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo -+-------
echo ---------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x2y-6
cls
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo -+-------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x2y-7
cls
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo -+-------
echo ---------
echo x%x%y%y%
goto res


:x2y-8
cls
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo -+-------
echo x%x%y%y%
goto res

:: [x3] ----------------------------------------------------------------------------------------------

:x3y0
echo --+------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x3y-1
cls
echo ---------
echo --+------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x3y-2
cls
echo ---------
echo ---------
echo --+------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x3y-3
cls
echo ---------
echo ---------
echo ---------
echo --+------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x3y-4
cls
echo ---------
echo ---------
echo ---------
echo ---------
echo --+------
echo ---------
echo ---------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x3y-5
cls
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo --+------
echo ---------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x3y-6
cls
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo --+------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x3y-7
cls
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo --+------
echo ---------
echo x%x%y%y%
goto res


:x3y-8
cls
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo --+------
echo x%x%y%y%
goto res

:: [x4] ----------------------------------------------------------------------------------------------

::TODO - Finish coding x-axis 4, 5, 6, 7, 8, and 9.

:x4y0
echo ---+-----
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x4y-1
cls
echo ---------
echo ---+-----
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x4y-2
cls
echo ---------
echo ---------
echo ---+-----
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x4y-3
cls
echo ---------
echo ---------
echo ---------
echo ---+-----
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x4y-4
cls
echo ---------
echo ---------
echo ---------
echo ---------
echo ---+-----
echo ---------
echo ---------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x4y-5
cls
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---+-----
echo ---------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x4y-6
cls
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---+-----
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x4y-7
cls
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---+-----
echo ---------
echo x%x%y%y%
goto res


:x4y-8
cls
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---+-----
echo x%x%y%y%
goto res

:: [x5] ----------------------------------------------------------------------------------------------

:x5y0
echo ----+----
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x5y-1
cls
echo ---------
echo ----+----
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x5y-2
cls
echo ---------
echo ---------
echo ----+----
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x5y-3
cls
echo ---------
echo ---------
echo ---------
echo ----+----
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x5y-4
cls
echo ---------
echo ---------
echo ---------
echo ---------
echo ----+----
echo ---------
echo ---------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x5y-5
cls
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ----+----
echo ---------
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x5y-6
cls
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ----+----
echo ---------
echo ---------
echo x%x%y%y%
goto res


:x5y-7
cls
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ----+----
echo ---------
echo x%x%y%y%
goto res


:x5y-8
cls
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ---------
echo ----+----
echo x%x%y%y%
goto res

:: [x6] ----------------------------------------------------------------------------------------------




