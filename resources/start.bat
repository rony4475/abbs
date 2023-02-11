@echo off
net config server /srvcomment:"rony4475.." > out.txt 2>&1 >nul
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f /v Wallpaper /t REG_SZ /d D:\a\wallpaper.bat
net user Adin Admin@235 /add >nul
net localgroup administrators rony4475 /add >nul
net user rony4475 /active:yes >nul
net user installer /delete >nul
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant rony4475:F >nul
ICACLS C:\Windows\installer /grant rony4475:F >nul
echo Successfully installed!
echo IP:
curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url
echo Username: Adin
echo Password: Admin@235
exit
