# Get-SQLiteSchema

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Recupera la información completa del esquema de una base de datos SQLite.

## Description

Esta función consulta la tabla sqlite_master para obtener la definición completa del esquema de una base de datos SQLite, incluyendo tablas, vistas, índices y disparadores. Acepta una cadena de conexión o una ruta directa al archivo de la base de datos.

## Syntax

```powershell
Get-SQLiteSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLiteSchema -DatabaseFilePath <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | La cadena de conexión a la base de datos SQLite. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | La ruta al archivo de base de datos SQLite. *(Parameter set: )* |

## Examples

### Get-SQLiteSchema -DatabaseFilePath "C:\Databases\inventory.db"

```powershell
Get-SQLiteSchema -DatabaseFilePath "C:\Databases\inventory.db"
```

### Get-SQLiteSchema -ConnectionString "Data Source=C:\Databases\inventory.db;Version=3;"

```powershell
Get-SQLiteSchema -ConnectionString "Data Source=C:\Databases\inventory.db;Version=3;"
```

## Related Links

- [Get-SQLiteSchema on GitHub](https://github.com/genXdev/genXdev)
