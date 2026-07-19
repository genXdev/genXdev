# Get-SQLServerTableSchema

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Recupera la información de esquema de una tabla especificada de SQL Server.

## Description

Esta función consulta la base de datos SQL Server para obtener información detallada del esquema de una tabla especificada. Utiliza la vista INFORMATION_SCHEMA.COLUMNS de SQL Server para devolver definiciones de columnas, incluidos nombres, tipos, estado de nulabilidad y valores predeterminados.

## Syntax

```powershell
Get-SQLServerTableSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTableSchema -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerTableSchema -TableName <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | La cadena de conexión a la base de datos SQL Server *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | El nombre de la base de datos de SQL Server *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | El nombre de la instancia de SQL Server *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | El nombre de la tabla |

## Examples

### Get-SQLServerTableSchema -DatabaseName "mydb" -Server "localhost" `     -TableName "Users"

```powershell
Get-SQLServerTableSchema -DatabaseName "mydb" -Server "localhost" `
    -TableName "Users"
```

### Get-SQLServerTableSchema -ConnectionString "Server=localhost;Database=mydb;Integrated Security=true" `     -TableName "Products"

```powershell
Get-SQLServerTableSchema -ConnectionString "Server=localhost;Database=mydb;Integrated Security=true" `
    -TableName "Products"
```

## Related Links

- [Get-SQLServerTableSchema on GitHub](https://github.com/genXdev/genXdev)
