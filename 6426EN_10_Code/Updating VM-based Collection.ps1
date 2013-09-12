#Remote Desktop Connection Broker
$RDCB = 'RDCB-01.Contoso.local'

#Virual Desktop Template Host Server
$VDtemplateHost = 'RDVH-01.Contoso.local'

#Virtual Desktop Template
$VDtemplate = 'Win 7 SP1 Jan 2013 Update'

#Updating VM-based Collection
Update-RDVirtualDesktopCollection -CollectionName "Win 7 SP1" -ConnectionBroker $RDCB -VirtualDesktopTemplateHostServer $VDtemplateHost -VirtualDesktopTemplateName $VDtemplate `
-DisableVirtualDesktopRollback $false -StartTime (Get-Date) -ForceLogoffTime (Get-Date).AddHours(8)
