# Get-SQLServerViewSchema

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Haalt de SQL-schemadefinitie op voor een SQL Server-weergave.

## Description

Deze functie raadpleegt de systeemtabellen van de SQL Server-database om de SQL-definitie van een opgegeven weergave te extraheren. Het ondersteunt verbinding via een verbindingsreeks of databasenaam met serverparameters en retourneert het volledige SQL-schema dat de gevraagde weergave definieert.

## Syntax

```powershell
Get-SQLServerViewSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLServerViewSchema -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerViewSchema -ViewName <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | De verbindingsreeks naar de SQL Server-database. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | De naam van de SQL Server-database. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | De naam van de SQL Server-instantie. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 2 | — | De naam van de weergave. |

## Examples

### Get-SQLServerViewSchema -DatabaseFilePath "C:\Databases\MyApp.sqlite" `                     -ViewName "CustomerOrders"

```powershell
Get-SQLServerViewSchema -DatabaseFilePath "C:\Databases\MyApp.sqlite" `
                    -ViewName "CustomerOrders"
```

## Related Links

- [Get-SQLServerViewSchema on GitHub](https://github.com/genXdev/genXdev)
