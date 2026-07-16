# Get-SQLiteViewSchema

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLiteViewSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLiteViewSchema -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteViewSchema -ViewName <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | A string de conexão para o banco de dados SQLite. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | O caminho para o arquivo do banco de dados SQLite. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 1 | — | O nome da view. |

## Related Links

- [Get-SQLiteViewSchema on GitHub](https://github.com/genXdev/genXdev)
