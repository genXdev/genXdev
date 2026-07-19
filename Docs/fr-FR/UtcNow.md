# UtcNow

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> Obtient la date et l'heure UTC (temps universel coordonné) actuelles.

## Description

Renvoie la date et l'heure UTC actuelles sous la forme d'un objet System.DateTime. Cette fonction fournit un moyen standardisé de récupérer l'heure UTC sur différents systèmes et fuseaux horaires. L'objet DateTime renvoyé peut être utilisé pour la synchronisation des horodatages, la journalisation et les opérations inter-fuseaux horaires.

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
