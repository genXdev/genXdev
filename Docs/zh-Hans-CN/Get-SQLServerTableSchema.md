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
| `-ConnectionString` | String | ✅ | — | 0 | — | SQL Server 数据库的连接字符串 *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | SQL Server 数据库的名称 *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | SQL Server 实例名称 *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | 表格名称 |

## Related Links

- [Get-SQLServerTableSchema on GitHub](https://github.com/genXdev/genXdev)
