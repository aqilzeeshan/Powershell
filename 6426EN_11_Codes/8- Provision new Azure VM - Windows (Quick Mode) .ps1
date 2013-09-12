#Create new Windows Azure VM – Windows using Quick Mode
New-AzureQuickVM –Windows -ServiceName "DatabaseService" -Name "CAI-DC-03" -ImageName "MSFT__Windows-Server-2012-Datacenter-201210.01-en.us-30GB.vhd" -Password P@ssw0rd -AffinityGroup "ContosoAffinityGroup" -AffinityGroup "CoontosoAffinityGroup"
