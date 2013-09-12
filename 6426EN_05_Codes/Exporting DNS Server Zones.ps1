ForEach($Zone in (Get-DnsServerZone | Where IsAutoCreated -eq$false))
{
    Export-DnsServerZone -Name $Zone.ZoneName -FileName $Zone.ZoneName
}