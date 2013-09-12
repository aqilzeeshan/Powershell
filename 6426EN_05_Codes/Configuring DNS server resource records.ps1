#Add DNS Server 'A' Resource Record
Add-DnsServerResourceRecordA ‑Name FileServer ‑Ipv4Address 192.168.1.20 ‑ZoneName Contoso.local

#Add DNS Server 'CName' Resource Record
Add-DnsServerResourceRecordCName ‑Name OWA ‑HostNameAlias EXCH‑MBXCAS‑02.Contoso.local ‑ZoneName Contoso.local

#Add DNS Server 'MX' Resource Record
Add-DnsServerResourceRecordMX ‑Name Mail ‑MailExchange EXCH‑HUB‑01.Contoso.local ‑ZoneName Contoso.local –Preference 10