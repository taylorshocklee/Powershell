param(  
        [Parameter(Mandatory = $true)]
        [string]$Username
)

$Groups = (Get-ADUser $Users -Property memberof).memberof
$Final = ForEach ($group in $Groups)
{
    (Get-ADGroup $group).name
}
Write-Host $Final | Sort-Object