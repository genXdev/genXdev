# Get-SQLServerViews

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Haalt een lijst met weergaven op uit een SQL Server-database.

## Description

Haalt alle weergavenamen op uit de opgegeven SQL Server-database. Retourneert een matrix van weergavenamen die kunnen worden gebruikt voor verdere databasebewerkingen. De functie ondersteunt twee parametersets voor flexibiliteit: het verstrekken van een verbindingsreeks of een databasenaam met server.

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
