# Get-SQLiteTableSchema

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLiteTableSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTableSchema -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTableSchema -TableName <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | La chaîne de connexion à la base de données SQLite *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Le chemin vers le fichier de base de données SQLite *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | Le nom de la table |

## Related Links

- [Get-SQLiteTableSchema on GitHub](https://github.com/genXdev/genXdev)
