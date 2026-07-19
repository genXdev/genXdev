# UtcNow

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Obtiene la fecha y hora actuales UTC (Tiempo Universal Coordinado).

## Description

Devuelve la fecha y hora UTC actuales como un objeto System.DateTime. Esta función proporciona una forma estandarizada de recuperar la hora UTC en diferentes sistemas y zonas horarias. El objeto DateTime devuelto se puede utilizar para la sincronización de marcas de tiempo, el registro y las operaciones entre zonas horarias.

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
