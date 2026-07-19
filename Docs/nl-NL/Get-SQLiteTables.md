# Get-SQLiteTables

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Haalt een lijst met tabelnamen op uit een SQLite-database.

## Description

Queries de sqlite_master systeemtabell om alle door gebruikers gedefinieerde tabelnamen op te halen uit een SQLite-database. Ondersteunt verbinding via een directe verbindingsreeks of een databasebestandspad. Retourneert de tabelnamen als een verzameling strings.

## Syntax

```powershell
Get-SQLiteTables -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTables -DatabaseFilePath <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | De verbindingsreeks naar de SQLite-database. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Het pad naar het SQLite-databasebestand. *(Parameter set: )* |

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
