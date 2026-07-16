# Get-SQLiteViewColumnData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLiteViewColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteViewColumnData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteViewColumnData -ViewName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | La chaîne de connexion à la base de données SQLite. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Le chemin vers le fichier de base de données SQLite. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 1 | — | Le nom de la vue. |
| `-ColumnName` | String | ✅ | — | 2 | — | Le nom de la colonne. |
| `-Count` | Int32 | — | — | 3 | `100` | Le nombre d'enregistrements à retourner. La valeur par défaut est 100. -1 pour tous. |

## Related Links

- [Get-SQLiteViewColumnData on GitHub](https://github.com/genXdev/genXdev)
