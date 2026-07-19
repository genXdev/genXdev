# resetdefaultmonitor

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> 보조 모니터 구성을 기본값으로 복원합니다.

## Description

이 스크립트는 시스템의 기본 보조 모니터 구성을 복원하여 보조 모니터를 원래 기본값으로 설정합니다.
이는 나란히 배치 구성을 사용한 후 이전의 다중 모니터 설정으로 되돌리려는 사용자에게 유용합니다.
참조: 새 창을 나란히 모드로 전환하는 'sidebyside' 함수

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

시스템의 기본 보조 모니터 구성을 복원합니다.

## Related Links

- [resetdefaultmonitor on GitHub](https://github.com/genXdev/genXdev)
