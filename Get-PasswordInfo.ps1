param(
    [Parameter(Mandatory = $true)]
    [string]$Username
)

Get-ADUser -Identity $Username -Properties * | Select-Object Name, passwordlastset, PasswordExpired