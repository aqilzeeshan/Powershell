#Enter the Distribution Group Name/Alias
$Alias = Read-Host -Prompt "Enter the Distribution Group Name/Alias..."

#Enter the MailTip Text
$TipText = Read-Host -Prompt "Enter the MailTip Test..."

#Update the DG with the MailTip
Set-DistributionGroup -Identity $Alias -MailTip $TipText 
