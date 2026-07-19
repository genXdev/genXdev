# Get-SQLiteTableColumnData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Récupère les données d'une colonne spécifique dans une table de base de données SQLite.

## Description

Cette fonction offre un moyen pratique d'extraire des données d'une seule colonne dans une table de base de données SQLite. Elle prend en charge deux méthodes de connexion : le chemin direct du fichier de base de données ou la chaîne de connexion. La fonction inclut des options pour limiter le nombre d'enregistrements retournés et utilise une construction de requête SQLite appropriée pour des performances optimales.

## Syntax

```powershell
Get-SQLiteTableColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTableColumnData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTableColumnData -TableName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | La chaîne de connexion à la base de données SQLite *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Le chemin vers le fichier de base de données SQLite *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | Le nom de la table à interroger |
| `-ColumnName` | String | ✅ | — | 2 | — | Le nom de la colonne à récupérer |
| `-Count` | Int32 | — | — | 3 | `100` | Nombre d'enregistrements à retourner. Par défaut 100. Utilisez -1 pour tous |

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
