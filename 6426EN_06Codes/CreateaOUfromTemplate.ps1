$ouTemplate = Get-ADOrganizationalUnit "OU=UserAccounts,DC=FUHAIJUN,DC=com" -properties seeAlso,managedBy;
New-ADOrganizationalUnit -name UserReports -instance $ouTemplate
