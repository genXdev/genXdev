# Get-SQLiteTableColumnData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Recupera datos de una columna específica en una tabla de base de datos SQLite.

## Description

Esta función proporciona una forma conveniente de extraer datos de una sola columna en una tabla de base de datos SQLite. Admite dos métodos de conexión: ruta de archivo de base de datos directa o cadena de conexión. La función incluye opciones para limitar el número de registros devueltos y utiliza la construcción adecuada de consultas SQLite para un rendimiento óptimo.

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

## Examples

### Get-SQLiteTableColumnData -DatabaseFilePath "C:\MyDb.sqlite" `     -TableName "Employees" `     -ColumnName "Email" `     -Count 10

```powershell
Get-SQLiteTableColumnData -DatabaseFilePath "C:\MyDb.sqlite" `
    -TableName "Employees" `
    -ColumnName "Email" `
    -Count 10
```

### Get-SQLiteTableColumnData "C:\MyDb.sqlite" "Employees" "Email"

```powershell
Get-SQLiteTableColumnData "C:\MyDb.sqlite" "Employees" "Email"
```

## Related Links

- [Get-SQLiteTableColumnData on GitHub](https://github.com/genXdev/genXdev)
