# sidebyside

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> デフォルトのサイドバイサイド設定を設定します。

## Description

GenXdev ウィンドウを PowerShell と横に並べて表示するデフォルト動作を設定します。
これは、シングルモニターのユーザーや、ウィンドウを横に並べて表示することを好むユーザーに便利です。
コマンドレット 'secondscreen' および 'restoredefaultmonitor' も参照してください。

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

GenXdev のウィンドウを開くときの既定を PowerShell と並べて表示に設定します。

## Related Links

- [sidebyside on GitHub](https://github.com/genXdev/genXdev)
