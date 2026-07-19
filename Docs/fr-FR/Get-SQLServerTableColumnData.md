# Get-SQLServerTableColumnData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Extrait les données d'une colonne spécifique dans une table de base de données SQL.

## Description

Cette fonction offre un moyen pratique d'extraire des données d'une seule colonne dans une table de base de données SQL. Elle prend en charge deux méthodes de connexion : le chemin direct du fichier de base de données ou la chaîne de connexion. La fonction inclut des options pour limiter le nombre d'enregistrements retournés et utilise une construction de requête SQL appropriée pour des performances optimales.

## Syntax

```powershell
Get-SQLServerTableColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTableColumnData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerTableColumnData -TableName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | La chaîne de connexion à la base de données SQL Server *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | Le nom de la base de données SQL Server *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | Le nom de l'instance SQL Server *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | Le nom de la table à interroger |
| `-ColumnName` | String | ✅ | — | 3 | — | Le nom de la colonne à récupérer |
| `-Count` | Int32 | — | — | 4 | `100` | Nombre d'enregistrements à retourner. Par défaut 100. Utilisez -1 pour tous |

## Examples

### Get-SQLServerTableColumnData -DatabaseFilePath "C:\MyDb.sqlite" `     -TableName "Employees" `     -ColumnName "Email" `     -Count 10

```powershell
Get-SQLServerTableColumnData -DatabaseFilePath "C:\MyDb.sqlite" `
    -TableName "Employees" `
    -ColumnName "Email" `
    -Count 10
```

### Get-SQLServerTableColumnData "C:\MyDb.sqlite" "Employees" "Email"

```powershell
Get-SQLServerTableColumnData "C:\MyDb.sqlite" "Employees" "Email"
```

## Related Links

- [Get-SQLServerTableColumnData on GitHub](https://github.com/genXdev/genXdev)
