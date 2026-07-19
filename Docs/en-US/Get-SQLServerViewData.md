# Get-SQLServerViewData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Retrieves data from a SQL database view with optional record limiting.

## Description

Queries a SQL database view using either a connection string or database file
path. The function supports limiting the number of returned records and provides
verbose output for tracking query execution.

## Syntax

```powershell
Get-SQLServerViewData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerViewData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerViewData -ViewName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | The connection string to the SQL Server database. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | The name of the SQL Server database. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | The SQL Server instance name. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 2 | — | The name of the view to query. |
| `-Count` | Int32 | — | — | 3 | `100` | Number of records to return. -1 for all records. |

## Examples

### Get-SQLServerViewData -DatabaseFilePath "C:\MyDb.sqlite" `     -ViewName "CustomerView" `     -Count 50

```powershell
Get-SQLServerViewData -DatabaseFilePath "C:\MyDb.sqlite" `
    -ViewName "CustomerView" `
    -Count 50
```

### Get-SQLServerViewData "C:\MyDb.sqlite" "CustomerView"

```powershell
Get-SQLServerViewData "C:\MyDb.sqlite" "CustomerView"
```

## Related Links

- [Get-SQLServerViewData on GitHub](https://github.com/genXdev/genXdev)
