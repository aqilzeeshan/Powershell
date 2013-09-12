#Create Object of SharePoint Quota Template
$Template = New-Object Microsoft.SharePoint.Administration.SPQuotaTemplate
#Define template name
$Template.Name = "Blogs Quota Template"
#Assign Storage Maximum Level
$Template.StorageMaximumLevel = 100MB
#Assign Storage Warning Level
$Template.StorageWarningLevel = 80MB

#Create object of SharePoint Content Service
$Service = [Microsoft.SharePoint.Administration.SPWebService]::ContentService
#Add the template to the content service
$Service.QuotaTemplates.Add($Template)
#Update Content Service to create the template
$Service.Update()
