# Get-SQLiteViewData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> 从SQLite数据库视图检索数据，并可限制记录数量。

## Description

该函数通过连接字符串或数据库文件路径查询SQLite数据库视图，支持限制返回记录数，并提供详细输出以跟踪查询执行。

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

## Examples

### Get-SQLiteViewData -DatabaseFilePath "C:\MyDb.sqlite" `     -ViewName "CustomerView" `     -Count 50

```powershell
Get-SQLiteViewData -DatabaseFilePath "C:\MyDb.sqlite" `
    -ViewName "CustomerView" `
    -Count 50
```

### Get-SQLiteViewData "C:\MyDb.sqlite" "CustomerView"

```powershell
Get-SQLiteViewData "C:\MyDb.sqlite" "CustomerView"
```

## Related Links

- [Get-SQLiteViewData on GitHub](https://github.com/genXdev/genXdev)
