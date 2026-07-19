# Get-SQLiteTables

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Retrieves a list of table names from a SQLite database.

## Description

Fragt die Systemtabelle sqlite_master ab, um alle benutzerdefinierten Tabellennamen aus einer SQLite-Datenbank abzurufen. Unterstützt die Verbindung entweder über eine direkte Verbindungszeichenfolge oder einen Datenbankdateipfad. Gibt die Tabellennamen als Sammlung von Zeichenfolgen zurück.

## Syntax

```powershell
Get-SQLiteTables -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTables -DatabaseFilePath <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Die Verbindungszeichenfolge zur SQLite-Datenbank. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Der Pfad zur SQLite-Datenbankdatei. *(Parameter set: )* |

## Examples

### Get-SQLiteTables -DatabaseFilePath "C:\Databases\Inventory.sqlite" Returns all table names from the specified database file

```powershell
Get-SQLiteTables -DatabaseFilePath "C:\Databases\Inventory.sqlite"
Returns all table names from the specified database file
```

### Get-SQLiteTables -ConnectionString "Data Source=C:\DB\Users.sqlite;Version=3;" Returns all table names using a custom connection string ##############################################################################

```powershell
Get-SQLiteTables -ConnectionString "Data Source=C:\DB\Users.sqlite;Version=3;"
Returns all table names using a custom connection string
##############################################################################
```

## Related Links

- [Get-SQLiteTables on GitHub](https://github.com/genXdev/genXdev)
