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
| `-ConnectionString` | String | ✅ | — | 0 | — | La cadena de conexión a la base de datos SQLite. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | La ruta al archivo de base de datos SQLite. *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | El nombre de la tabla para consultar datos. |
| `-Count` | Int32 | — | — | 2 | `100` | El número máximo de registros a devolver. -1 para todos. |

## Related Links

- [Get-SQLiteTableData on GitHub](https://github.com/genXdev/genXdev)
