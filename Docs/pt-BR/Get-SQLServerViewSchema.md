# Get-SQLServerViewSchema

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLServerViewSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLServerViewSchema -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerViewSchema -ViewName <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | A string de conexão para o banco de dados SQL Server. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | O nome do banco de dados SQL Server. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | O nome da instância do SQL Server. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 2 | — | O nome da view. |

## Related Links

- [Get-SQLServerViewSchema on GitHub](https://github.com/genXdev/genXdev)
