# Get-SQLiteTableData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Recupera datos de una tabla de base de datos SQLite con limitación opcional de registros.

## Description

Esta función consulta datos de una tabla de base de datos SQLite utilizando ya sea una cadena de conexión o una ruta de archivo de base de datos. Proporciona flexibilidad para conectarse a la base de datos y controlar la cantidad de datos recuperados a través del parámetro Count.

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

## Examples

### Get-SQLiteTableData -DatabaseFilePath "C:\data\users.db" -TableName "Employees" -Count 50

```powershell
Get-SQLiteTableData -DatabaseFilePath "C:\data\users.db" -TableName "Employees" -Count 50
```

### Get-SQLiteTableData "C:\data\users.db" "Employees"

```powershell
Get-SQLiteTableData "C:\data\users.db" "Employees"
```

## Related Links

- [Get-SQLiteTableData on GitHub](https://github.com/genXdev/genXdev)
