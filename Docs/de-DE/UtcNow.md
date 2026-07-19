# UtcNow

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Gets the current UTC (Coordinated Universal Time) date and time.

## Description

Gibt das aktuelle UTC-Datum und die aktuelle UTC-Zeit als System.DateTime-Objekt zurück. Diese Funktion bietet eine standardisierte Möglichkeit, die UTC-Zeit über verschiedene Systeme und Zeitzonen hinweg abzurufen. Das zurückgegebene DateTime-Objekt kann für Zeitstempelsynchronisation, Protokollierung und systemübergreifende Operationen verwendet werden.

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
