# Now

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> 현재 시스템 날짜와 시간을 DateTime 객체로 반환합니다.

## Description

매개변수 없이 현재 시스템 날짜와 시간을 간단히 가져올 수 있는 방법을 제공합니다. 날짜/시간 계산, 형식 지정 및 비교에 사용할 수 있는 표준 .NET DateTime 객체를 반환합니다.

## Syntax

```powershell
[CmdletBinding()]
    [OutputType([System.DateTime])]
    param()

    begin {

        # log function start with verbose output
        Microsoft.PowerShell.Utility\Write-Verbose 'Starting Now function to retrieve system date and time'
    }


    process {

        # return the current system datetime using .NET DateTime.Now property
        # this provides high-precision timestamp including date and time
        return [DateTime]::Now
    }

    end {
    }
```

## Examples

### Now Returns the current system date and time as a DateTime object

```powershell
Now
Returns the current system date and time as a DateTime object
```

### $timestamp = Now Stores the current date and time in a variable for later use

```powershell
$timestamp = Now
Stores the current date and time in a variable for later use
```

## Outputs

- `DateTime`

## Related Links

- [Now on GitHub](https://github.com/genXdev/genXdev)
