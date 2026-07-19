# resetdefaultmonitor

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> 恢复默认的辅助显示器配置。

## Description

此脚本用于恢复系统的默认辅助显示器配置，将辅助显示器设置为原始默认值。这适用于用户在使用并排配置后希望恢复到之前的多显示器设置。另请参阅：'sidebyside'函数，用于切换至新窗口的并排模式。

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

恢复系统的默认辅助显示器配置。

## Related Links

- [resetdefaultmonitor on GitHub](https://github.com/genXdev/genXdev)
