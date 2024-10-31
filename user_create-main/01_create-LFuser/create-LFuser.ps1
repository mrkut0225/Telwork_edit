$password = ConvertTo-SecureString "lfmagicconnect" -AsPlainText -Force
New-LocalUser -Name 'LFuser' -Password $password
Set-LocalUser -Name 'LFuser' -PasswordNeverExpires $true
Add-LocalGroupMember -Group "Users" -Member "LFuser"
