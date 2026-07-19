# Get-SQLServerTableColumnData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Recupera datos de una columna específica en una tabla de base de datos SQL.

## Description

Esta función proporciona una forma conveniente de extraer datos de una sola columna en una tabla de base de datos SQL. Admite dos métodos de conexión: ruta directa al archivo de la base de datos o cadena de conexión. La función incluye opciones para limitar el número de registros devueltos y utiliza la construcción adecuada de consultas SQL para un rendimiento óptimo.

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

## Examples

### Get-SQLServerTableColumnData -DatabaseFilePath "C:\MyDb.sqlite" `     -TableName "Employees" `     -ColumnName "Email" `     -Count 10

```powershell
Get-SQLServerTableColumnData -DatabaseFilePath "C:\MyDb.sqlite" `
    -TableName "Employees" `
    -ColumnName "Email" `
    -Count 10
```

### Get-SQLServerTableColumnData "C:\MyDb.sqlite" "Employees" "Email"

```powershell
Get-SQLServerTableColumnData "C:\MyDb.sqlite" "Employees" "Email"
```

## Related Links

- [Get-SQLServerTableColumnData on GitHub](https://github.com/genXdev/genXdev)
