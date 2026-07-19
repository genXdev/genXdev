# Get-SQLiteViews

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Recupera una lista de vistas de una base de datos SQLite.

## Description

Obtiene todos los nombres de vistas del archivo de base de datos SQLite especificado o cadena de conexión.
Devuelve un arreglo de nombres de vistas que se pueden usar para operaciones posteriores en la base de datos.
La función admite dos conjuntos de parámetros para mayor flexibilidad: proporcionando ya sea una
cadena de conexión o una ruta directa al archivo de base de datos.

## Syntax

```powershell
Get-SQLiteViews -ConnectionString <String> [<CommonParameters>]

Get-SQLiteViews -DatabaseFilePath <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | La cadena de conexión a la base de datos SQLite. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | La ruta al archivo de base de datos SQLite. *(Parameter set: )* |

## Examples

### Get-SQLiteViews -DatabaseFilePath "C:\Databases\MyDatabase.sqlite"

```powershell
Get-SQLiteViews -DatabaseFilePath "C:\Databases\MyDatabase.sqlite"
```

### s -ConnectionString "Data Source=C:\Databases\MyDatabase.sqlite;Version=3;"

```powershell
s -ConnectionString "Data Source=C:\Databases\MyDatabase.sqlite;Version=3;"
```

## Related Links

- [Get-SQLiteViews on GitHub](https://github.com/genXdev/genXdev)
