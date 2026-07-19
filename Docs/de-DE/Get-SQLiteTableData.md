# Get-SQLiteTableData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Ruft Daten aus einer SQLite-Datenbanktabelle mit optionaler Ergebnisbegrenzung ab.

## Description

Diese Funktion ruft Daten aus einer SQLite-Datenbanktabelle ab, entweder über eine Verbindungszeichenfolge oder einen Datenbankdateipfad. Sie bietet Flexibilität bei der Verbindung zur Datenbank und steuert die abgerufene Datenmenge über den Parameter Count.

## Syntax

```powershell
Get-SQLiteTableData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTableData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTableData -TableName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Die Verbindungszeichenfolge zur SQLite-Datenbank. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Der Pfad zur SQLite-Datenbankdatei. *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | Der Name der Tabelle, aus der Daten abgefragt werden. |
| `-Count` | Int32 | — | — | 2 | `100` | Die maximale Anzahl der zurückzugebenden Datensätze. -1 für alle. |

## Examples

### Get-SQLiteTableData -DatabaseFilePath "C:\data\users.db" -TableName "Employees" -Count 50

```powershell
Get-SQLiteTableData -DatabaseFilePath "C:\data\users.db" -TableName "Employees" -Count 50
```

### Get-SQLiteTableData "C:\data\users.db" "Employees"

```powershell
Get-SQLiteTableData "C:\data\users.db" "Employees"
```

## Related Links

- [Get-SQLiteTableData on GitHub](https://github.com/genXdev/genXdev)
