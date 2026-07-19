# Get-SQLServerTableSchema

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> 지정된 SQL Server 테이블의 스키마 정보를 검색합니다.

## Description

이 함수는 SQL Server 데이터베이스를 쿼리하여 지정된 테이블의 상세 스키마 정보를 가져옵니다. SQL Server INFORMATION_SCHEMA.COLUMNS 뷰를 사용하여 열 이름, 유형, null 허용 여부 및 기본값을 포함한 열 정의를 반환합니다.

## Syntax

```powershell
Get-SQLServerTableSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTableSchema -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerTableSchema -TableName <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQL Server 데이터베이스에 대한 연결 문자열 *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | SQL Server 데이터베이스의 이름 *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | SQL Server 인스턴스 이름 *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | 테이블의 이름 |

## Examples

### Get-SQLServerTableSchema -DatabaseName "mydb" -Server "localhost" `     -TableName "Users"

```powershell
Get-SQLServerTableSchema -DatabaseName "mydb" -Server "localhost" `
    -TableName "Users"
```

### Get-SQLServerTableSchema -ConnectionString "Server=localhost;Database=mydb;Integrated Security=true" `     -TableName "Products"

```powershell
Get-SQLServerTableSchema -ConnectionString "Server=localhost;Database=mydb;Integrated Security=true" `
    -TableName "Products"
```

## Related Links

- [Get-SQLServerTableSchema on GitHub](https://github.com/genXdev/genXdev)
