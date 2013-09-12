#Remote Desktop Virtualization Host
$RDVH  = 'RDVH-01.Contoso.local'

#Remote Desktop Connection Broker
$RDCB  = 'RDCB-01.Contoso.local'

#Remote Desktop Web Access
$RDWeb = 'RDWeb-01.Contoso.local'

#Creating new Virtual Machine-based deployment
New-RDVirtualDesktopDeployment -ConnectionBroker $RDCB -WebAccessServer $RDWeb -VirtualizationHost $RDVH -CreateVirtualSwitch