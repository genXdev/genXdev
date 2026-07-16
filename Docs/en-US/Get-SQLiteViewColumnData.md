# Get-SQLiteViewColumnData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLiteViewColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteViewColumnData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteViewColumnData -ViewName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | The connection string to the SQLite database. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | The path to the SQLite database file. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 1 | — | The name of the view. |
| `-ColumnName` | String | ✅ | — | 2 | — | The name of the column. |
| `-Count` | Int32 | — | — | 3 | `100` | The number of records to return. Default is 100. -1 for all. |

## Related Links

- [Get-SQLiteViewColumnData on GitHub](https://github.com/genXdev/genXdev)
