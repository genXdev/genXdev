# Get-SQLiteTableData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Récupère des données d'une table de base de données SQLite avec une limitation optionnelle des enregistrements.

## Description

Cette fonction interroge les données d'une table de base de données SQLite en utilisant soit une chaîne de connexion, soit un chemin de fichier de base de données. Elle offre une flexibilité dans la connexion à la base de données et le contrôle de la quantité de données récupérées via le paramètre Count.

## Syntax

```powershell
Get-SQLiteTableData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTableData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTableData -TableName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | La chaîne de connexion à la base de données SQLite. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Le chemin vers le fichier de base de données SQLite. *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | Le nom de la table à partir de laquelle interroger les données. |
| `-Count` | Int32 | — | — | 2 | `100` | Le nombre maximum d'enregistrements à retourner. -1 pour tous. |

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
