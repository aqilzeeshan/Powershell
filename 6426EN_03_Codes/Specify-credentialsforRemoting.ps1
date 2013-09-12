$cred=Get-Credential
Invoke-Command -ComputerName win-8 -ScriptBlock {Get-Service} -Credential $cred