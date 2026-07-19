# Get-SQLServerViewColumnData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> 从SQL视图中检索列数据，并可选择限制记录数。

## Description

对指定的SQL视图执行SELECT查询，从单个列中检索数据。支持通过连接字符串或数据库文件路径进行连接。允许限制返回的记录数或检索所有记录。

## Syntax

```powershell
Get-SQLServerViewColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerViewColumnData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerViewColumnData -ViewName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | 连接到 SQL Server 数据库的连接字符串。 *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | SQL Server 数据库的名称。 *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | SQL Server 实例名称。 *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 2 | — | 视图的名称。 |
| `-ColumnName` | String | ✅ | — | 3 | — | 列的名称。 |
| `-Count` | Int32 | — | — | 4 | `100` | 要返回的记录数。默认值为 100。-1 表示全部。 |

## Examples

### Get-SQLServerViewColumnData -DatabaseFilePath "C:\MyDB.sqlite" `     -ViewName "CustomersView" `     -ColumnName "Email" `     -Count 50

```powershell
Get-SQLServerViewColumnData -DatabaseFilePath "C:\MyDB.sqlite" `
    -ViewName "CustomersView" `
    -ColumnName "Email" `
    -Count 50
```

### Get-SQLServerViewColumnData "C:\MyDB.sqlite" "CustomersView" "Email"

```powershell
Get-SQLServerViewColumnData "C:\MyDB.sqlite" "CustomersView" "Email"
```

## Related Links

- [Get-SQLServerViewColumnData on GitHub](https://github.com/genXdev/genXdev)
