@echo off

:loop
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels || goto exit
goto loop
:exit
exit
