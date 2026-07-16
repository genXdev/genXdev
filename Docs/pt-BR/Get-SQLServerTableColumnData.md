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
| `-ConnectionString` | String | ✅ | — | 0 | — | A string de conexão para o banco de dados SQL Server *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | O nome do banco de dados SQL Server *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | O nome da instância do SQL Server *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | O nome da tabela a ser consultada |
| `-ColumnName` | String | ✅ | — | 3 | — | O nome da coluna a ser recuperada |
| `-Count` | Int32 | — | — | 4 | `100` | Número de registros a retornar. Padrão 100. Use -1 para todos |

## Related Links

- [Get-SQLServerTableColumnData on GitHub](https://github.com/genXdev/genXdev)
