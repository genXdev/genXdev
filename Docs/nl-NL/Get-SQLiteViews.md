# Get-SQLiteViews

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Haalt een lijst van views op uit een SQLite-database.

## Description

Haalt alle viewnamen op uit het opgegeven SQLite-databasebestand of de verbindingsreeks.
Retourneert een array met viewnamen die kunnen worden gebruikt voor verdere databasebewerkingen.
De functie ondersteunt twee parametersets voor flexibiliteit: het verstrekken van een
verbindingsreeks of een direct pad naar het databasebestand.

## Syntax

```powershell
Get-SQLiteViews -ConnectionString <String> [<CommonParameters>]

Get-SQLiteViews -DatabaseFilePath <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | De verbindingsreeks naar de SQLite-database. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Het pad naar het SQLite-databasebestand. *(Parameter set: )* |

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
