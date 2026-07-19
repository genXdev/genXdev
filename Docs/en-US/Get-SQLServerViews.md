# Get-SQLServerViews

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Retrieves a list of views from a SQL Server database.

## Description

Gets all view names from the specified SQL Server database. Returns an array
of view names that can be used for further database operations. The function
supports two parameter sets for flexibility: providing either a connection string
or a database name with server.

## Syntax

```powershell
Get-SQLServerViews -ConnectionString <String> [<CommonParameters>]

Get-SQLServerViews -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | The connection string to the SQL Server database. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | The name of the SQL Server database. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | The SQL Server instance name. *(Parameter set: )* |

## Examples

### Get-SQLServerViews -DatabaseName "MyDatabase" -Server "localhost"

```powershell
Get-SQLServerViews -DatabaseName "MyDatabase" -Server "localhost"
```

### Get-SQLServerViews -ConnectionString "Server=localhost;Database=MyDatabase;Integrated Security=true;"

```powershell
Get-SQLServerViews -ConnectionString "Server=localhost;Database=MyDatabase;Integrated Security=true;"
```

## Related Links

- [Get-SQLServerViews on GitHub](https://github.com/genXdev/genXdev)
