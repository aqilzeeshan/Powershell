#Setting static IP Address Configuration
New‑NetIPAddress ‑IPAddress 192.168.0.2 ‑InterfaceAlias Ethernet ‑DefaultGateway 192.168.0.1 ‑AddressFamily IPv4 ‑PrefixLength 24

#Setting Client DNS Settings
Set‑DnsClientServerAddress ‑InterfaceAlias Ethernet ‑ServerAddresses 192.168.0.1,192.168.0.2