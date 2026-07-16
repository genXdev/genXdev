# Get-SQLiteTableColumnData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-SQLiteTableColumnData on GitHub](https://github.com/genXdev/genXdev)
