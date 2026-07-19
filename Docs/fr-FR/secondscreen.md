# secondscreen

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Définit la configuration par défaut du deuxième moniteur.

## Description

Définit le comportement par défaut des ouvertures de fenêtres de GenXdev pour qu'elles s'affichent sur le moniteur secondaire.
Ceci est utile pour les utilisateurs ayant un seul moniteur ou ceux qui préfèrent les dispositions de fenêtres côte à côte.
Voir également l'applet de commande 'sidebyside' et 'restoredefaultmonitor'

## Syntax

```powershell
[CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidGlobalVars", "")]

    param()

    begin {

        Microsoft.PowerShell.Utility\Write-Verbose `
            'Initializing default secondary monitor configuration'
    }

    process {

        # establish monitor 0 as the system-wide secondary display designation
        $Global:OriginalDefaultSecondaryMonitor = $Global:LastOriginalDefaultSecondaryMonitor -ne "secondscreen" -and
            $Global:LastOriginalDefaultSecondaryMonitor -ne "sidebyside" ?
            $Global:DefaultSecondaryMonitor :
            $Global:OriginalDefaultSecondaryMonitor;

        $Global:LastOriginalDefaultSecondaryMonitor = "secondscreen"
        $Global:DefaultSecondaryMonitor = -2

        Microsoft.PowerShell.Utility\Write-Verbose `
            "Secondary monitor set to display index: ${Global:DefaultSecondaryMonitor}"
    }

    end {

        Microsoft.PowerShell.Utility\Write-Verbose `
            'Secondary monitor configuration completed successfully'
    }
```

## Examples

### PS> secondscreen

```powershell
PS> secondscreen
```

Définit les ouvertures de fenêtres GenXdev par défaut pour qu'elles s'affichent sur le moniteur secondaire

## Related Links

- [secondscreen on GitHub](https://github.com/genXdev/genXdev)
