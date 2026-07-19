# Get-SQLiteSchema

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> 从SQLite数据库中检索完整的模式(schema)信息。

## Description

此函数查询 sqlite_master 表以获取 SQLite 数据库的完整模式定义，包括表、视图、索引和触发器。它接受连接字符串或数据库文件的直接路径。

## Syntax

```powershell
Get-SQLiteSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLiteSchema -DatabaseFilePath <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQLite数据库的连接字符串。 *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | SQLite数据库文件的路径。 *(Parameter set: )* |

## Examples

### Get-SQLiteSchema -DatabaseFilePath "C:\Databases\inventory.db"

```powershell
Get-SQLiteSchema -DatabaseFilePath "C:\Databases\inventory.db"
```

### Get-SQLiteSchema -ConnectionString "Data Source=C:\Databases\inventory.db;Version=3;"

```powershell
Get-SQLiteSchema -ConnectionString "Data Source=C:\Databases\inventory.db;Version=3;"
```

## Related Links

- [Get-SQLiteSchema on GitHub](https://github.com/genXdev/genXdev)
