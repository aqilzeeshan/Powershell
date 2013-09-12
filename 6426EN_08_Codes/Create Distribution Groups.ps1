#Import a file named “UsersList.CSV”, select and group the department, save it in variable called “$DepartmentsList”
$UsersInfo = Import-Csv C:\UsersList.csv
$DepartmentsList = $UsersInfo | Select Department | Group Department | Select Name

#Iterating over the $DepartmentsList to create a distribbution group for each department. 
ForEach($Department in $DepartmentsList)
{
    New-DistributionGroup -Type Distribution -Name $Department.Name -SamAccountName $Department.Name.Trim() -DisplayName $Department.Name -MemberJoinRestriction Open -OrganizationalUnit "DGs"
}

#Iterating over the $UsersInfo to add each user to the related a distribbution group according to department. 
ForEach($User in $UsersInfo)
{
    Update-DistributionGroupMember -Identity $User.Department -Members $User.Alias -Confirm:$false
}

