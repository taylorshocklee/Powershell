#This script will list all groups a user is in.

$User = Read-Host -Prompt 'Enter username: '
$Groups = (Get-ADUser $User -Property memberof).memberof
$Final = ForEach ($group in $Groups) 
{
        (Get-ADGroup $group).name
}
Write-Output $Final | Sort-Object
