# resetdefaultmonitor

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Restaura a configuração padrão do monitor secundário.

## Description

Este script restaura a configuração padrão do monitor secundário do sistema, definindo o monitor secundário para o valor padrão original. Isso é útil para usuários que desejam reverter para a configuração anterior de vários monitores após usar configurações lado a lado. Veja também: função 'ladoalado' para alternar para o modo lado a lado para novas janelas.

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

Restaura a configuração padrão do monitor secundário para o sistema.

## Related Links

- [resetdefaultmonitor on GitHub](https://github.com/genXdev/genXdev)
