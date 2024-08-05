Set-ExecutionPolicy Unrestricted

Get-AppxPackage clipchamp.Clipchamp | Remove-AppxPackage ; 
Get-AppxPackage AD2F1837.HPSupportAssistant | Remove-AppxPackage ; 
Get-AppxPackage MicrosoftTeams | Remove-AppxPackage ; 
Get-AppxPackage AD2F1837.myHP | Remove-AppxPackage ; 
Get-AppxPackage Microsoft.MicrosoftSolitaireCollection | Remove-AppxPackage ; 
Get-AppxPackage Microsoft.Xbox.TCUI | Remove-AppxPackage ; 
Get-AppxPackage Microsoft.XboxGameOverlay | Remove-AppxPackage ; 
Get-AppxPackage Microsoft.XboxGamingOverlay | Remove-AppxPackage ; 
Get-AppxPackage Microsoft.XboxIdentityProvider | Remove-AppxPackage ; 
Get-AppxPackage Microsoft.WindowsTerminal | Remove-AppxPackage ; 
Get-AppxPackage Microsoft.ZuneVideo | Remove-AppxPackage ;
Get-Appxpackage Microsoft.ScreenSketch | remove-appxpackage ; 
Get-AppxPackage Microsoft.GamingApp | Remove-AppxPackage
winget uninstall microsoft.onedrive

Get-Process -name "HP.ClientSecurityManager"
Stop-Process -name "HP.ClientSecurityManager"

Uninstall-Package -name "HP Wolf Security" -Force
# Restart-Computer -Force
Uninstall-Package -name "HP Wolf Security" -Force
Uninstall-Package -name "HP Wolf Security - Console" -Force
Uninstall-Package -name "HP Security Update Service" -Force7

# commandで実行する
sc delete "HpTouchpointAnalyticsService"
sc delete "HPAppHelperCap"
sc delete "HP Comm Recover"
sc delete "HPDiagsCap"
sc delete "HotKeyServiceUWP"
sc delete "LanWlanWwanSwitchingServiceUWP"
sc delete "HPNetworkCap"
sc delete "SFUService"
sc delete "HPSysInfoCap"


# Get-Service | Format-Table -Property DisplayName, ServiceName | Sort-Object
# Remove-Service -DisplayName ""






# Get-Service | Select-Object DisplayName | ?{$_.DisplayName -like "HP *"} | ?{Remove-Service -DisplayName $_.DisplayName -Force}



# Get-Package | Select-Object Name | ?{$_.Name -like "HP *"} | ?{Uninstall-Package -name $_.Name -Force}
# Uninstall-Package -name "HP Documentation" -Force
# Uninstall-Package -name "HP Connection Optimizer" -Force
# 
# Get-Process | Select-Object ProcessName | ?{$_.ProcessName -like "HP*"} | ?{Stop-Process -name $_.ProcessName -Force}
# 
# Get-AppPackage | ?{$_.Name} 
# 
# Remove-AppPackage "HP Documentation" -Force