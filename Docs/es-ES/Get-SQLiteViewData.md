# Get-SQLiteViewData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Recupera datos de una vista de base de datos SQLite con limitación opcional de registros.

## Description

Consulta una vista de base de datos SQLite usando una cadena de conexión o la ruta del archivo de base de datos. La función permite limitar el número de registros devueltos y proporciona salida detallada para el seguimiento de la ejecución de la consulta.

## Syntax

```powershell
Get-SQLiteViewData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteViewData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteViewData -ViewName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | La cadena de conexión a la base de datos SQLite. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | La ruta al archivo de base de datos SQLite. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 1 | — | El nombre de la vista a consultar. |
| `-Count` | Int32 | — | — | 2 | `100` | Número de registros a devolver. -1 para todos los registros. |

## Examples

### Get-SQLiteViewData -DatabaseFilePath "C:\MyDb.sqlite" `     -ViewName "CustomerView" `     -Count 50

```powershell
Get-SQLiteViewData -DatabaseFilePath "C:\MyDb.sqlite" `
    -ViewName "CustomerView" `
    -Count 50
```

### Get-SQLiteViewData "C:\MyDb.sqlite" "CustomerView"

```powershell
Get-SQLiteViewData "C:\MyDb.sqlite" "CustomerView"
```

## Related Links

- [Get-SQLiteViewData on GitHub](https://github.com/genXdev/genXdev)
