# resetdefaultmonitor

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [resetdefaultmonitor on GitHub](https://github.com/genXdev/genXdev)
