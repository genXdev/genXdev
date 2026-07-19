# Get-SQLServerTables

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Извлекает список имен таблиц из базы данных SQL Server.

## Description

Выполняет запрос к системным таблицам SQL Server для получения всех имен пользовательских таблиц из базы данных SQL Server. Поддерживает подключение через строку прямого подключения или имя базы данных с параметрами сервера. Возвращает имена таблиц в виде коллекции строк.

## Syntax

```powershell
Get-SQLServerTables -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTables -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Строка подключения к базе данных SQL Server. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | Имя базы данных SQL Server. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | Имя экземпляра SQL Server. *(Parameter set: )* |

## Examples

### Get-SQLServerTables -DatabaseName "Inventory" -Server "localhost" Returns all table names from the specified database

```powershell
Get-SQLServerTables -DatabaseName "Inventory" -Server "localhost"
Returns all table names from the specified database
```

### Get-SQLServerTables -ConnectionString "Server=localhost;Database=Users;Integrated Security=true;" Returns all table names using a custom connection string ##############################################################################

```powershell
Get-SQLServerTables -ConnectionString "Server=localhost;Database=Users;Integrated Security=true;"
Returns all table names using a custom connection string
##############################################################################
```

## Related Links

- [Get-SQLServerTables on GitHub](https://github.com/genXdev/genXdev)
