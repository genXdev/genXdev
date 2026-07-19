# Get-SQLiteTables

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> 从SQLite数据库中检索表名列表。

## Description

查询sqlite_master系统表以从SQLite数据库中检索所有用户定义的表名。支持通过直接连接字符串或数据库文件路径进行连接。返回表名作为字符串集合。

## Syntax

```powershell
Get-SQLiteTables -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTables -DatabaseFilePath <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQLite数据库的连接字符串。 *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | SQLite数据库文件的路径。 *(Parameter set: )* |

## Examples

### Get-SQLiteTables -DatabaseFilePath "C:\Databases\Inventory.sqlite" Returns all table names from the specified database file

```powershell
Get-SQLiteTables -DatabaseFilePath "C:\Databases\Inventory.sqlite"
Returns all table names from the specified database file
```

### Get-SQLiteTables -ConnectionString "Data Source=C:\DB\Users.sqlite;Version=3;" Returns all table names using a custom connection string ##############################################################################

```powershell
Get-SQLiteTables -ConnectionString "Data Source=C:\DB\Users.sqlite;Version=3;"
Returns all table names using a custom connection string
##############################################################################
```

## Related Links

- [Get-SQLiteTables on GitHub](https://github.com/genXdev/genXdev)
