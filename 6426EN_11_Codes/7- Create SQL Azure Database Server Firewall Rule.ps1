#Create SQL Azure Database Server Firewall Rule
New-AzureSqlDatabaseServerFirewallRule –ServerName <Server_Name> -RuleName "myIntranet" -StartIpAddress 192.168.1.1 -EndIpAddress 192.168.1.254
