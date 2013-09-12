$handleSum = 0;
foreach($process in Get-Process |
Where-Object {$_.Handles -gt 600})
{
$handleSum += $process.Handles
}
$handleSum