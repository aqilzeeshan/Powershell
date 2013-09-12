#Creating Firewall Rule for Application or Program
New‑NetFirewallRule ‑Name "Skype" ‑DisplayName "Skype" ‑Direction Inbound ‑Action Allow ‑Program "C:\Program Files (x86)\Skype\Phone\Skype.exe"