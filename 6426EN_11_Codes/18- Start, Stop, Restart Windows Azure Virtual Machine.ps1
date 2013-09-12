#Start Azure VM 
Start-AzureVM -ServiceName CorpWebsite -Name myWeb01 

#Restart Azure VM
Restart-AzureVM -ServiceName CorpWebsite -Name myWeb01

#Shutdown Azure VM 
Stop-AzureVM -ServiceName CorpWebsite -Name myWeb01
