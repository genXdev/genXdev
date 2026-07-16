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
| `-ConnectionString` | String | ✅ | — | 0 | — | The connection string to the SQL Server database *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | The name of the SQL Server database *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | The SQL Server instance name *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | The name of the table to query |
| `-ColumnName` | String | ✅ | — | 3 | — | The name of the column to retrieve |
| `-Count` | Int32 | — | — | 4 | `100` | Number of records to return. Default 100. Use -1 for all |

## Related Links

- [Get-SQLServerTableColumnData on GitHub](https://github.com/genXdev/genXdev)
