# resetdefaultmonitor

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Восстанавливает конфигурацию дополнительного монитора по умолчанию.

## Description

Этот скрипт восстанавливает конфигурацию дополнительного монитора по умолчанию для системы,
устанавливая дополнительный монитор в исходное значение по умолчанию.
Это полезно для пользователей, которые хотят вернуться к предыдущей многомониторной настройке после использования конфигураций "рядом".
См. также: функция 'sidebyside' для переключения в режим "рядом" для новых окон.

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

Восстанавливает конфигурацию дополнительного монитора по умолчанию для системы.

## Related Links

- [resetdefaultmonitor on GitHub](https://github.com/genXdev/genXdev)
