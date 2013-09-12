#Remote Desktop Connection Broker
$RDCB = 'RDCB-01.Contoso.local'

#Publish Remote Desktop RemoteApp to Collection
New-RDRemoteApp -CollectionName "mySessions" -ShowInWebAccess $true -UserGroups "Contoso\CallCenter Users" -ConnectionBroker $RDCB  -DisplayName Skype -FilePath "C:\Program Files (x86)\Skype\Phone\Skype.exe" 