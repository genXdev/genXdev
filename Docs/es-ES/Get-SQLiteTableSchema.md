# Get-SQLiteTableSchema

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Recupera la información del esquema de una tabla SQLite especificada.

## Description

Esta función consulta la base de datos SQLite para obtener información detallada del esquema de una tabla especificada. Utiliza el comando PRAGMA table_info de SQLite para devolver definiciones de columnas que incluyen nombres, tipos, estado de nulabilidad y valores predeterminados.

## Syntax

```powershell
Get-SQLiteTableSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTableSchema -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTableSchema -TableName <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | The connection string to the SQLite database *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Ruta al archivo de base de datos SQLite *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | El nombre de la tabla |

## Examples

### Get-SQLiteTableSchema -DatabaseFilePath "C:\Databases\mydb.sqlite" `     -TableName "Users"

```powershell
Get-SQLiteTableSchema -DatabaseFilePath "C:\Databases\mydb.sqlite" `
    -TableName "Users"
```

### Get-SQLiteTableSchema -ConnectionString "Data Source=C:\Databases\mydb.sqlite" `     -TableName "Products"

```powershell
Get-SQLiteTableSchema -ConnectionString "Data Source=C:\Databases\mydb.sqlite" `
    -TableName "Products"
```

## Related Links

- [Get-SQLiteTableSchema on GitHub](https://github.com/genXdev/genXdev)
