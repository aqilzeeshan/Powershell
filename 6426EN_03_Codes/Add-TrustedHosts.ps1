Set-item wsman:localhost\client\trustedhosts -value *
Set-item wsman:localhost\client\trustedhosts -value "Computer1,Computer2"
Set-item wsman:localhost\client\trustedhosts -value "*.domain.com"
Set-item wsman:localhost\client\trustedhosts -value "192.168.10.11"