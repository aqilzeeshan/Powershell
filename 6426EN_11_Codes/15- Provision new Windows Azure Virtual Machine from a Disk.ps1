#Create Azure VM Configuration object
$VM = New-AzureVMConfig -Name AppVServer -InstanceSize Medium -DiskName "AppVServerDisk" 

#Create new VM from Azure VM Configuration
New-AzureVM -ServiceName “ContosoWeb” -VMs $VM
