#Remote Desktop Connection Broker
$RDCB = 'RCCB-01.Contoso.local'

#Enable and Assign Profile Disk to Session-based Collection
Set-RDSessionCollectionConfiguration -CollectionName “mySessions” -EnableUserProfileDisk -DiskPath '\\FileServer-01\ProfileDisks' -MaxUserProfileDiskSizeGB 20 -IncludeFolderPath 'C:\myReports'  -ConnectionBroker $RDCB


#Enable and Assign Profile Disk to VM-based Collection
Set-RDVirtualDesktopCollectionConfiguration -CollectionName “Win 7 SP1” -EnableUserProfileDisk -DiskPath '\\FileServer-01\ProfileDisks' -MaxUserProfileDiskSizeGB 20 -ExcludeFolderPath 'C:\Users\Sherif\Desktop\myVideos' -ConnectionBroker $RDCB
