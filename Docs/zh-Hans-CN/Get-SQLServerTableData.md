# Get-SQLServerTableData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> 从SQL数据库表中检索数据，可限制记录数量。

## Description

此函数使用连接字符串或数据库文件路径从SQL数据库表中查询数据。它通过Count参数提供连接数据库和控制检索数据量的灵活性。

## Syntax

```powershell
Get-SQLServerTableData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTableData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerTableData -TableName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | 连接到 SQL Server 数据库的连接字符串。 *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | SQL Server 数据库的名称。 *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | SQL Server 实例名称。 *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | 要从中查询数据的表的名称。 |
| `-Count` | Int32 | — | — | 3 | `100` | 要返回的最大记录数。设置为-1表示全部。 |

## Examples

### Get-SQLServerTableData -DatabaseFilePath "C:\data\users.db" -TableName "Employees" -Count 50

```powershell
Get-SQLServerTableData -DatabaseFilePath "C:\data\users.db" -TableName "Employees" -Count 50
```

### Get-SQLServerTableData "C:\data\users.db" "Employees"

```powershell
Get-SQLServerTableData "C:\data\users.db" "Employees"
```

## Related Links

- [Get-SQLServerTableData on GitHub](https://github.com/genXdev/genXdev)
