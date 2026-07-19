# resetdefaultmonitor

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Restaura la configuración predeterminada del monitor secundario.

## Description

Este script restaura la configuración predeterminada del monitor secundario para el sistema, estableciendo el monitor secundario al valor predeterminado original. Esto es útil para usuarios que deseen volver a su configuración de múltiples monitores anterior después de usar configuraciones lado a lado. Ver también: la función 'sidebyside' para cambiar al modo lado a lado para nuevas ventanas.

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

Restaura la configuración predeterminada del monitor secundario para el sistema.

## Related Links

- [resetdefaultmonitor on GitHub](https://github.com/genXdev/genXdev)
