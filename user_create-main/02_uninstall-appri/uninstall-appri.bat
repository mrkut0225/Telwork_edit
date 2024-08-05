@echo off

echo processing...

powershell -ExecutionPolicy Bypass -File ./uninstall-appri.ps1

echo done!

 

pause > nul

exit