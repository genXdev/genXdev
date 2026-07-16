# Get-SQLServerTableData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLServerTableData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTableData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerTableData -TableName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | The connection string to the SQL Server database. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | The name of the SQL Server database. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | The SQL Server instance name. *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | The name of the table to query data from. |
| `-Count` | Int32 | — | — | 3 | `100` | The maximum number of records to return. -1 for all. |

## Related Links

- [Get-SQLServerTableData on GitHub](https://github.com/genXdev/genXdev)
