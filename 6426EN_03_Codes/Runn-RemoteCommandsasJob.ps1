$session=New-PSSession -ComputerName Win-8
Invoke-Command -Session $session -ScriptBlock { (Get-ChildItem C:\ -Recurse).Count} -asjob