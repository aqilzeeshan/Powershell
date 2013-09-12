$session = New-PSSession -ComputerName win-8
Invoke-Command -Session $session –ScriptBlock {Import-Module NetTCPIP}
Export-PSSession -Session $session -OutputModule RemoteCommands -AllowClobber -Module NetTCPIP -Force