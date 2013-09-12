#Enter the alias of Shared Mailbox to be created
$MBalias = Read-Host -Prompt "Enter Shared Mailbox name..."

#Enter the alias of Distribution Group to be access to Shared mailbox
$DGalias = Read-Host -Prompt "Enter Distribution Group name..."

#Create a new shared mailbox
New-Mailbox -Name $MBalias -Shared

#Create a new security distribution group 
New-DistributionGroup -Type Security -Name $DGalias -SamAccountName $DGalias

#Assign FullAccess rights on the shared mailbox to the distribution group
Add-MailboxPermission -Identity $MBalias -User $DGalias -AccessRights FullAccess -InheritanceType All -AutoMapping

#Assign SendAs rights to disribution groupn on the shared mailbox
Add-RecipientPermission $MBalias -Trustee $DGalias -AccessRights "SendAs" 