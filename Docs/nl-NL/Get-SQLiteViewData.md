# Get-SQLiteViewData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Haalt gegevens op uit een SQLite-databaseweergave met optionele recordbeperking.

## Description

Queryert een SQLite-databaseweergave met behulp van een verbindingsreeks of het pad naar een databasebestand. De functie ondersteunt het beperken van het aantal geretourneerde records en biedt uitgebreide uitvoer voor het volgen van de query-uitvoering.

## Syntax

```powershell
Get-SQLiteViewData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteViewData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteViewData -ViewName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | De verbindingsreeks naar de SQLite-database. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Het pad naar het SQLite-databasebestand. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 1 | — | De naam van de view die moet worden opgevraagd. |
| `-Count` | Int32 | — | — | 2 | `100` | Aantal records om terug te geven. -1 voor alle records. |

## Examples

### Get-SQLiteViewData -DatabaseFilePath "C:\MyDb.sqlite" `     -ViewName "CustomerView" `     -Count 50

```powershell
Get-SQLiteViewData -DatabaseFilePath "C:\MyDb.sqlite" `
    -ViewName "CustomerView" `
    -Count 50
```

### Get-SQLiteViewData "C:\MyDb.sqlite" "CustomerView"

```powershell
Get-SQLiteViewData "C:\MyDb.sqlite" "CustomerView"
```

## Related Links

- [Get-SQLiteViewData on GitHub](https://github.com/genXdev/genXdev)
