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
| `-ConnectionString` | String | ✅ | — | 0 | — | La cadena de conexión a la base de datos SQL Server *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | El nombre de la base de datos de SQL Server *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | El nombre de la instancia de SQL Server *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | El nombre de la tabla para consultar |
| `-ColumnName` | String | ✅ | — | 3 | — | El nombre de la columna a recuperar |
| `-Count` | Int32 | — | — | 4 | `100` | Número de registros a devolver. Por defecto 100. Use -1 para todos |

## Related Links

- [Get-SQLServerTableColumnData on GitHub](https://github.com/genXdev/genXdev)
