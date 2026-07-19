# Get-SQLiteViewColumnData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Ruft Spaltendaten aus einer SQLite-Ansicht ab, mit optionaler Begrenzung der Datensätze.

## Description

Führt eine SELECT-Abfrage gegen eine bestimmte SQLite-Ansicht aus, um Daten aus einer einzelnen Spalte abzurufen. Unterstützt die Verbindung entweder über eine Verbindungszeichenfolge oder einen Datenbankdateipfad. Ermöglicht die Begrenzung der Anzahl zurückgegebener Datensätze oder das Abrufen aller Datensätze.

## Syntax

```powershell
Get-SQLiteViewColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteViewColumnData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteViewColumnData -ViewName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Die Verbindungszeichenfolge zur SQLite-Datenbank. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Der Pfad zur SQLite-Datenbankdatei. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 1 | — | Der Name der Ansicht. |
| `-ColumnName` | String | ✅ | — | 2 | — | Der Name der Spalte. |
| `-Count` | Int32 | — | — | 3 | `100` | Die Anzahl der zurückzugebenden Datensätze. Standard ist 100. -1 für alle. |

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
