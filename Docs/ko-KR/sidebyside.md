# sidebyside

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> 기본 나란히 보기 구성을 설정합니다.

## Description

GenXdev 창 열기의 기본 동작을 PowerShell과 나란히 배치하도록 설정합니다.
이는 단일 모니터를 사용하는 사용자 또는 창을 나란히 배치하는 것을 선호하는 사용자에게 유용합니다.
'secondscreen' 및 'restoredefaultmonitor' cmdlet도 참조하세요.

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

GenXdev 창이 PowerShell과 나란히 열리도록 기본값을 설정합니다.

## Related Links

- [sidebyside on GitHub](https://github.com/genXdev/genXdev)
