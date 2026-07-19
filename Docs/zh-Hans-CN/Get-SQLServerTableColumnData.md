# Get-SQLServerTableColumnData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> 从SQL数据库表中特定列检索数据。

## Description

此函数提供了一种便捷的方法，用于从SQL数据库表的单个列中提取数据。它支持两种连接方式：直接指定数据库文件路径或使用连接字符串。该函数包含限制返回记录数量的选项，并通过规范的SQL查询构造实现最佳性能。

## Syntax

```powershell
Get-SQLServerTableColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTableColumnData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerTableColumnData -TableName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQL Server 数据库的连接字符串 *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | SQL Server 数据库的名称 *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | SQL Server 实例名称 *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | 要查询的表名称 |
| `-ColumnName` | String | ✅ | — | 3 | — | 要检索的列名称 |
| `-Count` | Int32 | — | — | 4 | `100` | 要返回的记录数。默认为100。使用-1表示全部 |

## Examples

### Get-SQLServerTableColumnData -DatabaseFilePath "C:\MyDb.sqlite" `     -TableName "Employees" `     -ColumnName "Email" `     -Count 10

```powershell
Get-SQLServerTableColumnData -DatabaseFilePath "C:\MyDb.sqlite" `
    -TableName "Employees" `
    -ColumnName "Email" `
    -Count 10
```

### Get-SQLServerTableColumnData "C:\MyDb.sqlite" "Employees" "Email"

```powershell
Get-SQLServerTableColumnData "C:\MyDb.sqlite" "Employees" "Email"
```

## Related Links

- [Get-SQLServerTableColumnData on GitHub](https://github.com/genXdev/genXdev)
