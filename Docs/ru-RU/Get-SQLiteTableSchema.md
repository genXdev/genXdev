# Get-SQLiteTableSchema

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLiteTableSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTableSchema -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTableSchema -TableName <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Строка подключения к базе данных SQLite *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Путь к файлу базы данных SQLite *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | Название таблицы |

## Related Links

- [Get-SQLiteTableSchema on GitHub](https://github.com/genXdev/genXdev)
