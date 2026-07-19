# Get-SQLiteViewSchema

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> 检索 SQLite 视图的 SQL 模式定义。

## Description

此函数查询SQLite数据库的系统表，提取指定视图的SQL定义。它支持通过连接字符串或直接数据库文件路径进行连接，并返回定义所请求视图的完整SQL模式。

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

## Examples

### Get-SQLiteViewSchema -DatabaseFilePath "C:\Databases\MyApp.sqlite" `                     -ViewName "CustomerOrders"

```powershell
Get-SQLiteViewSchema -DatabaseFilePath "C:\Databases\MyApp.sqlite" `
                    -ViewName "CustomerOrders"
```

## Related Links

- [Get-SQLiteViewSchema on GitHub](https://github.com/genXdev/genXdev)
