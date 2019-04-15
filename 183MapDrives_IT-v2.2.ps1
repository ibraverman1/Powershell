## Map Drives for Everyone

#Global variables

$unm = $env:USERNAME
$cnm = $env:COMPUTERNAME
$udom = $env:USERDOMAIN

$DepartmentsRoot = "\\L183FS01.LOCAL183.TOR\Departments"
$ITShared = "$DepartmentsRoot\IT\Shared Docs"
$AccountingShard = "$DepartmentsRoot\Accounting\Shared Docs"
$LegalShared = "$DepartmentsRoot\Legal\Shared Docs"

$cred = Get-Credential -UserName $udom\$unm -Message "Please enter your password"

<#
 # Original code 
(New-Object -ComObject Shell.Application).NameSpace("$($PSItem.DriveLEtter):").Self.Name=$PSItem.Description

183 simple

New-PSDrive -Name "T" -PSProvider FileSystem -Description "IT test" -Root "\\L183FS01.LOCAL183.TOR\Departments\It\Shared Docs" -Persist
(New-Object -ComObject Shell.Application).NameSpace("T:").Self.Name="IT TEST DRIVE"
#>

Remove-PSDrive -Name Z -Scope global

if ($userName -eq "ittester")
{
    New-PSDrive -Name "Z" -PSProvider FileSystem -Description "IT SHARED DOCS" -Root "\\L183FS01.LOCAL183.TOR\Departments\IT\Shared Docs" -Credential $cred -Persist -scope global
    (New-Object -ComObject Shell.Application).NameSpace("Z:").Self.Name="IT Shared Docs"
  
}
elseif (($userName -eq "ibraverman") -or ($userName -eq "pgongalves") -or ($userName -eq "kchanderpaul") -or ($userName -eq "dcosta"))
{
   New-PSDrive -Name "Z:" -PSProvider FileSystem -Description "IT test" -Root "\\L183FS01.LOCAL183.TOR\Departments\IT\Shared Docs" -Credential $cred -Persist -scope global
   (New-Object -ComObject Shell.Application).NameSpace("Z:").Self.Name="IT Shared Docs"  
}
