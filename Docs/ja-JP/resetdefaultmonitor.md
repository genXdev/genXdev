# resetdefaultmonitor

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> デフォルトのセカンダリモニター設定を復元します。

## Description

このスクリプトは、システムのデフォルトのセカンダリモニター設定を復元し、セカンダリモニターを元のデフォルト値に戻します。これは、サイドバイサイド構成を使用した後、以前のマルチモニター設定に戻したいユーザーに役立ちます。関連項目: 新しいウィンドウをサイドバイサイドモードに切り替える 'sidebyside' 関数。

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

システムのデフォルトのセカンダリモニター構成を復元します。

## Related Links

- [resetdefaultmonitor on GitHub](https://github.com/genXdev/genXdev)
