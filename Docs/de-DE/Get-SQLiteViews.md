# Get-SQLiteViews

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Ruft eine Liste von Ansichten aus einer SQLite-Datenbank ab.

## Description

Ruft alle Ansichtsnamen aus der angegebenen SQLite-Datenbankdatei oder Verbindungszeichenfolge ab.
Gibt ein Array von Ansichtsnamen zurück, die für weitere Datenbankoperationen verwendet werden können.
Die Funktion unterstützt zwei Parametersätze für Flexibilität: Bereitstellung entweder einer
Verbindungszeichenfolge oder eines direkten Pfads zur Datenbankdatei.

## Syntax

```powershell
Get-SQLiteViews -ConnectionString <String> [<CommonParameters>]

Get-SQLiteViews -DatabaseFilePath <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Die Verbindungszeichenfolge zur SQLite-Datenbank. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Der Pfad zur SQLite-Datenbankdatei. *(Parameter set: )* |

## Examples

### Get-SQLiteViews -DatabaseFilePath "C:\Databases\MyDatabase.sqlite"

```powershell
Get-SQLiteViews -DatabaseFilePath "C:\Databases\MyDatabase.sqlite"
```

### s -ConnectionString "Data Source=C:\Databases\MyDatabase.sqlite;Version=3;"

```powershell
s -ConnectionString "Data Source=C:\Databases\MyDatabase.sqlite;Version=3;"
```

## Related Links

- [Get-SQLiteViews on GitHub](https://github.com/genXdev/genXdev)
