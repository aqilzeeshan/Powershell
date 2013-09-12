#Get list of users who are not enabled for lync
$Users = Get-CsAdUser -Filter { (Enabled -ne $true) -and (WindowsEmailAddress -ne $null) }

Foreach($User in $Users)
{    
    $sip = "sip:" + $User.WindowsEmailAddress
    
    #Enable users for LYNC
    Enable-CsUser -Identity $User.SamAccountName -RegistrarPool (Get-CSPool).Identity -SipAddressType EmailAddress -SipAddress $sip
}