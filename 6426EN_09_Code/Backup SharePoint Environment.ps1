$BackupFolder = "C:\SharePointBackup"

#Backup SharePoint Configuration Database
Backup-SPConfigurationDatabase -Directory $BackupFolder

#Backup SharePoint Farm
Backup-SPFarm -Directory $BackupFolder -BackupMethod Full 

#Backup SharePoint Sites
ForEach($Site in Get-SPSite)
{
    Backup-SPSite -Identity $Site.Url -Path (Join-Path $BackupFolder ($Site.Url.Remove(0,$Site.Url.LastIndexOf("/")+1) + ".bak"))
}