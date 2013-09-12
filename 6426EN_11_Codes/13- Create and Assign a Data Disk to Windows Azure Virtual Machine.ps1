#Create and Assign a new data disk to Windows Azure VM
Get-AzureVM -ServiceName “myWebFarm” -Name WebSrv01 | Add-AzureDataDisk -CreateNew -DiskSizeInGB 30 –DiskLabel "UserDataDisk" -LUN 0 | Update-AzureVM
