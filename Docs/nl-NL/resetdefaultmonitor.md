# resetdefaultmonitor

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Herstelt standaard secundaire monitorconfiguratie.

## Description

Dit script herstelt de standaard secundaire monitorconfiguratie voor het systeem,
waarbij de secundaire monitor wordt ingesteld op de oorspronkelijke standaardwaarde.
Dit is nuttig voor gebruikers die willen terugkeren naar hun vorige multi-monitoropstelling na het gebruik van naast-elkaar-configuraties.
Zie ook: de functie 'sidebyside' om over te schakelen naar de naast-elkaar-modus voor nieuwe vensters.

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

Herstelt de standaard secundaire monitorconfiguratie voor het systeem.

## Related Links

- [resetdefaultmonitor on GitHub](https://github.com/genXdev/genXdev)
