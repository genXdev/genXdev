# Get-SQLServerTables

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Retrieves a list of table names from a SQL Server database.

## Description

Queries the SQL Server system tables to retrieve all user-defined table names
from a SQL Server database. Supports connecting via either a direct connection
string or a database name with server parameters. Returns the table names as a
collection of strings.

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

## Examples

### Get-SQLServerTables -DatabaseName "Inventory" -Server "localhost" Returns all table names from the specified database

```powershell
Get-SQLServerTables -DatabaseName "Inventory" -Server "localhost"
Returns all table names from the specified database
```

### Get-SQLServerTables -ConnectionString "Server=localhost;Database=Users;Integrated Security=true;" Returns all table names using a custom connection string ##############################################################################

```powershell
Get-SQLServerTables -ConnectionString "Server=localhost;Database=Users;Integrated Security=true;"
Returns all table names using a custom connection string
##############################################################################
```

## Related Links

- [Get-SQLServerTables on GitHub](https://github.com/genXdev/genXdev)
