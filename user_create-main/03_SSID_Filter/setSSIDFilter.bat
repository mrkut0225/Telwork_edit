net session >NUL 2>nul
if %errorlevel% neq 0 (
 @powershell start-process %~0 -verb runas
 exit
)

cd /d %~dp0
for /f "tokens=3 delims=\ " %%i in ('whoami /groups^|find "Mandatory"') do set LEVEL=%%i
if NOT "%LEVEL%"=="High" (
powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "Start-Process %~f0 -Verb runas"
exit
)

@echo off

echo processing...

rem indowsPowerShell\v1.0\powershell\powershell.exe -NoProfile -ExecutionPolicy Bypass .\setSSIDFilter.ps1

powershell -ExecutionPolicy Bypass -File ./setSSIDFilter.ps1

echo done!

 

pause > nul

exit