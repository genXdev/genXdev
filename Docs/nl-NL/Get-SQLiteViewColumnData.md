# Get-SQLiteViewColumnData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Haalt kolomgegevens op uit een SQLite-weergave met optionele recordbeperking.

## Description

Voert een SELECT-query uit tegen een gespecificeerde SQLite-view om gegevens uit een enkele kolom op te halen. Ondersteunt verbinding via een verbindingsreeks of databasebestandspad. Staat toe het aantal teruggegeven records te beperken of alle records op te halen.

## Syntax

```powershell
Get-SQLiteViewColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteViewColumnData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteViewColumnData -ViewName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | De verbindingsreeks naar de SQLite-database. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Het pad naar het SQLite-databasebestand. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 1 | — | De naam van de weergave. |
| `-ColumnName` | String | ✅ | — | 2 | — | De naam van de kolom. |
| `-Count` | Int32 | — | — | 3 | `100` | Het aantal records om terug te geven. Standaard is 100. -1 voor alle. |

## Examples

### Get-SQLiteViewColumnData -DatabaseFilePath "C:\MyDB.sqlite" `     -ViewName "CustomersView" `     -ColumnName "Email" `     -Count 50

```powershell
Get-SQLiteViewColumnData -DatabaseFilePath "C:\MyDB.sqlite" `
    -ViewName "CustomersView" `
    -ColumnName "Email" `
    -Count 50
```

### Get-SQLiteViewColumnData "C:\MyDB.sqlite" "CustomersView" "Email"

```powershell
Get-SQLiteViewColumnData "C:\MyDB.sqlite" "CustomersView" "Email"
```

## Related Links

- [Get-SQLiteViewColumnData on GitHub](https://github.com/genXdev/genXdev)
