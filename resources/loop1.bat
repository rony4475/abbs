@echo off

:loop
tasklist /fi "imagename eq ngrok.exe" | find /i "ngrok.exe" >NUL && (
  curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url
) || (
  goto exit
)
goto loop

:exit
exit
