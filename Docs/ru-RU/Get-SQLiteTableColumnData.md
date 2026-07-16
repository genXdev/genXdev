# Get-SQLiteTableColumnData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-SQLiteTableColumnData on GitHub](https://github.com/genXdev/genXdev)
