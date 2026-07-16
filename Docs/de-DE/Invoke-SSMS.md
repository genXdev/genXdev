# Invoke-SSMS

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** `ssms, `sqlservermanagementstudio

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
[CmdletBinding()]
    [Alias("ssms", "sqlservermanagementstudio")]
    param (
    )

    begin {

        EnsureSSMS
    }


    process {


    }

    end {
        $searchPath  = GenXdev\Find-Item `
             "${Env:ProgramFiles(x86)}\*SQL Server Management*\Ssms.exe",
             "${Env:ProgramFiles}\*SQL Server Management*\Ssms.exe" |
             Microsoft.PowerShell.Utility\Sort-Object LastWriteTime -Descending | Microsoft.PowerShell.Utility\Select-Object -First 1

        if (-not $searchPath) {
            Throw "SSMS not found after installation attempt."
        }

        & $searchPath
    }
```

## Related Links

- [Invoke-SSMS on GitHub](https://github.com/genXdev/genXdev)
