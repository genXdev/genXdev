# sidebyside

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Stelt de standaard naast-elkaar-configuratie in.

## Description

Stelt het standaardgedrag in voor het openen van GenXDev-vensters naast elkaar met PowerShell.
Dit is nuttig voor gebruikers met één monitor of voor degenen die de voorkeur geven aan nevenvensters.
Zie ook cmdlet 'secondscreen' en 'restoredefaultmonitor'

## Syntax

```powershell
[CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidGlobalVars", "")]

    param()

    begin {

        Microsoft.PowerShell.Utility\Write-Verbose `
            'Initializing default side-by-side configuration'
    }

    process {

        # establish monitor 0 as the system-wide secondary display designation
        $Global:OriginalDefaultSecondaryMonitor = $Global:LastOriginalDefaultSecondaryMonitor -ne "secondscreen" -and
            $Global:LastOriginalDefaultSecondaryMonitor -ne "sidebyside" ?
            $Global:DefaultSecondaryMonitor :
            $Global:OriginalDefaultSecondaryMonitor;

        $Global:LastOriginalDefaultSecondaryMonitor = "sidebyside"
        $Global:DefaultSecondaryMonitor = 0

        Microsoft.PowerShell.Utility\Write-Verbose `
            "Secondary monitor set to display index: ${Global:DefaultSecondaryMonitor}"
    }

    end {

        Microsoft.PowerShell.Utility\Write-Verbose `
            'Secondary monitor configuration completed successfully'
    }
```

## Examples

### PS> sidebyside

```powershell
PS> sidebyside
```

Stelt standaardwaarden in voor GenXdev-vensteropeningen om naast PowerShell te worden weergegeven

## Related Links

- [sidebyside on GitHub](https://github.com/genXdev/genXdev)
