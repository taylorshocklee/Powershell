$Computer = Read-Host -Prompt 'Enter computername: '
$Groups = (Get-ADComputer $Computer -Property memberof).memberof
$Final = ForEach ($group in $Groups) 
{
        (Get-ADGroup $group).name
}
Write-Output $Final | Sort-Object