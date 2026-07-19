# Invoke-SSMS

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** `ssms, `sqlservermanagementstudio

## Synopsis

> Voert SQL Server-databasequery's uit met ondersteuning voor parameters en transacties.

## Description

Provides a PowerShell interface for executing SQL Server queries with support for:
- Connection via connection string or database name with server
- Parameterized queries to prevent SQL injection
- Transaction isolation level control
- Multiple query execution in a single transaction
- Pipeline input for queries and parameters

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

## Examples

### Invoke-SSMS `     -DatabaseName "users" -Server "localhost" `     -Queries "SELECT * FROM Users WHERE active = @status" `     -SqlParameters @{"status" = 1}

```powershell
Invoke-SSMS `
    -DatabaseName "users" -Server "localhost" `
    -Queries "SELECT * FROM Users WHERE active = @status" `
    -SqlParameters @{"status" = 1}
```

### "SELECT * FROM Users" | Invoke-SSMS -DatabaseName "users"

```powershell
"SELECT * FROM Users" | Invoke-SSMS -DatabaseName "users"
```

## Related Links

- [Invoke-SSMS on GitHub](https://github.com/genXdev/genXdev)
