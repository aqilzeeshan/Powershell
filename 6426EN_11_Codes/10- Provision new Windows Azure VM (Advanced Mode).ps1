#Create Azure VM configuration
$VM = New-AzureVMConfig -Name myWeb01 -InstanceSize Medium -ImageName "a699494373c04fc0bc8f2bb1389d6106__Windows-Server-2012-Datacenter-201212.01-en.us-30GB.vhd" | Add-AzureProvisioningConfig -Windows –Password "P@ssw0rd" –WindowsDomain –Domain “Contoso” –JoinDomain “Contoso.com” –DomainUserName “Administrator” –DomainPassword “P@ssw0rd” –MachineObjectOU “OU=Azure,DC=Contoso,DC=com” –DisableAutomaticUpdates –ResetPasswordOnFirstLogon –TimeZone “Pacific Standard Time”

#Create Azure VM using the previously created VM
New-AzureVM -ServiceName “ContosoWeb” -VMs $VM
