# Get-SQLiteViewSchema

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Извлекает определение SQL-схемы представления SQLite.

## Description

Эта функция запрашивает системные таблицы базы данных SQLite, чтобы извлечь SQL-определение указанного представления. Она поддерживает подключение через строку подключения или прямой путь к файлу базы данных и возвращает полную схему SQL, которая определяет запрашиваемое представление.

## Syntax

```powershell
Get-SQLiteViewSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLiteViewSchema -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteViewSchema -ViewName <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Строка подключения к базе данных SQLite. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Путь к файлу базы данных SQLite. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 1 | — | Имя представления. |

## Examples

### Get-SQLiteViewSchema -DatabaseFilePath "C:\Databases\MyApp.sqlite" `                     -ViewName "CustomerOrders"

```powershell
Get-SQLiteViewSchema -DatabaseFilePath "C:\Databases\MyApp.sqlite" `
                    -ViewName "CustomerOrders"
```

## Related Links

- [Get-SQLiteViewSchema on GitHub](https://github.com/genXdev/genXdev)
