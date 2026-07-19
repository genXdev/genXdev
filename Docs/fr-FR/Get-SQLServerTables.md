# Get-SQLServerTables

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Récupère une liste de noms de tables à partir d'une base de données SQL Server.

## Description

Interroge les tables système de SQL Server pour récupérer tous les noms de tables définies par l'utilisateur à partir d'une base de données SQL Server. Prend en charge la connexion via une chaîne de connexion directe ou un nom de base de données avec des paramètres de serveur. Retourne les noms de tables sous forme de collection de chaînes.

## Syntax

```powershell
Get-SQLServerTables -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTables -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | La chaîne de connexion à la base de données SQL Server. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | Le nom de la base de données SQL Server. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | Le nom de l'instance SQL Server. *(Parameter set: )* |

## Examples

### Get-SQLServerTables -DatabaseName "Inventory" -Server "localhost" Returns all table names from the specified database

```powershell
Get-SQLServerTables -DatabaseName "Inventory" -Server "localhost"
Returns all table names from the specified database
```

### Get-SQLServerTables -ConnectionString "Server=localhost;Database=Users;Integrated Security=true;" Returns all table names using a custom connection string ##############################################################################

```powershell
Get-SQLServerTables -ConnectionString "Server=localhost;Database=Users;Integrated Security=true;"
Returns all table names using a custom connection string
##############################################################################
```

## Related Links

- [Get-SQLServerTables on GitHub](https://github.com/genXdev/genXdev)
