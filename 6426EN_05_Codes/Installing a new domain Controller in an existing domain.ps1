﻿Install-ADDSDomainController -NoGlobalCatalog:$false ‑CreateDnsDelegation:$false -Credential (Get-Credential) -DomainName "contoso.local" -InstallDns:$true -ReplicationSourceDC "DC01.contoso.local" -SiteName "Default-First-Site-Name" -SafeModeAdministratorPassword (ConvertTo-SecureString P@ssw0rd -AsPlainText -Force)