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
| `-ConnectionString` | String | ✅ | — | 0 | — | A string de conexão para o banco de dados SQLite *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | O caminho para o arquivo de banco de dados SQLite *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | O nome da tabela a ser consultada |
| `-ColumnName` | String | ✅ | — | 2 | — | O nome da coluna a ser recuperada |
| `-Count` | Int32 | — | — | 3 | `100` | Número de registros a retornar. Padrão 100. Use -1 para todos |

## Related Links

- [Get-SQLiteTableColumnData on GitHub](https://github.com/genXdev/genXdev)
