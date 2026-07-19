# sidebyside

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Define a configuração padrão lado a lado.

## Description

Define o comportamento padrão para aberturas de janelas do GenXdev como lado a lado com o PowerShell.
Isso é útil para usuários com um único monitor ou para aqueles que preferem layouts de janela lado a lado.
Veja também o cmdlet 'secondscreen' e 'restoredefaultmonitor'

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

Define padrões para aberturas de janela do GenXdev serem lado a lado com o PowerShell

## Related Links

- [sidebyside on GitHub](https://github.com/genXdev/genXdev)
