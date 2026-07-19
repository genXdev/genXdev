# UtcNow

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> 현재 UTC(협정 세계시) 날짜와 시간을 가져옵니다.

## Description

현재 UTC 날짜와 시간을 System.DateTime 객체로 반환합니다. 이 함수는 여러 시스템과 시간대에서 UTC 시간을 표준화된 방식으로 검색하는 방법을 제공합니다. 반환된 DateTime 객체는 타임스탬프 동기화, 로깅 및 시간대 간 작업에 사용할 수 있습니다.

## Syntax

```powershell
[CmdletBinding()]
    [OutputType([System.DateTime])]
    param()

    begin {

        # log function execution for debugging purposes
        Microsoft.PowerShell.Utility\Write-Verbose 'Starting UtcNow function execution'
    }


    process {

        # retrieve the current utc time using .net datetime for precision
        Microsoft.PowerShell.Utility\Write-Verbose 'Retrieving current UTC datetime'
        [DateTime]::UtcNow
    }

    end {
    }
```

## Examples

### $currentUtc = UtcNow Returns the current UTC time as a DateTime object.

```powershell
$currentUtc = UtcNow
Returns the current UTC time as a DateTime object.
```

### $timestamp = (UtcNow).ToString("yyyy-MM-dd HH:mm:ss") Gets the current UTC time and formats it as a string.

```powershell
$timestamp = (UtcNow).ToString("yyyy-MM-dd HH:mm:ss")
Gets the current UTC time and formats it as a string.
```

## Outputs

- `DateTime`

## Related Links

- [UtcNow on GitHub](https://github.com/genXdev/genXdev)
