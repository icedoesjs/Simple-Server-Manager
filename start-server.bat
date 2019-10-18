SET cache=D:\FiveM-server\FiveM 
rem Set you server location above
rem Rem is just for my comments, they arent commands.
rem Please set you server location above (Used for clearing cache)
rem SET YOUR START LOCATION ON LINE 23 AND 26
rem Sorry I had to make 2 bats, the first one is unable to run server via vars
Rem Also DO NOT CHANGE THE start-server.bat File name or starting your server will not work in the manager!
rem Made By IceyyM8, Simple and easy!

@echo off
title "Clearing cache..."
color 3
PING localhost -n 3 >NUL
cls 
echo Clearing cache...
@RD /S /Q "%cache%\cache"
cls 
echo Cache was cleared!
PING localhost -n 2 >NUL
cls
echo starting server...
goto :start

:start
cd D:\FiveM-server\FiveM
title "FiveM Server"
color 1
D:\FiveM-server\FiveM\run.cmd +exec server.cfg
if errorlevel 1 echo Sorry, I could not start the server, please check your directory or verify your server.cfg is in the right place
PING localhost -n 5 >NUL
cls
exit

