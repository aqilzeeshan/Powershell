$AsianSalesOU = Get-ADOrganizationalUnit "OU=Asia,OU=Sales,OU=UserAccounts,DC=Fuhaijun,DC=COM"
$AsianSalesOU.StreetAddress = "No. 20 Chang An Avenue"
$AsianSalesOU.City = "Beijing"
$AsianSalesOU.PostalCode = "100000"
$AsianSalesOU.Country = "China"
Set-ADOrganizationalUnit -Instance $AsianSalesOU
