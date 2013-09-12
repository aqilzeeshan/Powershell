#Import MSOnline Modules
Get-Module –ListAvailable *MSOnline* | Import-Module

#Connect to Office 365 account
Connect-MsolService -Credential (Get-Credential username@domain.onmicrosoft.com)
