# Invoke-SSMS

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** `ssms, `sqlservermanagementstudio

## Synopsis

> Exécute des requêtes de base de données SQL Server avec support des paramètres et des transactions.

## Description

Fournit une interface PowerShell pour exécuter des requêtes SQL Server avec prise en charge de :
- Connexion via chaîne de connexion ou nom de base de données avec serveur
- Requêtes paramétrées pour prévenir les injections SQL
- Contrôle du niveau d'isolation des transactions
- Exécution de plusieurs requêtes en une seule transaction
- Entrée pipeline pour les requêtes et paramètres

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
