cd C:\Resource
C:\Windows\System32\cmd.exe /c dir
copy ngrok.exe C:\Windows\ngrok.exe
ngrok.exe config add-authtoken 2Lautk7jBnnqifDwZgMqfpG79vE_74WhZa6d9SZAizbAceGw2
Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server'-name "fDenyTSConnections" -Value 0
Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp' -name "UserAuthentication" -Value 1
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
Start-Process Powershell -ArgumentList '-Noexit -Command "ngrok.exe tcp 3389 --region ap"'
C:\Windows\System32\cmd.exe /c timeout -t 5 /nobreak
