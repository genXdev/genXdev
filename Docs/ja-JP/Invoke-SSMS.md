# Invoke-SSMS

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** `ssms, `sqlservermanagementstudio

## Synopsis

> パラメータとトランザクションをサポートするSQL Serverデータベースクエリを実行します。

## Description

SQL Server クエリを実行するためのPowerShellインターフェースを提供します。以下の機能をサポートします:
- 接続文字列またはサーバー名とデータベース名による接続
- SQLインジェクションを防ぐためのパラメーター化クエリ
- トランザクション分離レベルの制御
- 単一トランザクションでの複数クエリ実行
- クエリとパラメーターのパイプライン入力

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
