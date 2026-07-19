# secondscreen

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Establece la configuración predeterminada del segundo monitor.

## Description

Establece el comportamiento predeterminado para que las aperturas de ventanas de GenXdev se realicen en el monitor secundario.
Esto es útil para usuarios con un solo monitor o que prefieren diseños de ventanas lado a lado.
Consulte también el cmdlet 'sidebyside' y 'restoredefaultmonitor'

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

Establece los valores predeterminados para que las aperturas de ventanas de GenXdev se realicen en el monitor secundario

## Related Links

- [secondscreen on GitHub](https://github.com/genXdev/genXdev)
