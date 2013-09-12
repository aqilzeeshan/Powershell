#Export Azure VM configuration
Export-AzureVM -ServiceName CorpWebsite -Name myWeb01 -Path $home\desktop\myWeb01.xml

#Remove Azure VM
Remove-AzureVM -ServiceName CorpWebsite -Name myWeb01

#Import Azure VM configuration file, and create new VM using the import file
Import-AzureVM -Path $home\desktop\myWeb01.xml | New-AzureVM -ServiceName CorpPortal
