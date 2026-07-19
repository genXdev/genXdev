# Get-SQLiteTableData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> 从SQLite数据库表中检索数据，并可限制返回的记录数。

## Description

此函数使用连接字符串或数据库文件路径从 SQLite 数据库表中查询数据。它通过 Count 参数灵活控制数据库连接方式和检索的数据量。

## Syntax

```powershell
Get-SQLiteTableData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTableData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTableData -TableName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQLite数据库的连接字符串。 *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | SQLite数据库文件的路径。 *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | 要从中查询数据的表的名称。 |
| `-Count` | Int32 | — | — | 2 | `100` | 要返回的最大记录数。设置为-1表示全部。 |

## Examples

### Get-SQLiteTableData -DatabaseFilePath "C:\data\users.db" -TableName "Employees" -Count 50

```powershell
Get-SQLiteTableData -DatabaseFilePath "C:\data\users.db" -TableName "Employees" -Count 50
```

### Get-SQLiteTableData "C:\data\users.db" "Employees"

```powershell
Get-SQLiteTableData "C:\data\users.db" "Employees"
```

## Related Links

- [Get-SQLiteTableData on GitHub](https://github.com/genXdev/genXdev)
