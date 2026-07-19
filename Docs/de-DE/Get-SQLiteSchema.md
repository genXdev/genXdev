# Get-SQLiteSchema

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Retrieves the complete schema information from a SQLite database.

## Description

Diese Funktion fragt die Tabelle sqlite_master ab, um die vollständige Schemadefinition einer SQLite-Datenbank zu erhalten, einschließlich Tabellen, Views, Indizes und Trigger. Sie akzeptiert entweder eine Verbindungszeichenfolge oder einen direkten Pfad zur Datenbankdatei.

## Syntax

```powershell
Get-SQLiteSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLiteSchema -DatabaseFilePath <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Die Verbindungszeichenfolge zur SQLite-Datenbank. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Der Pfad zur SQLite-Datenbankdatei. *(Parameter set: )* |

## Examples

### Get-SQLiteSchema -DatabaseFilePath "C:\Databases\inventory.db"

```powershell
Get-SQLiteSchema -DatabaseFilePath "C:\Databases\inventory.db"
```

### Get-SQLiteSchema -ConnectionString "Data Source=C:\Databases\inventory.db;Version=3;"

```powershell
Get-SQLiteSchema -ConnectionString "Data Source=C:\Databases\inventory.db;Version=3;"
```

## Related Links

- [Get-SQLiteSchema on GitHub](https://github.com/genXdev/genXdev)
