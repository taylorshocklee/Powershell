$teams = Get-PRocess -name Teams -ErrorAction SilentlyContinue
$outlook = Get-Process -name OUTLOOK -ErrorAction SilentlyContinue

if ($teams) {
    Stop-Process $teams
}
else {
    Write-Host "Teams is not running."
}
if ($outlook) {
    Stop-Process $outlook
}
else {
    Write-Host "Outlook is not running."
}

Remove-Item $ENV:APPDATA\Microsoft\Teams - Recurse