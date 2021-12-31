@echo off
color 0f
cls
echo Loading... please wait!
title 1
ping localhost -n 1 >nul
title 3
ping localhost -n 0.1 >nul
title 4
ping localhost -n 0.1 >nul
title 21
ping localhost -n 0.05 >nul
title 54
ping localhost -n 1 >nul
title 66
ping localhost -n 2 >nul
title 66
ping localhost -n 0.01 >nul
title 72
ping localhost -n 0.07 >nul
title 80
ping localhost -n 0.6 >nul
title 93
ping localhost -n 0.1 >nul
title 98
ping localhost -n 0.7 >nul
title 100
ping localhost -n 1 >nul
goto menu

:menu
cls
color f0
title Quiziy
echo Welcome, to...... Quiziy!
echo .........................
echo Select your action!......
echo -------------------------
echo.
echo 1. Start the quiz!
echo 2. About the game
echo 3. Close the game

set /p menuchoice=

if %menuchoice% == 1 goto startgame
if %menuchoice% == 2 goto info
if %menuchoice% == 3 goto exit
goto menu

:exit
cls
echo        Are you sure?(y/n)
set /p exit?=

if %exit?% == y cls exit
if %exit?% == y cls exit
if %exit?% == n cls goto menu
if %exit?% == n cls goto menu

:info
cls
title Iformation
color 0f
echo Version 1.2.6, Game id:128917941290
echo This game is not responsible to any damage to your PC.
echo.
pause
cls
goto menu

:startgame
cls
color c0
title Get ready!
echo Prepare to anwser the quiz!
pause >nul
echo Before you play... Please type your name below me!
echo.

set /p player=
echo.
echo Hello %player%!
echo To start, press any key!
pause >nul
goto verif

:verif
cls
color 9f
title Verify
echo Before you play,please verify first!
echo ------------------------------------
pause >nul
goto lev1

:lev1
cls
title Quiz 1
cls
color 1f
echo Get ready!
timeout 3 /nobreak
cls
echo Question number 1
echo When minecraft was made?
echo A) 2011
echo B) 2010
echo C) 2009
echo D) 2008
echo Please type your anwser (a/b/c/d)

set /p ansq1=

if %ansq1% == a goto wrq1
if %ansq1% == b goto wrq1
if %ansq1% == c goto crq1
if %ansq1% == d goto wrq1

:wrq1
cls
title Oops!
color 0c
echo Oops! im really sorry that you take the wrong anwser.
echo But don't be sad,You can always play again!
echo.
pause >nul
goto menu

:crq1
cls
title Wow!
color 02
echo Congratualation you made this question right!
echo.
pause >nul
goto lev2

:lev2
cls
title Quiz 2
cls
color 1f
echo Get ready!
timeout 3 /nobreak
cls
echo Question number 2
echo When was Christmas day?
echo A) December 25
echo B) December 1
echo C) January 1
echo D) May 31
echo Please type your anwser (a/b/c/d)

set /p ansq2=

if %ansq2% == a goto crq2
if %ansq2% == b goto wrq2
if %ansq2% == c goto wrq2
if %ansq2% == d goto wrq2

:wrq2
cls
title Oops!
color 0c
echo Oops! im really sorry that you take the wrong anwser.
echo But don't be sad,You can always play again!
echo.
pause >nul
goto menu

:crq2
cls
title Wow!
color 02
echo Congratualation you made this question right!
echo.
pause >nul
goto lev3

:lev3
cls
title Quiz 3
cls
color 1f
echo Get ready!
timeout 3 /nobreak
cls
echo Question number 3
echo Do parrots talk back?
echo A) Always
echo B) Somethimes
echo C) Never
echo D) When talking
echo Please type your anwser (a/b/c/d)

set /p ansq3=

if %ansq3% == a goto wrq3
if %ansq3% == b goto crq3
if %ansq3% == c goto wrq3
if %ansq3% == d goto wrq3

:wrq3
cls
title Oops!
color 0c
echo Oops! im really sorry that you take the wrong anwser.
echo But don't be sad,You can always play again!
echo.
pause >nul
goto menu

:crq3
cls
title Wow!
color 02
echo Congratualation you made this question right!
echo.
pause >nul
goto win

:win
cls
title Well done!
echo                      Well done %player%, You made it!
echo                      Exit game? (y/n)

set /p exitans=

if %exitans% == y goto bye!
if %exitans% == y goto bye!
if %exitans% == n goto menu
if %exitans% == n goto menu

:bye!
cls
color f0
title Goodbye
echo Thanks for playing!
timeout 5 /nobreak
exit