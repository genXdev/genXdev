# UtcNow

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Outputs

- `DateTime`

## Related Links

- [UtcNow on GitHub](https://github.com/genXdev/genXdev)
