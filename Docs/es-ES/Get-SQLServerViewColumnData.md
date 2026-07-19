# Get-SQLServerViewColumnData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Recupera datos de columna de una vista SQL con limitación opcional de registros.

## Description

Ejecuta una consulta SELECT contra una vista SQL especificada para recuperar datos de una sola columna. Admite la conexión a través de una cadena de conexión o la ruta del archivo de base de datos. Permite limitar el número de registros devueltos o recuperar todos los registros.

## Syntax

```powershell
Get-SQLServerViewColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerViewColumnData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerViewColumnData -ViewName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | La cadena de conexión a la base de datos de SQL Server. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | El nombre de la base de datos de SQL Server. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | El nombre de la instancia de SQL Server. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 2 | — | El nombre de la vista. |
| `-ColumnName` | String | ✅ | — | 3 | — | El nombre de la columna. |
| `-Count` | Int32 | — | — | 4 | `100` | El número de registros a devolver. El valor predeterminado es 100. -1 para todos. |

## Examples

### Get-SQLServerViewColumnData -DatabaseFilePath "C:\MyDB.sqlite" `     -ViewName "CustomersView" `     -ColumnName "Email" `     -Count 50

```powershell
Get-SQLServerViewColumnData -DatabaseFilePath "C:\MyDB.sqlite" `
    -ViewName "CustomersView" `
    -ColumnName "Email" `
    -Count 50
```

### Get-SQLServerViewColumnData "C:\MyDB.sqlite" "CustomersView" "Email"

```powershell
Get-SQLServerViewColumnData "C:\MyDB.sqlite" "CustomersView" "Email"
```

## Related Links

- [Get-SQLServerViewColumnData on GitHub](https://github.com/genXdev/genXdev)
