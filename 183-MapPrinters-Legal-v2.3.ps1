##### Map Common Legal Printers

# Add-Printer -ConnectionName \\l183fs03.local183.tor\Canon6555_Legal
# Add-Printer -ConnectionName \\l183fs03.local183.tor\Canon7570_LegalFileRoom

###### Set printer as default per user #######

$un = $env:USERNAME
$cn = $env:COMPUTERNAME
$defGW = (Get-wmiObject Win32_networkAdapterConfiguration | ?{$_.IPEnabled}).DefaultIPGateway

if ($un -eq "ittester")
{
    & rundll32.exe printui.dll,PrintUIEntry /y /n "Canon6555_Legal"
}
elseif ($un -eq "mdimuzio")
{
    # Add-Printer -ConnectionName \\L183FS03.LOCAL183.TOR\HPM426_LegalAssistant01
    & rundll32.exe printui.dll,PrintUIEntry /y /n "HPM426_LegalAssistant01"
}
elseif ($un -eq "mboni")
{
    #Add-Printer -ConnectionName \\L183FS03.LOCAL183.TOR\HPM426_LegalAssistant02
    & rundll32.exe printui.dll,PrintUIEntry /y /n "HPM426_LegalAssistant02"
}
elseif ($un -eq "jcollins")
{
    #Add-Printer -ConnectionName \\L183FS03.LOCAL183.TOR\HPM426_LegalAssistant03
    & rundll32.exe printui.dll,PrintUIEntry /y /n "HPM426_LegalAssistant03"
}
elseif ($un -eq "friga")
{
    #Add-Printer -ConnectionName \\L183FS03.LOCAL183.TOR\HPM426_LegalAssistant04
    & rundll32.exe printui.dll,PrintUIEntry /y /n "HPM426_LegalAssistant04"
}
elseif ($un -eq "dvasconselos")
{
    #Add-Printer -ConnectionName \\L183FS03.LOCAL183.TOR\
    & rundll32.exe printui.dll,PrintUIEntry /y /n "HPM426_LegalAssistant05"
}
elseif (($un -eq "cdaigle") -or ($un -eq "ewarden"))
{
    #Add-Printer -ConnectionName \\L183FS03.Local183.Tor\Canon500_LegalCoralea
    #Add-Printer -ConnectionName \\L183FS03.Local183.Tor\HPM506_Coralea_Elizabeth
    & rundll32.exe printui.dll,PrintUIEntry /y /n "HPM506_Coralea_Elizabeth"
}
elseif ($un -eq "ablack")
{
    # Add-Printer -ConnectionName \\L183FS03.LOCAL183.TOR\
    #& rundll32.exe printui.dll,PrintUIEntry /y /n "Hewlett-Packard HP LaserJet P2055dn"
    
}
elseif ($un -eq "mmerchant")
{
    #Add-Printer -ConnectionName \\L183FS03.LOCAL183.TOR\Brother2370_Maheen
    & rundll32.exe printui.dll,PrintUIEntry /y /n "Brother2370_Maheen"
}
elseif ($un -eq "gwilliamson")
{
    # Add-Printer -ConnectionName \\L183FS03.LOCAL183.TOR\Brother2370_gwilliamson
    # & rundll32.exe printui.dll,PrintUIEntry /y /n "\\l183fs03.local183.tor\Brother2370_gwilliamson"
}
elseif ($un -eq "nkeating")
{
    #Add-Printer -ConnectionName Brother2370_nkeating
    & rundll32.exe printui.dll,PrintUIEntry /y /n "Brother2370_nkeating"
}
elseif ($un -eq "rmckeen")
{
    #Add-Printer -ConnectionName \\L183FS03.LOCAL183.TOR\Brother2370_rmckeen
    & rundll32.exe printui.dll,PrintUIEntry /y /n "Brother2370_rmckeen"
}
elseif ($un -eq "alaird")
{
    #Add-Printer -ConnectionName \\L183FS03.LOCAL183.TOR\Brother2370_alaird
    & rundll32.exe printui.dll,PrintUIEntry /y /n "Brother2370_alaird"
}
elseif ($un -eq "avithiananthan")
{
    #Add-Printer -ConnectionName \\L183FS03.LOCAL183.TOR\Brother2370_avithiananthan
    #& rundll32.exe printui.dll,PrintUIEntry /y /n "\\l183fs03.local183.tor\avithiananthan"
}
else
{
        & rundll32.exe printui.dll,PrintUIEntry /y /n "Canon6555_Legal"
}