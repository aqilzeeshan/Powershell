#Remote Desktop Connection Broker
$RDCB = 'RDCB-01.Contoso.local'

#Setting VM-based Collection Configuration
Set-RDVirtualDesktopCollectionConfiguration "Call-Center Pool" -UserGroups "Contoso\CallCenter Users" -RedirectAllMonitors $false -ClientDeviceRedirectionOptions AudioVideoPlayBack,PlugAndPlayDevice -GrantAdministrativePrivilege $true -AutoAssignPersonalVirtualDesktopToUser $false -ConnectionBroker $RDCB 