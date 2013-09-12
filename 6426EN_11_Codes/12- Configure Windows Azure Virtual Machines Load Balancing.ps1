#Add Load-Balanced EndPoint to Windows Azure virtual machine
Get-AzureVM -ServiceName CorpWebsite  | Add-AzureEndpoint -Name "LB-Http" -Protocol tcp -PublicPort 80 -LocalPort 80 -LBSetName "LB-WebFarm" -ProbePort 80 -ProbeProtocol "http" -ProbePath "/" | Update-AzureVM
