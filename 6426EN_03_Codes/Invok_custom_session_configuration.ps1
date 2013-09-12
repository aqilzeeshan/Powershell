$s = New-PSSession -ComputerName win-8 -ConfigurationName NetTCPIP
Enter-PSSession -ComputerName win-8 -ConfigurationName NetTCPIP
Invoke-Command -ComputerName win-8 -ConfigurationName NetTCPIP -ScriptBlock {Get-Process}