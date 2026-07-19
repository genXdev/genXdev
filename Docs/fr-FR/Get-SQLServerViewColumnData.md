# Get-SQLServerViewColumnData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Récupère les données de colonnes d'une vue SQL avec limitation optionnelle des enregistrements.

## Description

Exécute une requête SELECT sur une vue SQL spécifiée pour récupérer les données d'une seule colonne. Prend en charge la connexion via une chaîne de connexion ou un chemin de fichier de base de données. Permet de limiter le nombre d'enregistrements retournés ou de récupérer tous les enregistrements.

## Syntax

```powershell
Get-SQLServerViewColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerViewColumnData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerViewColumnData -ViewName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | La chaîne de connexion à la base de données SQL Server. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | Le nom de la base de données SQL Server. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | Le nom de l'instance SQL Server. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 2 | — | Le nom de la vue. |
| `-ColumnName` | String | ✅ | — | 3 | — | Le nom de la colonne. |
| `-Count` | Int32 | — | — | 4 | `100` | Le nombre d'enregistrements à retourner. La valeur par défaut est 100. -1 pour tous. |

## Examples

### Get-SQLServerViewColumnData -DatabaseFilePath "C:\MyDB.sqlite" `     -ViewName "CustomersView" `     -ColumnName "Email" `     -Count 50

```powershell
Get-SQLServerViewColumnData -DatabaseFilePath "C:\MyDB.sqlite" `
    -ViewName "CustomersView" `
    -ColumnName "Email" `
    -Count 50
```

### Get-SQLServerViewColumnData "C:\MyDB.sqlite" "CustomersView" "Email"

```powershell
Get-SQLServerViewColumnData "C:\MyDB.sqlite" "CustomersView" "Email"
```

## Related Links

- [Get-SQLServerViewColumnData on GitHub](https://github.com/genXdev/genXdev)
