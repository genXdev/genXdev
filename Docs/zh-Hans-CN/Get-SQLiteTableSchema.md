# Get-SQLiteTableSchema

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> 检索指定SQLite表的模式信息。

## Description

此函数查询SQLite数据库以获取指定表的详细模式信息。它使用SQLite PRAGMA table_info命令返回列定义，包括名称、类型、可空状态和默认值。

## Syntax

```powershell
Get-SQLiteTableSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTableSchema -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTableSchema -TableName <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQLite 数据库的连接字符串 *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | SQLite数据库文件的路径 *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | 表格名称 |

## Examples

### Get-SQLiteTableSchema -DatabaseFilePath "C:\Databases\mydb.sqlite" `     -TableName "Users"

```powershell
Get-SQLiteTableSchema -DatabaseFilePath "C:\Databases\mydb.sqlite" `
    -TableName "Users"
```

### Get-SQLiteTableSchema -ConnectionString "Data Source=C:\Databases\mydb.sqlite" `     -TableName "Products"

```powershell
Get-SQLiteTableSchema -ConnectionString "Data Source=C:\Databases\mydb.sqlite" `
    -TableName "Products"
```

## Related Links

- [Get-SQLiteTableSchema on GitHub](https://github.com/genXdev/genXdev)
