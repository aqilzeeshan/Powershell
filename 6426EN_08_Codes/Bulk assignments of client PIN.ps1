#Get list of users with no PIN
$Users = Get-CsAdUser -Filter {(Enabled -eq $true)} | Get-CsClientPinInfo | Where IsPinSet -eq $false

#define the initial start for PIN value
$PINinit = 50000

#iterating of users list 
Foreach($User in $Users)
{
	#setting the user PIN info
    Set-CsClientPin -Identity $User.Identity -Pin $PINinit
	#increase the PIN by 1 each
    $PINinit++
}
