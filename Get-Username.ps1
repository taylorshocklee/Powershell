$Name = Read-Host -Prompt 'Enter fist and last name: '
Get-ADUser -Filter "Name -eq '$Name'" | Select-Object SamaccountName