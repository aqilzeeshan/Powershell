#Create new implicit remoting session
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri "https://ps.Outlook.com/PowerShell" -Credential (Get-Credential) -Authentication Basic -AllowRedirection

#Import the PowerShell remoting Session
Import-PSSession –Session $Session
