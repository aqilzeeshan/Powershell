#Remote Desktop Connection Broker
$RDCB = 'RDCB-01.Contoso.local'

#Remote Desktop Virtualization Host(s)
$RDSH = @('RDSH-01.Contoso.local','RDSH-02.Contoso.local')

#Domain name
$DomainName = 'Contoso.local'

#AD OU  will contain the VDI computer accounts
$OU = 'VDI'

#Grant RDS a permission on the selected OU to create/remove computer accounts for Virtual Desktops
Grant-RDOUAccess -Domain $DomainName -OU $OU -ConnectionBroker $RDCB

#Creating new VM-based Collection
New-RDVirtualDesktopCollection -CollectionName 'Win 7 SP1' -Description 'RDS - Virtual Desktop Collection' -PersonalUnmanaged -UserGroups "Contoso\Domain Admins" `
-ConnectionBroker $RDCB -VirtualDesktopName "XYZ" -AutoAssignPersonalVirtualDesktopToUser $false -GrantAdministrativePrivilege $true 

#Assign Virtual Desktop to a User
Set-RDPersonalVirtualDesktopAssignment -CollectionName 'Win 7 SP1' -User 'Contoso\Sherif' -VirtualDesktopName 'XYZ' -ConnectionBroker $RDCB 