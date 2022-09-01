param(  
        [Parameter(Mandatory = $true)]
        [string]$Computer
)

$Groups = (Get-ADComputer $Computer -Property memberof).memberof
$Final = ForEach ($group in $Groups)
{
    (Get-ADGroup $group).name
}
Write-Host $Final | Sort-Objects