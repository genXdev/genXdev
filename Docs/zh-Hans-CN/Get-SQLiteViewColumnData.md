# Get-SQLiteViewColumnData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLiteViewColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteViewColumnData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteViewColumnData -ViewName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQLite数据库的连接字符串。 *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | SQLite数据库文件的路径。 *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 1 | — | 视图的名称。 |
| `-ColumnName` | String | ✅ | — | 2 | — | 列的名称。 |
| `-Count` | Int32 | — | — | 3 | `100` | 要返回的记录数。默认值为 100。-1 表示全部。 |

## Related Links

- [Get-SQLiteViewColumnData on GitHub](https://github.com/genXdev/genXdev)
