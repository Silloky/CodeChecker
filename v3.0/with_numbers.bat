@echo off
prompt $S
title Codes check
color 0a 

set tries=3

set /p old_time=<time.txt
set new_time=%time:~3,2%
if %old_time%==%new_time% (
	echo I said wait 1 min ...
	ping 127.0.0.1 -n 3 > nul
	exit
)

echo @echo off > matrix.bat
echo title Searching... >> matrix.bat
echo color 0a >> matrix.bat
echo set n=0 >> matrix.bat
echo :start >> matrix.bat
echo echo %%random%% %%random%% %%random%% %%random%% %%random%% %%random%% %%random%% %%random%% %%random%% %%random%% %%random%% %%random%% %%random%% %%random%% %%random%% >> matrix.bat
echo set /a n=n+1 >> matrix.bat
echo if %%n%%==1600 (exit) else (goto start) >> matrix.bat

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


:code typing prompt
cls
@echo off
@echo Please type a code and press Enter (%tries% remaining)
set /p code_typed=
@echo Verifying...
ping 127.0.0.1 -n 2 > nul

:1st check
if %code_typed%==1234 (goto 1234) else (goto 2nd check)

:2nd check
if %code_typed%==1456 (goto 1456) else (goto 3rd check)

:3rd check
if %code_typed%==azerty (goto end) else (goto wrong)


:1234
@echo off
ping 127.0.0.1 -n 2 > nul
@echo Code accepted
ping 127.0.0.1 -n 2 > nul
@echo Searching database for corresponding output...
@echo off
ping 127.0.0.1 -n 1.75 > nul
start cmd.exe /c matrix.bat
ping 127.0.0.1 -n 3.8 > nul
@echo Done !
ping 127.0.0.1 -n 3.2 > nul
Result_1.txt
goto end

:1456
@echo off
ping 127.0.0.1 -n 2 > nul
@echo Code accepted
ping 127.0.0.1 -n 2 > nul
@echo Searching database for corresponding output...
ping 127.0.0.1 -n 1.75 > nul
start cmd.exe /c matrix.bat
ping 127.0.0.1 -n 3.8 > nul
@echo Done !
ping 127.0.0.1 -n 3.2 > nul
Result_2.txt
goto end


:wrong
cls
echo Wrong code
set /a tries=%tries%-1
if %tries%==0 (goto abort)
echo %tries% remaining...
ping 127.0.0.1 -n 0.5 > nul
echo Please try again...
ping 127.0.0.1 -n 4 > nul
echo off
cls
goto code typing prompt

:end
del /q matrix.bat
exit

:abort
cls
echo You have exceeded the maximum number of tries.
echo Try again in 1 min.
ping 127.0.0.1 -n 4 > nul
set time=%time%
if exist time.txt (del time.txt)
echo %time:~3,2% >> time.txt
goto end

echo Press any key to continue...
pause >nul

