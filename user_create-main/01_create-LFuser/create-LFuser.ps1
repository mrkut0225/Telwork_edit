$password = ConvertTo-SecureString "lfmagicconnect" -AsPlainText -Force
New-LocalUser -Name 'LFuser' -Password $password
Add-LocalGroupMember -Group "Users" -Member "LFuser"