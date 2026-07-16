# Get-SQLiteTableData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLiteTableData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTableData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTableData -TableName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Строка подключения к базе данных SQLite. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Путь к файлу базы данных SQLite. *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | Имя таблицы, из которой следует запрашивать данные. |
| `-Count` | Int32 | — | — | 2 | `100` | Максимальное количество записей для возврата. -1 для всех. |

## Related Links

- [Get-SQLiteTableData on GitHub](https://github.com/genXdev/genXdev)
