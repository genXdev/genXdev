# Get-SQLServerTableColumnData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLServerTableColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTableColumnData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerTableColumnData -TableName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQL Server 数据库的连接字符串 *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | SQL Server 数据库的名称 *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | SQL Server 实例名称 *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | 要查询的表名称 |
| `-ColumnName` | String | ✅ | — | 3 | — | 要检索的列名称 |
| `-Count` | Int32 | — | — | 4 | `100` | 要返回的记录数。默认为100。使用-1表示全部 |

## Related Links

- [Get-SQLServerTableColumnData on GitHub](https://github.com/genXdev/genXdev)
