#Generate Remote Desktop File for Windows Azure VM
Get-AzureRemoteDesktopFile -ServiceName “myDevEnv” –Name “DevTools” -LocalPath $home\Desktop\DevTools.rdp –Launch
