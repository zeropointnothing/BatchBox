@echo off

::set /a val1=%RANDOM% %%3
set val1=0

if '%val1%'=='0' (
    set out1=This
)

if '%val1%'=='1' (
    set out1=That
)

if '%val1%'=='2' (
    set out1=The
)

echo %out1%
echo.

setlocal enabledelayedexpansion
if '%out1%'=='This' (
    set /a val2=%RANDOM% %%5

    if '!val2!'=='0' (
        set out2= fish
    )
    if '!val2!'=='1' (
        set out2= dog
    )
    if '!val2!'=='2' (
        set out2= turtle
    )
    if '!val2!'=='3' (
        set out2= cat
    )
    if '!val2!'=='4' (
        set out2= cheesestick
    )

    ::set /a val3=%RANDOM% %%3
    set val3=0
    if '!val3!'=='0' (
        set out3= will
        set /a val4=%RANDOM% %%10
        
        if '!val4!'=='0' (
            setlocal disabledelayedexpansion
            set out4= explode!
            setlocal enabledelayedexpansion
        )
        if '!val4!'=='1' (
            set out4= die.
        )
        if '!val4!'=='2' (
            set out4= become president.
        )
        if '!val4!'=='3' (
            set out4= kill you!
        )
        if '!val4!'=='4' (
            set out4= literally do nothing lmao.
        )
        if '!val4!'=='5' (
            set out4= become your father.
        )
        if '!val4!'=='6' (
            set out4= do normal!out2! things.
        )
        if '!val4!'=='7' (
            set out4= commit pancake.
        )
        if '!val4!'=='8' (
            set out4= become cheese.
        )
        if '!val4!'=='9' (
            set out4= fard.
        )        
    
    )

    if '!val3!'=='1' (
        set out3= is
    )
    if '!val3!'=='2' (
        set out3= was
    )

)
setlocal disabledelayedexpansion

echo.
echo %out2%
echo.
echo %out1%%out2%
echo.
echo %out3%
echo.
echo %out1%%out2%%out3%
echo.
echo %out4%
echo.
echo %out1%%out2%%out3%%out4%

pause
exit