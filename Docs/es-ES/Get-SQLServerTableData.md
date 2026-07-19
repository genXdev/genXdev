# Get-SQLServerTableData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Recupera datos de una tabla de base de datos SQL con limitación opcional de registros.

## Description

Esta función consulta datos de una tabla de base de datos SQL utilizando una cadena de conexión o una ruta de archivo de base de datos. Proporciona flexibilidad para conectarse a la base de datos y controlar la cantidad de datos recuperados a través del parámetro Count.

## Syntax

```powershell
Get-SQLServerTableData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTableData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerTableData -TableName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | La cadena de conexión a la base de datos de SQL Server. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | El nombre de la base de datos de SQL Server. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | El nombre de la instancia de SQL Server. *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | El nombre de la tabla para consultar datos. |
| `-Count` | Int32 | — | — | 3 | `100` | El número máximo de registros a devolver. -1 para todos. |

## Examples

### Get-SQLServerTableData -DatabaseFilePath "C:\data\users.db" -TableName "Employees" -Count 50

```powershell
Get-SQLServerTableData -DatabaseFilePath "C:\data\users.db" -TableName "Employees" -Count 50
```

### Get-SQLServerTableData "C:\data\users.db" "Employees"

```powershell
Get-SQLServerTableData "C:\data\users.db" "Employees"
```

## Related Links

- [Get-SQLServerTableData on GitHub](https://github.com/genXdev/genXdev)
