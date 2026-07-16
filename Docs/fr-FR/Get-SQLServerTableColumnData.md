# Get-SQLServerTableColumnData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-SQLServerTableColumnData on GitHub](https://github.com/genXdev/genXdev)
