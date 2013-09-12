#Load Exchange PowerShell Snap-in
Add-PSSnapin  Microsoft.Exchange.Management.PowerShell.E2010

#Iterating over the backup file to get the list of *.pst files 
ForEach ($file in (Get-ChildItem "\\EXCH\Backup\" -Recurse -Include *.pst))
{ 
    #parse file name and remove the extension to get the user alias
    $Alias = $file.Name.Replace(".pst","")

    #Import the PST file to the user inbox
    New-MailboxImportRequest -Mailbox $Alias -FilePath $file.Name
}