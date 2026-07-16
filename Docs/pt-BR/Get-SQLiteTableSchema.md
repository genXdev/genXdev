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
| `-ConnectionString` | String | ✅ | — | 0 | — | A string de conexão para o banco de dados SQLite *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | O caminho para o arquivo de banco de dados SQLite *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | O nome da tabela |

## Related Links

- [Get-SQLiteTableSchema on GitHub](https://github.com/genXdev/genXdev)
