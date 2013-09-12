#Write the number of users on OCS
Write-Host "Office Communication Server Users:" (Get-csUser -OnOfficeCommunicationServer).Count -ForegroundColor Green
#Showing the list of OCS Users
Get-csUser -OnOfficeCommunicationServer | Select DisplayName, SamAccountName, sipAddress, LineURI, EnterpriseVoiceEnabled | ft

#Write the number of users on LYNC
Write-Host "Lync Server Users:" (Get-csUser -OnLyncServer).Count -ForegroundColor Green
#Showing the list of Lync Users
Get-csUser -OnLyncServer | Select DisplayName, SamAccountName, sipAddress, LineURI, EnterpriseVoiceEnabled | ft