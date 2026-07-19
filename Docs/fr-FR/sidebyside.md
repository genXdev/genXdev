# sidebyside

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Définit la configuration côte à côte par défaut.

## Description

Définit le comportement par défaut des ouvertures de fenêtres GenXdev pour qu'elles soient côte à côte avec PowerShell.
Ceci est utile pour les utilisateurs ayant un seul moniteur ou ceux qui préfèrent des dispositions de fenêtres côte à côte.
Voir également les applets de commande 'secondscreen' et 'restoredefaultmonitor'

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

Définit les ouvertures de fenêtres GenXdev par défaut pour qu'elles soient côte à côte avec PowerShell

## Related Links

- [sidebyside on GitHub](https://github.com/genXdev/genXdev)
