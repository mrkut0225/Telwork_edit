cd /d %~dp0
for /f "tokens=3 delims=\ " %%i in ('whoami /groups^|find "Mandatory"') do set LEVEL=%%i
if NOT "%LEVEL%"=="High" (
powershell.exe -NoProfile -ExecutionPolicy RemoteSigned -Command "Start-Process %~f0 -Verb runas"
exit
)

@echo off

winget uninstall "Microsoft OneDrive"
winget uninstall "Microsoft OneNote - ja-jp"
winget uninstall "McAfee"
winget uninstall "Lenovo Vantage Service"
winget uninstall "Lenovo Smart Appearance Compornents"
winget uninstall "マカフィーが提供するウェブアドバイザー"

echo done!

 

pause > nul

exit