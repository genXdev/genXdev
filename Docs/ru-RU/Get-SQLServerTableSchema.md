# Get-SQLServerTableSchema

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Извлекает информацию о схеме для указанной таблицы SQL Server.

## Description

Эта функция запрашивает базу данных SQL Server для получения подробной информации о схеме указанной таблицы. Она использует представление INFORMATION_SCHEMA.COLUMNS для получения определений столбцов, включая имена, типы, возможность null и значения по умолчанию.

## Syntax

```powershell
Get-SQLServerTableSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTableSchema -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerTableSchema -TableName <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Строка подключения к базе данных SQL Server *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | Название базы данных SQL Server *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | Имя экземпляра SQL Server *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | Название таблицы |

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
