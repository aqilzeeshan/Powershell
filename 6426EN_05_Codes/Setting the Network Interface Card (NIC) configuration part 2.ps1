#Remove static IP Address Setting
Remove‑NetIPAddress ‑InterfaceAlias Ethernet

#Remove network route
Remove‑NetRoute ‑InterfaceAlias Ethernet

#Reset Client DNS Settings
Set‑DnsClientServerAddress ‑ResetServerAddresses

#Enable the DHCP option on the interface
Set‑NetIPInterface ‑InterfaceAlias Ethernet ‑Dhcp Enabled