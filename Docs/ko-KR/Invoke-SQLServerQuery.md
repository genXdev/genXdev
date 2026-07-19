# Invoke-SQLServerQuery

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> 트랜잭션 지원을 통해 SQL Server 데이터베이스에 대해 하나 이상의 SQL 쿼리를 실행합니다.

## Description

SQL Server 데이터베이스에 대해 매개 변수 지원 및 구성 가능한 트랜잭션 격리 수준으로 SQL 쿼리를 실행합니다. 일괄 작업을 위해 외부 트랜잭션을 사용하거나 자체 내부 트랜잭션을 생성할 수 있습니다. 외부 트랜잭션을 사용하는 경우 호출자가 커밋/롤백을 담당합니다. 연결 우선 순위: Transaction > ConnectionString > DatabaseName (Server 필요).

## Syntax

```powershell
Invoke-SQLServerQuery [[-Queries] <String[]>] [[-DatabaseName] <String>] [[-Server] <String>] [[-Transaction] <Object>] [[-ConnectionString] <String>] [[-SqlParameters] <Collections.Hashtable[]>] [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | 실행할 쿼리입니다. |
| `-DatabaseName` | String | — | — | 1 | `'master'` | SQL Server 데이터베이스의 이름입니다. |
| `-Server` | String | — | — | 2 | `'.'` | SQL Server 인스턴스 이름입니다. |
| `-Transaction` | Object | — | — | 3 | — | 쿼리에 사용할 기존 SQL Server 트랜잭션입니다. |
| `-ConnectionString` | String | — | — | 4 | — | SQL 데이터베이스에 대한 연결 문자열입니다. |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) | 5 | `@()` | 쿼리 파라미터를 해시 테이블로. |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | 사용할 격리 수준입니다. 기본값은 ReadCommitted입니다. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | SQL Server 패키지 설치에 대해 기본 설정이 지정되어 있어도 동의 프롬프트를 강제로 표시합니다. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | 자동으로 타사 소프트웨어 설치에 동의하고 SQL Server 패키지에 대한 영구 플래그를 설정합니다. |

## Examples

### Invoke-SQLServerQuery -Server "localhost" -DatabaseName "MyDB" -Queries "SELECT * FROM Users"

```powershell
Invoke-SQLServerQuery -Server "localhost" -DatabaseName "MyDB" -Queries "SELECT * FROM Users"
```

### "SELECT * FROM Users" | Invoke-SQLServerQuery -ConnectionString "Server=localhost;Database=MyDB;Integrated Security=true" -SqlParameters @{"UserId"=1}

```powershell
"SELECT * FROM Users" | Invoke-SQLServerQuery -ConnectionString "Server=localhost;Database=MyDB;Integrated Security=true" -SqlParameters @{"UserId"=1}
```

### Batch operations using external transaction $tx = Get-SQLServerTransaction -Server "localhost" -DatabaseName "MyDB" try {     Invoke-SQLServerQuery -Transaction $tx -Queries "INSERT INTO Users VALUES (@name)" -SqlParameters @{"name"="John"}     Invoke-SQLServerQuery -Transaction $tx -Queries "UPDATE Users SET active=1 WHERE name=@name" -SqlParameters @{"name"="John"}     $tx.Commit() } catch {     $tx.Rollback()     throw } finally {     $tx.Connection.Close() }

```powershell
Batch operations using external transaction
$tx = Get-SQLServerTransaction -Server "localhost" -DatabaseName "MyDB"
try {
    Invoke-SQLServerQuery -Transaction $tx -Queries "INSERT INTO Users VALUES (@name)" -SqlParameters @{"name"="John"}
    Invoke-SQLServerQuery -Transaction $tx -Queries "UPDATE Users SET active=1 WHERE name=@name" -SqlParameters @{"name"="John"}
    $tx.Commit()
} catch {
    $tx.Rollback()
    throw
} finally {
    $tx.Connection.Close()
}
```

### Invoke-SQLServerQuery -Server "localhost" -DatabaseName "MyDB" -Queries "SELECT * FROM Users" -ConsentToThirdPartySoftwareInstallation

```powershell
Invoke-SQLServerQuery -Server "localhost" -DatabaseName "MyDB" -Queries "SELECT * FROM Users" -ConsentToThirdPartySoftwareInstallation
```

## Related Links

- [Invoke-SQLServerQuery on GitHub](https://github.com/genXdev/genXdev)
