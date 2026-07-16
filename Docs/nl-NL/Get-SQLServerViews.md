# Get-SQLServerViews

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLServerViews -ConnectionString <String> [<CommonParameters>]

Get-SQLServerViews -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | De verbindingsreeks naar de SQL Server-database. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | De naam van de SQL Server-database. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | De naam van de SQL Server-instantie. *(Parameter set: )* |

## Related Links

- [Get-SQLServerViews on GitHub](https://github.com/genXdev/genXdev)
