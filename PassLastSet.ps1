$User = Read-Host -Prompt 'Enter username: '
Get-ADUser -Identity $user -Properties passwordlastset | ft Name, passwordlastset