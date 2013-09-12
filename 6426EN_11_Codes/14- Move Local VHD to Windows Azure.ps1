#Get the Azure Storage Account for the default Azure Subscription
$StorageAccountName = (Get-AzureSubscription).CurrentStorageAccount

#Define DiskName
$DiskName = "AppVServerDisk"

#Define Local VHD file path
$LocalVHD = 'D:\Hyper-V\Virtual Hard Disks\AppVServer.vhd'

#Define the URI for the Windows Azure Container
$Destination = 'http://' + $StorageAccountName + '.blob.core.windows.net/vhds/AppVServerDisk.vhd' 

#Move VHD file from local server to Windows Azure Storage
Add-AzureVhd -LocalFilePath $LocalVHD -Destination $Destination

#Convert the VHD file to Windows Azure Disk
Add-AzureDisk -OS Windows -DiskName $DiskName -MediaLocation $Destination
