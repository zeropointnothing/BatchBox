@echo off

::TODO: Add branch choser to downloader.

::Is the repo ready?
set ready=true
::Change 'ready' when the downloader can be used.

if '%ready%'=='true' goto dwl if not goto noRepo

:noRepo
title Wait!
echo.
echo This Downloader is not ready yet! Trying to use it will only result in errors. Please set this up before attempting to use it! (Check code.)
pause
exit


::Download Process
:dwl

setlocal enabledelayedexpansion

    echo Hello!
    echo.
    echo Welcome to the BatchQuest downloader!
    echo If you are a developer, (or would just like to use a non-verified branch of the game) please enter the password given to you. Otherwise, please enter 1.
    set /p pass=

::If you're looking in here to bypass this password thing, by all means, go ahead. If you've got the knowledge and programs to look inside this, then you should understand that we locked the possibly broken branches behind this.
::It is merly here to make sure people just wanting to play the game won't accidently download a possibly broken copy.

    if '%pass%'=='emZ0' (
        echo Correct password. Welcome!
        echo.
        echo Please enter the name of the branch you would like to download. !CASE SENSITIVE!
        echo.
        set /p dwlName=
        echo.
        echo Attempting to download from the !dwlName! branch . . .
    
        powershell -Command "Invoke-WebRequest https://github.com/ZeroPointNothing/BatchQuest/archive/refs/heads/!dwlName!.zip -Outfile Content.zip"
        timeout 1 /nobreak >nul
        powershell -Command "Expand-Archive Content.zip"
        timeout 1 /nobreak >nul
        del Content.zip
        rename Content BatchQuest
        echo.
        echo Complete!
        pause
        exit
    )
    
    
    
    if '%pass%'=='1' (
        
        echo Attempting To Download . . .
        title Downloading . . .
        powershell -Command "Invoke-WebRequest https://github.com/ZeroPointNothing/BatchQuest/archive/refs/heads/Content.zip -Outfile Content.zip"
        echo Done
        timeout 1 /nobreak >nul
        cls
        title Unzipping . . .
        echo Attempting To Unzip . . .
        
        powershell -Command "Expand-Archive Content.zip"
        del Content.zip
        echo Done
        timeout 1 /nobreak >nul
        cls
        echo Final Touches . . .
        title Please Wait
        rename Content BatchQuest
        timeout 1 /nobreak >nul
        cls
        echo Installation Complete.
        echo.
        pause
        exit
    )

    echo That input is not correct.
    timeout 1 /nobreak >nul
    cls
    goto dwl




