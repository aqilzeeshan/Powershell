#Add NoLB EndPoint to Windows Azure virtual machine
Get-AzureVM -ServiceName “CorpWebsite” -Name “WebSrv01” | Add-AzureEndpoint -Name "HTTPs" -Protocol tcp -LocalPort 443 -PublicPort 443 | Update-AzureVM
