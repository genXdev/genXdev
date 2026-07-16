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
| `-ConnectionString` | String | ✅ | — | 0 | — | SQLite数据库的连接字符串。 *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | SQLite数据库文件的路径。 *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 1 | — | 要查询的视图名称。 |
| `-Count` | Int32 | — | — | 2 | `100` | 要返回的记录数。设为 -1 表示返回所有记录。 |

## Related Links

- [Get-SQLiteViewData on GitHub](https://github.com/genXdev/genXdev)
