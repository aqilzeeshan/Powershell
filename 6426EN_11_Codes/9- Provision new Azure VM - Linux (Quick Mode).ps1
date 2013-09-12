#Create new Windows Azure VM – Linux using Quick Mode
New-AzureQuickVM -Linux –ServiceName “myLinuxEnv” -Name "SUSE-02" –ImageName "b4590d9e3ed742e4a1d46e5424aa335e__SUSE-Linux-Enterprise-Server-11-SP2-New" -LinuxUser "root"  -Password P@ssw0rd -AffinityGroup "CoontosoAffinityGroup"
