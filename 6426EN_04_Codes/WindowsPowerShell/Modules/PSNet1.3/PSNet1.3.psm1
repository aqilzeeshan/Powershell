. $home\Documents\WindowsPowerShell\Modules\PSNet\TCPOp\Receive-TCPMessage.ps1
. $home\Documents\WindowsPowerShell\Modules\PSNet\TCPOp\Send-TCPMessage.ps1
Write-Host "PSNet Module Added" -BackgroundColor green -ForegroundColor blue
Export-ModuleMember -Function *  # Used for deriving function to members of the module
