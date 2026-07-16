# Get-SQLServerTableSchema

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-SQLServerTableSchema on GitHub](https://github.com/genXdev/genXdev)
