#Upload certificate to Windows Azure service
Add-AzureCertificate -ServiceName “myDevEnv” –CertToDeploy <myCertificate.pfx> -Password abc123
