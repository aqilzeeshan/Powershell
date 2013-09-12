$RDCB = 'RDCB-01.Contoso.local'
$RDG = 'RDG01.contoso.local'

#Adding RD Gateway Server
Add-RDServer -Server $RDG -ConnectionBroker $RDCB -Role RDS-GATEWAY -GatewayExternalFqdn RDG.Contoso.com

#Configuring RD Gateway
Set-RDDeploymentGatewayConfiguration -ConnectionBroker $RDCB -BypassLocal $true -LogonMethod AllowUserToSelectDuringConnection -GatewayMode Custom -UseCachedCredentials $true -GatewayExternalFqdn RDG.Contoso.com
