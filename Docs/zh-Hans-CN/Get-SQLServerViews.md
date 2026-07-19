# Get-SQLServerViews

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> 从 SQL Server 数据库中检索视图列表。

## Description

从指定的 SQL Server 数据库中获取所有视图名称。返回一个视图名称数组，可用于进一步的数据库操作。该函数支持两组参数以实现灵活性：提供连接字符串，或提供数据库名称和服务器。

## Syntax

```powershell
Get-SQLServerViews -ConnectionString <String> [<CommonParameters>]

Get-SQLServerViews -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | 连接到 SQL Server 数据库的连接字符串。 *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | SQL Server 数据库的名称。 *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | SQL Server 实例名称。 *(Parameter set: )* |

## Examples

### Get-SQLServerViews -DatabaseName "MyDatabase" -Server "localhost"

```powershell
Get-SQLServerViews -DatabaseName "MyDatabase" -Server "localhost"
```

### Get-SQLServerViews -ConnectionString "Server=localhost;Database=MyDatabase;Integrated Security=true;"

```powershell
Get-SQLServerViews -ConnectionString "Server=localhost;Database=MyDatabase;Integrated Security=true;"
```

## Related Links

- [Get-SQLServerViews on GitHub](https://github.com/genXdev/genXdev)
