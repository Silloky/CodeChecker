prompt $S
title Codes check
cls


@echo Launching session...
@echo off
ping 127.0.0.1 -n 2.5 > nul
cls
@echo Pinging server...
@echo off
ping 127.0.0.1 -n 3 > nul
@echo Done !
@echo off
ping 127.0.0.1 -n 2.5 > nul
cls

:code typing prompt
@echo off
@echo Please type a code and press Enter
set /p code_typed=
@echo Verifying...
ping 127.0.0.1 -n 2 > nul

:1st check
if %code_typed%==1234 (goto 1234) else (goto 2nd check)

:2nd check
if %code_typed%==1456 (goto 1456) else (goto wrong)

:1234
@echo off
ping 127.0.0.1 -n 2 > nul
@echo Code accepted
ping 127.0.0.1 -n 2 > nul
@echo Searching database for corresponding output...
@echo off
ping 127.0.0.1 -n 4 > nul
@echo Done ! Press any key to open.
pause > nul
Result_1.txt
exit

:1456
@echo off
ping 127.0.0.1 -n 2 > nul
@echo Code accepted
ping 127.0.0.1 -n 2 > nul
@echo Searching database for corresponding output...
@echo off
ping 127.0.0.1 -n 4 > nul
@echo Done ! Press any key to open.
pause > nul
Result_2.txt
exit


:wrong
echo Wrong code
echo off
ping 127.0.0.1 -n 0.5 > nul
echo Please try again...
ping 127.0.0.1 -n 4 > nul
echo off
cls
goto code typing prompt



