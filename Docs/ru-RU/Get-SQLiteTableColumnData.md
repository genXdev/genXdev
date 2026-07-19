# Get-SQLiteTableColumnData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Retrieves data from a specific column in a SQLite database table.

## Description

Эта функция предоставляет удобный способ извлечения данных из одного столбца таблицы базы данных SQLite. Она поддерживает два способа подключения: прямой путь к файлу базы данных или строку подключения. Функция включает опции для ограничения количества возвращаемых записей и использует правильное построение SQLite-запросов для оптимальной производительности.

## Syntax

```powershell
Get-SQLiteTableColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTableColumnData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTableColumnData -TableName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Строка подключения к базе данных SQLite *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Путь к файлу базы данных SQLite *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | Название таблицы для запроса |
| `-ColumnName` | String | ✅ | — | 2 | — | Название столбца для получения |
| `-Count` | Int32 | — | — | 3 | `100` | Количество записей для возврата. По умолчанию 100. Используйте -1 для всех |

## Examples

### Get-SQLiteTableColumnData -DatabaseFilePath "C:\MyDb.sqlite" `     -TableName "Employees" `     -ColumnName "Email" `     -Count 10

```powershell
Get-SQLiteTableColumnData -DatabaseFilePath "C:\MyDb.sqlite" `
    -TableName "Employees" `
    -ColumnName "Email" `
    -Count 10
```

### Get-SQLiteTableColumnData "C:\MyDb.sqlite" "Employees" "Email"

```powershell
Get-SQLiteTableColumnData "C:\MyDb.sqlite" "Employees" "Email"
```

## Related Links

- [Get-SQLiteTableColumnData on GitHub](https://github.com/genXdev/genXdev)
