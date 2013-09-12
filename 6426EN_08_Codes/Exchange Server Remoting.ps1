#Create new implicit remoting session
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri "http://Exch.Contoso.local/PowerShell" -Credential (Get-Credential) -Authentication Kerberos

#Import the PowerShell remoting Session
Import-PSSession –Session $Session
