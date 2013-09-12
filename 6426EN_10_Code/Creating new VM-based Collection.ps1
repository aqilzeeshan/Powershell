#Remote Desktop Connection Broker
$RDCB = 'RDCB-01.Contoso.local'

#Remote Desktop Virtualization Host(s)
$RDSH = @('RDSH-01.Contoso.local','RDSH-02.Contoso.local')


Grant-RDOUAccess -Domain CoEx.local -OU VDI -ConnectionBroker RDSH.CoEx.local

Test-RDOUAccess -Domain CoEx.local -OU VDI -ConnectionBroker RDSH.CoEx.local

#Creating new VM-based Collection

New-VirtualDesktopCollection -CollectionName 'Win 7 SP1' -Description 'Remote Desktop Services - Virtual Desktop Collection' -PooledManaged -UserGroups "CoEx\Domain Users" `
-Domain "CoEx.local" -VirtualDesktopTemplateHostServer RDVH.CoEx.local -VirtualDesktopTemplateName 'Win7SP1-Temp' -ConnectionBroker 'RDSH.CoEx.local' -OU VDI `
-VirtualDesktopNamePrefix "VD-W7-" -VirtualDesktopTemplateStoragePath "C:\VDs" -StorageType LocalStorage -VirtualDesktopAllocation @{"RDVH.CoEx.local"=1}

New-VirtualDesktopCollection -CollectionName 'Win 7 SP1' -Description 'Remote Desktop Services - Virtual Desktop Collection' -PersonalManaged -UserGroups "CoEx\Domain Users" `
-Domain "CoEx.local" -OU VDI -ConnectionBroker RDSH.CoEx.local -StorageType LocalStorage -AutoAssignPersonalVirtualDesktopToUser $true -GrantAdministrativePrivilege $true 1
-VirtualDesktopTemplateHostServer RDVH.CoEx.local -VirtualDesktopTemplateName 'Win7SP1-Temp' 

New-RDVirtualDesktopCollection -CollectionName 'Win 7 SP1' -Description 'Remote Desktop Services - Virtual Desktop Collection' -PooledUnmanaged -UserGroups "CoEx\Domain Users" `
-ConnectionBroker "RDSH.CoEx.local" -VirtualDesktopName "xyz" 

New-RDVirtualDesktopCollection -CollectionName 'Win 7 SP1' -Description 'Remote Desktop Services - Virtual Desktop Collection' -PersonalUnmanaged -UserGroups "CoEx\Domain Users" `
-ConnectionBroker "RDSH.CoEx.local" -VirtualDesktopName "xyz" -AutoAssignPersonalVirtualDesktopToUser $false -GrantAdministrativePrivilege $true 
