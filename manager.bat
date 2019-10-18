@echo off
SET server-locate=D:\FiveM-server\FiveM
Rem Server Location Above
rem Simple and easy, the other .bat will also need a server location, read my comments 
rem For line 23 and 26 (Refer to start-server.bat)
Rem Also DO NOT CHANGE THE start-server.bat File name or starting your server will not work in this!
rem Made By IceyyM8, Simple and easy!


goto :beginning


:beginning
cls
@echo off
title Choose what you want to do!
ping 127.0.0.1 -n 0 > nul
echo Cache = clear cache
echo ==================================
ping 127.0.0.1 -n 0 > nul
echo Start = start your server
echo ==================================
ping 127.0.0.1 -n 0 > nul
echo Cfg = Open your cfg
echo ==================================
ping 127.0.0.1 -n 0 > nul
echo Resources = Open your resources folder
echo ==================================
set /p c=Please choose an option above
echo ==================================
if /I "%C%" EQU "cache" goto :cacheclear
if /I "%C%" EQU "start" goto :serverstart
if /I "%C%" EQU "cfg" goto :cfgedit
if /I "%C%" EQU "resources" goto :resources

:cacheclear
@echo off
cls
Title Clearing Cache...
ping 127.0.0.1 -n 2 > nul
@RD /S /Q "%server-locate%\cache"
if errorlevel 1 echo Cache not found! echo Cache not found! , this could be because you didn't set your server path in the bat!
title Cache Was Cleared!
echo Your Cache was cleared!
ping 127.0.0.1 -n 1 > nul
cls
echo ==================================
set /p c=Would you like to restart the prompt or close the manager?
echo ==================================
echo Type close or restart
echo ==================================
if /I "%C%" EQU "restart" goto :beginning
if /I "%C%" EQU "close" goto :close


:serverstart
@echo off
cls
title Calling the other bat...
color 3
title Called!
ping 127.0.0.1 -n 1 > nul
call start-server.bat
cls
if errorlevel 1 echo Error, Start Failed cls echo Server start failed! , this could be because you didn't set your server path in the bat!
echo ==================================
set /p c=Would you like to restart the prompt or close the manager?
echo ==================================
echo Type close or restart
echo ==================================
if /I "%C%" EQU "restart" goto :beginning
if /I "%C%" EQU "close" goto :close

:cfgedit
@echo off
cls
Title Finding your CFG...
ping 127.0.0.1 -n 2 > nul
title CFG Found, Opening..
if errorlevel 1 echo Error, cfg not found. The cfg was not found, this could be because you didn't set your server path in the bat!
start notepad "%server-locate%\server.cfg"
echo ==================================
set /p c=Would you like to restart the prompt or close the manager?
echo ==================================
echo Type close or restart
echo ==================================
if /I "%C%" EQU "restart" goto :beginning
if /I "%C%" EQU "close" goto :close

:resources
@echo off 
cls
title Looking for your resources folder...
ping 127.0.0.1 -n 2 > nul
Title Resources Found!
%SystemRoot%\explorer.exe "%server-locate%\resources"
if errorlevel 1 echo Error, resources not found. The resources folder was not found, this could be because you didn't set your server path in the bat!
cls
echo ==================================
set /p c=Would you like to restart the prompt or close the manager?
echo ==================================
echo Type close or restart
echo ==================================
if /I "%C%" EQU "restart" goto :beginning
if /I "%C%" EQU "close" goto :close

 
:close
echo ▀█▀ █▀▀ █▀▀   █▀▄▀█ █▀▀█ █▀▀▄ █▀▀█ █▀▀▀ █▀▀ 
echo ▒█░ █░░ █▀▀   █░▀░█ █▄▄█ █░░█ █▄▄█ █░▀█ █▀▀ 
echo ▄█▄ ▀▀▀ ▀▀▀   ▀░░░▀ ▀░░▀ ▀░░▀ ▀░░▀ ▀▀▀▀ ▀▀▀ 
echo Bye Bye
ping 127.0.0.1 -n 3 > nul
close

