#Load Exchange PowerShell Snap-in
Add-PSSnapin Microsoft.Exchange.Management.PowerShell.E2010

#Iterating over the mailboxes database 
ForEach ($DB in Get-MailboxDatabase)
{ 
	#check the existence of database backup folder
    if( !(Test-Path "\\EXCH\Backup\$DB") )
    {
        #Create backup folder for database if not exist
        New-Item -ItemType Directory -Name $DB.Name -Path "\\EXCH\Backup\"
    }
	
    #Iterating over the mailboxes for in each database 	
     ForEach ($Mailbox in (Get-Mailbox -Database $DB.Name) ) 
    {
		#Export each mailbox into releated database folder
        New-MailboxExportRequest -Mailbox $Mailbox.Alias -FilePath ("\\EXCH\Backup\" + $DB.Name + "\" + $Mailbox.Alias + ".pst")
    }

}

