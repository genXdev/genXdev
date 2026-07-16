# Get-SQLServerTables

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLServerTables -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTables -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | The connection string to the SQL Server database. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | The name of the SQL Server database. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | The SQL Server instance name. *(Parameter set: )* |

## Related Links

- [Get-SQLServerTables on GitHub](https://github.com/genXdev/genXdev)
