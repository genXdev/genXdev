# Now

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Возвращает текущую системную дату и время в виде объекта DateTime.

## Description

Предоставляет простой способ получения текущей даты и времени системы без каких-либо параметров. Возвращает стандартный объект DateTime .NET, который может использоваться для вычислений, форматирования и сравнения даты и времени.

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
