# Get-SQLiteTableData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-SQLiteTableData on GitHub](https://github.com/genXdev/genXdev)
