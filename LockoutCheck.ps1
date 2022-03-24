$User = Read-Host -Prompt 'Enter username: '
$Locked = (Get-ADuser $User -property lockedout).lockedout
if ($Locked -eq $false)
{
    Write-Host "Account is not locked."
}
else
{
    Write-Host "Account is locked... Unlocking account."
    Unlock-ADaccount -Identity $User
    Write-Host "The account for $User has been unlocked."
}