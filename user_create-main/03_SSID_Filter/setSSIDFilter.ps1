$currentSSID = (netsh wlan show interface | Where-Object {$_ -match "[^B]SSID*"}).replace(' ','').split(':')[1]

netsh wlan add filter permission=denyall networktype=infrastructure
netsh wlan add filter permission=allow ssid=$currentSSID networktype=infrastructure

# netsh wlan delete filter permission=denyall networktype=infrastructure