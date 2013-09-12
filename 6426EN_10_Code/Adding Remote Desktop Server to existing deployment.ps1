$RDCB = 'RDCB-01.Contoso.local'

#Adding Virtualization Host to Session-based deployment
#-CreateVirtualSwitch can be user only with Role RDS-Virtualization
Add-RDServer -Server 'RDVH-01.Contoso.local' -ConnectionBroker $RDCB -Role RDS-Virtualization -CreateVirtualSwitch $true

#Adding Session Host to VM-based deployment
Add-RDServer -Server 'RDSH-01.Contoso.local' -ConnectionBroker $RDCB -Role RDS-RD-Server