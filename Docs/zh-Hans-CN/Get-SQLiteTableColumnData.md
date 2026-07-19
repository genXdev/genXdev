# Get-SQLiteTableColumnData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> 从SQLite数据库表中特定列检索数据。

## Description

该函数提供了一种便捷的方法，用于从SQLite数据库表的单个列中提取数据。它支持两种连接方式：直接数据库文件路径或连接字符串。该函数包含限制返回记录数量的选项，并通过合理的SQLite查询构建实现最佳性能。

## Syntax

```powershell
Get-SQLiteTableColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTableColumnData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTableColumnData -TableName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQLite 数据库的连接字符串 *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | SQLite数据库文件的路径 *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | 要查询的表名称 |
| `-ColumnName` | String | ✅ | — | 2 | — | 要检索的列名称 |
| `-Count` | Int32 | — | — | 3 | `100` | 要返回的记录数。默认为100。使用-1表示全部 |

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
