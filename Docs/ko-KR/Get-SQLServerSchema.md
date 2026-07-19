# Get-SQLServerSchema

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> SQL Server 데이터베이스에서 전체 스키마 정보를 검색합니다.

## Description

이 함수는 SQL Server 시스템 테이블과 정보 스키마를 쿼리하여 SQL Server 데이터베이스의 완전한 스키마 정의(테이블, 뷰, 인덱스, 저장 프로시저 및 기타 데이터베이스 개체 포함)를 가져옵니다. 연결 문자열이나 서버 매개 변수가 있는 데이터베이스 이름을 허용합니다.

## Syntax

```powershell
Get-SQLServerSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLServerSchema -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQL Server 데이터베이스에 대한 연결 문자열입니다. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | SQL Server 데이터베이스의 이름입니다. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | SQL Server 인스턴스 이름입니다. *(Parameter set: )* |

## Examples

### Get-SQLServerSchema -DatabaseName "inventory" -Server "localhost"

```powershell
Get-SQLServerSchema -DatabaseName "inventory" -Server "localhost"
```

### Get-SQLServerSchema -ConnectionString "Server=localhost;Database=inventory;Integrated Security=true;"

```powershell
Get-SQLServerSchema -ConnectionString "Server=localhost;Database=inventory;Integrated Security=true;"
```

## Related Links

- [Get-SQLServerSchema on GitHub](https://github.com/genXdev/genXdev)
