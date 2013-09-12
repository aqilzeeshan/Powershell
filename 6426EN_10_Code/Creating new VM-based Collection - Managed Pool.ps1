#Remote Desktop Connection Broker
$RDCB = 'RDCB-01.Contoso.local'

#Virtual Server hosting the Virtual Desktop Template
$RDtemplateHost = 'RDVH-01.Contoso.local'

#Domain name
$DomainName = 'Contoso.local'

#AD OU  will contain the VDI computer accounts
$OU = 'VDI'

#Grant RDS a permission on the selected OU to create/remove computer accounts for Virtual Desktops
Grant-RDOUAccess -Domain $DomainName -OU $OU -ConnectionBroker $RDCB

#Creating new VM-based Collection
New-VirtualDesktopCollection -CollectionName 'Win 7 SP1' -Description 'RDS - Virtual Desktop Collection' -PooledManaged -UserGroups "Contoso\Domain Users" `
-Domain "Contoso.local" -VirtualDesktopTemplateHostServer $RDtemplateHost -VirtualDesktopTemplateName 'Win7SP1-Temp' -ConnectionBroker $RDCB -OU $OU `
-VirtualDesktopNamePrefix "VD-W7-" -VirtualDesktopTemplateStoragePath "C:\VDs" -StorageType LocalStorage -VirtualDesktopAllocation @{"RDVH-01.Contoso.local"=5;"RDVH-02.Contoso.local"=5}