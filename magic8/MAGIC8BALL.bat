@echo off

:: sets up batch

set loc=%~dp0
timeout 1 /nobreak >nul
title magic8ball
color 5

if exist %loc%stor\fr goto title 
if not exist %loc%stor\fr goto firstrun


:title
cls
echo -----------------------------------------------------------
echo =========================MAGIC=============================
echo ===========================8===============================
echo ==========================BALL=============================
echo -----------------------------------------------------------
set /p name=<%loc%stor\dat.nme
echo.
pause
echo.
echo Hello, %name%!
echo.
echo What would you like to do?
echo 1- Ask A Question
echo 2- Exit
echo 3- Settings
echo.
set /p tAns=

if '%tAns%'=='1' goto que
if '%tAns%'=='2' goto ext
if '%tAns%'=='3' goto sett
goto invl

:que
echo What's your question?
set /p que=
echo.
echo Shaking the 8ball . . .
timeout 2 /nobreak >nul

cls
echo Your answer is . . .
echo.
goto answer

:ext
exit


:sett
cls
echo ----------- Settings -----------
echo 1. Change Name
echo 2. Go back to title
echo.
set /p settAns=

if '%settAns%'=='1' goto reset
if '%settAns%'=='2' goto title

goto sett

:invl
echo.
echo %tAns% is not a valid option.
pause
cls
goto title




:firstrun
echo Welcome to magic8ball!

echo What is your name?
echo.
set /p name=
echo.
echo Hello, %name%!
echo.
timeout 2 /nobreak >nul
cls
echo starting . . .
timeout 2 /nobreak >nul
echo %name%>%loc%stor\dat.nme
echo 1 >%loc%stor\fr

cls
goto title

:answer

set /a rspNum=%RANDOM% %%10

::custom responses
if /I "%que%"=="am i alone in my room?" goto aln
::if /I "%que%"=="Will catgirls ever be real?" goto fc
if /I "%que%"=="Will lunar stop killing ocs?" goto lun
if /I "%que%"=="Which girl is best girl?" goto moni
if /I "%que%"=="Is Zero funny?" goto zer
if /I "%que%"=="should i snort fun-dip?" goto snort
::if /I "%que%"=="should i stop making cat-girls?" goto zer2
if /I "%que%"=="why r u gae?" goto why


::randomized reaponses
if '%rspNum%'=='0' goto rsp1
if '%rspNum%'=='1' goto rsp2
if '%rspNum%'=='2' goto rsp3
if '%rspNum%'=='3' goto rsp4
if '%rspNum%'=='4' goto rsp5
if '%rspNum%'=='5' goto rsp6
if '%rspNum%'=='6' goto rsp7
if '%rspNum%'=='7' goto rsp8
if '%rspNum%'=='8' goto rsp9
if '%rspNum%'=='9' goto rsp10


:rsp1
set resp=Of course not!
echo %resp%
echo.
pause
goto title

:rsp2
set resp=My sources say yes.
echo %resp%
echo.
pause
goto title

:rsp3
set resp=That is an obvious no.
echo %resp%
echo.
pause
goto title

:rsp4
set resp=Was there any doubt?
echo %resp%
echo.
pause
goto title

:rsp5
set resp=No.
echo %resp%
echo.
pause
goto title

:rsp6
set resp=Yes.
echo %resp%
echo.
pause
goto title

:rsp7
set resp=Are you seriously asking me that? No!
echo %resp%
echo.
pause
goto title

:rsp8
set resp=Ha! Like that could ever be true.
echo %resp%
echo.
pause
goto title

:rsp9
set resp=oh wow. thats a lot of yes's in the mainframe. Well, I guess we know the answer now.
echo %resp%
echo.
pause
goto title

:rsp10
set resp=... n o.
echo %resp%
echo.
pause
goto title

:reset
del %loc%stor\fr
del %loc%stor\dat.nme
start "" MAGIC8BALL
exit

:: Specific answers

:aln
echo aha... Of course not!
timeout 1 >nul
color 4
echo l o o k b e h i n d y o u
timeout 1 /nobreak >nul
goto run
exit

:fc
echo SYSTEM: [fc.exe has access to your location]
echo.
timeout 2 >nul
echo Purging all horny. Please stand still.
echo.
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/659497662638325771/1036114508827082752/im.mp4 -Outfile fc.exe.mp4"
start fc.exe.mp4
pause
exit

:lun
echo haha, murdr go brrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr
echo.
pause
exit

:moni
echo [UNAUTHORIZED CONNECTION DETECTED]
echo.
timeout 1 /nobreak >nul
echo Me, monika, of course! Want to know why? Because!
timeout 1 /nobreak >nul
echo.
echo i m  i n  y o u r  w a l l s
timeout 1 /nobreak >nul
exit

:zer
echo Of course he is.
timeout 1 /nobreak >nul
echo this isn't biased at all
timeout 1 /nobreak >nul
echo totally
timeout 1 /nobreak >nul
echo not at all
timeout 1 /nobreak >nul
echo i promise
timeout 1 /nobreak >nul
pause
exit

:snort
echo lunar, what the fuck. stop this. you need help.
pause
exit

:zer2
echo . . .
echo.
echo I'ma pass this one on to fc.
echo.
echo [starting fc.exe . . .]
timeout 3 /nobreak >nul
echo fc.exe: fc fact. i am 100 meters from your location, and am approaching rapidly!
timeout 1 /nobreak >nul
echo s t a r t  r u n n i n g
echo.
pause
goto title

:why
echo who says im gae
pause
goto title

:run
echo l̵̡̨̢̧̢̧̡̧̨̧̧̧̢̡̧̧̧̧̩̪̝̬͕̠͚̟͓͍͕͔̺̦͖̹̱̳͍̲̤̳̦̖̭͚̟͙̪̫̯͇͉̼͍̖͈̫͇̣͖̙̠̭̱̩̞̼̻̘̻̣̗̙̪͙̳̗͓̙̦̞͍̮͕͈͉̞̮̖̝̣̠̳̣̻̪͇͕̲̪̙͇͎̺̯̦̼̩̦̯͕͇̭̺̱̳͖̬͓͇͍̟̼̞͚̩͚̺̱̝̤̣͖̰̺̜̩̫͚̻͍͇͈̜̰̼͎͖̳̱̠͍̼̹̖͙͓͙̝̹̯̺͓̱̫̼̤͍̮̼̰̹̮̹̳̞͙̞̗̪̖͍͓͎͍̫̣̮̳͇̱͖̗̅͐̆̋̾̅̄̾̆̊̔̊̂̍̍̆͋̆̈́̄͋͑̐̋́̋̒̏̒͊͂͗̈́̿̊̈́̍̿̐́̍̏̆̔̒͑̃̀̑́̍̊͐̿̚̚̕̚̕͜͜͜͠͠͝ͅͅͅͅͅ ̵̨̨̨̢̢̡̡̨̢̢̧̧̢̧̨̡̢̧̨̧̨̨̢̛̛̛̛̛͇̠̞̞̦̬̯̥̦̻̳̙̲͍̪͉̹̣̥̺̠͎̞͇̱͔͓̫͔̤̰̼̫̘̲̗̠̝̘̰̗̫̙̗̯̟̤̟̪̬̣͚̗͇̝̗̮̭͓͇̮͎̩̩͇̠̺͔̻̞̞̮̯̠̮̠̰̻̗͇͓̞͙̳̰͉̦̞̘̯͍̬̠̤̠̹̺͚̰̦̤͔̲͓̠̤̖̯̤̣̥̟̹̠̞̞̘̰͓͓̜̣͕̙̟̣̯̙̮͙͙͔͙͚͎͙̦̤̜̘̘͍̖̠̤͉̻̟͔͇͖̠̫͇͕͖͉̘͈̖̙̗͈̟͎͔̼̩̠̟̠̘͓̮͍̱̬̳̹̝̤̦̙̦̩̫̝̺̖͙̟̰̺̼̜͙͕͚̙̘̭̼̗̜̯̪͕̬̲͙̟͔̗̘͇̩̜̬̥͕͕̠͕̇́̐̎͆̐̄̑̑̽̓͌̊̾̇́̋̈̅̾̑̍͗͒̑̍͐̓͆̀̆̋̃͑̂̇͌̇̀͆̆͆̉̍̇́̏͒̋̄͋͌̇͛͌̓̔͛̍́͒̓̒̈́͊̆̐͐̎̀͐̂͋͒̌́͆͋͆̿̊̉̔̅͑̋̍̎̑̒͊̉͊̓̋̋͆̓͐̅̈̈́̄̒͌̾͋̓̉̓̏̈́͛͗͊͌͑̆̿̍̃́̂̋͊̐́̿̇̈́͋̉́͛͒̅̉̈̈́̓̃̐̽̃͐̔̎͊͂̔̌̈́̈̊̐͑̈́̄̑̊͑̾̑̀́͆̔̀̍͐̒̽̆̂̃͆͑͑̔̾̃̒̅̏̏̆̈̐́͛͗̉̍̽̌̌̈́̆̈͒̽̈́̋̏̄́̀̒̋̾̈́̀͗͌͊̍̌͋͌̈́̌͆̑̿̆̅̐͊͌̿͆̕͘̕͘͘͘̕̚͘̕̚̚͘͜͜͜͜͜͜͠͝͝͝͠͝͝͝͝͝͠͝͝͠ͅͅͅơ̴̢̡̡̧̡̡̧̧̢̡̨̡̢̨̨̧̱̞̗̫̞̫̠̲̣̩̙̰̤͍̮͍͕͍̼͇̳̹̫̭͕̬̪̪͙̰̣̪͍̥̯̺̹̤̤̩̲̮͉̲̭̤̤̪͈͕̠̤̱̫̬̜̻̦̣̭͍̼̤̺̱̟̯̭̙͇̥̻̬̺̻̮̤̣̼̫͕̰̣͓̤̹͎̝̣̩͖͙͔̻̘̬̗̟͍̰̯̹̥͎̲͓͍͓̥͉̦̪̖̞̰͙͇̩̠̮̮̻̩̳̥̠͕̥̼͈̺̗̯̤͚̻̖̈́̄̉̈̄́͛̐̅͂̐́͊̋̋̀̓̈́̆̌͌̃̃͛̋̉̔̓́̉̾͊̏́̐̇͒̋́̂̅̊̈́̐̿̐̍̔̐̉̇͑̿͋͗̄̓̂͌̀͛̓͗̌̈́̑͛̓̉̊̏̒͆̐̿͗͋̀͗͋̒̊͒̀́͑̒͐̽̉͊̾̈́̾̏́̇̋̑̒̈͋̎̇͊̓́̆̓͂͑͌̈́̌̈̓̌͊̑͛̍̀̍̊́̈́̄̈́̑̄̾̽̀́͊̀̕͘̚̕͘̕̕͘̕͘̚̕͜͜͜͝͝͝͝͠͝͠͠͠͠͝͠ͅͅͅ ̵̢̨̡̧̢̧̨̧̨̡̡̡̡̧̨̧͕̭͔̞͈͚̙͕͉̣̹̮̗̥̰̙̤͕̲̯̙̹̖͖̺͖͉̙̞̜̟̞̜̟̦̣̗͍̪̗͓̪̣̮̹̝̙̼͉͙̻̲̯͍̻̺̠̭͇̬͙̦͉̙̺̪̜̙͎̻͙̻̩̭̞̖͙̟̘̺͓̯̹̖̩̤̦̘̥̪̳̦̮̞͉̯͓̜̤̻̞̤̪͎̙͓̤͓͎͙̹̖̦͕̠̪̬͚̠͔̼̪̬̩̜̦̤̬̳̦̹̦̫̭̱͙̣̙̠̗̗̭̫͍̖̬͚̪͚͈̹͎̝͙̬͔͍̬͍̮̯̩͍̹̳̟̬̹̙̖̱̝̩̟͉̰͓͍̺͙̝̹̜͚̭͚̺̩̝̤̝̲̼̠͎͚̮̼̼͔̱͕͓͙̔̾͋̄͐͌̍͌͛̽̀̋͗̒̏͋̑͂̌͊̉̓̒̈́̌̒͗͊̈̚͜͜͜͜͠͝͠ͅͅͅͅͅͅơ̵̡̧̡̨̢̡̧̨̨̢̨̨̢̨̢̱͍͙̬̤̮̤͎̳̲͓̲̹̦͙̟̳͍̻̞͕͕̘̙̞̠̠͉̦̦͖͓͔̮̺͚͕̮̦͓͓̫̠̲͚̥̜͚͕͇̥̟͖̱̫̞̗̤̲͚̥̙̟̝̣͇̤͖̙̞̼̭͙͎̠̼͎̙͇̫̹̜͉̹̯̯͉̗̗̟͉͓̞̪̭͔̺̬̳̯̮̞̩̰͓̹̳̱̭̩͔̘͙͙̫̳͙̰̘̻̫̹̱͉̫̖̰̟̬̖͙̲̯̟̻̝̣͇̣̗̝̦̭̟̯̗͖͎̱͕͍̿̇̓̒̈́̔̐̃̀͐͘͜͜͜͜͝ͅͅͅͅͅ ̸̢̧̧̢̧̢̡̢̢̢̨̡̢̧̧̨̡̧̢̢̡̧̧̡̢̧̡̟̖̤̩̖̘̙͕̺͈̗͖̭̗̗̟̝͙̙̙̳̝̣̟̗͈̫̦̫͚̣͕̙̟̤͈̫̫̼͎͎̘͎͙͇̩͕̝͎̠̺̬̪̬̮̻̰͔͇̭̗͙͙̪̤͔͔̜̻͓̠̠̳͉̮̙̘̪̲̥̦̖̝͓̘̯̻̖̖̺̤̤̪̠̰̤̭̥͉̲̪̯̹̙̭͔̥̺̻̤͙̖͈̭̭̪͈̱̼̻̤̖̻̗̭̲͓̲͖̜͔̦̤͕̗͕̲̠̹̮̟͙̘͍̼͔̠͇̖͔͓̼̩̝̗͇̫̹͕̜̮̪̪̼̝͈̜̱̫͇̞̘̮̮̣̳̞̟̩̳͙͍̜̩̥̜̘̗̺̫̘̗͙̝̳̩͕̤̺͓̭͎͎̩͖̠͓̹̜͎͕̘̥̥͙̭̩̭̱̲͍͚̯̲͚͚̖̮͓̋͒̉̉͐̆͂̒̍͐̒̊̈́̆̒̂̎͆͑́̀̍̀̀̚͘͘͜͜͜͠͠͠͝ͅͅͅͅͅk̵̡̨̨̧̧̡̢̨̨̡̨̨̢̢̡̧̡̧̛̛̛̛̘̼̺͈͖̮̪̮̯̩̟͔̱͚̦̹̻̜̻͖͎̪͕̙̙͔̺͓͇̩̺͖̟̲͈̦̩̯͈͙͇̗̠͉̼͎̫̖̱̺̣̞̠̞̺͍͚͍̺͔̳̺͙̘̦͕̖̤͍̥͖̺͔͚̫̪͎̘̤͙͚̗͙̥̬̺̤̗͉̥̙̻̣͕̪̞̯̰̻̠͕̣̼̞̱͕̮̖̬̪̘̬͓͚͖̰͖̹͉̖̩̜͉͕͚̟̰͖̟̯̻̞͎̤͍̠̲̝̲̭͉̙̪̲̟̙̹͔̝̹̟̭̜̠̥̰͈̩͚̣͇̞̞̗͇̙͎̞̱̦͕̤̗͚̙̺̹͉̫͕̪͇̮͔̝̪͓̣̥̜̙̱̣̮̤̥̙̙̼͚͎͋̈́̾͌̾͂́̎̽̊̎̓̑̽̔̎͐̀̀̓͐̋̃͋̋͒́͊̉̑̆̾̈́̀͂̒́͌͊̋̔̉̇́͌̈́́̆͐̀̀͒̃͗͂̂̊̐̄́̀̒́͐͌͛̿̾͑̂̽̆͂̄̀̽͌̄̂̈̊̀̂̐̎̑̑̿̇̉̌̅̋͌͆̄̋́͒̓̀̔̿̐̊̉̐̅͊̄̌̆̐̅̆̒͗̾̎̉̐̈́̈́͊͌͋̕͘͘͘͘͘̚͘̕̚͜͜͝͠͝͝͠͠͝͝͝͝͝ͅͅͅͅͅͅ ̴̧̡̩̺̼̪̭̭̟̺͖͑̇̊̅̃b̸̢̢̡̧̢̨̧̡̨̨̡̨̢̨̡̨̢̨̡̢̧̢̧̛̛̛̛̛̛̛̛̖͈̥̬̟̮̬͎͚̘̯͍̥͈̜͉̥͙̘͉̲̳̼̫͇̠͈̟͈̣̰̳̘̫̳͔̪̮̲͖͕̠̭̜͎͉͓͚͎̼̗̝͇̪̦̭̘͚̙̼̰̟̬͓̘̮̖̙̖͙̗͇̗̥̠̣̬͉͙̣͇̺̟̖͔̜͉͙͎͖̺̭̬̗̞̥͙̫̠̗̲̦̹̦̺̼̘̦̦̳̭̟͎̱̦̼͈̤̜̖̞͉͉͚̤͕͇̙̳͙͉̮͖̰̬̝̩͕̜̹͓̻̝͇͙̬̝̝̣̞̗̬̦͎̖̣͕̱̳̠͓͙͇͓̯̠͕̮̻̩͍̪͓̜̤͉̮͙̬͇͓͕͈̣͉̳̟̺̩͇̫̺͇͔̬̩̫̗̫̜̭̖͙͕̖̬͉̜̥͚̊̍͊͒͆̊̉̋̈̋͑̈́̀̅̇̃̿̇̐̋̋̓̓́̾̇̂̍̓͂̉̆̎͗́̽̓̐̈̒̈́̎͂̂̃̓̾͋̏́̐̎̓̿̂̀̐͛͋̽̃̄̐̎̀͗̆̍̂́̈́̊̓́̌̏̆́̀̊͋͋̏̂̇̓̎̀͑̈́̊̒͌̐͐͑̆̈̊͑̐́̇̽̏̾̾́̄̈́̓̽͌͂͐͊̓̌̓̔̑̈́̐̋̊̆̀̌̀͐̈́̄͛̾̽̒̏͆̔͛̌̏́̔̾̽̈́͆̈́͑́͗̾̽͒͋̇͋͑̂͐̋̈́̓̌̑̃̎̊̃̔͛͘̕̚̚̕͘̕̕̕͘̚͘̚̚͜͜͜͜͜͠͝͠͝͠͝͠͝͠͝͝͝͝͠͝͠͝ͅͅͅͅͅͅͅ ̵̛̛̛̛̛̯̠͚̭̠̩̘̗̼͂̔̄͂͒̍̓̀̌̀̈́̉̈́̍̓̎̎̋̐̌͌̅̅̈́̊͌͐̅͐͂͐̃̽̈̿͗͛̋̊̑͊͒͒͗͌͆̀͆̓͗̇̊̊̋̔͂̈́̒́͒̆̐̒̋̂̇̒̓̿̓́̈͐͂̈́͛́̀͋̏͑̈́̂̎͋̋͆̾͆̈̽̓͌̊͊͗̽̇̐̃͐̑̍̅̓̂̾̍̔̇͆̈̀̄̆̍̓̎̽͑̈́̅̊̈̓̀͑̈́̀̈́̆̆̾̒̉́̂͆͆̐̀̌̽̀̒̊̔̈͗͋̿̀̓͂̓͆̈̂̅̂̾̒̌͑̇̀̃̆͗̓͆̃͐̒̓̽͆̊̑͊̑͆̌͂͆̂͋̾̈̆͐͌̾̏́͑̿͐͆͆́̽̔̀́̽̈́̔̒͊̀̃͑̿̍͋̓͋͛̍͌͑̂͆̕͘͘̚̚̚̕͘͘͘̕̕̕͘̕͠͠͠͝͝͝͠͠͝͝͝͝͝͝͝͝͠͝͝ȩ̵̨̨̠̝̦̩͕̩͔͉̦͎̬̱͕̮͐̀ ̸̨̛̛̛̺̥͎̼̠̗̻̹̞͖̖̟̠͍͕̿̆̉̃̈́̏̽͛̐̒̀̇̿̊̃̏̉̄̋̿͒̇̎̐͂͗̈́͐̾̉̈̑̽́̔̇̆͑̓̃̿̊̏̈̎̎͑̃̔̽͆̏͋̄͋͒̊̊̐̈́̀̓̔͐̀͗͑̃͒̿̿́͗͂͆̐̅̀̒̃̌̀̑͒̈̿̐̀͂̿́̑̀́̐̐̆̀̈́̈́̆̽͗̉͌́̒͛̌̍̋͒̀͐̃̌̄͊̓͋̏̈̀̈̔̾͑͐̓̽̏̿̉͌̑͋̎̽̒͗͂̃̈́̒̔̒̂̍͌̈̊̍̓̌̒̈̆̈̄́̓͘͘̚̕̚̚̚͘̕̕͘͘͝͝͠͠͠͝͝͠ͅh̵̡̢̡̢̧̧̨̢̧̢̡̡̡̨̨̨̡̧̧̡̢̢̼̜̣̲͙̝̤͚̙̺͔̻̠̥̲̬͖̬͓̜̼̠̱̗̗̖̪̳̘̥̬̖̦͍̬̱͈̙̝͕̘͉̜̩̱̻̠̤͓̠̤̩͙̦̬͎͖̞̳̮̩̦̬̬̖̩̭̫͎̬̟̮̹̩͚͓͓̥̯̖̳͓̗̳̯̜̬̻̼̹͙͚̱͕̝̹̝͕͍̥̼͚̥̟̫̦̖͇͙̮̱̬͖̯̹͓̤̭̜̰̻̟̰̥̜̫̩͉̙͕͇̭͎͇̜̰̗͍̹̺̹͈̥̙͉̘͈͖͈̠̣̩̭̟̫̝͈͖̹̬̞͍̓̕͜͜͜͜ͅͅͅͅͅͅͅ ̴̢̨̢̡̡̢̡̡̨̢̧̨̨̧̡̧̡̢̡̡̢̧̨̨̨̨̡̨̨̛̺̘̙̬̲̮̘̳̫͕͖͔̖͉̦̪̪̭̫̪͈̬̮̮̺͇͔͙̟̲̙̫̞͕͉̜̭͓̱͈̣̗͓͈͈̟̟̣͓͖̟͇̤͔̻̺̯̰͚̜̪̱̜̗͎͎͚̞̙̼̮̺͉̳̤̼̠͚͉̺͇͕͈͔̯̫̰͔̯͉̫̤͙̪͎̩͖̹̼̰͉̲̫̜̗̖͖̖͓̬̰͔̭̗̟͕̗͙̼̰͉̜̩̤̮̦̟̭̺̯̭͓̯̹͔̪̹͎̜̟͔̫͈͈̹̟̬̗̞͇̞̞͚̼̮̭̙̬̮̭̥̤͎͍̼̮͖͙̝̳̜̱̣͉̬̺̟̼̦̞̗͈̥̥̳̩̺̘̺̥̮͍̮̻̦͓̪͚̺̻̭̮̰̥͎̜͇̹̞̪͓̥̩̘̦̥͌̿͛͂̽͗̎̊́̋̌̊̉̅̋̽̆͒̊̃̈́̾̈́̄̈́͛̑̏͋̉͘͘̚͜͜͜͜͜͜͜͝ͅͅͅͅͅͅͅi̸̡̢̢̢̨̡̡̧̡̧̛͙͓̳̙͈͕̫̞̲̟̻͙̟̞̦̖͙̩̩̬̯̫͕̖̲͖̪̱̺̰̥͍̪͍̞̭̰̜̲̲̝̪̘͉͎̭̳̭̼̟͍͖͇̰̟̮̦̘̝̮̼̦̰̜̹̺͎̲̣̋̋̉̇̏̇͑̃̑͛̍͂̄́̐̑̈́͆́̎̈̂̓͑̇͊͂̓̽̚͘̕̕̚͜͜͜͝͝ͅͅͅ ̸̧̧̢̡̧̢̛͚̥̤̬̹̭̤̞͓̝̪̖͓͔̳͙̪̪̘͛͛̋́͑͊͛̈́̇͑̐͛̅͒́̉͑̾̿̌͐̕͝͝n̷̨̢̢̨̡̧̨̡̧̛̛̛̛̛̛͚̯͉̤͈̼̹̣̯̰͉̻̬̼̤͎̪͉̼͉̲̗̼̞̼͖͉͚̮͇̜͎̺̠̹̟͔̼͓̜̰͓̣̜̞̙̺̮͖̝̙̼̫͚̖̲̖̜͍̺̭͇͚̰̖͈̪̟̗̹̱̦̦̭̭̳͉͔̖͓̼̭̪͍̳̬̮͇͍̬̹͈͕͎̫̻̰̺̫̼̞̹̥̗̰̪͇̏̈́̈́̊͋͊̀́̓̿̍̽̓̐̑͒̀͐̆̑̊̀̈̆̊͆͛̽̽͆̀̊͆͗́̏͂̑͊̔́̈́̑̉̾͆̆̒̒́̈́̿̉́̈́̈́͆̽̅̓͊́̏͛͒́́̓́̍̂̐̋͛̀͐̌͋̀͐̆̾̆̍͛͋̓̄̔̋̈́̀͊͛̌̓͐͒̂͂̆̋̈́̏̐͌̃̈̀͂̾̎͑̈́̊̋̽͌̏͗̋́͋͘̚̕̕̕̕̕̕̚͜͜͜͜͝͠͠͠͠͝͝͠͝͝͠ͅͅͅͅͅͅ ̴̢̨̨̢̧̡̧̧̡̨̨̡̨̨̧̡̢̛̛̛̛̛̥̪̘͈̤͔̳̦͎͇̜̖͚̪̱̗͍̼̳̜̲͓̯͔͍̲̩̺̖̣̦͇͖̲̖̼̙̰̗͚̤̖͉͈̰̯̥̮̞̼̯͉̺͓̠̞͈̪̻̤̭̳͚͇̣̫̲̹̩̖̤̞̤͇̮͔̘̭̼̳͍͇̰̠̰͈̩̖̬͉͉̙̥̳̙̭̹̰͉͉͉͇͕͍̣͔̥̟̩͚͈̮̠̘̝̩̥̦̯̬̤͙͙̠̳͖̝̭͓͖̠̦̟͕̻̣̫͓͉̫̹̯͕̝̟̺̲̹͖͉̥̹̹̻͙͚̙̓̍̾̐͑͐͑́́̽̅̋̒͗̄͌̂̆͂͛̽͑́̔̇̍̍̅̉͒͑̔̈́́̊͐̈́͒̒̃̂͑̄̊͌̇̀́̋̓̋̄̃͗̿͗́̀̋͋̆͋̒͆̆̈́̃͌̒͊̐͌̓̓̄͛͌̈̀̂͋̎̉̓̌͑́̓̓͗̍͆͊́̅́̉̾̿͆̂̓̅̏̇͋̄̀͊̈́͐̈́̂̓̀̊̎̄̔̏̌̄̄̍̓̀̈́͛̀͂͛͗̈́͒̓̑͒̓͂̽̾̀̀͊̓̾̓͐̒͆̃̆̌̑̓͐͗͆͌́̿̀͂̎̓̾͌̇̄̏͐̒̾́͂̆̔͗̍͗̀̓̑̅͋̽͒̿̌̍͛͐̾̈́͗̔̊͌͗́̄́͌̕̚̚͘̚̚̕̚̚͘̕̕̕͜͜͜͜͜͜͜͝͝͠͠͠͝͝͝͝͝͠͠͝͠͝͠͠͠ͅͅͅͅḑ̴̡̨̛̛̛̛͈͓̭̫̙̹͙̺̙̗̠̺̮̯͕̙̭͕̠͓̬͓̦̭͙̼͈̰͓̤̬̘̤̙̼̱̤͇̗̝̞̺͍̰̗̫̼̓̀̍͂͐̊̿̄͊͌̀͛̈́̎̅̓̅̈́̏̓̊͊͐̽̑̅́̀̅̒͋̐͗̀͒͗̌̂̈́̈̋͌̊̔̃̎͑͗̇̌͑̿̿͑̌͊͑͊̄̄̍̍̅́͋̀̇̎͒͆͋̅́̈́͂̀̏̀͆̃̿̈́͐͛̃́̈́̾̊̊̍̒̓̋͂̈́̈́͑̑͊̄̓̉́̓̈́̇̽̄̋̃́̿̓͗͑͐͛͂͊̾͒͑̈́̀̆̐̽͑̐̑̉̉̄̚̚̚̕͘̕͘͘̚͘̚͜͜͜͝͠͝͝͠͝͠͠͝ͅͅ ̶̢̢̢̧̧̨̡̡̢̡̧̡̡̡̨̡̡̛̛̛̛̛̛̛̛̻̦̲̜̘̳̦͕̞̞̟̝̩̙̻̳̰̘̞̞̗̹̥̻̻̞͙̞͙̬͙̱͍̳̪̗̼̖̖͚̺̰̳͓̘̮̼͇̙̠̼͎̞̟̦͖̪̝̪͎̪̩̗͍̺̼̞̩͔̬̪̗͎̣̦͉̘͎̣̳̫̺̗̱̥̯̠̲̺̜̠͈̖͕͓͎̪̟͍̬̹̹̼͚̭̩̫̗͔̫͓̩̞͓͍̯̗̗̟̯̗̩̤̫̮͖̘̹̝̜̫͉͙͚̟̪̭͚̟͛̊̒̋̓̋̈̂̇͂̄̂̍͐̓͋́̑̋̒͗͗͆͗̈́̿̋̍̑́́͊̐̑̉̇̈́̎̌̓̑͊͆͊̍́̆͆͐͑̑̾͑̃̒̋̒̋͐̿̂͐̎͒̎̈́̀̍͌͛̈́̅͐̅͑̇͑͑̎̓͐͒̀̀͐͗̈̀͗̾̈̾̄̆̿͑̂̐̒̀͂̈̆̍̆̍̎͗̐̽̍̿͒̆̍̔̄̒̉̿̅̈́́̀͗̏̌̊́͂̏͊̔̌̋̄̌̀̉̈́͐͐̀̽̔̽̓̃̓͂̂̿̂̀̎͊͂̑̆̽̓̉̂̏̔͌̑̀̇̓̃̐͒̇̀̔̒̐̀͗̅̕͘͘͜͠͝͝͝͝͝͝͠͝͝͠͝͝͠͝͝͠͠͝͠ͅͅͅͅͅȳ̷̨̡̧̡̡̢̧̢̧̢̧̡̛̛̪͙̬̠̭͙͉͎̺̹͖̝̼͕̰̰̦̙̯̜͈̩̜̦̣̬͍̥̝͈͖͇̟͉̜͚̳̣̫̠͍̜͖̬͇̠̘̦͙̠̼͇̻̼͉̻͙̦̦̗̣̼̤̬̞̝̻̭̫̱̪͖̬̰̗̬͉̠̱̹̮̙̮̖̜̬̭̦̖̼̞̖̬̥̟̟̪̭͖͛͗̒̿̍̽͑͆̇͂̎̾̈́̃͊̾̅͌͗͒̍̊̊̌͗̾̆̈́̋͛͑͛͑͋̓̽̈́̒̈̂̐̐͛̐̀̀͌̃͛̔̄͂̇̇̿͒͆̅̍͆̄̂͑̄̌̅̓̽͑̃̂́̃̊́̂̈́͆̉̅̋̍͑̑̽̔̇̾͐͌̀̎̽̓̊͘̚͘̚̚͘͜͜͝͝͝͝͠͝͠͝͝ͅͅ ̸̡̨̧̡̛̮͎͔͎̣̪̰̦͕͉̦̪̦̜͉̪͚̹͎̳͙̤̰̝̯͔͙͍̭̟̫̭̟͎̬̳̻̪̰̰̳͓͎̹̞̙̟̓̃̎̈́̑͑̏͆̀́͌̉̓̃̅̋͆͗͑̄̈́͛̎̌̆̈͑̓̿͒̄̋̉̇̅̉͊́̔̉̀̿͒̓͐̄͊̆̈́͐͗͗͗̅̓̐̇̈͋̑̔̽̈́̆̓̚̕̚͘͘̕͜͠͝͠͝ͅͅͅờ̷̧̡̨̢̡̨̧̧̨̢̡̢̢̡̧̡̨̧̢̨̡̛̛̛͖̪̠̰̜͎̲̯͔̯͕̦̺̝̩̮͇̹͙̱͇̗̹̲̯̼̺̭̫͖͖̠͔̜͍̼̯̭͉͉̰̠͓͕̗̣̝̻̘͇̠̗̗̰̖̯͍̜͍̭̬̪͖͓̱̦̬̣̙͕̟̣͖̜͓̜̭̫̩̹̟̜̠̱͓̲͈̻̭͈͈͎̹̪͎̠̬̗̫͖͎̣͈̠̖͖̦̦̝̹̗̬͙͇̖̝̟͎͖̭̙͈̩̗̠̙̯̼͓̩͕̠͇͇̩̬͓̻̝̖̯̩̙̭͈͚̞̗̜̼̲̬͉̮̝̙̲̭͖͔̜͓̦̘̮͓̹͚͓̞̮͉̜̝͎͖̤͉̜̞̱̝̖͇̩͙̹̜̲̱̻̠̫̦͍͔̯̣̲͎̬̣͙͈̩͓̱̲͚̻̞̱̜͇̩̟̜͉̹̘͚͕̞̠͈̭͕͔̖̟̬͌̏̔͑̐̀̈́̑̃͋͐̂̾́̒̑̅̐̏̈̏̎̈́̅̓͊̔̂̒͒̑̀̍́̈́̇̈̾̀̏̀́̀́͂̄̃̇̽̉̊̀̋̅̉̄͌̽̒͊̌̇̍̀̈́͛̒̔̍̒̍̋̀̽̉̃̂̍͋̽̇̅̿̂̇̆͌̀̐̇̀͆͌̀̀̄̓̐͂͛͑̍͐̐̂̑̔̄͒̍̒̒͑̊̍͗͋̔̄͑̎͊̓͊̊̈̔̋̈́̅̈̑̈́͂̽̓̐̅̿̏̓́̅̏̀̉͂́̉̇̊͊́̓̈́̉̐̈́̄̌̋̊̂̉́̆̍̅̀̀̌͌̒́̈́́̏̎̀͂͋͆̕̕̕̚͘͘̚̚͘̚͘̕͜͜͜͜͜͝͝͠͝͝͠͠͝͠͠͝͠ͅͅͅͅ ̸̧̛̛̛̛̛̛̦͖͍̠͇͖͖̦̞̼̥̺̼̳̻̺̼͖͕͍̪͕̘̗͔̰̟̽̓̅̓̒͌̓̇̿͂̈́̉̍̀̾̔̓̔̈́͒͑̏͗̉͌̀͂͆͗̊̿̈́̓̾̿͑̅͛̀̃̃̆̅͒̓͊̎͂͑̂̓͒̽̎̎̊̋͗͗̈́̇̓͐̓̓̊́̑̈́͌̑̈́͑̒̎̌́͐̅̉̔̀̆́͛̈́̓̏̽͒͊̎̍̽͆̉̃͊͆̀̅͋̀́͆̾̾̓͑͐̊̅͒̅̏̀̍̔̋̆͂̐͒̈̆̅̋̈́̋͋̾̾̎̿̒̄̿̀͒̽̉͐́́͗͌̊̈́͗̂͐̂͂̀͆̌́̒̅̀͛̽͑͑̆̽̉̍̿̒̈́̕͘̕͘͘͘͘̕͘͝͠͝͝͠͝͠͝͝͠͝͠͝͠͠͝͠ͅư̷̢̨̡̢̢̨̡̧̧̡̡̧̛̛̻͚̱͎̣̘̱̳̮̱͈͎̟͖͔̗̫̙̱̘̼̺͇͖̩̗̼̩͚̝̩̺̥͙̗̳̜̹̠̭̫̳̬̘̤̲̗̮̹͚̙̭͙̝̤͓̯̻͕̼̫̯̙͇̞̘̙͈͍̞͓̭̲͔̘͔͍̺̝̠̤͓͔̪̟̜̺̭̦̩̭̖͕̞̼͇̹̤͍̖͚̜̭̝̟̲̲̼͖̟͉̙̬̪̞̥̦̦̜̦̹̯͔̞̟͙̺̞̙͎̯̱̞̣̪̙̖̩̭̤̳͙̦̞͇͖͖̪̻̩̬̲͓͔̹͕̬̗̤͕̯̯̟̫̗̳̦̫̖̤͙̋̊͌̇̒̌̓̽̈̅͛̾̈͑̓̇̔̌͗̈̿̏̆̂̽̒̿̏̔̑̌́̌̄͛̾͂̊̔̎̈̓́͗̇̀̓́̆̎̈́̂̒͌͂̈́̆̇̇̑̂̍͐̿͑͒̓̈̊̄͌͋̎͑̔͂̈̾͒͒͛̈́̊̍̄̈́̓̔͗̉͒͂̾͌͊̾̇͐̀͑̈͐͊̊͋̆̉̿͑̃́̂̿̾̓͛̃̽̽͊͑̀̈́̇̈́̀̉͐̾̑͐̾̒̀̾͗̇͑́̾̽̀͐̈́̆̋̂̋͋̐̂̎͋̀͐̐̒͊͐͊̓̊̄̿̎̐̎̔͌̍̓̀̊̌̀̓̒̽͋͑̎́̓̐̉̑̊̌̚̕̚̕̕͘̚̕̚̕͘̕̚͜͜͜͜͠͠͝͝͝͠͝͝ͅͅͅͅͅͅ
echo l̵̡̨̢̧̢̧̡̧̨̧̧̧̢̡̧̧̧̧̩̪̝̬͕̠͚̟͓͍͕͔̺̦͖̹̱̳͍̲̤̳̦̖̭͚̟͙̪̫̯͇͉̼͍̖͈̫͇̣͖̙̠̭̱̩̞̼̻̘̻̣̗̙̪͙̳̗͓̙̦̞͍̮͕͈͉̞̮̖̝̣̠̳̣̻̪͇͕̲̪̙͇͎̺̯̦̼̩̦̯͕͇̭̺̱̳͖̬͓͇͍̟̼̞͚̩͚̺̱̝̤̣͖̰̺̜̩̫͚̻͍͇͈̜̰̼͎͖̳̱̠͍̼̹̖͙͓͙̝̹̯̺͓̱̫̼̤͍̮̼̰̹̮̹̳̞͙̞̗̪̖͍͓͎͍̫̣̮̳͇̱͖̗̅͐̆̋̾̅̄̾̆̊̔̊̂̍̍̆͋̆̈́̄͋͑̐̋́̋̒̏̒͊͂͗̈́̿̊̈́̍̿̐́̍̏̆̔̒͑̃̀̑́̍̊͐̿̚̚̕̚̕͜͜͜͠͠͝ͅͅͅͅͅ ̵̨̨̨̢̢̡̡̨̢̢̧̧̢̧̨̡̢̧̨̧̨̨̢̛̛̛̛̛͇̠̞̞̦̬̯̥̦̻̳̙̲͍̪͉̹̣̥̺̠͎̞͇̱͔͓̫͔̤̰̼̫̘̲̗̠̝̘̰̗̫̙̗̯̟̤̟̪̬̣͚̗͇̝̗̮̭͓͇̮͎̩̩͇̠̺͔̻̞̞̮̯̠̮̠̰̻̗͇͓̞͙̳̰͉̦̞̘̯͍̬̠̤̠̹̺͚̰̦̤͔̲͓̠̤̖̯̤̣̥̟̹̠̞̞̘̰͓͓̜̣͕̙̟̣̯̙̮͙͙͔͙͚͎͙̦̤̜̘̘͍̖̠̤͉̻̟͔͇͖̠̫͇͕͖͉̘͈̖̙̗͈̟͎͔̼̩̠̟̠̘͓̮͍̱̬̳̹̝̤̦̙̦̩̫̝̺̖͙̟̰̺̼̜͙͕͚̙̘̭̼̗̜̯̪͕̬̲͙̟͔̗̘͇̩̜̬̥͕͕̠͕̇́̐̎͆̐̄̑̑̽̓͌̊̾̇́̋̈̅̾̑̍͗͒̑̍͐̓͆̀̆̋̃͑̂̇͌̇̀͆̆͆̉̍̇́̏͒̋̄͋͌̇͛͌̓̔͛̍́͒̓̒̈́͊̆̐͐̎̀͐̂͋͒̌́͆͋͆̿̊̉̔̅͑̋̍̎̑̒͊̉͊̓̋̋͆̓͐̅̈̈́̄̒͌̾͋̓̉̓̏̈́͛͗͊͌͑̆̿̍̃́̂̋͊̐́̿̇̈́͋̉́͛͒̅̉̈̈́̓̃̐̽̃͐̔̎͊͂̔̌̈́̈̊̐͑̈́̄̑̊͑̾̑̀́͆̔̀̍͐̒̽̆̂̃͆͑͑̔̾̃̒̅̏̏̆̈̐́͛͗̉̍̽̌̌̈́̆̈͒̽̈́̋̏̄́̀̒̋̾̈́̀͗͌͊̍̌͋͌̈́̌͆̑̿̆̅̐͊͌̿͆̕͘̕͘͘͘̕̚͘̕̚̚͘͜͜͜͜͜͜͠͝͝͝͠͝͝͝͝͝͠͝͝͠ͅͅͅơ̴̢̡̡̧̡̡̧̧̢̡̨̡̢̨̨̧̱̞̗̫̞̫̠̲̣̩̙̰̤͍̮͍͕͍̼͇̳̹̫̭͕̬̪̪͙̰̣̪͍̥̯̺̹̤̤̩̲̮͉̲̭̤̤̪͈͕̠̤̱̫̬̜̻̦̣̭͍̼̤̺̱̟̯̭̙͇̥̻̬̺̻̮̤̣̼̫͕̰̣͓̤̹͎̝̣̩͖͙͔̻̘̬̗̟͍̰̯̹̥͎̲͓͍͓̥͉̦̪̖̞̰͙͇̩̠̮̮̻̩̳̥̠͕̥̼͈̺̗̯̤͚̻̖̈́̄̉̈̄́͛̐̅͂̐́͊̋̋̀̓̈́̆̌͌̃̃͛̋̉̔̓́̉̾͊̏́̐̇͒̋́̂̅̊̈́̐̿̐̍̔̐̉̇͑̿͋͗̄̓̂͌̀͛̓͗̌̈́̑͛̓̉̊̏̒͆̐̿͗͋̀͗͋̒̊͒̀́͑̒͐̽̉͊̾̈́̾̏́̇̋̑̒̈͋̎̇͊̓́̆̓͂͑͌̈́̌̈̓̌͊̑͛̍̀̍̊́̈́̄̈́̑̄̾̽̀́͊̀̕͘̚̕͘̕̕͘̕͘̚̕͜͜͜͝͝͝͝͠͝͠͠͠͠͝͠ͅͅͅ ̵̢̨̡̧̢̧̨̧̨̡̡̡̡̧̨̧͕̭͔̞͈͚̙͕͉̣̹̮̗̥̰̙̤͕̲̯̙̹̖͖̺͖͉̙̞̜̟̞̜̟̦̣̗͍̪̗͓̪̣̮̹̝̙̼͉͙̻̲̯͍̻̺̠̭͇̬͙̦͉̙̺̪̜̙͎̻͙̻̩̭̞̖͙̟̘̺͓̯̹̖̩̤̦̘̥̪̳̦̮̞͉̯͓̜̤̻̞̤̪͎̙͓̤͓͎͙̹̖̦͕̠̪̬͚̠͔̼̪̬̩̜̦̤̬̳̦̹̦̫̭̱͙̣̙̠̗̗̭̫͍̖̬͚̪͚͈̹͎̝͙̬͔͍̬͍̮̯̩͍̹̳̟̬̹̙̖̱̝̩̟͉̰͓͍̺͙̝̹̜͚̭͚̺̩̝̤̝̲̼̠͎͚̮̼̼͔̱͕͓͙̔̾͋̄͐͌̍͌͛̽̀̋͗̒̏͋̑͂̌͊̉̓̒̈́̌̒͗͊̈̚͜͜͜͜͠͝͠ͅͅͅͅͅͅơ̵̡̧̡̨̢̡̧̨̨̢̨̨̢̨̢̱͍͙̬̤̮̤͎̳̲͓̲̹̦͙̟̳͍̻̞͕͕̘̙̞̠̠͉̦̦͖͓͔̮̺͚͕̮̦͓͓̫̠̲͚̥̜͚͕͇̥̟͖̱̫̞̗̤̲͚̥̙̟̝̣͇̤͖̙̞̼̭͙͎̠̼͎̙͇̫̹̜͉̹̯̯͉̗̗̟͉͓̞̪̭͔̺̬̳̯̮̞̩̰͓̹̳̱̭̩͔̘͙͙̫̳͙̰̘̻̫̹̱͉̫̖̰̟̬̖͙̲̯̟̻̝̣͇̣̗̝̦̭̟̯̗͖͎̱͕͍̿̇̓̒̈́̔̐̃̀͐͘͜͜͜͜͝ͅͅͅͅͅ ̸̢̧̧̢̧̢̡̢̢̢̨̡̢̧̧̨̡̧̢̢̡̧̧̡̢̧̡̟̖̤̩̖̘̙͕̺͈̗͖̭̗̗̟̝͙̙̙̳̝̣̟̗͈̫̦̫͚̣͕̙̟̤͈̫̫̼͎͎̘͎͙͇̩͕̝͎̠̺̬̪̬̮̻̰͔͇̭̗͙͙̪̤͔͔̜̻͓̠̠̳͉̮̙̘̪̲̥̦̖̝͓̘̯̻̖̖̺̤̤̪̠̰̤̭̥͉̲̪̯̹̙̭͔̥̺̻̤͙̖͈̭̭̪͈̱̼̻̤̖̻̗̭̲͓̲͖̜͔̦̤͕̗͕̲̠̹̮̟͙̘͍̼͔̠͇̖͔͓̼̩̝̗͇̫̹͕̜̮̪̪̼̝͈̜̱̫͇̞̘̮̮̣̳̞̟̩̳͙͍̜̩̥̜̘̗̺̫̘̗͙̝̳̩͕̤̺͓̭͎͎̩͖̠͓̹̜͎͕̘̥̥͙̭̩̭̱̲͍͚̯̲͚͚̖̮͓̋͒̉̉͐̆͂̒̍͐̒̊̈́̆̒̂̎͆͑́̀̍̀̀̚͘͘͜͜͜͠͠͠͝ͅͅͅͅͅk̵̡̨̨̧̧̡̢̨̨̡̨̨̢̢̡̧̡̧̛̛̛̛̘̼̺͈͖̮̪̮̯̩̟͔̱͚̦̹̻̜̻͖͎̪͕̙̙͔̺͓͇̩̺͖̟̲͈̦̩̯͈͙͇̗̠͉̼͎̫̖̱̺̣̞̠̞̺͍͚͍̺͔̳̺͙̘̦͕̖̤͍̥͖̺͔͚̫̪͎̘̤͙͚̗͙̥̬̺̤̗͉̥̙̻̣͕̪̞̯̰̻̠͕̣̼̞̱͕̮̖̬̪̘̬͓͚͖̰͖̹͉̖̩̜͉͕͚̟̰͖̟̯̻̞͎̤͍̠̲̝̲̭͉̙̪̲̟̙̹͔̝̹̟̭̜̠̥̰͈̩͚̣͇̞̞̗͇̙͎̞̱̦͕̤̗͚̙̺̹͉̫͕̪͇̮͔̝̪͓̣̥̜̙̱̣̮̤̥̙̙̼͚͎͋̈́̾͌̾͂́̎̽̊̎̓̑̽̔̎͐̀̀̓͐̋̃͋̋͒́͊̉̑̆̾̈́̀͂̒́͌͊̋̔̉̇́͌̈́́̆͐̀̀͒̃͗͂̂̊̐̄́̀̒́͐͌͛̿̾͑̂̽̆͂̄̀̽͌̄̂̈̊̀̂̐̎̑̑̿̇̉̌̅̋͌͆̄̋́͒̓̀̔̿̐̊̉̐̅͊̄̌̆̐̅̆̒͗̾̎̉̐̈́̈́͊͌͋̕͘͘͘͘͘̚͘̕̚͜͜͝͠͝͝͠͠͝͝͝͝͝ͅͅͅͅͅͅ ̴̧̡̩̺̼̪̭̭̟̺͖͑̇̊̅̃b̸̢̢̡̧̢̨̧̡̨̨̡̨̢̨̡̨̢̨̡̢̧̢̧̛̛̛̛̛̛̛̛̖͈̥̬̟̮̬͎͚̘̯͍̥͈̜͉̥͙̘͉̲̳̼̫͇̠͈̟͈̣̰̳̘̫̳͔̪̮̲͖͕̠̭̜͎͉͓͚͎̼̗̝͇̪̦̭̘͚̙̼̰̟̬͓̘̮̖̙̖͙̗͇̗̥̠̣̬͉͙̣͇̺̟̖͔̜͉͙͎͖̺̭̬̗̞̥͙̫̠̗̲̦̹̦̺̼̘̦̦̳̭̟͎̱̦̼͈̤̜̖̞͉͉͚̤͕͇̙̳͙͉̮͖̰̬̝̩͕̜̹͓̻̝͇͙̬̝̝̣̞̗̬̦͎̖̣͕̱̳̠͓͙͇͓̯̠͕̮̻̩͍̪͓̜̤͉̮͙̬͇͓͕͈̣͉̳̟̺̩͇̫̺͇͔̬̩̫̗̫̜̭̖͙͕̖̬͉̜̥͚̊̍͊͒͆̊̉̋̈̋͑̈́̀̅̇̃̿̇̐̋̋̓̓́̾̇̂̍̓͂̉̆̎͗́̽̓̐̈̒̈́̎͂̂̃̓̾͋̏́̐̎̓̿̂̀̐͛͋̽̃̄̐̎̀͗̆̍̂́̈́̊̓́̌̏̆́̀̊͋͋̏̂̇̓̎̀͑̈́̊̒͌̐͐͑̆̈̊͑̐́̇̽̏̾̾́̄̈́̓̽͌͂͐͊̓̌̓̔̑̈́̐̋̊̆̀̌̀͐̈́̄͛̾̽̒̏͆̔͛̌̏́̔̾̽̈́͆̈́͑́͗̾̽͒͋̇͋͑̂͐̋̈́̓̌̑̃̎̊̃̔͛͘̕̚̚̕͘̕̕̕͘̚͘̚̚͜͜͜͜͜͠͝͠͝͠͝͠͝͠͝͝͝͝͠͝͠͝ͅͅͅͅͅͅͅ ̵̛̛̛̛̛̯̠͚̭̠̩̘̗̼͂̔̄͂͒̍̓̀̌̀̈́̉̈́̍̓̎̎̋̐̌͌̅̅̈́̊͌͐̅͐͂͐̃̽̈̿͗͛̋̊̑͊͒͒͗͌͆̀͆̓͗̇̊̊̋̔͂̈́̒́͒̆̐̒̋̂̇̒̓̿̓́̈͐͂̈́͛́̀͋̏͑̈́̂̎͋̋͆̾͆̈̽̓͌̊͊͗̽̇̐̃͐̑̍̅̓̂̾̍̔̇͆̈̀̄̆̍̓̎̽͑̈́̅̊̈̓̀͑̈́̀̈́̆̆̾̒̉́̂͆͆̐̀̌̽̀̒̊̔̈͗͋̿̀̓͂̓͆̈̂̅̂̾̒̌͑̇̀̃̆͗̓͆̃͐̒̓̽͆̊̑͊̑͆̌͂͆̂͋̾̈̆͐͌̾̏́͑̿͐͆͆́̽̔̀́̽̈́̔̒͊̀̃͑̿̍͋̓͋͛̍͌͑̂͆̕͘͘̚̚̚̕͘͘͘̕̕̕͘̕͠͠͠͝͝͝͠͠͝͝͝͝͝͝͝͝͠͝͝ȩ̵̨̨̠̝̦̩͕̩͔͉̦͎̬̱͕̮͐̀ ̸̨̛̛̛̺̥͎̼̠̗̻̹̞͖̖̟̠͍͕̿̆̉̃̈́̏̽͛̐̒̀̇̿̊̃̏̉̄̋̿͒̇̎̐͂͗̈́͐̾̉̈̑̽́̔̇̆͑̓̃̿̊̏̈̎̎͑̃̔̽͆̏͋̄͋͒̊̊̐̈́̀̓̔͐̀͗͑̃͒̿̿́͗͂͆̐̅̀̒̃̌̀̑͒̈̿̐̀͂̿́̑̀́̐̐̆̀̈́̈́̆̽͗̉͌́̒͛̌̍̋͒̀͐̃̌̄͊̓͋̏̈̀̈̔̾͑͐̓̽̏̿̉͌̑͋̎̽̒͗͂̃̈́̒̔̒̂̍͌̈̊̍̓̌̒̈̆̈̄́̓͘͘̚̕̚̚̚͘̕̕͘͘͝͝͠͠͠͝͝͠ͅh̵̡̢̡̢̧̧̨̢̧̢̡̡̡̨̨̨̡̧̧̡̢̢̼̜̣̲͙̝̤͚̙̺͔̻̠̥̲̬͖̬͓̜̼̠̱̗̗̖̪̳̘̥̬̖̦͍̬̱͈̙̝͕̘͉̜̩̱̻̠̤͓̠̤̩͙̦̬͎͖̞̳̮̩̦̬̬̖̩̭̫͎̬̟̮̹̩͚͓͓̥̯̖̳͓̗̳̯̜̬̻̼̹͙͚̱͕̝̹̝͕͍̥̼͚̥̟̫̦̖͇͙̮̱̬͖̯̹͓̤̭̜̰̻̟̰̥̜̫̩͉̙͕͇̭͎͇̜̰̗͍̹̺̹͈̥̙͉̘͈͖͈̠̣̩̭̟̫̝͈͖̹̬̞͍̓̕͜͜͜͜ͅͅͅͅͅͅͅ ̴̢̨̢̡̡̢̡̡̨̢̧̨̨̧̡̧̡̢̡̡̢̧̨̨̨̨̡̨̨̛̺̘̙̬̲̮̘̳̫͕͖͔̖͉̦̪̪̭̫̪͈̬̮̮̺͇͔͙̟̲̙̫̞͕͉̜̭͓̱͈̣̗͓͈͈̟̟̣͓͖̟͇̤͔̻̺̯̰͚̜̪̱̜̗͎͎͚̞̙̼̮̺͉̳̤̼̠͚͉̺͇͕͈͔̯̫̰͔̯͉̫̤͙̪͎̩͖̹̼̰͉̲̫̜̗̖͖̖͓̬̰͔̭̗̟͕̗͙̼̰͉̜̩̤̮̦̟̭̺̯̭͓̯̹͔̪̹͎̜̟͔̫͈͈̹̟̬̗̞͇̞̞͚̼̮̭̙̬̮̭̥̤͎͍̼̮͖͙̝̳̜̱̣͉̬̺̟̼̦̞̗͈̥̥̳̩̺̘̺̥̮͍̮̻̦͓̪͚̺̻̭̮̰̥͎̜͇̹̞̪͓̥̩̘̦̥͌̿͛͂̽͗̎̊́̋̌̊̉̅̋̽̆͒̊̃̈́̾̈́̄̈́͛̑̏͋̉͘͘̚͜͜͜͜͜͜͜͝ͅͅͅͅͅͅͅi̸̡̢̢̢̨̡̡̧̡̧̛͙͓̳̙͈͕̫̞̲̟̻͙̟̞̦̖͙̩̩̬̯̫͕̖̲͖̪̱̺̰̥͍̪͍̞̭̰̜̲̲̝̪̘͉͎̭̳̭̼̟͍͖͇̰̟̮̦̘̝̮̼̦̰̜̹̺͎̲̣̋̋̉̇̏̇͑̃̑͛̍͂̄́̐̑̈́͆́̎̈̂̓͑̇͊͂̓̽̚͘̕̕̚͜͜͜͝͝ͅͅͅ ̸̧̧̢̡̧̢̛͚̥̤̬̹̭̤̞͓̝̪̖͓͔̳͙̪̪̘͛͛̋́͑͊͛̈́̇͑̐͛̅͒́̉͑̾̿̌͐̕͝͝n̷̨̢̢̨̡̧̨̡̧̛̛̛̛̛̛͚̯͉̤͈̼̹̣̯̰͉̻̬̼̤͎̪͉̼͉̲̗̼̞̼͖͉͚̮͇̜͎̺̠̹̟͔̼͓̜̰͓̣̜̞̙̺̮͖̝̙̼̫͚̖̲̖̜͍̺̭͇͚̰̖͈̪̟̗̹̱̦̦̭̭̳͉͔̖͓̼̭̪͍̳̬̮͇͍̬̹͈͕͎̫̻̰̺̫̼̞̹̥̗̰̪͇̏̈́̈́̊͋͊̀́̓̿̍̽̓̐̑͒̀͐̆̑̊̀̈̆̊͆͛̽̽͆̀̊͆͗́̏͂̑͊̔́̈́̑̉̾͆̆̒̒́̈́̿̉́̈́̈́͆̽̅̓͊́̏͛͒́́̓́̍̂̐̋͛̀͐̌͋̀͐̆̾̆̍͛͋̓̄̔̋̈́̀͊͛̌̓͐͒̂͂̆̋̈́̏̐͌̃̈̀͂̾̎͑̈́̊̋̽͌̏͗̋́͋͘̚̕̕̕̕̕̕̚͜͜͜͜͝͠͠͠͠͝͝͠͝͝͠ͅͅͅͅͅͅ ̴̢̨̨̢̧̡̧̧̡̨̨̡̨̨̧̡̢̛̛̛̛̛̥̪̘͈̤͔̳̦͎͇̜̖͚̪̱̗͍̼̳̜̲͓̯͔͍̲̩̺̖̣̦͇͖̲̖̼̙̰̗͚̤̖͉͈̰̯̥̮̞̼̯͉̺͓̠̞͈̪̻̤̭̳͚͇̣̫̲̹̩̖̤̞̤͇̮͔̘̭̼̳͍͇̰̠̰͈̩̖̬͉͉̙̥̳̙̭̹̰͉͉͉͇͕͍̣͔̥̟̩͚͈̮̠̘̝̩̥̦̯̬̤͙͙̠̳͖̝̭͓͖̠̦̟͕̻̣̫͓͉̫̹̯͕̝̟̺̲̹͖͉̥̹̹̻͙͚̙̓̍̾̐͑͐͑́́̽̅̋̒͗̄͌̂̆͂͛̽͑́̔̇̍̍̅̉͒͑̔̈́́̊͐̈́͒̒̃̂͑̄̊͌̇̀́̋̓̋̄̃͗̿͗́̀̋͋̆͋̒͆̆̈́̃͌̒͊̐͌̓̓̄͛͌̈̀̂͋̎̉̓̌͑́̓̓͗̍͆͊́̅́̉̾̿͆̂̓̅̏̇͋̄̀͊̈́͐̈́̂̓̀̊̎̄̔̏̌̄̄̍̓̀̈́͛̀͂͛͗̈́͒̓̑͒̓͂̽̾̀̀͊̓̾̓͐̒͆̃̆̌̑̓͐͗͆͌́̿̀͂̎̓̾͌̇̄̏͐̒̾́͂̆̔͗̍͗̀̓̑̅͋̽͒̿̌̍͛͐̾̈́͗̔̊͌͗́̄́͌̕̚̚͘̚̚̕̚̚͘̕̕̕͜͜͜͜͜͜͜͝͝͠͠͠͝͝͝͝͝͠͠͝͠͝͠͠͠ͅͅͅͅḑ̴̡̨̛̛̛̛͈͓̭̫̙̹͙̺̙̗̠̺̮̯͕̙̭͕̠͓̬͓̦̭͙̼͈̰͓̤̬̘̤̙̼̱̤͇̗̝̞̺͍̰̗̫̼̓̀̍͂͐̊̿̄͊͌̀͛̈́̎̅̓̅̈́̏̓̊͊͐̽̑̅́̀̅̒͋̐͗̀͒͗̌̂̈́̈̋͌̊̔̃̎͑͗̇̌͑̿̿͑̌͊͑͊̄̄̍̍̅́͋̀̇̎͒͆͋̅́̈́͂̀̏̀͆̃̿̈́͐͛̃́̈́̾̊̊̍̒̓̋͂̈́̈́͑̑͊̄̓̉́̓̈́̇̽̄̋̃́̿̓͗͑͐͛͂͊̾͒͑̈́̀̆̐̽͑̐̑̉̉̄̚̚̚̕͘̕͘͘̚͘̚͜͜͜͝͠͝͝͠͝͠͠͝ͅͅ ̶̢̢̢̧̧̨̡̡̢̡̧̡̡̡̨̡̡̛̛̛̛̛̛̛̛̻̦̲̜̘̳̦͕̞̞̟̝̩̙̻̳̰̘̞̞̗̹̥̻̻̞͙̞͙̬͙̱͍̳̪̗̼̖̖͚̺̰̳͓̘̮̼͇̙̠̼͎̞̟̦͖̪̝̪͎̪̩̗͍̺̼̞̩͔̬̪̗͎̣̦͉̘͎̣̳̫̺̗̱̥̯̠̲̺̜̠͈̖͕͓͎̪̟͍̬̹̹̼͚̭̩̫̗͔̫͓̩̞͓͍̯̗̗̟̯̗̩̤̫̮͖̘̹̝̜̫͉͙͚̟̪̭͚̟͛̊̒̋̓̋̈̂̇͂̄̂̍͐̓͋́̑̋̒͗͗͆͗̈́̿̋̍̑́́͊̐̑̉̇̈́̎̌̓̑͊͆͊̍́̆͆͐͑̑̾͑̃̒̋̒̋͐̿̂͐̎͒̎̈́̀̍͌͛̈́̅͐̅͑̇͑͑̎̓͐͒̀̀͐͗̈̀͗̾̈̾̄̆̿͑̂̐̒̀͂̈̆̍̆̍̎͗̐̽̍̿͒̆̍̔̄̒̉̿̅̈́́̀͗̏̌̊́͂̏͊̔̌̋̄̌̀̉̈́͐͐̀̽̔̽̓̃̓͂̂̿̂̀̎͊͂̑̆̽̓̉̂̏̔͌̑̀̇̓̃̐͒̇̀̔̒̐̀͗̅̕͘͘͜͠͝͝͝͝͝͝͠͝͝͠͝͝͠͝͝͠͠͝͠ͅͅͅͅͅȳ̷̨̡̧̡̡̢̧̢̧̢̧̡̛̛̪͙̬̠̭͙͉͎̺̹͖̝̼͕̰̰̦̙̯̜͈̩̜̦̣̬͍̥̝͈͖͇̟͉̜͚̳̣̫̠͍̜͖̬͇̠̘̦͙̠̼͇̻̼͉̻͙̦̦̗̣̼̤̬̞̝̻̭̫̱̪͖̬̰̗̬͉̠̱̹̮̙̮̖̜̬̭̦̖̼̞̖̬̥̟̟̪̭͖͛͗̒̿̍̽͑͆̇͂̎̾̈́̃͊̾̅͌͗͒̍̊̊̌͗̾̆̈́̋͛͑͛͑͋̓̽̈́̒̈̂̐̐͛̐̀̀͌̃͛̔̄͂̇̇̿͒͆̅̍͆̄̂͑̄̌̅̓̽͑̃̂́̃̊́̂̈́͆̉̅̋̍͑̑̽̔̇̾͐͌̀̎̽̓̊͘̚͘̚̚͘͜͜͝͝͝͝͠͝͠͝͝ͅͅ ̸̡̨̧̡̛̮͎͔͎̣̪̰̦͕͉̦̪̦̜͉̪͚̹͎̳͙̤̰̝̯͔͙͍̭̟̫̭̟͎̬̳̻̪̰̰̳͓͎̹̞̙̟̓̃̎̈́̑͑̏͆̀́͌̉̓̃̅̋͆͗͑̄̈́͛̎̌̆̈͑̓̿͒̄̋̉̇̅̉͊́̔̉̀̿͒̓͐̄͊̆̈́͐͗͗͗̅̓̐̇̈͋̑̔̽̈́̆̓̚̕̚͘͘̕͜͠͝͠͝ͅͅͅờ̷̧̡̨̢̡̨̧̧̨̢̡̢̢̡̧̡̨̧̢̨̡̛̛̛͖̪̠̰̜͎̲̯͔̯͕̦̺̝̩̮͇̹͙̱͇̗̹̲̯̼̺̭̫͖͖̠͔̜͍̼̯̭͉͉̰̠͓͕̗̣̝̻̘͇̠̗̗̰̖̯͍̜͍̭̬̪͖͓̱̦̬̣̙͕̟̣͖̜͓̜̭̫̩̹̟̜̠̱͓̲͈̻̭͈͈͎̹̪͎̠̬̗̫͖͎̣͈̠̖͖̦̦̝̹̗̬͙͇̖̝̟͎͖̭̙͈̩̗̠̙̯̼͓̩͕̠͇͇̩̬͓̻̝̖̯̩̙̭͈͚̞̗̜̼̲̬͉̮̝̙̲̭͖͔̜͓̦̘̮͓̹͚͓̞̮͉̜̝͎͖̤͉̜̞̱̝̖͇̩͙̹̜̲̱̻̠̫̦͍͔̯̣̲͎̬̣͙͈̩͓̱̲͚̻̞̱̜͇̩̟̜͉̹̘͚͕̞̠͈̭͕͔̖̟̬͌̏̔͑̐̀̈́̑̃͋͐̂̾́̒̑̅̐̏̈̏̎̈́̅̓͊̔̂̒͒̑̀̍́̈́̇̈̾̀̏̀́̀́͂̄̃̇̽̉̊̀̋̅̉̄͌̽̒͊̌̇̍̀̈́͛̒̔̍̒̍̋̀̽̉̃̂̍͋̽̇̅̿̂̇̆͌̀̐̇̀͆͌̀̀̄̓̐͂͛͑̍͐̐̂̑̔̄͒̍̒̒͑̊̍͗͋̔̄͑̎͊̓͊̊̈̔̋̈́̅̈̑̈́͂̽̓̐̅̿̏̓́̅̏̀̉͂́̉̇̊͊́̓̈́̉̐̈́̄̌̋̊̂̉́̆̍̅̀̀̌͌̒́̈́́̏̎̀͂͋͆̕̕̕̚͘͘̚̚͘̚͘̕͜͜͜͜͜͝͝͠͝͝͠͠͝͠͠͝͠ͅͅͅͅ ̸̧̛̛̛̛̛̛̦͖͍̠͇͖͖̦̞̼̥̺̼̳̻̺̼͖͕͍̪͕̘̗͔̰̟̽̓̅̓̒͌̓̇̿͂̈́̉̍̀̾̔̓̔̈́͒͑̏͗̉͌̀͂͆͗̊̿̈́̓̾̿͑̅͛̀̃̃̆̅͒̓͊̎͂͑̂̓͒̽̎̎̊̋͗͗̈́̇̓͐̓̓̊́̑̈́͌̑̈́͑̒̎̌́͐̅̉̔̀̆́͛̈́̓̏̽͒͊̎̍̽͆̉̃͊͆̀̅͋̀́͆̾̾̓͑͐̊̅͒̅̏̀̍̔̋̆͂̐͒̈̆̅̋̈́̋͋̾̾̎̿̒̄̿̀͒̽̉͐́́͗͌̊̈́͗̂͐̂͂̀͆̌́̒̅̀͛̽͑͑̆̽̉̍̿̒̈́̕͘̕͘͘͘͘̕͘͝͠͝͝͠͝͠͝͝͠͝͠͝͠͠͝͠ͅư̷̢̨̡̢̢̨̡̧̧̡̡̧̛̛̻͚̱͎̣̘̱̳̮̱͈͎̟͖͔̗̫̙̱̘̼̺͇͖̩̗̼̩͚̝̩̺̥͙̗̳̜̹̠̭̫̳̬̘̤̲̗̮̹͚̙̭͙̝̤͓̯̻͕̼̫̯̙͇̞̘̙͈͍̞͓̭̲͔̘͔͍̺̝̠̤͓͔̪̟̜̺̭̦̩̭̖͕̞̼͇̹̤͍̖͚̜̭̝̟̲̲̼͖̟͉̙̬̪̞̥̦̦̜̦̹̯͔̞̟͙̺̞̙͎̯̱̞̣̪̙̖̩̭̤̳͙̦̞͇͖͖̪̻̩̬̲͓͔̹͕̬̗̤͕̯̯̟̫̗̳̦̫̖̤͙̋̊͌̇̒̌̓̽̈̅͛̾̈͑̓̇̔̌͗̈̿̏̆̂̽̒̿̏̔̑̌́̌̄͛̾͂̊̔̎̈̓́͗̇̀̓́̆̎̈́̂̒͌͂̈́̆̇̇̑̂̍͐̿͑͒̓̈̊̄͌͋̎͑̔͂̈̾͒͒͛̈́̊̍̄̈́̓̔͗̉͒͂̾͌͊̾̇͐̀͑̈͐͊̊͋̆̉̿͑̃́̂̿̾̓͛̃̽̽͊͑̀̈́̇̈́̀̉͐̾̑͐̾̒̀̾͗̇͑́̾̽̀͐̈́̆̋̂̋͋̐̂̎͋̀͐̐̒͊͐͊̓̊̄̿̎̐̎̔͌̍̓̀̊̌̀̓̒̽͋͑̎́̓̐̉̑̊̌̚̕̚̕̕͘̚̕̚̕͘̕̚͜͜͜͜͠͠͝͝͝͠͝͝ͅͅͅͅͅͅ
echo l̵̡̨̢̧̢̧̡̧̨̧̧̧̢̡̧̧̧̧̩̪̝̬͕̠͚̟͓͍͕͔̺̦͖̹̱̳͍̲̤̳̦̖̭͚̟͙̪̫̯͇͉̼͍̖͈̫͇̣͖̙̠̭̱̩̞̼̻̘̻̣̗̙̪͙̳̗͓̙̦̞͍̮͕͈͉̞̮̖̝̣̠̳̣̻̪͇͕̲̪̙͇͎̺̯̦̼̩̦̯͕͇̭̺̱̳͖̬͓͇͍̟̼̞͚̩͚̺̱̝̤̣͖̰̺̜̩̫͚̻͍͇͈̜̰̼͎͖̳̱̠͍̼̹̖͙͓͙̝̹̯̺͓̱̫̼̤͍̮̼̰̹̮̹̳̞͙̞̗̪̖͍͓͎͍̫̣̮̳͇̱͖̗̅͐̆̋̾̅̄̾̆̊̔̊̂̍̍̆͋̆̈́̄͋͑̐̋́̋̒̏̒͊͂͗̈́̿̊̈́̍̿̐́̍̏̆̔̒͑̃̀̑́̍̊͐̿̚̚̕̚̕͜͜͜͠͠͝ͅͅͅͅͅ ̵̨̨̨̢̢̡̡̨̢̢̧̧̢̧̨̡̢̧̨̧̨̨̢̛̛̛̛̛͇̠̞̞̦̬̯̥̦̻̳̙̲͍̪͉̹̣̥̺̠͎̞͇̱͔͓̫͔̤̰̼̫̘̲̗̠̝̘̰̗̫̙̗̯̟̤̟̪̬̣͚̗͇̝̗̮̭͓͇̮͎̩̩͇̠̺͔̻̞̞̮̯̠̮̠̰̻̗͇͓̞͙̳̰͉̦̞̘̯͍̬̠̤̠̹̺͚̰̦̤͔̲͓̠̤̖̯̤̣̥̟̹̠̞̞̘̰͓͓̜̣͕̙̟̣̯̙̮͙͙͔͙͚͎͙̦̤̜̘̘͍̖̠̤͉̻̟͔͇͖̠̫͇͕͖͉̘͈̖̙̗͈̟͎͔̼̩̠̟̠̘͓̮͍̱̬̳̹̝̤̦̙̦̩̫̝̺̖͙̟̰̺̼̜͙͕͚̙̘̭̼̗̜̯̪͕̬̲͙̟͔̗̘͇̩̜̬̥͕͕̠͕̇́̐̎͆̐̄̑̑̽̓͌̊̾̇́̋̈̅̾̑̍͗͒̑̍͐̓͆̀̆̋̃͑̂̇͌̇̀͆̆͆̉̍̇́̏͒̋̄͋͌̇͛͌̓̔͛̍́͒̓̒̈́͊̆̐͐̎̀͐̂͋͒̌́͆͋͆̿̊̉̔̅͑̋̍̎̑̒͊̉͊̓̋̋͆̓͐̅̈̈́̄̒͌̾͋̓̉̓̏̈́͛͗͊͌͑̆̿̍̃́̂̋͊̐́̿̇̈́͋̉́͛͒̅̉̈̈́̓̃̐̽̃͐̔̎͊͂̔̌̈́̈̊̐͑̈́̄̑̊͑̾̑̀́͆̔̀̍͐̒̽̆̂̃͆͑͑̔̾̃̒̅̏̏̆̈̐́͛͗̉̍̽̌̌̈́̆̈͒̽̈́̋̏̄́̀̒̋̾̈́̀͗͌͊̍̌͋͌̈́̌͆̑̿̆̅̐͊͌̿͆̕͘̕͘͘͘̕̚͘̕̚̚͘͜͜͜͜͜͜͠͝͝͝͠͝͝͝͝͝͠͝͝͠ͅͅͅơ̴̢̡̡̧̡̡̧̧̢̡̨̡̢̨̨̧̱̞̗̫̞̫̠̲̣̩̙̰̤͍̮͍͕͍̼͇̳̹̫̭͕̬̪̪͙̰̣̪͍̥̯̺̹̤̤̩̲̮͉̲̭̤̤̪͈͕̠̤̱̫̬̜̻̦̣̭͍̼̤̺̱̟̯̭̙͇̥̻̬̺̻̮̤̣̼̫͕̰̣͓̤̹͎̝̣̩͖͙͔̻̘̬̗̟͍̰̯̹̥͎̲͓͍͓̥͉̦̪̖̞̰͙͇̩̠̮̮̻̩̳̥̠͕̥̼͈̺̗̯̤͚̻̖̈́̄̉̈̄́͛̐̅͂̐́͊̋̋̀̓̈́̆̌͌̃̃͛̋̉̔̓́̉̾͊̏́̐̇͒̋́̂̅̊̈́̐̿̐̍̔̐̉̇͑̿͋͗̄̓̂͌̀͛̓͗̌̈́̑͛̓̉̊̏̒͆̐̿͗͋̀͗͋̒̊͒̀́͑̒͐̽̉͊̾̈́̾̏́̇̋̑̒̈͋̎̇͊̓́̆̓͂͑͌̈́̌̈̓̌͊̑͛̍̀̍̊́̈́̄̈́̑̄̾̽̀́͊̀̕͘̚̕͘̕̕͘̕͘̚̕͜͜͜͝͝͝͝͠͝͠͠͠͠͝͠ͅͅͅ ̵̢̨̡̧̢̧̨̧̨̡̡̡̡̧̨̧͕̭͔̞͈͚̙͕͉̣̹̮̗̥̰̙̤͕̲̯̙̹̖͖̺͖͉̙̞̜̟̞̜̟̦̣̗͍̪̗͓̪̣̮̹̝̙̼͉͙̻̲̯͍̻̺̠̭͇̬͙̦͉̙̺̪̜̙͎̻͙̻̩̭̞̖͙̟̘̺͓̯̹̖̩̤̦̘̥̪̳̦̮̞͉̯͓̜̤̻̞̤̪͎̙͓̤͓͎͙̹̖̦͕̠̪̬͚̠͔̼̪̬̩̜̦̤̬̳̦̹̦̫̭̱͙̣̙̠̗̗̭̫͍̖̬͚̪͚͈̹͎̝͙̬͔͍̬͍̮̯̩͍̹̳̟̬̹̙̖̱̝̩̟͉̰͓͍̺͙̝̹̜͚̭͚̺̩̝̤̝̲̼̠͎͚̮̼̼͔̱͕͓͙̔̾͋̄͐͌̍͌͛̽̀̋͗̒̏͋̑͂̌͊̉̓̒̈́̌̒͗͊̈̚͜͜͜͜͠͝͠ͅͅͅͅͅͅơ̵̡̧̡̨̢̡̧̨̨̢̨̨̢̨̢̱͍͙̬̤̮̤͎̳̲͓̲̹̦͙̟̳͍̻̞͕͕̘̙̞̠̠͉̦̦͖͓͔̮̺͚͕̮̦͓͓̫̠̲͚̥̜͚͕͇̥̟͖̱̫̞̗̤̲͚̥̙̟̝̣͇̤͖̙̞̼̭͙͎̠̼͎̙͇̫̹̜͉̹̯̯͉̗̗̟͉͓̞̪̭͔̺̬̳̯̮̞̩̰͓̹̳̱̭̩͔̘͙͙̫̳͙̰̘̻̫̹̱͉̫̖̰̟̬̖͙̲̯̟̻̝̣͇̣̗̝̦̭̟̯̗͖͎̱͕͍̿̇̓̒̈́̔̐̃̀͐͘͜͜͜͜͝ͅͅͅͅͅ ̸̢̧̧̢̧̢̡̢̢̢̨̡̢̧̧̨̡̧̢̢̡̧̧̡̢̧̡̟̖̤̩̖̘̙͕̺͈̗͖̭̗̗̟̝͙̙̙̳̝̣̟̗͈̫̦̫͚̣͕̙̟̤͈̫̫̼͎͎̘͎͙͇̩͕̝͎̠̺̬̪̬̮̻̰͔͇̭̗͙͙̪̤͔͔̜̻͓̠̠̳͉̮̙̘̪̲̥̦̖̝͓̘̯̻̖̖̺̤̤̪̠̰̤̭̥͉̲̪̯̹̙̭͔̥̺̻̤͙̖͈̭̭̪͈̱̼̻̤̖̻̗̭̲͓̲͖̜͔̦̤͕̗͕̲̠̹̮̟͙̘͍̼͔̠͇̖͔͓̼̩̝̗͇̫̹͕̜̮̪̪̼̝͈̜̱̫͇̞̘̮̮̣̳̞̟̩̳͙͍̜̩̥̜̘̗̺̫̘̗͙̝̳̩͕̤̺͓̭͎͎̩͖̠͓̹̜͎͕̘̥̥͙̭̩̭̱̲͍͚̯̲͚͚̖̮͓̋͒̉̉͐̆͂̒̍͐̒̊̈́̆̒̂̎͆͑́̀̍̀̀̚͘͘͜͜͜͠͠͠͝ͅͅͅͅͅk̵̡̨̨̧̧̡̢̨̨̡̨̨̢̢̡̧̡̧̛̛̛̛̘̼̺͈͖̮̪̮̯̩̟͔̱͚̦̹̻̜̻͖͎̪͕̙̙͔̺͓͇̩̺͖̟̲͈̦̩̯͈͙͇̗̠͉̼͎̫̖̱̺̣̞̠̞̺͍͚͍̺͔̳̺͙̘̦͕̖̤͍̥͖̺͔͚̫̪͎̘̤͙͚̗͙̥̬̺̤̗͉̥̙̻̣͕̪̞̯̰̻̠͕̣̼̞̱͕̮̖̬̪̘̬͓͚͖̰͖̹͉̖̩̜͉͕͚̟̰͖̟̯̻̞͎̤͍̠̲̝̲̭͉̙̪̲̟̙̹͔̝̹̟̭̜̠̥̰͈̩͚̣͇̞̞̗͇̙͎̞̱̦͕̤̗͚̙̺̹͉̫͕̪͇̮͔̝̪͓̣̥̜̙̱̣̮̤̥̙̙̼͚͎͋̈́̾͌̾͂́̎̽̊̎̓̑̽̔̎͐̀̀̓͐̋̃͋̋͒́͊̉̑̆̾̈́̀͂̒́͌͊̋̔̉̇́͌̈́́̆͐̀̀͒̃͗͂̂̊̐̄́̀̒́͐͌͛̿̾͑̂̽̆͂̄̀̽͌̄̂̈̊̀̂̐̎̑̑̿̇̉̌̅̋͌͆̄̋́͒̓̀̔̿̐̊̉̐̅͊̄̌̆̐̅̆̒͗̾̎̉̐̈́̈́͊͌͋̕͘͘͘͘͘̚͘̕̚͜͜͝͠͝͝͠͠͝͝͝͝͝ͅͅͅͅͅͅ ̴̧̡̩̺̼̪̭̭̟̺͖͑̇̊̅̃b̸̢̢̡̧̢̨̧̡̨̨̡̨̢̨̡̨̢̨̡̢̧̢̧̛̛̛̛̛̛̛̛̖͈̥̬̟̮̬͎͚̘̯͍̥͈̜͉̥͙̘͉̲̳̼̫͇̠͈̟͈̣̰̳̘̫̳͔̪̮̲͖͕̠̭̜͎͉͓͚͎̼̗̝͇̪̦̭̘͚̙̼̰̟̬͓̘̮̖̙̖͙̗͇̗̥̠̣̬͉͙̣͇̺̟̖͔̜͉͙͎͖̺̭̬̗̞̥͙̫̠̗̲̦̹̦̺̼̘̦̦̳̭̟͎̱̦̼͈̤̜̖̞͉͉͚̤͕͇̙̳͙͉̮͖̰̬̝̩͕̜̹͓̻̝͇͙̬̝̝̣̞̗̬̦͎̖̣͕̱̳̠͓͙͇͓̯̠͕̮̻̩͍̪͓̜̤͉̮͙̬͇͓͕͈̣͉̳̟̺̩͇̫̺͇͔̬̩̫̗̫̜̭̖͙͕̖̬͉̜̥͚̊̍͊͒͆̊̉̋̈̋͑̈́̀̅̇̃̿̇̐̋̋̓̓́̾̇̂̍̓͂̉̆̎͗́̽̓̐̈̒̈́̎͂̂̃̓̾͋̏́̐̎̓̿̂̀̐͛͋̽̃̄̐̎̀͗̆̍̂́̈́̊̓́̌̏̆́̀̊͋͋̏̂̇̓̎̀͑̈́̊̒͌̐͐͑̆̈̊͑̐́̇̽̏̾̾́̄̈́̓̽͌͂͐͊̓̌̓̔̑̈́̐̋̊̆̀̌̀͐̈́̄͛̾̽̒̏͆̔͛̌̏́̔̾̽̈́͆̈́͑́͗̾̽͒͋̇͋͑̂͐̋̈́̓̌̑̃̎̊̃̔͛͘̕̚̚̕͘̕̕̕͘̚͘̚̚͜͜͜͜͜͠͝͠͝͠͝͠͝͠͝͝͝͝͠͝͠͝ͅͅͅͅͅͅͅ ̵̛̛̛̛̛̯̠͚̭̠̩̘̗̼͂̔̄͂͒̍̓̀̌̀̈́̉̈́̍̓̎̎̋̐̌͌̅̅̈́̊͌͐̅͐͂͐̃̽̈̿͗͛̋̊̑͊͒͒͗͌͆̀͆̓͗̇̊̊̋̔͂̈́̒́͒̆̐̒̋̂̇̒̓̿̓́̈͐͂̈́͛́̀͋̏͑̈́̂̎͋̋͆̾͆̈̽̓͌̊͊͗̽̇̐̃͐̑̍̅̓̂̾̍̔̇͆̈̀̄̆̍̓̎̽͑̈́̅̊̈̓̀͑̈́̀̈́̆̆̾̒̉́̂͆͆̐̀̌̽̀̒̊̔̈͗͋̿̀̓͂̓͆̈̂̅̂̾̒̌͑̇̀̃̆͗̓͆̃͐̒̓̽͆̊̑͊̑͆̌͂͆̂͋̾̈̆͐͌̾̏́͑̿͐͆͆́̽̔̀́̽̈́̔̒͊̀̃͑̿̍͋̓͋͛̍͌͑̂͆̕͘͘̚̚̚̕͘͘͘̕̕̕͘̕͠͠͠͝͝͝͠͠͝͝͝͝͝͝͝͝͠͝͝ȩ̵̨̨̠̝̦̩͕̩͔͉̦͎̬̱͕̮͐̀ ̸̨̛̛̛̺̥͎̼̠̗̻̹̞͖̖̟̠͍͕̿̆̉̃̈́̏̽͛̐̒̀̇̿̊̃̏̉̄̋̿͒̇̎̐͂͗̈́͐̾̉̈̑̽́̔̇̆͑̓̃̿̊̏̈̎̎͑̃̔̽͆̏͋̄͋͒̊̊̐̈́̀̓̔͐̀͗͑̃͒̿̿́͗͂͆̐̅̀̒̃̌̀̑͒̈̿̐̀͂̿́̑̀́̐̐̆̀̈́̈́̆̽͗̉͌́̒͛̌̍̋͒̀͐̃̌̄͊̓͋̏̈̀̈̔̾͑͐̓̽̏̿̉͌̑͋̎̽̒͗͂̃̈́̒̔̒̂̍͌̈̊̍̓̌̒̈̆̈̄́̓͘͘̚̕̚̚̚͘̕̕͘͘͝͝͠͠͠͝͝͠ͅh̵̡̢̡̢̧̧̨̢̧̢̡̡̡̨̨̨̡̧̧̡̢̢̼̜̣̲͙̝̤͚̙̺͔̻̠̥̲̬͖̬͓̜̼̠̱̗̗̖̪̳̘̥̬̖̦͍̬̱͈̙̝͕̘͉̜̩̱̻̠̤͓̠̤̩͙̦̬͎͖̞̳̮̩̦̬̬̖̩̭̫͎̬̟̮̹̩͚͓͓̥̯̖̳͓̗̳̯̜̬̻̼̹͙͚̱͕̝̹̝͕͍̥̼͚̥̟̫̦̖͇͙̮̱̬͖̯̹͓̤̭̜̰̻̟̰̥̜̫̩͉̙͕͇̭͎͇̜̰̗͍̹̺̹͈̥̙͉̘͈͖͈̠̣̩̭̟̫̝͈͖̹̬̞͍̓̕͜͜͜͜ͅͅͅͅͅͅͅ ̴̢̨̢̡̡̢̡̡̨̢̧̨̨̧̡̧̡̢̡̡̢̧̨̨̨̨̡̨̨̛̺̘̙̬̲̮̘̳̫͕͖͔̖͉̦̪̪̭̫̪͈̬̮̮̺͇͔͙̟̲̙̫̞͕͉̜̭͓̱͈̣̗͓͈͈̟̟̣͓͖̟͇̤͔̻̺̯̰͚̜̪̱̜̗͎͎͚̞̙̼̮̺͉̳̤̼̠͚͉̺͇͕͈͔̯̫̰͔̯͉̫̤͙̪͎̩͖̹̼̰͉̲̫̜̗̖͖̖͓̬̰͔̭̗̟͕̗͙̼̰͉̜̩̤̮̦̟̭̺̯̭͓̯̹͔̪̹͎̜̟͔̫͈͈̹̟̬̗̞͇̞̞͚̼̮̭̙̬̮̭̥̤͎͍̼̮͖͙̝̳̜̱̣͉̬̺̟̼̦̞̗͈̥̥̳̩̺̘̺̥̮͍̮̻̦͓̪͚̺̻̭̮̰̥͎̜͇̹̞̪͓̥̩̘̦̥͌̿͛͂̽͗̎̊́̋̌̊̉̅̋̽̆͒̊̃̈́̾̈́̄̈́͛̑̏͋̉͘͘̚͜͜͜͜͜͜͜͝ͅͅͅͅͅͅͅi̸̡̢̢̢̨̡̡̧̡̧̛͙͓̳̙͈͕̫̞̲̟̻͙̟̞̦̖͙̩̩̬̯̫͕̖̲͖̪̱̺̰̥͍̪͍̞̭̰̜̲̲̝̪̘͉͎̭̳̭̼̟͍͖͇̰̟̮̦̘̝̮̼̦̰̜̹̺͎̲̣̋̋̉̇̏̇͑̃̑͛̍͂̄́̐̑̈́͆́̎̈̂̓͑̇͊͂̓̽̚͘̕̕̚͜͜͜͝͝ͅͅͅ ̸̧̧̢̡̧̢̛͚̥̤̬̹̭̤̞͓̝̪̖͓͔̳͙̪̪̘͛͛̋́͑͊͛̈́̇͑̐͛̅͒́̉͑̾̿̌͐̕͝͝n̷̨̢̢̨̡̧̨̡̧̛̛̛̛̛̛͚̯͉̤͈̼̹̣̯̰͉̻̬̼̤͎̪͉̼͉̲̗̼̞̼͖͉͚̮͇̜͎̺̠̹̟͔̼͓̜̰͓̣̜̞̙̺̮͖̝̙̼̫͚̖̲̖̜͍̺̭͇͚̰̖͈̪̟̗̹̱̦̦̭̭̳͉͔̖͓̼̭̪͍̳̬̮͇͍̬̹͈͕͎̫̻̰̺̫̼̞̹̥̗̰̪͇̏̈́̈́̊͋͊̀́̓̿̍̽̓̐̑͒̀͐̆̑̊̀̈̆̊͆͛̽̽͆̀̊͆͗́̏͂̑͊̔́̈́̑̉̾͆̆̒̒́̈́̿̉́̈́̈́͆̽̅̓͊́̏͛͒́́̓́̍̂̐̋͛̀͐̌͋̀͐̆̾̆̍͛͋̓̄̔̋̈́̀͊͛̌̓͐͒̂͂̆̋̈́̏̐͌̃̈̀͂̾̎͑̈́̊̋̽͌̏͗̋́͋͘̚̕̕̕̕̕̕̚͜͜͜͜͝͠͠͠͠͝͝͠͝͝͠ͅͅͅͅͅͅ ̴̢̨̨̢̧̡̧̧̡̨̨̡̨̨̧̡̢̛̛̛̛̛̥̪̘͈̤͔̳̦͎͇̜̖͚̪̱̗͍̼̳̜̲͓̯͔͍̲̩̺̖̣̦͇͖̲̖̼̙̰̗͚̤̖͉͈̰̯̥̮̞̼̯͉̺͓̠̞͈̪̻̤̭̳͚͇̣̫̲̹̩̖̤̞̤͇̮͔̘̭̼̳͍͇̰̠̰͈̩̖̬͉͉̙̥̳̙̭̹̰͉͉͉͇͕͍̣͔̥̟̩͚͈̮̠̘̝̩̥̦̯̬̤͙͙̠̳͖̝̭͓͖̠̦̟͕̻̣̫͓͉̫̹̯͕̝̟̺̲̹͖͉̥̹̹̻͙͚̙̓̍̾̐͑͐͑́́̽̅̋̒͗̄͌̂̆͂͛̽͑́̔̇̍̍̅̉͒͑̔̈́́̊͐̈́͒̒̃̂͑̄̊͌̇̀́̋̓̋̄̃͗̿͗́̀̋͋̆͋̒͆̆̈́̃͌̒͊̐͌̓̓̄͛͌̈̀̂͋̎̉̓̌͑́̓̓͗̍͆͊́̅́̉̾̿͆̂̓̅̏̇͋̄̀͊̈́͐̈́̂̓̀̊̎̄̔̏̌̄̄̍̓̀̈́͛̀͂͛͗̈́͒̓̑͒̓͂̽̾̀̀͊̓̾̓͐̒͆̃̆̌̑̓͐͗͆͌́̿̀͂̎̓̾͌̇̄̏͐̒̾́͂̆̔͗̍͗̀̓̑̅͋̽͒̿̌̍͛͐̾̈́͗̔̊͌͗́̄́͌̕̚̚͘̚̚̕̚̚͘̕̕̕͜͜͜͜͜͜͜͝͝͠͠͠͝͝͝͝͝͠͠͝͠͝͠͠͠ͅͅͅͅḑ̴̡̨̛̛̛̛͈͓̭̫̙̹͙̺̙̗̠̺̮̯͕̙̭͕̠͓̬͓̦̭͙̼͈̰͓̤̬̘̤̙̼̱̤͇̗̝̞̺͍̰̗̫̼̓̀̍͂͐̊̿̄͊͌̀͛̈́̎̅̓̅̈́̏̓̊͊͐̽̑̅́̀̅̒͋̐͗̀͒͗̌̂̈́̈̋͌̊̔̃̎͑͗̇̌͑̿̿͑̌͊͑͊̄̄̍̍̅́͋̀̇̎͒͆͋̅́̈́͂̀̏̀͆̃̿̈́͐͛̃́̈́̾̊̊̍̒̓̋͂̈́̈́͑̑͊̄̓̉́̓̈́̇̽̄̋̃́̿̓͗͑͐͛͂͊̾͒͑̈́̀̆̐̽͑̐̑̉̉̄̚̚̚̕͘̕͘͘̚͘̚͜͜͜͝͠͝͝͠͝͠͠͝ͅͅ ̶̢̢̢̧̧̨̡̡̢̡̧̡̡̡̨̡̡̛̛̛̛̛̛̛̛̻̦̲̜̘̳̦͕̞̞̟̝̩̙̻̳̰̘̞̞̗̹̥̻̻̞͙̞͙̬͙̱͍̳̪̗̼̖̖͚̺̰̳͓̘̮̼͇̙̠̼͎̞̟̦͖̪̝̪͎̪̩̗͍̺̼̞̩͔̬̪̗͎̣̦͉̘͎̣̳̫̺̗̱̥̯̠̲̺̜̠͈̖͕͓͎̪̟͍̬̹̹̼͚̭̩̫̗͔̫͓̩̞͓͍̯̗̗̟̯̗̩̤̫̮͖̘̹̝̜̫͉͙͚̟̪̭͚̟͛̊̒̋̓̋̈̂̇͂̄̂̍͐̓͋́̑̋̒͗͗͆͗̈́̿̋̍̑́́͊̐̑̉̇̈́̎̌̓̑͊͆͊̍́̆͆͐͑̑̾͑̃̒̋̒̋͐̿̂͐̎͒̎̈́̀̍͌͛̈́̅͐̅͑̇͑͑̎̓͐͒̀̀͐͗̈̀͗̾̈̾̄̆̿͑̂̐̒̀͂̈̆̍̆̍̎͗̐̽̍̿͒̆̍̔̄̒̉̿̅̈́́̀͗̏̌̊́͂̏͊̔̌̋̄̌̀̉̈́͐͐̀̽̔̽̓̃̓͂̂̿̂̀̎͊͂̑̆̽̓̉̂̏̔͌̑̀̇̓̃̐͒̇̀̔̒̐̀͗̅̕͘͘͜͠͝͝͝͝͝͝͠͝͝͠͝͝͠͝͝͠͠͝͠ͅͅͅͅͅȳ̷̨̡̧̡̡̢̧̢̧̢̧̡̛̛̪͙̬̠̭͙͉͎̺̹͖̝̼͕̰̰̦̙̯̜͈̩̜̦̣̬͍̥̝͈͖͇̟͉̜͚̳̣̫̠͍̜͖̬͇̠̘̦͙̠̼͇̻̼͉̻͙̦̦̗̣̼̤̬̞̝̻̭̫̱̪͖̬̰̗̬͉̠̱̹̮̙̮̖̜̬̭̦̖̼̞̖̬̥̟̟̪̭͖͛͗̒̿̍̽͑͆̇͂̎̾̈́̃͊̾̅͌͗͒̍̊̊̌͗̾̆̈́̋͛͑͛͑͋̓̽̈́̒̈̂̐̐͛̐̀̀͌̃͛̔̄͂̇̇̿͒͆̅̍͆̄̂͑̄̌̅̓̽͑̃̂́̃̊́̂̈́͆̉̅̋̍͑̑̽̔̇̾͐͌̀̎̽̓̊͘̚͘̚̚͘͜͜͝͝͝͝͠͝͠͝͝ͅͅ ̸̡̨̧̡̛̮͎͔͎̣̪̰̦͕͉̦̪̦̜͉̪͚̹͎̳͙̤̰̝̯͔͙͍̭̟̫̭̟͎̬̳̻̪̰̰̳͓͎̹̞̙̟̓̃̎̈́̑͑̏͆̀́͌̉̓̃̅̋͆͗͑̄̈́͛̎̌̆̈͑̓̿͒̄̋̉̇̅̉͊́̔̉̀̿͒̓͐̄͊̆̈́͐͗͗͗̅̓̐̇̈͋̑̔̽̈́̆̓̚̕̚͘͘̕͜͠͝͠͝ͅͅͅờ̷̧̡̨̢̡̨̧̧̨̢̡̢̢̡̧̡̨̧̢̨̡̛̛̛͖̪̠̰̜͎̲̯͔̯͕̦̺̝̩̮͇̹͙̱͇̗̹̲̯̼̺̭̫͖͖̠͔̜͍̼̯̭͉͉̰̠͓͕̗̣̝̻̘͇̠̗̗̰̖̯͍̜͍̭̬̪͖͓̱̦̬̣̙͕̟̣͖̜͓̜̭̫̩̹̟̜̠̱͓̲͈̻̭͈͈͎̹̪͎̠̬̗̫͖͎̣͈̠̖͖̦̦̝̹̗̬͙͇̖̝̟͎͖̭̙͈̩̗̠̙̯̼͓̩͕̠͇͇̩̬͓̻̝̖̯̩̙̭͈͚̞̗̜̼̲̬͉̮̝̙̲̭͖͔̜͓̦̘̮͓̹͚͓̞̮͉̜̝͎͖̤͉̜̞̱̝̖͇̩͙̹̜̲̱̻̠̫̦͍͔̯̣̲͎̬̣͙͈̩͓̱̲͚̻̞̱̜͇̩̟̜͉̹̘͚͕̞̠͈̭͕͔̖̟̬͌̏̔͑̐̀̈́̑̃͋͐̂̾́̒̑̅̐̏̈̏̎̈́̅̓͊̔̂̒͒̑̀̍́̈́̇̈̾̀̏̀́̀́͂̄̃̇̽̉̊̀̋̅̉̄͌̽̒͊̌̇̍̀̈́͛̒̔̍̒̍̋̀̽̉̃̂̍͋̽̇̅̿̂̇̆͌̀̐̇̀͆͌̀̀̄̓̐͂͛͑̍͐̐̂̑̔̄͒̍̒̒͑̊̍͗͋̔̄͑̎͊̓͊̊̈̔̋̈́̅̈̑̈́͂̽̓̐̅̿̏̓́̅̏̀̉͂́̉̇̊͊́̓̈́̉̐̈́̄̌̋̊̂̉́̆̍̅̀̀̌͌̒́̈́́̏̎̀͂͋͆̕̕̕̚͘͘̚̚͘̚͘̕͜͜͜͜͜͝͝͠͝͝͠͠͝͠͠͝͠ͅͅͅͅ ̸̧̛̛̛̛̛̛̦͖͍̠͇͖͖̦̞̼̥̺̼̳̻̺̼͖͕͍̪͕̘̗͔̰̟̽̓̅̓̒͌̓̇̿͂̈́̉̍̀̾̔̓̔̈́͒͑̏͗̉͌̀͂͆͗̊̿̈́̓̾̿͑̅͛̀̃̃̆̅͒̓͊̎͂͑̂̓͒̽̎̎̊̋͗͗̈́̇̓͐̓̓̊́̑̈́͌̑̈́͑̒̎̌́͐̅̉̔̀̆́͛̈́̓̏̽͒͊̎̍̽͆̉̃͊͆̀̅͋̀́͆̾̾̓͑͐̊̅͒̅̏̀̍̔̋̆͂̐͒̈̆̅̋̈́̋͋̾̾̎̿̒̄̿̀͒̽̉͐́́͗͌̊̈́͗̂͐̂͂̀͆̌́̒̅̀͛̽͑͑̆̽̉̍̿̒̈́̕͘̕͘͘͘͘̕͘͝͠͝͝͠͝͠͝͝͠͝͠͝͠͠͝͠ͅư̷̢̨̡̢̢̨̡̧̧̡̡̧̛̛̻͚̱͎̣̘̱̳̮̱͈͎̟͖͔̗̫̙̱̘̼̺͇͖̩̗̼̩͚̝̩̺̥͙̗̳̜̹̠̭̫̳̬̘̤̲̗̮̹͚̙̭͙̝̤͓̯̻͕̼̫̯̙͇̞̘̙͈͍̞͓̭̲͔̘͔͍̺̝̠̤͓͔̪̟̜̺̭̦̩̭̖͕̞̼͇̹̤͍̖͚̜̭̝̟̲̲̼͖̟͉̙̬̪̞̥̦̦̜̦̹̯͔̞̟͙̺̞̙͎̯̱̞̣̪̙̖̩̭̤̳͙̦̞͇͖͖̪̻̩̬̲͓͔̹͕̬̗̤͕̯̯̟̫̗̳̦̫̖̤͙̋̊͌̇̒̌̓̽̈̅͛̾̈͑̓̇̔̌͗̈̿̏̆̂̽̒̿̏̔̑̌́̌̄͛̾͂̊̔̎̈̓́͗̇̀̓́̆̎̈́̂̒͌͂̈́̆̇̇̑̂̍͐̿͑͒̓̈̊̄͌͋̎͑̔͂̈̾͒͒͛̈́̊̍̄̈́̓̔͗̉͒͂̾͌͊̾̇͐̀͑̈͐͊̊͋̆̉̿͑̃́̂̿̾̓͛̃̽̽͊͑̀̈́̇̈́̀̉͐̾̑͐̾̒̀̾͗̇͑́̾̽̀͐̈́̆̋̂̋͋̐̂̎͋̀͐̐̒͊͐͊̓̊̄̿̎̐̎̔͌̍̓̀̊̌̀̓̒̽͋͑̎́̓̐̉̑̊̌̚̕̚̕̕͘̚̕̚̕͘̕̚͜͜͜͜͠͠͝͝͝͠͝͝ͅͅͅͅͅͅ
echo l̵̡̨̢̧̢̧̡̧̨̧̧̧̢̡̧̧̧̧̩̪̝̬͕̠͚̟͓͍͕͔̺̦͖̹̱̳͍̲̤̳̦̖̭͚̟͙̪̫̯͇͉̼͍̖͈̫͇̣͖̙̠̭̱̩̞̼̻̘̻̣̗̙̪͙̳̗͓̙̦̞͍̮͕͈͉̞̮̖̝̣̠̳̣̻̪͇͕̲̪̙͇͎̺̯̦̼̩̦̯͕͇̭̺̱̳͖̬͓͇͍̟̼̞͚̩͚̺̱̝̤̣͖̰̺̜̩̫͚̻͍͇͈̜̰̼͎͖̳̱̠͍̼̹̖͙͓͙̝̹̯̺͓̱̫̼̤͍̮̼̰̹̮̹̳̞͙̞̗̪̖͍͓͎͍̫̣̮̳͇̱͖̗̅͐̆̋̾̅̄̾̆̊̔̊̂̍̍̆͋̆̈́̄͋͑̐̋́̋̒̏̒͊͂͗̈́̿̊̈́̍̿̐́̍̏̆̔̒͑̃̀̑́̍̊͐̿̚̚̕̚̕͜͜͜͠͠͝ͅͅͅͅͅ ̵̨̨̨̢̢̡̡̨̢̢̧̧̢̧̨̡̢̧̨̧̨̨̢̛̛̛̛̛͇̠̞̞̦̬̯̥̦̻̳̙̲͍̪͉̹̣̥̺̠͎̞͇̱͔͓̫͔̤̰̼̫̘̲̗̠̝̘̰̗̫̙̗̯̟̤̟̪̬̣͚̗͇̝̗̮̭͓͇̮͎̩̩͇̠̺͔̻̞̞̮̯̠̮̠̰̻̗͇͓̞͙̳̰͉̦̞̘̯͍̬̠̤̠̹̺͚̰̦̤͔̲͓̠̤̖̯̤̣̥̟̹̠̞̞̘̰͓͓̜̣͕̙̟̣̯̙̮͙͙͔͙͚͎͙̦̤̜̘̘͍̖̠̤͉̻̟͔͇͖̠̫͇͕͖͉̘͈̖̙̗͈̟͎͔̼̩̠̟̠̘͓̮͍̱̬̳̹̝̤̦̙̦̩̫̝̺̖͙̟̰̺̼̜͙͕͚̙̘̭̼̗̜̯̪͕̬̲͙̟͔̗̘͇̩̜̬̥͕͕̠͕̇́̐̎͆̐̄̑̑̽̓͌̊̾̇́̋̈̅̾̑̍͗͒̑̍͐̓͆̀̆̋̃͑̂̇͌̇̀͆̆͆̉̍̇́̏͒̋̄͋͌̇͛͌̓̔͛̍́͒̓̒̈́͊̆̐͐̎̀͐̂͋͒̌́͆͋͆̿̊̉̔̅͑̋̍̎̑̒͊̉͊̓̋̋͆̓͐̅̈̈́̄̒͌̾͋̓̉̓̏̈́͛͗͊͌͑̆̿̍̃́̂̋͊̐́̿̇̈́͋̉́͛͒̅̉̈̈́̓̃̐̽̃͐̔̎͊͂̔̌̈́̈̊̐͑̈́̄̑̊͑̾̑̀́͆̔̀̍͐̒̽̆̂̃͆͑͑̔̾̃̒̅̏̏̆̈̐́͛͗̉̍̽̌̌̈́̆̈͒̽̈́̋̏̄́̀̒̋̾̈́̀͗͌͊̍̌͋͌̈́̌͆̑̿̆̅̐͊͌̿͆̕͘̕͘͘͘̕̚͘̕̚̚͘͜͜͜͜͜͜͠͝͝͝͠͝͝͝͝͝͠͝͝͠ͅͅͅơ̴̢̡̡̧̡̡̧̧̢̡̨̡̢̨̨̧̱̞̗̫̞̫̠̲̣̩̙̰̤͍̮͍͕͍̼͇̳̹̫̭͕̬̪̪͙̰̣̪͍̥̯̺̹̤̤̩̲̮͉̲̭̤̤̪͈͕̠̤̱̫̬̜̻̦̣̭͍̼̤̺̱̟̯̭̙͇̥̻̬̺̻̮̤̣̼̫͕̰̣͓̤̹͎̝̣̩͖͙͔̻̘̬̗̟͍̰̯̹̥͎̲͓͍͓̥͉̦̪̖̞̰͙͇̩̠̮̮̻̩̳̥̠͕̥̼͈̺̗̯̤͚̻̖̈́̄̉̈̄́͛̐̅͂̐́͊̋̋̀̓̈́̆̌͌̃̃͛̋̉̔̓́̉̾͊̏́̐̇͒̋́̂̅̊̈́̐̿̐̍̔̐̉̇͑̿͋͗̄̓̂͌̀͛̓͗̌̈́̑͛̓̉̊̏̒͆̐̿͗͋̀͗͋̒̊͒̀́͑̒͐̽̉͊̾̈́̾̏́̇̋̑̒̈͋̎̇͊̓́̆̓͂͑͌̈́̌̈̓̌͊̑͛̍̀̍̊́̈́̄̈́̑̄̾̽̀́͊̀̕͘̚̕͘̕̕͘̕͘̚̕͜͜͜͝͝͝͝͠͝͠͠͠͠͝͠ͅͅͅ ̵̢̨̡̧̢̧̨̧̨̡̡̡̡̧̨̧͕̭͔̞͈͚̙͕͉̣̹̮̗̥̰̙̤͕̲̯̙̹̖͖̺͖͉̙̞̜̟̞̜̟̦̣̗͍̪̗͓̪̣̮̹̝̙̼͉͙̻̲̯͍̻̺̠̭͇̬͙̦͉̙̺̪̜̙͎̻͙̻̩̭̞̖͙̟̘̺͓̯̹̖̩̤̦̘̥̪̳̦̮̞͉̯͓̜̤̻̞̤̪͎̙͓̤͓͎͙̹̖̦͕̠̪̬͚̠͔̼̪̬̩̜̦̤̬̳̦̹̦̫̭̱͙̣̙̠̗̗̭̫͍̖̬͚̪͚͈̹͎̝͙̬͔͍̬͍̮̯̩͍̹̳̟̬̹̙̖̱̝̩̟͉̰͓͍̺͙̝̹̜͚̭͚̺̩̝̤̝̲̼̠͎͚̮̼̼͔̱͕͓͙̔̾͋̄͐͌̍͌͛̽̀̋͗̒̏͋̑͂̌͊̉̓̒̈́̌̒͗͊̈̚͜͜͜͜͠͝͠ͅͅͅͅͅͅơ̵̡̧̡̨̢̡̧̨̨̢̨̨̢̨̢̱͍͙̬̤̮̤͎̳̲͓̲̹̦͙̟̳͍̻̞͕͕̘̙̞̠̠͉̦̦͖͓͔̮̺͚͕̮̦͓͓̫̠̲͚̥̜͚͕͇̥̟͖̱̫̞̗̤̲͚̥̙̟̝̣͇̤͖̙̞̼̭͙͎̠̼͎̙͇̫̹̜͉̹̯̯͉̗̗̟͉͓̞̪̭͔̺̬̳̯̮̞̩̰͓̹̳̱̭̩͔̘͙͙̫̳͙̰̘̻̫̹̱͉̫̖̰̟̬̖͙̲̯̟̻̝̣͇̣̗̝̦̭̟̯̗͖͎̱͕͍̿̇̓̒̈́̔̐̃̀͐͘͜͜͜͜͝ͅͅͅͅͅ ̸̢̧̧̢̧̢̡̢̢̢̨̡̢̧̧̨̡̧̢̢̡̧̧̡̢̧̡̟̖̤̩̖̘̙͕̺͈̗͖̭̗̗̟̝͙̙̙̳̝̣̟̗͈̫̦̫͚̣͕̙̟̤͈̫̫̼͎͎̘͎͙͇̩͕̝͎̠̺̬̪̬̮̻̰͔͇̭̗͙͙̪̤͔͔̜̻͓̠̠̳͉̮̙̘̪̲̥̦̖̝͓̘̯̻̖̖̺̤̤̪̠̰̤̭̥͉̲̪̯̹̙̭͔̥̺̻̤͙̖͈̭̭̪͈̱̼̻̤̖̻̗̭̲͓̲͖̜͔̦̤͕̗͕̲̠̹̮̟͙̘͍̼͔̠͇̖͔͓̼̩̝̗͇̫̹͕̜̮̪̪̼̝͈̜̱̫͇̞̘̮̮̣̳̞̟̩̳͙͍̜̩̥̜̘̗̺̫̘̗͙̝̳̩͕̤̺͓̭͎͎̩͖̠͓̹̜͎͕̘̥̥͙̭̩̭̱̲͍͚̯̲͚͚̖̮͓̋͒̉̉͐̆͂̒̍͐̒̊̈́̆̒̂̎͆͑́̀̍̀̀̚͘͘͜͜͜͠͠͠͝ͅͅͅͅͅk̵̡̨̨̧̧̡̢̨̨̡̨̨̢̢̡̧̡̧̛̛̛̛̘̼̺͈͖̮̪̮̯̩̟͔̱͚̦̹̻̜̻͖͎̪͕̙̙͔̺͓͇̩̺͖̟̲͈̦̩̯͈͙͇̗̠͉̼͎̫̖̱̺̣̞̠̞̺͍͚͍̺͔̳̺͙̘̦͕̖̤͍̥͖̺͔͚̫̪͎̘̤͙͚̗͙̥̬̺̤̗͉̥̙̻̣͕̪̞̯̰̻̠͕̣̼̞̱͕̮̖̬̪̘̬͓͚͖̰͖̹͉̖̩̜͉͕͚̟̰͖̟̯̻̞͎̤͍̠̲̝̲̭͉̙̪̲̟̙̹͔̝̹̟̭̜̠̥̰͈̩͚̣͇̞̞̗͇̙͎̞̱̦͕̤̗͚̙̺̹͉̫͕̪͇̮͔̝̪͓̣̥̜̙̱̣̮̤̥̙̙̼͚͎͋̈́̾͌̾͂́̎̽̊̎̓̑̽̔̎͐̀̀̓͐̋̃͋̋͒́͊̉̑̆̾̈́̀͂̒́͌͊̋̔̉̇́͌̈́́̆͐̀̀͒̃͗͂̂̊̐̄́̀̒́͐͌͛̿̾͑̂̽̆͂̄̀̽͌̄̂̈̊̀̂̐̎̑̑̿̇̉̌̅̋͌͆̄̋́͒̓̀̔̿̐̊̉̐̅͊̄̌̆̐̅̆̒͗̾̎̉̐̈́̈́͊͌͋̕͘͘͘͘͘̚͘̕̚͜͜͝͠͝͝͠͠͝͝͝͝͝ͅͅͅͅͅͅ ̴̧̡̩̺̼̪̭̭̟̺͖͑̇̊̅̃b̸̢̢̡̧̢̨̧̡̨̨̡̨̢̨̡̨̢̨̡̢̧̢̧̛̛̛̛̛̛̛̛̖͈̥̬̟̮̬͎͚̘̯͍̥͈̜͉̥͙̘͉̲̳̼̫͇̠͈̟͈̣̰̳̘̫̳͔̪̮̲͖͕̠̭̜͎͉͓͚͎̼̗̝͇̪̦̭̘͚̙̼̰̟̬͓̘̮̖̙̖͙̗͇̗̥̠̣̬͉͙̣͇̺̟̖͔̜͉͙͎͖̺̭̬̗̞̥͙̫̠̗̲̦̹̦̺̼̘̦̦̳̭̟͎̱̦̼͈̤̜̖̞͉͉͚̤͕͇̙̳͙͉̮͖̰̬̝̩͕̜̹͓̻̝͇͙̬̝̝̣̞̗̬̦͎̖̣͕̱̳̠͓͙͇͓̯̠͕̮̻̩͍̪͓̜̤͉̮͙̬͇͓͕͈̣͉̳̟̺̩͇̫̺͇͔̬̩̫̗̫̜̭̖͙͕̖̬͉̜̥͚̊̍͊͒͆̊̉̋̈̋͑̈́̀̅̇̃̿̇̐̋̋̓̓́̾̇̂̍̓͂̉̆̎͗́̽̓̐̈̒̈́̎͂̂̃̓̾͋̏́̐̎̓̿̂̀̐͛͋̽̃̄̐̎̀͗̆̍̂́̈́̊̓́̌̏̆́̀̊͋͋̏̂̇̓̎̀͑̈́̊̒͌̐͐͑̆̈̊͑̐́̇̽̏̾̾́̄̈́̓̽͌͂͐͊̓̌̓̔̑̈́̐̋̊̆̀̌̀͐̈́̄͛̾̽̒̏͆̔͛̌̏́̔̾̽̈́͆̈́͑́͗̾̽͒͋̇͋͑̂͐̋̈́̓̌̑̃̎̊̃̔͛͘̕̚̚̕͘̕̕̕͘̚͘̚̚͜͜͜͜͜͠͝͠͝͠͝͠͝͠͝͝͝͝͠͝͠͝ͅͅͅͅͅͅͅ ̵̛̛̛̛̛̯̠͚̭̠̩̘̗̼͂̔̄͂͒̍̓̀̌̀̈́̉̈́̍̓̎̎̋̐̌͌̅̅̈́̊͌͐̅͐͂͐̃̽̈̿͗͛̋̊̑͊͒͒͗͌͆̀͆̓͗̇̊̊̋̔͂̈́̒́͒̆̐̒̋̂̇̒̓̿̓́̈͐͂̈́͛́̀͋̏͑̈́̂̎͋̋͆̾͆̈̽̓͌̊͊͗̽̇̐̃͐̑̍̅̓̂̾̍̔̇͆̈̀̄̆̍̓̎̽͑̈́̅̊̈̓̀͑̈́̀̈́̆̆̾̒̉́̂͆͆̐̀̌̽̀̒̊̔̈͗͋̿̀̓͂̓͆̈̂̅̂̾̒̌͑̇̀̃̆͗̓͆̃͐̒̓̽͆̊̑͊̑͆̌͂͆̂͋̾̈̆͐͌̾̏́͑̿͐͆͆́̽̔̀́̽̈́̔̒͊̀̃͑̿̍͋̓͋͛̍͌͑̂͆̕͘͘̚̚̚̕͘͘͘̕̕̕͘̕͠͠͠͝͝͝͠͠͝͝͝͝͝͝͝͝͠͝͝ȩ̵̨̨̠̝̦̩͕̩͔͉̦͎̬̱͕̮͐̀ ̸̨̛̛̛̺̥͎̼̠̗̻̹̞͖̖̟̠͍͕̿̆̉̃̈́̏̽͛̐̒̀̇̿̊̃̏̉̄̋̿͒̇̎̐͂͗̈́͐̾̉̈̑̽́̔̇̆͑̓̃̿̊̏̈̎̎͑̃̔̽͆̏͋̄͋͒̊̊̐̈́̀̓̔͐̀͗͑̃͒̿̿́͗͂͆̐̅̀̒̃̌̀̑͒̈̿̐̀͂̿́̑̀́̐̐̆̀̈́̈́̆̽͗̉͌́̒͛̌̍̋͒̀͐̃̌̄͊̓͋̏̈̀̈̔̾͑͐̓̽̏̿̉͌̑͋̎̽̒͗͂̃̈́̒̔̒̂̍͌̈̊̍̓̌̒̈̆̈̄́̓͘͘̚̕̚̚̚͘̕̕͘͘͝͝͠͠͠͝͝͠ͅh̵̡̢̡̢̧̧̨̢̧̢̡̡̡̨̨̨̡̧̧̡̢̢̼̜̣̲͙̝̤͚̙̺͔̻̠̥̲̬͖̬͓̜̼̠̱̗̗̖̪̳̘̥̬̖̦͍̬̱͈̙̝͕̘͉̜̩̱̻̠̤͓̠̤̩͙̦̬͎͖̞̳̮̩̦̬̬̖̩̭̫͎̬̟̮̹̩͚͓͓̥̯̖̳͓̗̳̯̜̬̻̼̹͙͚̱͕̝̹̝͕͍̥̼͚̥̟̫̦̖͇͙̮̱̬͖̯̹͓̤̭̜̰̻̟̰̥̜̫̩͉̙͕͇̭͎͇̜̰̗͍̹̺̹͈̥̙͉̘͈͖͈̠̣̩̭̟̫̝͈͖̹̬̞͍̓̕͜͜͜͜ͅͅͅͅͅͅͅ ̴̢̨̢̡̡̢̡̡̨̢̧̨̨̧̡̧̡̢̡̡̢̧̨̨̨̨̡̨̨̛̺̘̙̬̲̮̘̳̫͕͖͔̖͉̦̪̪̭̫̪͈̬̮̮̺͇͔͙̟̲̙̫̞͕͉̜̭͓̱͈̣̗͓͈͈̟̟̣͓͖̟͇̤͔̻̺̯̰͚̜̪̱̜̗͎͎͚̞̙̼̮̺͉̳̤̼̠͚͉̺͇͕͈͔̯̫̰͔̯͉̫̤͙̪͎̩͖̹̼̰͉̲̫̜̗̖͖̖͓̬̰͔̭̗̟͕̗͙̼̰͉̜̩̤̮̦̟̭̺̯̭͓̯̹͔̪̹͎̜̟͔̫͈͈̹̟̬̗̞͇̞̞͚̼̮̭̙̬̮̭̥̤͎͍̼̮͖͙̝̳̜̱̣͉̬̺̟̼̦̞̗͈̥̥̳̩̺̘̺̥̮͍̮̻̦͓̪͚̺̻̭̮̰̥͎̜͇̹̞̪͓̥̩̘̦̥͌̿͛͂̽͗̎̊́̋̌̊̉̅̋̽̆͒̊̃̈́̾̈́̄̈́͛̑̏͋̉͘͘̚͜͜͜͜͜͜͜͝ͅͅͅͅͅͅͅi̸̡̢̢̢̨̡̡̧̡̧̛͙͓̳̙͈͕̫̞̲̟̻͙̟̞̦̖͙̩̩̬̯̫͕̖̲͖̪̱̺̰̥͍̪͍̞̭̰̜̲̲̝̪̘͉͎̭̳̭̼̟͍͖͇̰̟̮̦̘̝̮̼̦̰̜̹̺͎̲̣̋̋̉̇̏̇͑̃̑͛̍͂̄́̐̑̈́͆́̎̈̂̓͑̇͊͂̓̽̚͘̕̕̚͜͜͜͝͝ͅͅͅ ̸̧̧̢̡̧̢̛͚̥̤̬̹̭̤̞͓̝̪̖͓͔̳͙̪̪̘͛͛̋́͑͊͛̈́̇͑̐͛̅͒́̉͑̾̿̌͐̕͝͝n̷̨̢̢̨̡̧̨̡̧̛̛̛̛̛̛͚̯͉̤͈̼̹̣̯̰͉̻̬̼̤͎̪͉̼͉̲̗̼̞̼͖͉͚̮͇̜͎̺̠̹̟͔̼͓̜̰͓̣̜̞̙̺̮͖̝̙̼̫͚̖̲̖̜͍̺̭͇͚̰̖͈̪̟̗̹̱̦̦̭̭̳͉͔̖͓̼̭̪͍̳̬̮͇͍̬̹͈͕͎̫̻̰̺̫̼̞̹̥̗̰̪͇̏̈́̈́̊͋͊̀́̓̿̍̽̓̐̑͒̀͐̆̑̊̀̈̆̊͆͛̽̽͆̀̊͆͗́̏͂̑͊̔́̈́̑̉̾͆̆̒̒́̈́̿̉́̈́̈́͆̽̅̓͊́̏͛͒́́̓́̍̂̐̋͛̀͐̌͋̀͐̆̾̆̍͛͋̓̄̔̋̈́̀͊͛̌̓͐͒̂͂̆̋̈́̏̐͌̃̈̀͂̾̎͑̈́̊̋̽͌̏͗̋́͋͘̚̕̕̕̕̕̕̚͜͜͜͜͝͠͠͠͠͝͝͠͝͝͠ͅͅͅͅͅͅ ̴̢̨̨̢̧̡̧̧̡̨̨̡̨̨̧̡̢̛̛̛̛̛̥̪̘͈̤͔̳̦͎͇̜̖͚̪̱̗͍̼̳̜̲͓̯͔͍̲̩̺̖̣̦͇͖̲̖̼̙̰̗͚̤̖͉͈̰̯̥̮̞̼̯͉̺͓̠̞͈̪̻̤̭̳͚͇̣̫̲̹̩̖̤̞̤͇̮͔̘̭̼̳͍͇̰̠̰͈̩̖̬͉͉̙̥̳̙̭̹̰͉͉͉͇͕͍̣͔̥̟̩͚͈̮̠̘̝̩̥̦̯̬̤͙͙̠̳͖̝̭͓͖̠̦̟͕̻̣̫͓͉̫̹̯͕̝̟̺̲̹͖͉̥̹̹̻͙͚̙̓̍̾̐͑͐͑́́̽̅̋̒͗̄͌̂̆͂͛̽͑́̔̇̍̍̅̉͒͑̔̈́́̊͐̈́͒̒̃̂͑̄̊͌̇̀́̋̓̋̄̃͗̿͗́̀̋͋̆͋̒͆̆̈́̃͌̒͊̐͌̓̓̄͛͌̈̀̂͋̎̉̓̌͑́̓̓͗̍͆͊́̅́̉̾̿͆̂̓̅̏̇͋̄̀͊̈́͐̈́̂̓̀̊̎̄̔̏̌̄̄̍̓̀̈́͛̀͂͛͗̈́͒̓̑͒̓͂̽̾̀̀͊̓̾̓͐̒͆̃̆̌̑̓͐͗͆͌́̿̀͂̎̓̾͌̇̄̏͐̒̾́͂̆̔͗̍͗̀̓̑̅͋̽͒̿̌̍͛͐̾̈́͗̔̊͌͗́̄́͌̕̚̚͘̚̚̕̚̚͘̕̕̕͜͜͜͜͜͜͜͝͝͠͠͠͝͝͝͝͝͠͠͝͠͝͠͠͠ͅͅͅͅḑ̴̡̨̛̛̛̛͈͓̭̫̙̹͙̺̙̗̠̺̮̯͕̙̭͕̠͓̬͓̦̭͙̼͈̰͓̤̬̘̤̙̼̱̤͇̗̝̞̺͍̰̗̫̼̓̀̍͂͐̊̿̄͊͌̀͛̈́̎̅̓̅̈́̏̓̊͊͐̽̑̅́̀̅̒͋̐͗̀͒͗̌̂̈́̈̋͌̊̔̃̎͑͗̇̌͑̿̿͑̌͊͑͊̄̄̍̍̅́͋̀̇̎͒͆͋̅́̈́͂̀̏̀͆̃̿̈́͐͛̃́̈́̾̊̊̍̒̓̋͂̈́̈́͑̑͊̄̓̉́̓̈́̇̽̄̋̃́̿̓͗͑͐͛͂͊̾͒͑̈́̀̆̐̽͑̐̑̉̉̄̚̚̚̕͘̕͘͘̚͘̚͜͜͜͝͠͝͝͠͝͠͠͝ͅͅ ̶̢̢̢̧̧̨̡̡̢̡̧̡̡̡̨̡̡̛̛̛̛̛̛̛̛̻̦̲̜̘̳̦͕̞̞̟̝̩̙̻̳̰̘̞̞̗̹̥̻̻̞͙̞͙̬͙̱͍̳̪̗̼̖̖͚̺̰̳͓̘̮̼͇̙̠̼͎̞̟̦͖̪̝̪͎̪̩̗͍̺̼̞̩͔̬̪̗͎̣̦͉̘͎̣̳̫̺̗̱̥̯̠̲̺̜̠͈̖͕͓͎̪̟͍̬̹̹̼͚̭̩̫̗͔̫͓̩̞͓͍̯̗̗̟̯̗̩̤̫̮͖̘̹̝̜̫͉͙͚̟̪̭͚̟͛̊̒̋̓̋̈̂̇͂̄̂̍͐̓͋́̑̋̒͗͗͆͗̈́̿̋̍̑́́͊̐̑̉̇̈́̎̌̓̑͊͆͊̍́̆͆͐͑̑̾͑̃̒̋̒̋͐̿̂͐̎͒̎̈́̀̍͌͛̈́̅͐̅͑̇͑͑̎̓͐͒̀̀͐͗̈̀͗̾̈̾̄̆̿͑̂̐̒̀͂̈̆̍̆̍̎͗̐̽̍̿͒̆̍̔̄̒̉̿̅̈́́̀͗̏̌̊́͂̏͊̔̌̋̄̌̀̉̈́͐͐̀̽̔̽̓̃̓͂̂̿̂̀̎͊͂̑̆̽̓̉̂̏̔͌̑̀̇̓̃̐͒̇̀̔̒̐̀͗̅̕͘͘͜͠͝͝͝͝͝͝͠͝͝͠͝͝͠͝͝͠͠͝͠ͅͅͅͅͅȳ̷̨̡̧̡̡̢̧̢̧̢̧̡̛̛̪͙̬̠̭͙͉͎̺̹͖̝̼͕̰̰̦̙̯̜͈̩̜̦̣̬͍̥̝͈͖͇̟͉̜͚̳̣̫̠͍̜͖̬͇̠̘̦͙̠̼͇̻̼͉̻͙̦̦̗̣̼̤̬̞̝̻̭̫̱̪͖̬̰̗̬͉̠̱̹̮̙̮̖̜̬̭̦̖̼̞̖̬̥̟̟̪̭͖͛͗̒̿̍̽͑͆̇͂̎̾̈́̃͊̾̅͌͗͒̍̊̊̌͗̾̆̈́̋͛͑͛͑͋̓̽̈́̒̈̂̐̐͛̐̀̀͌̃͛̔̄͂̇̇̿͒͆̅̍͆̄̂͑̄̌̅̓̽͑̃̂́̃̊́̂̈́͆̉̅̋̍͑̑̽̔̇̾͐͌̀̎̽̓̊͘̚͘̚̚͘͜͜͝͝͝͝͠͝͠͝͝ͅͅ ̸̡̨̧̡̛̮͎͔͎̣̪̰̦͕͉̦̪̦̜͉̪͚̹͎̳͙̤̰̝̯͔͙͍̭̟̫̭̟͎̬̳̻̪̰̰̳͓͎̹̞̙̟̓̃̎̈́̑͑̏͆̀́͌̉̓̃̅̋͆͗͑̄̈́͛̎̌̆̈͑̓̿͒̄̋̉̇̅̉͊́̔̉̀̿͒̓͐̄͊̆̈́͐͗͗͗̅̓̐̇̈͋̑̔̽̈́̆̓̚̕̚͘͘̕͜͠͝͠͝ͅͅͅờ̷̧̡̨̢̡̨̧̧̨̢̡̢̢̡̧̡̨̧̢̨̡̛̛̛͖̪̠̰̜͎̲̯͔̯͕̦̺̝̩̮͇̹͙̱͇̗̹̲̯̼̺̭̫͖͖̠͔̜͍̼̯̭͉͉̰̠͓͕̗̣̝̻̘͇̠̗̗̰̖̯͍̜͍̭̬̪͖͓̱̦̬̣̙͕̟̣͖̜͓̜̭̫̩̹̟̜̠̱͓̲͈̻̭͈͈͎̹̪͎̠̬̗̫͖͎̣͈̠̖͖̦̦̝̹̗̬͙͇̖̝̟͎͖̭̙͈̩̗̠̙̯̼͓̩͕̠͇͇̩̬͓̻̝̖̯̩̙̭͈͚̞̗̜̼̲̬͉̮̝̙̲̭͖͔̜͓̦̘̮͓̹͚͓̞̮͉̜̝͎͖̤͉̜̞̱̝̖͇̩͙̹̜̲̱̻̠̫̦͍͔̯̣̲͎̬̣͙͈̩͓̱̲͚̻̞̱̜͇̩̟̜͉̹̘͚͕̞̠͈̭͕͔̖̟̬͌̏̔͑̐̀̈́̑̃͋͐̂̾́̒̑̅̐̏̈̏̎̈́̅̓͊̔̂̒͒̑̀̍́̈́̇̈̾̀̏̀́̀́͂̄̃̇̽̉̊̀̋̅̉̄͌̽̒͊̌̇̍̀̈́͛̒̔̍̒̍̋̀̽̉̃̂̍͋̽̇̅̿̂̇̆͌̀̐̇̀͆͌̀̀̄̓̐͂͛͑̍͐̐̂̑̔̄͒̍̒̒͑̊̍͗͋̔̄͑̎͊̓͊̊̈̔̋̈́̅̈̑̈́͂̽̓̐̅̿̏̓́̅̏̀̉͂́̉̇̊͊́̓̈́̉̐̈́̄̌̋̊̂̉́̆̍̅̀̀̌͌̒́̈́́̏̎̀͂͋͆̕̕̕̚͘͘̚̚͘̚͘̕͜͜͜͜͜͝͝͠͝͝͠͠͝͠͠͝͠ͅͅͅͅ ̸̧̛̛̛̛̛̛̦͖͍̠͇͖͖̦̞̼̥̺̼̳̻̺̼͖͕͍̪͕̘̗͔̰̟̽̓̅̓̒͌̓̇̿͂̈́̉̍̀̾̔̓̔̈́͒͑̏͗̉͌̀͂͆͗̊̿̈́̓̾̿͑̅͛̀̃̃̆̅͒̓͊̎͂͑̂̓͒̽̎̎̊̋͗͗̈́̇̓͐̓̓̊́̑̈́͌̑̈́͑̒̎̌́͐̅̉̔̀̆́͛̈́̓̏̽͒͊̎̍̽͆̉̃͊͆̀̅͋̀́͆̾̾̓͑͐̊̅͒̅̏̀̍̔̋̆͂̐͒̈̆̅̋̈́̋͋̾̾̎̿̒̄̿̀͒̽̉͐́́͗͌̊̈́͗̂͐̂͂̀͆̌́̒̅̀͛̽͑͑̆̽̉̍̿̒̈́̕͘̕͘͘͘͘̕͘͝͠͝͝͠͝͠͝͝͠͝͠͝͠͠͝͠ͅư̷̢̨̡̢̢̨̡̧̧̡̡̧̛̛̻͚̱͎̣̘̱̳̮̱͈͎̟͖͔̗̫̙̱̘̼̺͇͖̩̗̼̩͚̝̩̺̥͙̗̳̜̹̠̭̫̳̬̘̤̲̗̮̹͚̙̭͙̝̤͓̯̻͕̼̫̯̙͇̞̘̙͈͍̞͓̭̲͔̘͔͍̺̝̠̤͓͔̪̟̜̺̭̦̩̭̖͕̞̼͇̹̤͍̖͚̜̭̝̟̲̲̼͖̟͉̙̬̪̞̥̦̦̜̦̹̯͔̞̟͙̺̞̙͎̯̱̞̣̪̙̖̩̭̤̳͙̦̞͇͖͖̪̻̩̬̲͓͔̹͕̬̗̤͕̯̯̟̫̗̳̦̫̖̤͙̋̊͌̇̒̌̓̽̈̅͛̾̈͑̓̇̔̌͗̈̿̏̆̂̽̒̿̏̔̑̌́̌̄͛̾͂̊̔̎̈̓́͗̇̀̓́̆̎̈́̂̒͌͂̈́̆̇̇̑̂̍͐̿͑͒̓̈̊̄͌͋̎͑̔͂̈̾͒͒͛̈́̊̍̄̈́̓̔͗̉͒͂̾͌͊̾̇͐̀͑̈͐͊̊͋̆̉̿͑̃́̂̿̾̓͛̃̽̽͊͑̀̈́̇̈́̀̉͐̾̑͐̾̒̀̾͗̇͑́̾̽̀͐̈́̆̋̂̋͋̐̂̎͋̀͐̐̒͊͐͊̓̊̄̿̎̐̎̔͌̍̓̀̊̌̀̓̒̽͋͑̎́̓̐̉̑̊̌̚̕̚̕̕͘̚̕̚̕͘̕̚͜͜͜͜͠͠͝͝͝͠͝͝ͅͅͅͅͅͅ
echo l̵̡̨̢̧̢̧̡̧̨̧̧̧̢̡̧̧̧̧̩̪̝̬͕̠͚̟͓͍͕͔̺̦͖̹̱̳͍̲̤̳̦̖̭͚̟͙̪̫̯͇͉̼͍̖͈̫͇̣͖̙̠̭̱̩̞̼̻̘̻̣̗̙̪͙̳̗͓̙̦̞͍̮͕͈͉̞̮̖̝̣̠̳̣̻̪͇͕̲̪̙͇͎̺̯̦̼̩̦̯͕͇̭̺̱̳͖̬͓͇͍̟̼̞͚̩͚̺̱̝̤̣͖̰̺̜̩̫͚̻͍͇͈̜̰̼͎͖̳̱̠͍̼̹̖͙͓͙̝̹̯̺͓̱̫̼̤͍̮̼̰̹̮̹̳̞͙̞̗̪̖͍͓͎͍̫̣̮̳͇̱͖̗̅͐̆̋̾̅̄̾̆̊̔̊̂̍̍̆͋̆̈́̄͋͑̐̋́̋̒̏̒͊͂͗̈́̿̊̈́̍̿̐́̍̏̆̔̒͑̃̀̑́̍̊͐̿̚̚̕̚̕͜͜͜͠͠͝ͅͅͅͅͅ ̵̨̨̨̢̢̡̡̨̢̢̧̧̢̧̨̡̢̧̨̧̨̨̢̛̛̛̛̛͇̠̞̞̦̬̯̥̦̻̳̙̲͍̪͉̹̣̥̺̠͎̞͇̱͔͓̫͔̤̰̼̫̘̲̗̠̝̘̰̗̫̙̗̯̟̤̟̪̬̣͚̗͇̝̗̮̭͓͇̮͎̩̩͇̠̺͔̻̞̞̮̯̠̮̠̰̻̗͇͓̞͙̳̰͉̦̞̘̯͍̬̠̤̠̹̺͚̰̦̤͔̲͓̠̤̖̯̤̣̥̟̹̠̞̞̘̰͓͓̜̣͕̙̟̣̯̙̮͙͙͔͙͚͎͙̦̤̜̘̘͍̖̠̤͉̻̟͔͇͖̠̫͇͕͖͉̘͈̖̙̗͈̟͎͔̼̩̠̟̠̘͓̮͍̱̬̳̹̝̤̦̙̦̩̫̝̺̖͙̟̰̺̼̜͙͕͚̙̘̭̼̗̜̯̪͕̬̲͙̟͔̗̘͇̩̜̬̥͕͕̠͕̇́̐̎͆̐̄̑̑̽̓͌̊̾̇́̋̈̅̾̑̍͗͒̑̍͐̓͆̀̆̋̃͑̂̇͌̇̀͆̆͆̉̍̇́̏͒̋̄͋͌̇͛͌̓̔͛̍́͒̓̒̈́͊̆̐͐̎̀͐̂͋͒̌́͆͋͆̿̊̉̔̅͑̋̍̎̑̒͊̉͊̓̋̋͆̓͐̅̈̈́̄̒͌̾͋̓̉̓̏̈́͛͗͊͌͑̆̿̍̃́̂̋͊̐́̿̇̈́͋̉́͛͒̅̉̈̈́̓̃̐̽̃͐̔̎͊͂̔̌̈́̈̊̐͑̈́̄̑̊͑̾̑̀́͆̔̀̍͐̒̽̆̂̃͆͑͑̔̾̃̒̅̏̏̆̈̐́͛͗̉̍̽̌̌̈́̆̈͒̽̈́̋̏̄́̀̒̋̾̈́̀͗͌͊̍̌͋͌̈́̌͆̑̿̆̅̐͊͌̿͆̕͘̕͘͘͘̕̚͘̕̚̚͘͜͜͜͜͜͜͠͝͝͝͠͝͝͝͝͝͠͝͝͠ͅͅͅơ̴̢̡̡̧̡̡̧̧̢̡̨̡̢̨̨̧̱̞̗̫̞̫̠̲̣̩̙̰̤͍̮͍͕͍̼͇̳̹̫̭͕̬̪̪͙̰̣̪͍̥̯̺̹̤̤̩̲̮͉̲̭̤̤̪͈͕̠̤̱̫̬̜̻̦̣̭͍̼̤̺̱̟̯̭̙͇̥̻̬̺̻̮̤̣̼̫͕̰̣͓̤̹͎̝̣̩͖͙͔̻̘̬̗̟͍̰̯̹̥͎̲͓͍͓̥͉̦̪̖̞̰͙͇̩̠̮̮̻̩̳̥̠͕̥̼͈̺̗̯̤͚̻̖̈́̄̉̈̄́͛̐̅͂̐́͊̋̋̀̓̈́̆̌͌̃̃͛̋̉̔̓́̉̾͊̏́̐̇͒̋́̂̅̊̈́̐̿̐̍̔̐̉̇͑̿͋͗̄̓̂͌̀͛̓͗̌̈́̑͛̓̉̊̏̒͆̐̿͗͋̀͗͋̒̊͒̀́͑̒͐̽̉͊̾̈́̾̏́̇̋̑̒̈͋̎̇͊̓́̆̓͂͑͌̈́̌̈̓̌͊̑͛̍̀̍̊́̈́̄̈́̑̄̾̽̀́͊̀̕͘̚̕͘̕̕͘̕͘̚̕͜͜͜͝͝͝͝͠͝͠͠͠͠͝͠ͅͅͅ ̵̢̨̡̧̢̧̨̧̨̡̡̡̡̧̨̧͕̭͔̞͈͚̙͕͉̣̹̮̗̥̰̙̤͕̲̯̙̹̖͖̺͖͉̙̞̜̟̞̜̟̦̣̗͍̪̗͓̪̣̮̹̝̙̼͉͙̻̲̯͍̻̺̠̭͇̬͙̦͉̙̺̪̜̙͎̻͙̻̩̭̞̖͙̟̘̺͓̯̹̖̩̤̦̘̥̪̳̦̮̞͉̯͓̜̤̻̞̤̪͎̙͓̤͓͎͙̹̖̦͕̠̪̬͚̠͔̼̪̬̩̜̦̤̬̳̦̹̦̫̭̱͙̣̙̠̗̗̭̫͍̖̬͚̪͚͈̹͎̝͙̬͔͍̬͍̮̯̩͍̹̳̟̬̹̙̖̱̝̩̟͉̰͓͍̺͙̝̹̜͚̭͚̺̩̝̤̝̲̼̠͎͚̮̼̼͔̱͕͓͙̔̾͋̄͐͌̍͌͛̽̀̋͗̒̏͋̑͂̌͊̉̓̒̈́̌̒͗͊̈̚͜͜͜͜͠͝͠ͅͅͅͅͅͅơ̵̡̧̡̨̢̡̧̨̨̢̨̨̢̨̢̱͍͙̬̤̮̤͎̳̲͓̲̹̦͙̟̳͍̻̞͕͕̘̙̞̠̠͉̦̦͖͓͔̮̺͚͕̮̦͓͓̫̠̲͚̥̜͚͕͇̥̟͖̱̫̞̗̤̲͚̥̙̟̝̣͇̤͖̙̞̼̭͙͎̠̼͎̙͇̫̹̜͉̹̯̯͉̗̗̟͉͓̞̪̭͔̺̬̳̯̮̞̩̰͓̹̳̱̭̩͔̘͙͙̫̳͙̰̘̻̫̹̱͉̫̖̰̟̬̖͙̲̯̟̻̝̣͇̣̗̝̦̭̟̯̗͖͎̱͕͍̿̇̓̒̈́̔̐̃̀͐͘͜͜͜͜͝ͅͅͅͅͅ ̸̢̧̧̢̧̢̡̢̢̢̨̡̢̧̧̨̡̧̢̢̡̧̧̡̢̧̡̟̖̤̩̖̘̙͕̺͈̗͖̭̗̗̟̝͙̙̙̳̝̣̟̗͈̫̦̫͚̣͕̙̟̤͈̫̫̼͎͎̘͎͙͇̩͕̝͎̠̺̬̪̬̮̻̰͔͇̭̗͙͙̪̤͔͔̜̻͓̠̠̳͉̮̙̘̪̲̥̦̖̝͓̘̯̻̖̖̺̤̤̪̠̰̤̭̥͉̲̪̯̹̙̭͔̥̺̻̤͙̖͈̭̭̪͈̱̼̻̤̖̻̗̭̲͓̲͖̜͔̦̤͕̗͕̲̠̹̮̟͙̘͍̼͔̠͇̖͔͓̼̩̝̗͇̫̹͕̜̮̪̪̼̝͈̜̱̫͇̞̘̮̮̣̳̞̟̩̳͙͍̜̩̥̜̘̗̺̫̘̗͙̝̳̩͕̤̺͓̭͎͎̩͖̠͓̹̜͎͕̘̥̥͙̭̩̭̱̲͍͚̯̲͚͚̖̮͓̋͒̉̉͐̆͂̒̍͐̒̊̈́̆̒̂̎͆͑́̀̍̀̀̚͘͘͜͜͜͠͠͠͝ͅͅͅͅͅk̵̡̨̨̧̧̡̢̨̨̡̨̨̢̢̡̧̡̧̛̛̛̛̘̼̺͈͖̮̪̮̯̩̟͔̱͚̦̹̻̜̻͖͎̪͕̙̙͔̺͓͇̩̺͖̟̲͈̦̩̯͈͙͇̗̠͉̼͎̫̖̱̺̣̞̠̞̺͍͚͍̺͔̳̺͙̘̦͕̖̤͍̥͖̺͔͚̫̪͎̘̤͙͚̗͙̥̬̺̤̗͉̥̙̻̣͕̪̞̯̰̻̠͕̣̼̞̱͕̮̖̬̪̘̬͓͚͖̰͖̹͉̖̩̜͉͕͚̟̰͖̟̯̻̞͎̤͍̠̲̝̲̭͉̙̪̲̟̙̹͔̝̹̟̭̜̠̥̰͈̩͚̣͇̞̞̗͇̙͎̞̱̦͕̤̗͚̙̺̹͉̫͕̪͇̮͔̝̪͓̣̥̜̙̱̣̮̤̥̙̙̼͚͎͋̈́̾͌̾͂́̎̽̊̎̓̑̽̔̎͐̀̀̓͐̋̃͋̋͒́͊̉̑̆̾̈́̀͂̒́͌͊̋̔̉̇́͌̈́́̆͐̀̀͒̃͗͂̂̊̐̄́̀̒́͐͌͛̿̾͑̂̽̆͂̄̀̽͌̄̂̈̊̀̂̐̎̑̑̿̇̉̌̅̋͌͆̄̋́͒̓̀̔̿̐̊̉̐̅͊̄̌̆̐̅̆̒͗̾̎̉̐̈́̈́͊͌͋̕͘͘͘͘͘̚͘̕̚͜͜͝͠͝͝͠͠͝͝͝͝͝ͅͅͅͅͅͅ ̴̧̡̩̺̼̪̭̭̟̺͖͑̇̊̅̃b̸̢̢̡̧̢̨̧̡̨̨̡̨̢̨̡̨̢̨̡̢̧̢̧̛̛̛̛̛̛̛̛̖͈̥̬̟̮̬͎͚̘̯͍̥͈̜͉̥͙̘͉̲̳̼̫͇̠͈̟͈̣̰̳̘̫̳͔̪̮̲͖͕̠̭̜͎͉͓͚͎̼̗̝͇̪̦̭̘͚̙̼̰̟̬͓̘̮̖̙̖͙̗͇̗̥̠̣̬͉͙̣͇̺̟̖͔̜͉͙͎͖̺̭̬̗̞̥͙̫̠̗̲̦̹̦̺̼̘̦̦̳̭̟͎̱̦̼͈̤̜̖̞͉͉͚̤͕͇̙̳͙͉̮͖̰̬̝̩͕̜̹͓̻̝͇͙̬̝̝̣̞̗̬̦͎̖̣͕̱̳̠͓͙͇͓̯̠͕̮̻̩͍̪͓̜̤͉̮͙̬͇͓͕͈̣͉̳̟̺̩͇̫̺͇͔̬̩̫̗̫̜̭̖͙͕̖̬͉̜̥͚̊̍͊͒͆̊̉̋̈̋͑̈́̀̅̇̃̿̇̐̋̋̓̓́̾̇̂̍̓͂̉̆̎͗́̽̓̐̈̒̈́̎͂̂̃̓̾͋̏́̐̎̓̿̂̀̐͛͋̽̃̄̐̎̀͗̆̍̂́̈́̊̓́̌̏̆́̀̊͋͋̏̂̇̓̎̀͑̈́̊̒͌̐͐͑̆̈̊͑̐́̇̽̏̾̾́̄̈́̓̽͌͂͐͊̓̌̓̔̑̈́̐̋̊̆̀̌̀͐̈́̄͛̾̽̒̏͆̔͛̌̏́̔̾̽̈́͆̈́͑́͗̾̽͒͋̇͋͑̂͐̋̈́̓̌̑̃̎̊̃̔͛͘̕̚̚̕͘̕̕̕͘̚͘̚̚͜͜͜͜͜͠͝͠͝͠͝͠͝͠͝͝͝͝͠͝͠͝ͅͅͅͅͅͅͅ ̵̛̛̛̛̛̯̠͚̭̠̩̘̗̼͂̔̄͂͒̍̓̀̌̀̈́̉̈́̍̓̎̎̋̐̌͌̅̅̈́̊͌͐̅͐͂͐̃̽̈̿͗͛̋̊̑͊͒͒͗͌͆̀͆̓͗̇̊̊̋̔͂̈́̒́͒̆̐̒̋̂̇̒̓̿̓́̈͐͂̈́͛́̀͋̏͑̈́̂̎͋̋͆̾͆̈̽̓͌̊͊͗̽̇̐̃͐̑̍̅̓̂̾̍̔̇͆̈̀̄̆̍̓̎̽͑̈́̅̊̈̓̀͑̈́̀̈́̆̆̾̒̉́̂͆͆̐̀̌̽̀̒̊̔̈͗͋̿̀̓͂̓͆̈̂̅̂̾̒̌͑̇̀̃̆͗̓͆̃͐̒̓̽͆̊̑͊̑͆̌͂͆̂͋̾̈̆͐͌̾̏́͑̿͐͆͆́̽̔̀́̽̈́̔̒͊̀̃͑̿̍͋̓͋͛̍͌͑̂͆̕͘͘̚̚̚̕͘͘͘̕̕̕͘̕͠͠͠͝͝͝͠͠͝͝͝͝͝͝͝͝͠͝͝ȩ̵̨̨̠̝̦̩͕̩͔͉̦͎̬̱͕̮͐̀ ̸̨̛̛̛̺̥͎̼̠̗̻̹̞͖̖̟̠͍͕̿̆̉̃̈́̏̽͛̐̒̀̇̿̊̃̏̉̄̋̿͒̇̎̐͂͗̈́͐̾̉̈̑̽́̔̇̆͑̓̃̿̊̏̈̎̎͑̃̔̽͆̏͋̄͋͒̊̊̐̈́̀̓̔͐̀͗͑̃͒̿̿́͗͂͆̐̅̀̒̃̌̀̑͒̈̿̐̀͂̿́̑̀́̐̐̆̀̈́̈́̆̽͗̉͌́̒͛̌̍̋͒̀͐̃̌̄͊̓͋̏̈̀̈̔̾͑͐̓̽̏̿̉͌̑͋̎̽̒͗͂̃̈́̒̔̒̂̍͌̈̊̍̓̌̒̈̆̈̄́̓͘͘̚̕̚̚̚͘̕̕͘͘͝͝͠͠͠͝͝͠ͅh̵̡̢̡̢̧̧̨̢̧̢̡̡̡̨̨̨̡̧̧̡̢̢̼̜̣̲͙̝̤͚̙̺͔̻̠̥̲̬͖̬͓̜̼̠̱̗̗̖̪̳̘̥̬̖̦͍̬̱͈̙̝͕̘͉̜̩̱̻̠̤͓̠̤̩͙̦̬͎͖̞̳̮̩̦̬̬̖̩̭̫͎̬̟̮̹̩͚͓͓̥̯̖̳͓̗̳̯̜̬̻̼̹͙͚̱͕̝̹̝͕͍̥̼͚̥̟̫̦̖͇͙̮̱̬͖̯̹͓̤̭̜̰̻̟̰̥̜̫̩͉̙͕͇̭͎͇̜̰̗͍̹̺̹͈̥̙͉̘͈͖͈̠̣̩̭̟̫̝͈͖̹̬̞͍̓̕͜͜͜͜ͅͅͅͅͅͅͅ ̴̢̨̢̡̡̢̡̡̨̢̧̨̨̧̡̧̡̢̡̡̢̧̨̨̨̨̡̨̨̛̺̘̙̬̲̮̘̳̫͕͖͔̖͉̦̪̪̭̫̪͈̬̮̮̺͇͔͙̟̲̙̫̞͕͉̜̭͓̱͈̣̗͓͈͈̟̟̣͓͖̟͇̤͔̻̺̯̰͚̜̪̱̜̗͎͎͚̞̙̼̮̺͉̳̤̼̠͚͉̺͇͕͈͔̯̫̰͔̯͉̫̤͙̪͎̩͖̹̼̰͉̲̫̜̗̖͖̖͓̬̰͔̭̗̟͕̗͙̼̰͉̜̩̤̮̦̟̭̺̯̭͓̯̹͔̪̹͎̜̟͔̫͈͈̹̟̬̗̞͇̞̞͚̼̮̭̙̬̮̭̥̤͎͍̼̮͖͙̝̳̜̱̣͉̬̺̟̼̦̞̗͈̥̥̳̩̺̘̺̥̮͍̮̻̦͓̪͚̺̻̭̮̰̥͎̜͇̹̞̪͓̥̩̘̦̥͌̿͛͂̽͗̎̊́̋̌̊̉̅̋̽̆͒̊̃̈́̾̈́̄̈́͛̑̏͋̉͘͘̚͜͜͜͜͜͜͜͝ͅͅͅͅͅͅͅi̸̡̢̢̢̨̡̡̧̡̧̛͙͓̳̙͈͕̫̞̲̟̻͙̟̞̦̖͙̩̩̬̯̫͕̖̲͖̪̱̺̰̥͍̪͍̞̭̰̜̲̲̝̪̘͉͎̭̳̭̼̟͍͖͇̰̟̮̦̘̝̮̼̦̰̜̹̺͎̲̣̋̋̉̇̏̇͑̃̑͛̍͂̄́̐̑̈́͆́̎̈̂̓͑̇͊͂̓̽̚͘̕̕̚͜͜͜͝͝ͅͅͅ ̸̧̧̢̡̧̢̛͚̥̤̬̹̭̤̞͓̝̪̖͓͔̳͙̪̪̘͛͛̋́͑͊͛̈́̇͑̐͛̅͒́̉͑̾̿̌͐̕͝͝n̷̨̢̢̨̡̧̨̡̧̛̛̛̛̛̛͚̯͉̤͈̼̹̣̯̰͉̻̬̼̤͎̪͉̼͉̲̗̼̞̼͖͉͚̮͇̜͎̺̠̹̟͔̼͓̜̰͓̣̜̞̙̺̮͖̝̙̼̫͚̖̲̖̜͍̺̭͇͚̰̖͈̪̟̗̹̱̦̦̭̭̳͉͔̖͓̼̭̪͍̳̬̮͇͍̬̹͈͕͎̫̻̰̺̫̼̞̹̥̗̰̪͇̏̈́̈́̊͋͊̀́̓̿̍̽̓̐̑͒̀͐̆̑̊̀̈̆̊͆͛̽̽͆̀̊͆͗́̏͂̑͊̔́̈́̑̉̾͆̆̒̒́̈́̿̉́̈́̈́͆̽̅̓͊́̏͛͒́́̓́̍̂̐̋͛̀͐̌͋̀͐̆̾̆̍͛͋̓̄̔̋̈́̀͊͛̌̓͐͒̂͂̆̋̈́̏̐͌̃̈̀͂̾̎͑̈́̊̋̽͌̏͗̋́͋͘̚̕̕̕̕̕̕̚͜͜͜͜͝͠͠͠͠͝͝͠͝͝͠ͅͅͅͅͅͅ ̴̢̨̨̢̧̡̧̧̡̨̨̡̨̨̧̡̢̛̛̛̛̛̥̪̘͈̤͔̳̦͎͇̜̖͚̪̱̗͍̼̳̜̲͓̯͔͍̲̩̺̖̣̦͇͖̲̖̼̙̰̗͚̤̖͉͈̰̯̥̮̞̼̯͉̺͓̠̞͈̪̻̤̭̳͚͇̣̫̲̹̩̖̤̞̤͇̮͔̘̭̼̳͍͇̰̠̰͈̩̖̬͉͉̙̥̳̙̭̹̰͉͉͉͇͕͍̣͔̥̟̩͚͈̮̠̘̝̩̥̦̯̬̤͙͙̠̳͖̝̭͓͖̠̦̟͕̻̣̫͓͉̫̹̯͕̝̟̺̲̹͖͉̥̹̹̻͙͚̙̓̍̾̐͑͐͑́́̽̅̋̒͗̄͌̂̆͂͛̽͑́̔̇̍̍̅̉͒͑̔̈́́̊͐̈́͒̒̃̂͑̄̊͌̇̀́̋̓̋̄̃͗̿͗́̀̋͋̆͋̒͆̆̈́̃͌̒͊̐͌̓̓̄͛͌̈̀̂͋̎̉̓̌͑́̓̓͗̍͆͊́̅́̉̾̿͆̂̓̅̏̇͋̄̀͊̈́͐̈́̂̓̀̊̎̄̔̏̌̄̄̍̓̀̈́͛̀͂͛͗̈́͒̓̑͒̓͂̽̾̀̀͊̓̾̓͐̒͆̃̆̌̑̓͐͗͆͌́̿̀͂̎̓̾͌̇̄̏͐̒̾́͂̆̔͗̍͗̀̓̑̅͋̽͒̿̌̍͛͐̾̈́͗̔̊͌͗́̄́͌̕̚̚͘̚̚̕̚̚͘̕̕̕͜͜͜͜͜͜͜͝͝͠͠͠͝͝͝͝͝͠͠͝͠͝͠͠͠ͅͅͅͅḑ̴̡̨̛̛̛̛͈͓̭̫̙̹͙̺̙̗̠̺̮̯͕̙̭͕̠͓̬͓̦̭͙̼͈̰͓̤̬̘̤̙̼̱̤͇̗̝̞̺͍̰̗̫̼̓̀̍͂͐̊̿̄͊͌̀͛̈́̎̅̓̅̈́̏̓̊͊͐̽̑̅́̀̅̒͋̐͗̀͒͗̌̂̈́̈̋͌̊̔̃̎͑͗̇̌͑̿̿͑̌͊͑͊̄̄̍̍̅́͋̀̇̎͒͆͋̅́̈́͂̀̏̀͆̃̿̈́͐͛̃́̈́̾̊̊̍̒̓̋͂̈́̈́͑̑͊̄̓̉́̓̈́̇̽̄̋̃́̿̓͗͑͐͛͂͊̾͒͑̈́̀̆̐̽͑̐̑̉̉̄̚̚̚̕͘̕͘͘̚͘̚͜͜͜͝͠͝͝͠͝͠͠͝ͅͅ ̶̢̢̢̧̧̨̡̡̢̡̧̡̡̡̨̡̡̛̛̛̛̛̛̛̛̻̦̲̜̘̳̦͕̞̞̟̝̩̙̻̳̰̘̞̞̗̹̥̻̻̞͙̞͙̬͙̱͍̳̪̗̼̖̖͚̺̰̳͓̘̮̼͇̙̠̼͎̞̟̦͖̪̝̪͎̪̩̗͍̺̼̞̩͔̬̪̗͎̣̦͉̘͎̣̳̫̺̗̱̥̯̠̲̺̜̠͈̖͕͓͎̪̟͍̬̹̹̼͚̭̩̫̗͔̫͓̩̞͓͍̯̗̗̟̯̗̩̤̫̮͖̘̹̝̜̫͉͙͚̟̪̭͚̟͛̊̒̋̓̋̈̂̇͂̄̂̍͐̓͋́̑̋̒͗͗͆͗̈́̿̋̍̑́́͊̐̑̉̇̈́̎̌̓̑͊͆͊̍́̆͆͐͑̑̾͑̃̒̋̒̋͐̿̂͐̎͒̎̈́̀̍͌͛̈́̅͐̅͑̇͑͑̎̓͐͒̀̀͐͗̈̀͗̾̈̾̄̆̿͑̂̐̒̀͂̈̆̍̆̍̎͗̐̽̍̿͒̆̍̔̄̒̉̿̅̈́́̀͗̏̌̊́͂̏͊̔̌̋̄̌̀̉̈́͐͐̀̽̔̽̓̃̓͂̂̿̂̀̎͊͂̑̆̽̓̉̂̏̔͌̑̀̇̓̃̐͒̇̀̔̒̐̀͗̅̕͘͘͜͠͝͝͝͝͝͝͠͝͝͠͝͝͠͝͝͠͠͝͠ͅͅͅͅͅȳ̷̨̡̧̡̡̢̧̢̧̢̧̡̛̛̪͙̬̠̭͙͉͎̺̹͖̝̼͕̰̰̦̙̯̜͈̩̜̦̣̬͍̥̝͈͖͇̟͉̜͚̳̣̫̠͍̜͖̬͇̠̘̦͙̠̼͇̻̼͉̻͙̦̦̗̣̼̤̬̞̝̻̭̫̱̪͖̬̰̗̬͉̠̱̹̮̙̮̖̜̬̭̦̖̼̞̖̬̥̟̟̪̭͖͛͗̒̿̍̽͑͆̇͂̎̾̈́̃͊̾̅͌͗͒̍̊̊̌͗̾̆̈́̋͛͑͛͑͋̓̽̈́̒̈̂̐̐͛̐̀̀͌̃͛̔̄͂̇̇̿͒͆̅̍͆̄̂͑̄̌̅̓̽͑̃̂́̃̊́̂̈́͆̉̅̋̍͑̑̽̔̇̾͐͌̀̎̽̓̊͘̚͘̚̚͘͜͜͝͝͝͝͠͝͠͝͝ͅͅ ̸̡̨̧̡̛̮͎͔͎̣̪̰̦͕͉̦̪̦̜͉̪͚̹͎̳͙̤̰̝̯͔͙͍̭̟̫̭̟͎̬̳̻̪̰̰̳͓͎̹̞̙̟̓̃̎̈́̑͑̏͆̀́͌̉̓̃̅̋͆͗͑̄̈́͛̎̌̆̈͑̓̿͒̄̋̉̇̅̉͊́̔̉̀̿͒̓͐̄͊̆̈́͐͗͗͗̅̓̐̇̈͋̑̔̽̈́̆̓̚̕̚͘͘̕͜͠͝͠͝ͅͅͅờ̷̧̡̨̢̡̨̧̧̨̢̡̢̢̡̧̡̨̧̢̨̡̛̛̛͖̪̠̰̜͎̲̯͔̯͕̦̺̝̩̮͇̹͙̱͇̗̹̲̯̼̺̭̫͖͖̠͔̜͍̼̯̭͉͉̰̠͓͕̗̣̝̻̘͇̠̗̗̰̖̯͍̜͍̭̬̪͖͓̱̦̬̣̙͕̟̣͖̜͓̜̭̫̩̹̟̜̠̱͓̲͈̻̭͈͈͎̹̪͎̠̬̗̫͖͎̣͈̠̖͖̦̦̝̹̗̬͙͇̖̝̟͎͖̭̙͈̩̗̠̙̯̼͓̩͕̠͇͇̩̬͓̻̝̖̯̩̙̭͈͚̞̗̜̼̲̬͉̮̝̙̲̭͖͔̜͓̦̘̮͓̹͚͓̞̮͉̜̝͎͖̤͉̜̞̱̝̖͇̩͙̹̜̲̱̻̠̫̦͍͔̯̣̲͎̬̣͙͈̩͓̱̲͚̻̞̱̜͇̩̟̜͉̹̘͚͕̞̠͈̭͕͔̖̟̬͌̏̔͑̐̀̈́̑̃͋͐̂̾́̒̑̅̐̏̈̏̎̈́̅̓͊̔̂̒͒̑̀̍́̈́̇̈̾̀̏̀́̀́͂̄̃̇̽̉̊̀̋̅̉̄͌̽̒͊̌̇̍̀̈́͛̒̔̍̒̍̋̀̽̉̃̂̍͋̽̇̅̿̂̇̆͌̀̐̇̀͆͌̀̀̄̓̐͂͛͑̍͐̐̂̑̔̄͒̍̒̒͑̊̍͗͋̔̄͑̎͊̓͊̊̈̔̋̈́̅̈̑̈́͂̽̓̐̅̿̏̓́̅̏̀̉͂́̉̇̊͊́̓̈́̉̐̈́̄̌̋̊̂̉́̆̍̅̀̀̌͌̒́̈́́̏̎̀͂͋͆̕̕̕̚͘͘̚̚͘̚͘̕͜͜͜͜͜͝͝͠͝͝͠͠͝͠͠͝͠ͅͅͅͅ ̸̧̛̛̛̛̛̛̦͖͍̠͇͖͖̦̞̼̥̺̼̳̻̺̼͖͕͍̪͕̘̗͔̰̟̽̓̅̓̒͌̓̇̿͂̈́̉̍̀̾̔̓̔̈́͒͑̏͗̉͌̀͂͆͗̊̿̈́̓̾̿͑̅͛̀̃̃̆̅͒̓͊̎͂͑̂̓͒̽̎̎̊̋͗͗̈́̇̓͐̓̓̊́̑̈́͌̑̈́͑̒̎̌́͐̅̉̔̀̆́͛̈́̓̏̽͒͊̎̍̽͆̉̃͊͆̀̅͋̀́͆̾̾̓͑͐̊̅͒̅̏̀̍̔̋̆͂̐͒̈̆̅̋̈́̋͋̾̾̎̿̒̄̿̀͒̽̉͐́́͗͌̊̈́͗̂͐̂͂̀͆̌́̒̅̀͛̽͑͑̆̽̉̍̿̒̈́̕͘̕͘͘͘͘̕͘͝͠͝͝͠͝͠͝͝͠͝͠͝͠͠͝͠ͅư̷̢̨̡̢̢̨̡̧̧̡̡̧̛̛̻͚̱͎̣̘̱̳̮̱͈͎̟͖͔̗̫̙̱̘̼̺͇͖̩̗̼̩͚̝̩̺̥͙̗̳̜̹̠̭̫̳̬̘̤̲̗̮̹͚̙̭͙̝̤͓̯̻͕̼̫̯̙͇̞̘̙͈͍̞͓̭̲͔̘͔͍̺̝̠̤͓͔̪̟̜̺̭̦̩̭̖͕̞̼͇̹̤͍̖͚̜̭̝̟̲̲̼͖̟͉̙̬̪̞̥̦̦̜̦̹̯͔̞̟͙̺̞̙͎̯̱̞̣̪̙̖̩̭̤̳͙̦̞͇͖͖̪̻̩̬̲͓͔̹͕̬̗̤͕̯̯̟̫̗̳̦̫̖̤͙̋̊͌̇̒̌̓̽̈̅͛̾̈͑̓̇̔̌͗̈̿̏̆̂̽̒̿̏̔̑̌́̌̄͛̾͂̊̔̎̈̓́͗̇̀̓́̆̎̈́̂̒͌͂̈́̆̇̇̑̂̍͐̿͑͒̓̈̊̄͌͋̎͑̔͂̈̾͒͒͛̈́̊̍̄̈́̓̔͗̉͒͂̾͌͊̾̇͐̀͑̈͐͊̊͋̆̉̿͑̃́̂̿̾̓͛̃̽̽͊͑̀̈́̇̈́̀̉͐̾̑͐̾̒̀̾͗̇͑́̾̽̀͐̈́̆̋̂̋͋̐̂̎͋̀͐̐̒͊͐͊̓̊̄̿̎̐̎̔͌̍̓̀̊̌̀̓̒̽͋͑̎́̓̐̉̑̊̌̚̕̚̕̕͘̚̕̚̕͘̕̚͜͜͜͜͠͠͝͝͝͠͝͝ͅͅͅͅͅͅ
goto run