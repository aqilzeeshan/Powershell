$RDCB = 'RDCB-01.Contoso.local'
$RDL = 'RDL01.contoso.local'

#Adding RD Licensing Server
Add-RDServer -Server $RDL -Role RDS-LICENSING -ConnectionBroker $RDCB

#Configuring RD Licensing
Set-RDLicenseConfiguration -Mode PerUser -LicenseServer $RDL -ConnectionBroker $RDCB
