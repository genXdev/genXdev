# Get-SQLServerViewColumnData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Haalt kolomgegevens op uit een SQL-view met optionele recordbeperking.

## Description

Voert een SELECT-query uit tegen een opgegeven SQL-weergave om gegevens uit één kolom op te halen. Ondersteunt verbinding via een verbindingstekenreeks of een databasebestandspad. Hiermee kunt u het aantal geretourneerde records beperken of alle records ophalen.

## Syntax

```powershell
Get-SQLServerViewColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerViewColumnData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerViewColumnData -ViewName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | De verbindingsreeks naar de SQL Server-database. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | De naam van de SQL Server-database. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | De naam van de SQL Server-instantie. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 2 | — | De naam van de weergave. |
| `-ColumnName` | String | ✅ | — | 3 | — | De naam van de kolom. |
| `-Count` | Int32 | — | — | 4 | `100` | Het aantal records om terug te geven. Standaard is 100. -1 voor alle. |

## Examples

### Get-SQLServerViewColumnData -DatabaseFilePath "C:\MyDB.sqlite" `     -ViewName "CustomersView" `     -ColumnName "Email" `     -Count 50

```powershell
Get-SQLServerViewColumnData -DatabaseFilePath "C:\MyDB.sqlite" `
    -ViewName "CustomersView" `
    -ColumnName "Email" `
    -Count 50
```

### Get-SQLServerViewColumnData "C:\MyDB.sqlite" "CustomersView" "Email"

```powershell
Get-SQLServerViewColumnData "C:\MyDB.sqlite" "CustomersView" "Email"
```

## Related Links

- [Get-SQLServerViewColumnData on GitHub](https://github.com/genXdev/genXdev)
