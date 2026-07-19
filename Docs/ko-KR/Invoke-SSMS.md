# Invoke-SSMS

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** `ssms, `sqlservermanagementstudio

## Synopsis

> 매개변수와 트랜잭션을 지원하는 SQL Server 데이터베이스 쿼리를 실행합니다.

## Description

SQL 쿼리 실행을 위한 PowerShell 인터페이스 제공:
- 연결 문자열 또는 서버가 포함된 데이터베이스 이름을 통한 연결
- SQL 인젝션 방지를 위한 매개변수화된 쿼리
- 트랜잭션 격리 수준 제어
- 단일 트랜잭션 내에서 여러 쿼리 실행
- 쿼리 및 매개변수에 대한 파이프라인 입력

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
