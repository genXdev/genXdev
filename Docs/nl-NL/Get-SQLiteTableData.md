# Get-SQLiteTableData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLiteTableData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTableData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTableData -TableName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | De verbindingsreeks naar de SQLite-database. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Het pad naar het SQLite-databasebestand. *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | De naam van de tabel waaruit gegevens worden opgevraagd. |
| `-Count` | Int32 | — | — | 2 | `100` | Het maximale aantal records dat moet worden teruggegeven. -1 voor alle. |

## Related Links

- [Get-SQLiteTableData on GitHub](https://github.com/genXdev/genXdev)
