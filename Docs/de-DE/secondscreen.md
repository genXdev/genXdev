# secondscreen

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Legt die Standardkonfiguration für den zweiten Monitor fest.

## Description

Legt das Standardverhalten für GenXdev-Fensteröffnungen fest, sodass sie auf dem sekundären Monitor angezeigt werden.
Dies ist nützlich für Benutzer mit einem einzelnen Monitor oder für diejenigen, die seitliche Fensterlayouts bevorzugen.
Siehe auch Cmdlet 'sidebyside' und 'restoredefaultmonitor'

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

Sets defaults for GenXdev window openings to be on the secondary monitor

## Related Links

- [secondscreen on GitHub](https://github.com/genXdev/genXdev)
