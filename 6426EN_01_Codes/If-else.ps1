$textForMatch = Read-Host "Input some text"
$matchType = Read-Host "Supply Simple or Regex matching?"
$pattern = Read-Host "Match pattern"
if ($matchType -eq "Simple")
{
$textForMatch -like $pattern
}
elseif($matchType -eq "Regex")
{
$textForMatch -match $pattern
}
else
{
Write-Host "Match type must be Simple or Regex"
}