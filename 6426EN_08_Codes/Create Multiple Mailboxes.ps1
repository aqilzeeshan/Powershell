#Import a file named “UsersList.CSV” and save it in variable called “$UsersList”
$UsersList = Import-Csv C:\UsersList.csv

#Prompt the user to enter the name of the OU that will store the new user accounts (e.g. IT)
$OU = Read-Host -Prompt "Enter the name of the OU..."

#Prompt the user to enter the Domain Suffix (e.g. Contoso.local) 
$Domain = Read-Host -Prompt "Enter the domain suffix..."

#Iterating over the $UsersList to create an account for each user 
ForEach($User in $UsersList)
{
    New-Mailbox -FirstName $User.Firstname `
    -LastName $User.Lastname `
    -DisplayName ($User.Firstname + " " + $User.Lastname) `
    -Name ($User.Firstname + " " + $User.Lastname) `
    -Alias $User.Alias `
    -SamAccountName $User.Alias `
    -UserPrincipalName "$User.Alias@$Domain" `
    -Password (ConvertTo-SecureString -String "P@ssw0rd" -AsPlainText -Force ) `
    -OrganizationalUnit $OU `
    -ResetPasswordOnNextLogon $true
}
