# Get-SQLServerTables

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLServerTables -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTables -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | A string de conexão para o banco de dados SQL Server. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | O nome do banco de dados SQL Server. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | O nome da instância do SQL Server. *(Parameter set: )* |

## Related Links

- [Get-SQLServerTables on GitHub](https://github.com/genXdev/genXdev)
