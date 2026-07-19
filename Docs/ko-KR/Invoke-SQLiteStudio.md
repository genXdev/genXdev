# Invoke-SQLiteStudio

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> 파라미터와 트랜잭션을 지원하는 SQLite 데이터베이스 쿼리를 실행합니다.

## Description

Provides a PowerShell interface for executing SQLite queries with support for:
- Connection via connection string or database file path
- Parameterized queries to prevent SQL injection
- Transaction isolation level control
- Multiple query execution in a single transaction
- Pipeline input for queries and parameters

## Syntax

```powershell
Invoke-SQLiteStudio -ConnectionString <String> [<CommonParameters>]

Invoke-SQLiteStudio -DatabaseFilePath <String> [<CommonParameters>]

Invoke-SQLiteStudio -Queries <String[]> [[-SqlParameters] <Collections.Hashtable[]>] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQLite 데이터베이스의 연결 문자열입니다. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | SQLite 데이터베이스 파일의 경로입니다. *(Parameter set: )* |
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 1 | — | 실행할 쿼리입니다. |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | 쿼리에 대한 선택적 매개변수입니다. |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | 사용할 격리 수준입니다. 기본값은 ReadCommitted입니다. |

## Examples

### Invoke-SQLiteStudio `     -DatabaseFilePath "C:\data\users.sqlite" `     -Queries "SELECT * FROM Users WHERE active = @status" `     -SqlParameters @{"status" = 1}

```powershell
Invoke-SQLiteStudio `
    -DatabaseFilePath "C:\data\users.sqlite" `
    -Queries "SELECT * FROM Users WHERE active = @status" `
    -SqlParameters @{"status" = 1}
```

### "SELECT * FROM Users" | isql -DatabaseFilePath "C:\data\users.sqlite"

```powershell
"SELECT * FROM Users" | isql -DatabaseFilePath "C:\data\users.sqlite"
```

## Related Links

- [Invoke-SQLiteStudio on GitHub](https://github.com/genXdev/genXdev)
