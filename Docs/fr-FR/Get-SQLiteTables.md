# Get-SQLiteTables

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Récupère une liste de noms de tables à partir d'une base de données SQLite.

## Description

Interroge la table système sqlite_master pour récupérer tous les noms de tables définies par l'utilisateur dans une base de données SQLite. Prend en charge la connexion via une chaîne de connexion directe ou un chemin de fichier de base de données. Retourne les noms de tables sous forme de collection de chaînes de caractères.

## Syntax

```powershell
Get-SQLiteTables -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTables -DatabaseFilePath <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | La chaîne de connexion à la base de données SQLite. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Le chemin vers le fichier de base de données SQLite. *(Parameter set: )* |

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
