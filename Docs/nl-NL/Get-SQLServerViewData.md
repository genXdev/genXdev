# Get-SQLServerViewData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Haalt gegevens op uit een SQL-databaseweergave met optionele recordbeperking.

## Description

Voert een query uit op een SQL-databaseweergave met behulp van een verbindingsreeks of een databasebestandspad. De functie ondersteunt het beperken van het aantal geretourneerde records en biedt uitgebreide uitvoer voor het volgen van de queryuitvoering.

## Syntax

```powershell
Get-SQLServerViewData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerViewData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerViewData -ViewName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | De verbindingsreeks naar de SQL Server-database. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | De naam van de SQL Server-database. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | De naam van de SQL Server-instantie. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 2 | — | De naam van de view die moet worden opgevraagd. |
| `-Count` | Int32 | — | — | 3 | `100` | Aantal records om terug te geven. -1 voor alle records. |

## Examples

### Get-SQLServerViewData -DatabaseFilePath "C:\MyDb.sqlite" `     -ViewName "CustomerView" `     -Count 50

```powershell
Get-SQLServerViewData -DatabaseFilePath "C:\MyDb.sqlite" `
    -ViewName "CustomerView" `
    -Count 50
```

### Get-SQLServerViewData "C:\MyDb.sqlite" "CustomerView"

```powershell
Get-SQLServerViewData "C:\MyDb.sqlite" "CustomerView"
```

## Related Links

- [Get-SQLServerViewData on GitHub](https://github.com/genXdev/genXdev)
