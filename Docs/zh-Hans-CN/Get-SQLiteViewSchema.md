# Get-SQLiteViewSchema

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLiteViewSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLiteViewSchema -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteViewSchema -ViewName <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQLite数据库的连接字符串。 *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | SQLite数据库文件的路径。 *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 1 | — | 视图的名称。 |

## Related Links

- [Get-SQLiteViewSchema on GitHub](https://github.com/genXdev/genXdev)
