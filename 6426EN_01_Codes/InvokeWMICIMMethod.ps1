Invoke-WMIMethod -class Win32_Process -Name create -ArgumentList 'mspaint.exe'
Invoke-CimMethod Win32_Process -MethodName create -Agruments @{CommandLine='mspaint.exe'}