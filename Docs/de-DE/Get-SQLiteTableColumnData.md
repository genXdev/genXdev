# Get-SQLiteTableColumnData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Ruft Daten aus einer bestimmten Spalte in einer SQLite-Datenbanktabelle ab.

## Description

Diese Funktion bietet eine bequeme Möglichkeit, Daten aus einer einzelnen Spalte in einer SQLite-Datenbanktabelle zu extrahieren. Sie unterstützt zwei Verbindungsmethoden: den direkten Datenbankdateipfad oder die Verbindungszeichenfolge. Die Funktion enthält Optionen zur Begrenzung der Anzahl zurückgegebener Datensätze und verwendet eine ordnungsgemäße SQLite-Abfrageerstellung für optimale Leistung.

## Syntax

```powershell
Get-SQLiteTableColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTableColumnData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTableColumnData -TableName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Die Verbindungszeichenfolge zur SQLite-Datenbank *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Der Pfad zur SQLite-Datenbankdatei *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | Der Name der abzufragenden Tabelle |
| `-ColumnName` | String | ✅ | — | 2 | — | Der Name der abzurufenden Spalte |
| `-Count` | Int32 | — | — | 3 | `100` | Anzahl der zurückzugebenden Datensätze. Standardwert: 100. Verwenden Sie -1 für alle. |

## Examples

### Get-SQLiteTableColumnData -DatabaseFilePath "C:\MyDb.sqlite" `     -TableName "Employees" `     -ColumnName "Email" `     -Count 10

```powershell
Get-SQLiteTableColumnData -DatabaseFilePath "C:\MyDb.sqlite" `
    -TableName "Employees" `
    -ColumnName "Email" `
    -Count 10
```

### Get-SQLiteTableColumnData "C:\MyDb.sqlite" "Employees" "Email"

```powershell
Get-SQLiteTableColumnData "C:\MyDb.sqlite" "Employees" "Email"
```

## Related Links

- [Get-SQLiteTableColumnData on GitHub](https://github.com/genXdev/genXdev)
