param(
    [Parameter(Mandatory = $true)]
    [string]$Username
)


$Locked = (Get-ADuser $Username -property lockedout).lockedout
if ($Locked -eq $false)
{
    Write-Host "Account is not locked."
}
else
{
    Write-Host "Account is locked... Unlocking account."
    Unlock-ADaccount -Identity $Username
    Write-Host "The account for $Username has been unlocked."
}