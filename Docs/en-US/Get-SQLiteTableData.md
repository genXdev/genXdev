# Get-SQLiteTableData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Retrieves data from a SQLite database table with optional record limiting.

## Description

This function queries data from a SQLite database table using either a connection
string or database file path. It provides flexibility in connecting to the
database and controlling the amount of data retrieved through the Count parameter.

## Syntax

```powershell
Get-SQLiteTableData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTableData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTableData -TableName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | The connection string to the SQLite database. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | The path to the SQLite database file. *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | The name of the table to query data from. |
| `-Count` | Int32 | — | — | 2 | `100` | The maximum number of records to return. -1 for all. |

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
