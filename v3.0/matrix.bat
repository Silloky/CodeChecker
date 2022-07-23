@echo off 
title Searching... 
color 0a 
set n=0 
:start 
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% 
set /a n=n+1 
if %n%==1600 (exit) else (goto start) 
