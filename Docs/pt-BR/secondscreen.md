# secondscreen

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Define a configuração padrão do segundo monitor.

## Description

Define o comportamento padrão para a abertura de janelas do GenXdev no monitor secundário.
Isso é útil para usuários com um único monitor ou que preferem layouts de janelas lado a lado.
Consulte também o cmdlet 'sidebyside' e 'restoredefaultmonitor'

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

Define as aberturas de janela padrão do GenXdev para que fiquem no monitor secundário

## Related Links

- [secondscreen on GitHub](https://github.com/genXdev/genXdev)
