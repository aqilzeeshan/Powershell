#Remote Desktop Connection Broker
$RDCB = 'RDCB-01.Contoso.local'

#Setting Session-based Collection Configuration
Set-RDSessionCollectionConfiguration -CollectionName mySessions -UserGroup "Contoso\Domain Users" -ClientDeviceRedirectionOptions Drive -ClientPrinterRedirected $true `
-BrokenConnectionAction Disconnect -AutomaticReconnectionEnabled $true -MaxRedirectedMonitors 4 -IdleSessionLimitMin 60 -TemporaryFoldersPerSession $true `
-MaxRedirectedMonitors 4 -ConnectionBroker $RDCB
