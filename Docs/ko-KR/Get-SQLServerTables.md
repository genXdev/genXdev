# Get-SQLServerTables

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> SQL Server 데이터베이스에서 테이블 이름 목록을 검색합니다.

## Description

SQL Server 시스템 테이블을 쿼리하여 SQL Server 데이터베이스에서 모든 사용자 정의 테이블 이름을 검색합니다. 직접 연결 문자열 또는 서버 매개변수가 있는 데이터베이스 이름을 통해 연결하는 것을 지원합니다. 테이블 이름을 문자열 컬렉션으로 반환합니다.

## Syntax

```powershell
Get-SQLServerTables -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTables -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQL Server 데이터베이스에 대한 연결 문자열입니다. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | SQL Server 데이터베이스의 이름입니다. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | SQL Server 인스턴스 이름입니다. *(Parameter set: )* |

## Examples

### Get-SQLServerTables -DatabaseName "Inventory" -Server "localhost" Returns all table names from the specified database

```powershell
Get-SQLServerTables -DatabaseName "Inventory" -Server "localhost"
Returns all table names from the specified database
```

### Get-SQLServerTables -ConnectionString "Server=localhost;Database=Users;Integrated Security=true;" Returns all table names using a custom connection string ##############################################################################

```powershell
Get-SQLServerTables -ConnectionString "Server=localhost;Database=Users;Integrated Security=true;"
Returns all table names using a custom connection string
##############################################################################
```

## Related Links

- [Get-SQLServerTables on GitHub](https://github.com/genXdev/genXdev)
