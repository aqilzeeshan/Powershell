$ErrorActionPreference = "SilentlyContinue"

$ServerInstance = "SharePoint\PowerPivot"
$ExportFolder = "C:\SqlScripts"

#Load SQL SMO assembly
[void][System.Reflection.Assembly]::LoadWithPartialName('Microsoft.SqlServer.SMO')
#Create SMO object of SQL Server Instance
$Server = new-object ('Microsoft.SqlServer.Management.Smo.Server') $ServerInstance 

Write-Host "Number of Databases: " $Server.Databases.Count -ForegroundColor Yellow

#Iterate over the list of the databases under the Server Instance
ForEach($Database in $Server.Databases)
{
    #Create Folder for each Database
    New-Item -ItemType Directory -Path ("$ExportFolder\" +  $Database.Name + "\") | Out-Null
    #Create folder for tables under each database folder
    New-Item -ItemType Directory -Path ("$ExportFolder\" +  $Database.Name + "\Tables\") | Out-Null
    #Create folder for stored procedures under each database folder
    New-Item -ItemType Directory -Path ("$ExportFolder\" +  $Database.Name + "\StoredProcedures\") | Out-Null
    
    #Generate and Export Database Script
    $Database.Script() | Out-File ("$ExportFolder\" +  $Database.Name + "\" + $Database.Name + ".sql")
    
    "`r"
    Write-Host "Database: " $Database.Name -ForegroundColor Yellow
    Write-Host "Number of Tables: " $Database.Tables.Count -ForegroundColor Yellow

    #Iterate over the list of the tables under each database
    ForEach($table in $Database.Tables)
    {
        #Generate and Export Tables Scripts
        $table.Script() | Out-File ("$ExportFolder\" +  $Database.Name + "\Tables\" + $table.Name + ".sql")
    }

    Write-Host "Number of Stored Procedures: " $Database.StoredProcedures.Count -ForegroundColor Yellow

    #Iterate over the list of the stored procedures under each database
    ForEach($SP in $Database.StoredProcedures)
    {
        #Generate and Export Stored Procedures Scripts
        $SP.Script() | Out-File ("$ExportFolder\" +  $Database.Name + "\StoredProcedures\" + $SP.Name + ".sql")
    }

}

