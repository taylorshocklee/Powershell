$User = Read-Host -Prompt 'Enter username: '
Get-ADUser -Identity $user -Properties * | ft Name, passwordlastset, PasswordExpired