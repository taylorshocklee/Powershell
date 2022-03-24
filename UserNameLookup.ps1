$fName = Read-Host -Prompt 'Enter first name: '
$lName = Read-Host -Prompt 'Enter last name: '
Get-ADUser -Filter "GivenName -eq '$fName' -and SurName -eq '$lName'" | Select-Object SamaccountName