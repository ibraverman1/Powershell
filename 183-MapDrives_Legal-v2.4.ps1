# MAP LEGAL SHARED DOCS FOR EVERYONE

$un = $env:USERNAME
$cn = $env:COMPUTERNAME
$defaultGateway = (Get-wmiObject Win32_networkAdapterConfiguration | ?{$_.IPEnabled}).DefaultIPGateway
$cred = Get-Credential -UserName $un -Message "Please enter you password"

$Lawyers = @("jevans","gwilliamson","ablack","mmerchant","alaird","avithiananthan","nkeating","mckeen")
$LegalAssistants = @("jcollins","friga","mboni","mdimuzio","dvasconselos")
$GrievancesShare = @("cdaigle","ewarden","ittester")
$CollectiveAggreementsShare = @("cdaigle","ewarden","jcollins","friga","mboni","mdimuzio","dvasconselos","ittester")
$HRShared = @("cdaigle","ewarden","ittester") 

& net use * /delete /yes

New-PSDrive -Name "Z" -PSProvider FileSystem -Description "Legal Shared Docs" -Root "\\L183FS01.LOCAL183.TOR\Departments\LEGAL\Shared Docs" -Persist -Scope global
(New-Object -ComObject Shell.Application).NameSpace("Z:").Self.Name="Legal Shared Docs"

if ($GrievancesShare.Contains($un))
{
    New-PSDrive -Name "H" -PSProvider FileSystem -Description "Grievances" -Root "\\L183fs01.Local183.Tor\Departments\Accounting\Grievances" -Persist -Scope global
    (New-Object -ComObject Shell.Application).NameSpace("H:").Self.Name="Grievances"
      
}
elseif ( ($CollectiveAggreementsShare.Contains($un)) -or ($Lawyers.Contains($un)) -or ($LegalAssistants.Contains($un)) )
{
   New-PSDrive -Name "Q" -PSProvider FileSystem -Description "IT test" -Root "\\l183fs01.local183.tor\Departments\Administration\Shared Docs\Collective Agreements" -Persist -scope global
   (New-Object -ComObject Shell.Application).NameSpace("Q:").Self.Name="Collective Agreements"
}
elseif ($HRShared.Contains($un))
{
    New-PSDrive -Name "Q" -PSProvider FileSystem -Description "IT test" -Root "\\l183fs01.local183.tor\Departments\Administration\HR Shared Docs" -Persist -scope global
   (New-Object -ComObject Shell.Application).NameSpace("Q:").Self.Name="HR Shared Docs"
}