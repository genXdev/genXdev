# Get-SQLiteTableColumnData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLiteTableColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTableColumnData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTableColumnData -TableName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | De verbindingsreeks naar de SQLite-database *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Het pad naar het SQLite-databasebestand *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | The name of the table to query |
| `-ColumnName` | String | ✅ | — | 2 | — | De naam van de kolom om op te halen |
| `-Count` | Int32 | — | — | 3 | `100` | Aantal terug te geven records. Standaard 100. Gebruik -1 voor alle |

## Related Links

- [Get-SQLiteTableColumnData on GitHub](https://github.com/genXdev/genXdev)
