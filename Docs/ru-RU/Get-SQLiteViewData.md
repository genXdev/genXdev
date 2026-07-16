# Get-SQLiteViewData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLiteViewData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteViewData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteViewData -ViewName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Строка подключения к базе данных SQLite. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Путь к файлу базы данных SQLite. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 1 | — | Имя представления для запроса. |
| `-Count` | Int32 | — | — | 2 | `100` | Количество возвращаемых записей. -1 для всех записей. |

## Related Links

- [Get-SQLiteViewData on GitHub](https://github.com/genXdev/genXdev)
