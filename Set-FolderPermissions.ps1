$NewAcl = Get-Acl -Path # Path to folder

$Identity = "BUILTIN\Users"
$Filesystemrights = "FullControl"
$Type = "Allow"

$ArgList = $Identity, $Filesystemrights, $Type
$AccessRule = New-Object System.Security.AccessControl.FileSystemAccessRule -ArgumentList $ArgList

$NewAcl.SetAccessRule($AccessControl)
Set-Acl -Path <# Path to folder #> -AclObject $NewAcl