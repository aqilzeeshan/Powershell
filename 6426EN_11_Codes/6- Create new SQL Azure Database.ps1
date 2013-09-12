#Create Sql Azure Database Server Context
$context = New-AzureSqlDatabaseServerContext -ServerName <server_Name>

#Create new Sql Azure Database
New-AzureSqlDatabase –Context $context -DatabaseName "myDatabase" –Collation SQL_Latin1_General_CP1_CI_AS -Edition "Web" -MaxSizeGB 1
