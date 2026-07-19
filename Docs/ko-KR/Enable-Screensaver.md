# Enable-Screensaver

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> 구성된 Windows 화면 보호기를 시작합니다.

## Description

기본 화면 보호기 실행 파일(scrnsave.scr)을 /s 스위치와 함께 실행하여 Windows 시스템 화면 보호기를 즉시 활성화합니다.

## Syntax

```powershell
[CmdletBinding()]
    param()

    begin {

        Microsoft.PowerShell.Utility\Write-Verbose 'Starting Windows screensaver activation'
    }


    process {

        # execute the windows screensaver executable with the start switch
        & "$ENV:SystemRoot\system32\scrnsave.scr" /s
    }

    end {
    }
```

## Examples

### Enable-Screensaver

```powershell
Enable-Screensaver
```

## Related Links

- [Enable-Screensaver on GitHub](https://github.com/genXdev/genXdev)
