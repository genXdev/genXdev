# Get-SQLiteSchema

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Извлекает полную информацию о схеме из базы данных SQLite.

## Description

Эта функция запрашивает таблицу sqlite_master для получения полного определения схемы базы данных SQLite, включая таблицы, представления, индексы и триггеры. Она принимает либо строку подключения, либо прямой путь к файлу базы данных.

## Syntax

```powershell
Get-SQLiteSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLiteSchema -DatabaseFilePath <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Строка подключения к базе данных SQLite. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Путь к файлу базы данных SQLite. *(Parameter set: )* |

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
