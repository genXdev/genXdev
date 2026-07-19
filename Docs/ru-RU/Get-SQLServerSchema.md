# Get-SQLServerSchema

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Извлекает полную информацию о схеме из базы данных SQL Server.

## Description

Эта функция запрашивает системные таблицы SQL Server и информационную схему для получения полного определения схемы базы данных SQL Server, включая таблицы, представления, индексы, хранимые процедуры и другие объекты базы данных. Она принимает либо строку подключения, либо имя базы данных с параметрами сервера.

## Syntax

```powershell
Get-SQLServerSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLServerSchema -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Строка подключения к базе данных SQL Server. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | Имя базы данных SQL Server. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | Имя экземпляра SQL Server. *(Parameter set: )* |

## Examples

### Get-SQLServerSchema -DatabaseName "inventory" -Server "localhost"

```powershell
Get-SQLServerSchema -DatabaseName "inventory" -Server "localhost"
```

### Get-SQLServerSchema -ConnectionString "Server=localhost;Database=inventory;Integrated Security=true;"

```powershell
Get-SQLServerSchema -ConnectionString "Server=localhost;Database=inventory;Integrated Security=true;"
```

## Related Links

- [Get-SQLServerSchema on GitHub](https://github.com/genXdev/genXdev)
