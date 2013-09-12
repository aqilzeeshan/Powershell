#Creating Firewall Rule for Port or Protocol
New-NetFirewallRule -Name "Block FTP" ‑DisplayName "Block FTP" ‑Direction Outbound ‑Action Block ‑Protocol TCP ‑LocalPort FTP