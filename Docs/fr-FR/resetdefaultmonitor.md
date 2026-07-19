# resetdefaultmonitor

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Rétablit la configuration par défaut du moniteur secondaire.

## Description

Ce script restaure la configuration par défaut du moniteur secondaire pour le système, définissant le moniteur secondaire sur la valeur par défaut d'origine. Cela est utile pour les utilisateurs qui souhaitent revenir à leur configuration multi-écran précédente après avoir utilisé des configurations côte à côte. Voir aussi : la fonction 'sidebyside' pour passer en mode côte à côte pour les nouvelles fenêtres.

## Syntax

```powershell
[CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidGlobalVars", "")]
    param()

    #####################################################################

    begin {

        Microsoft.PowerShell.Utility\Write-Verbose `
            'Setting default secondary monitor configuration'
    }

    #####################################################################

    process {

        $Global:DefaultSecondaryMonitor = $null -ne $Global:LastOriginalDefaultSecondaryMonitor ?
            $Global:OriginalDefaultSecondaryMonitor : $Global:DefaultSecondaryMonitor

        $Global:LastOriginalDefaultSecondaryMonitor = $null;

        Microsoft.PowerShell.Utility\Write-Verbose `
            "Secondary monitor set to: ${Global:DefaultSecondaryMonitor}"
    }

    #####################################################################

    end {

        Microsoft.PowerShell.Utility\Write-Verbose `
            'Secondary monitor configuration completed'
    }
```

## Examples

### secondscreen

```powershell
secondscreen
```

Restores the default secondary monitor configuration for the system.

## Related Links

- [resetdefaultmonitor on GitHub](https://github.com/genXdev/genXdev)
