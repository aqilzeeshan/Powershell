#Import a file named “UsersList.CSV”, select and group the department, save it in variable called “$DepartmentsList”
$DepartmentsList = Import-Csv C:\UsersList.csv | Select Department | Group Department | Select Name

#Iterating over the $DepartmentsList to create a database for each department, and then mount it. 
ForEach($Department in $DepartmentsList)
{
    New-MailboxDatabase -Name $Department.Name -Server "EXCH-MB-01" -EdbFilePath `
     ("c:\Mailbox\" + "$Department.Name" + "\" + $Department.Name  + ".edb") | Mount-Database 
}
