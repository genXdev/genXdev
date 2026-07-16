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
| `-ConnectionString` | String | ✅ | — | 0 | — | SQLite数据库的连接字符串。 *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | SQLite数据库文件的路径。 *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | 要从中查询数据的表的名称。 |
| `-Count` | Int32 | — | — | 2 | `100` | 要返回的最大记录数。设置为-1表示全部。 |

## Related Links

- [Get-SQLiteTableData on GitHub](https://github.com/genXdev/genXdev)
