# Invoke-SQLiteQuery

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> 트랜잭션 지원을 통해 SQLite 데이터베이스에 대해 하나 이상의 SQL 쿼리를 실행합니다.

## Description

매개변수 지원 및 구성 가능한 트랜잭션 격리 수준을 제공하는 SQLite 데이터베이스에 대해 SQL 쿼리를 실행합니다. 일괄 작업을 위해 외부 트랜잭션을 사용하거나 자체 내부 트랜잭션을 생성할 수 있습니다. 외부 트랜잭션을 사용하는 경우 호출자가 커밋/롤백을 담당합니다. 연결 우선 순위: 트랜잭션 > 연결 문자열 > 데이터베이스 파일 경로.

## Syntax

```powershell
Invoke-SQLiteQuery [[-ConnectionString] <String>] [[-DatabaseFilePath] <String>] [[-Transaction] <Object>] -Queries <String[]> [[-SqlParameters] <Collections.Hashtable[]>] [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | — | — | 0 | — | SQLite 데이터베이스의 연결 문자열입니다. |
| `-DatabaseFilePath` | String | — | — | 1 | — | SQLite 데이터베이스 파일의 경로입니다. |
| `-Transaction` | Object | — | — | 2 | — | 쿼리에 사용할 기존 SQLite 트랜잭션입니다. |
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 3 | — | 실행할 쿼리입니다. |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 4 | `@()` | 쿼리 파라미터를 해시 테이블로. |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | 사용할 격리 수준입니다. 기본값은 ReadCommitted입니다. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | SQLite 패키지 설치를 위한 기본 설정이 지정된 경우에도 동의 프롬프트를 강제합니다. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatically consent to third-party software installation and set persistent flag for SQLite package. |

## Examples

### Invoke-SQLiteQuery -DatabaseFilePath "C:\data.db" -Queries "SELECT * FROM Users"

```powershell
Invoke-SQLiteQuery -DatabaseFilePath "C:\data.db" -Queries "SELECT * FROM Users"
```

### "SELECT * FROM Users" | isql "C:\data.db" @{"UserId"=1}

```powershell
"SELECT * FROM Users" | isql "C:\data.db" @{"UserId"=1}
```

### Batch operations using external transaction $tx = Get-SQLiteTransaction -DatabaseFilePath "C:\data.db" try {     Invoke-SQLiteQuery -Transaction $tx -Queries "INSERT INTO Users VALUES (@name)" -SqlParameters @{"name"="John"}     Invoke-SQLiteQuery -Transaction $tx -Queries "UPDATE Users SET active=1 WHERE name=@name" -SqlParameters @{"name"="John"}     $tx.Commit() } catch {     $tx.Rollback()     throw } finally {     $tx.Connection.Close() }

```powershell
Batch operations using external transaction
$tx = Get-SQLiteTransaction -DatabaseFilePath "C:\data.db"
try {
    Invoke-SQLiteQuery -Transaction $tx -Queries "INSERT INTO Users VALUES (@name)" -SqlParameters @{"name"="John"}
    Invoke-SQLiteQuery -Transaction $tx -Queries "UPDATE Users SET active=1 WHERE name=@name" -SqlParameters @{"name"="John"}
    $tx.Commit()
} catch {
    $tx.Rollback()
    throw
} finally {
    $tx.Connection.Close()
}
```

### Invoke-SQLiteQuery -DatabaseFilePath "C:\data.db" -Queries "SELECT * FROM Users" -ConsentToThirdPartySoftwareInstallation

```powershell
Invoke-SQLiteQuery -DatabaseFilePath "C:\data.db" -Queries "SELECT * FROM Users" -ConsentToThirdPartySoftwareInstallation
```

## Related Links

- [Invoke-SQLiteQuery on GitHub](https://github.com/genXdev/genXdev)
