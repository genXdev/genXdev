# Get-SQLServerViews

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Récupère une liste de vues à partir d'une base de données SQL Server.

## Description

Récupère tous les noms de vues de la base de données SQL Server spécifiée. Renvoie un tableau de noms de vues pouvant être utilisés pour d'autres opérations sur la base de données. La fonction prend en charge deux ensembles de paramètres pour plus de flexibilité : fournir une chaîne de connexion ou un nom de base de données avec un serveur.

## Syntax

```powershell
Get-SQLServerViews -ConnectionString <String> [<CommonParameters>]

Get-SQLServerViews -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | La chaîne de connexion à la base de données SQL Server. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | Le nom de la base de données SQL Server. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | Le nom de l'instance SQL Server. *(Parameter set: )* |

## Examples

### Get-SQLServerViews -DatabaseName "MyDatabase" -Server "localhost"

```powershell
Get-SQLServerViews -DatabaseName "MyDatabase" -Server "localhost"
```

### Get-SQLServerViews -ConnectionString "Server=localhost;Database=MyDatabase;Integrated Security=true;"

```powershell
Get-SQLServerViews -ConnectionString "Server=localhost;Database=MyDatabase;Integrated Security=true;"
```

## Related Links

- [Get-SQLServerViews on GitHub](https://github.com/genXdev/genXdev)
