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
| `-ConnectionString` | String | ✅ | — | 0 | — | The connection string to the SQLite database *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Ruta al archivo de base de datos SQLite *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | El nombre de la tabla para consultar |
| `-ColumnName` | String | ✅ | — | 2 | — | El nombre de la columna a recuperar |
| `-Count` | Int32 | — | — | 3 | `100` | Número de registros a devolver. Por defecto 100. Use -1 para todos |

## Related Links

- [Get-SQLiteTableColumnData on GitHub](https://github.com/genXdev/genXdev)
