#Enter the name of the resource mailbox
$Mailbox = Read-Host -Prompt "Enter the name of the resource mailbox..."

#Enter the type of required resource
do{$type = Read-Host -Prompt "Enter the type of the resource (1 for Room, 2 for Equipment)"}
while(($type -ne 1) -and ($type -ne 2))

#Create resource mailbox with a selected type
if($type -eq 1)
{New-Mailbox -Name $Mailbox -Room}
elseif($type -eq 2)
{New-Mailbox -Name $Mailbox -Equipment}

#Define resource reservation
Set-CalendarProcessing -Identity $Mailbox -AutomateProcessing AutoAccept -MaximumDurationInMinutes 120 -AddOrganizerToSubject $true ` 
-EnableResponseDetails $true -ProcessExternalMeetingMessages $false 