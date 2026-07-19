# secondscreen

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> 기본 두 번째 모니터 구성을 설정합니다.

## Description

GenXdev 창 열기의 기본 동작을 보조 모니터에서 수행하도록 설정합니다.
이는 단일 모니터를 사용하는 사용자나 창을 나란히 배치하는 것을 선호하는 사용자에게 유용합니다.
'측면배치' 및 '기본모니터복원' cmdlet도 참조하세요.

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

GenXdev 창이 보조 모니터에 열리도록 기본값을 설정합니다

## Related Links

- [secondscreen on GitHub](https://github.com/genXdev/genXdev)
