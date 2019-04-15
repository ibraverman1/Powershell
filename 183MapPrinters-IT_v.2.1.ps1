#### Remove All Network Printers
Foreach($NetworkPrinter in $NetworkPrinters) 
            { 
                $NetworkPrinter.Delete() 
                Write-Host "Successfully deleted the network printer:" + $NetworkPrinter.Name -ForegroundColor Green     
            }

#### Map Printers per Location

$userName = $env:USERNAME
$compName = $env:COMPUTERNAME
$defaultGateway = (Get-wmiObject Win32_networkAdapterConfiguration | ?{$_.IPEnabled}).DefaultIPGateway

if ($defaultGateway -eq "10.250.180.1")
{    
    #Add-Printer -ConnectionName \\l183fs03.local183.tor\HPM477_IT
    #Add-Printer -ConnectionName \\l183fs03.local183.tor\HPM452_IT
    #Add-Printer -ConnectionName \\l183fs03.local183.tor\Canon6555_Accounting

    if ($userName -eq "ittester")
    {
        & rundll32.exe printui.dll,PrintUIEntry /y /n "HPM477_IT"
    }
    elseif ($userName -eq "ibraverman")
    {
        & rundll32.exe printui.dll,PrintUIEntry /y /n "HPM477_IT"
    }
    elseif (($userName -eq "pgoncalves") -or ($userName -eq "kchanderpaul"))
    {
        & rundll32.exe printui.dll,PrintUIEntry /y /n "HPM452_IT"
    }
    else 
    {
        & rundll32.exe printui.dll,PrintUIEntry /y /n "Canon6555_Accounting"
    } 
}