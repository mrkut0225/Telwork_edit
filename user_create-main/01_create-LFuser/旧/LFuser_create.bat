cd /d %~dp0
for /f "tokens=3 delims=\ " %%i in ('whoami /groups^|find "Mandatory"') do set LEVEL=%%i
if NOT "%LEVEL%"=="High" (
powershell.exe -NoProfile -ExecutionPolicy RemoteSigned -Command "Start-Process %~f0 -Verb runas"
exit
)

@echo off

echo processing...

rem indowsPowerShell\v1.0\powershell\powershell.exe -NoProfile -ExecutionPolicy Bypass .\create-testuser.ps1

powershell -ExecutionPolicy Bypass -File ./create-testuser.ps1

echo done!

 

pause > nul

exit