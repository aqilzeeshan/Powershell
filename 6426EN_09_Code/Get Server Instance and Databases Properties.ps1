#Server Instance name
$ServerInstance = "SharePoint\PowerPivot"

#Load SQL SMO assembly
[void][System.Reflection.Assembly]::LoadWithPartialName('Microsoft.SqlServer.SMO')
#Create SMO object of SQL Server Instance
$Server = new-object ('Microsoft.SqlServer.Management.Smo.Server') $ServerInstance 

Write-Host "$ServerInstance Server Instance Properties" -ForegroundColor Red 
Write-Host "=============================================== `r" -ForegroundColor DarkRed

#Get the Server Instance Properties 
$Server.Properties | Select Name, Value 

Write-Host "====================================" -ForegroundColor Red

#Iterate over the list of the databases under the Server Instance
ForEach($Database in $Server.Databases)
{
    Write-Host $Database.Name " Database Properties" -ForegroundColor Green 
    Write-Host "===============================================" -ForegroundColor DarkGreen
    
    #Get the Database Properties
    $Database.Properties | Select Name, Value
    Write-Host "===============================================" -ForegroundColor DarkGreen
    "`r"
} 