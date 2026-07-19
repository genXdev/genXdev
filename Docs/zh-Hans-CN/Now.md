# Now

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> 将当前系统日期和时间作为 DateTime 对象返回。

## Description

提供一种无需任何参数即可获取当前系统日期和时间的简单方法。返回一个标准的.NET DateTime对象，可用于日期时间计算、格式化和比较。

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
