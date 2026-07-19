# Get-SQLServerTableSchema

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Récupère les informations de schéma pour une table spécifiée dans SQL Server.

## Description

Cette fonction interroge la base de données SQL Server pour obtenir des informations détaillées sur le schéma d'une table spécifiée. Elle utilise la vue INFORMATION_SCHEMA.COLUMNS de SQL Server pour renvoyer les définitions des colonnes, y compris les noms, les types, le statut nullable et les valeurs par défaut.

## Syntax

```powershell
Get-SQLServerTableSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTableSchema -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerTableSchema -TableName <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | La chaîne de connexion à la base de données SQL Server *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | Le nom de la base de données SQL Server *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | Le nom de l'instance SQL Server *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | Le nom de la table |

## Examples

### Get-SQLServerTableSchema -DatabaseName "mydb" -Server "localhost" `     -TableName "Users"

```powershell
Get-SQLServerTableSchema -DatabaseName "mydb" -Server "localhost" `
    -TableName "Users"
```

### Get-SQLServerTableSchema -ConnectionString "Server=localhost;Database=mydb;Integrated Security=true" `     -TableName "Products"

```powershell
Get-SQLServerTableSchema -ConnectionString "Server=localhost;Database=mydb;Integrated Security=true" `
    -TableName "Products"
```

## Related Links

- [Get-SQLServerTableSchema on GitHub](https://github.com/genXdev/genXdev)
