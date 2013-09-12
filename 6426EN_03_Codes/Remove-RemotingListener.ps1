Set-Service winrm -StartupType Manual
Stop-Service winrm
Get-ChildItem WSMan:\localhost\Listener -Recurse | Foreach-Object { $_.PSPath } | Where-Object { (Get-Item "$_\Port").Value -eq 5985 } | Remove-Item