# resetdefaultmonitor

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Stellt die Standardkonfiguration des sekundären Monitors wieder her.

## Description

Dieses Skript stellt die standardmäßige sekundäre Monitor-Konfiguration für das System wieder her und setzt den sekundären Monitor auf den ursprünglichen Standardwert zurück. Dies ist nützlich für Benutzer, die nach der Verwendung von Side-by-Side-Konfigurationen zu ihrem vorherigen Multi-Monitor-Setup zurückkehren möchten. Siehe auch: die Funktion 'sidebyside', um in den Side-by-Side-Modus für neue Fenster zu wechseln.

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

Stellt die standardmäßige Konfiguration des sekundären Monitors für das System wieder her.

## Related Links

- [resetdefaultmonitor on GitHub](https://github.com/genXdev/genXdev)
