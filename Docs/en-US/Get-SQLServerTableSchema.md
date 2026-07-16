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
| `-ConnectionString` | String | ✅ | — | 0 | — | The connection string to the SQL Server database *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | The name of the SQL Server database *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | The SQL Server instance name *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | The name of the table |

## Related Links

- [Get-SQLServerTableSchema on GitHub](https://github.com/genXdev/genXdev)
