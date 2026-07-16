# Get-SQLiteViewData

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLiteViewData -ConnectionString <String> [<CommonParameters>]

Get-SQLiteViewData -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteViewData -ViewName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | De verbindingsreeks naar de SQLite-database. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Het pad naar het SQLite-databasebestand. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 1 | — | De naam van de view die moet worden opgevraagd. |
| `-Count` | Int32 | — | — | 2 | `100` | Aantal records om terug te geven. -1 voor alle records. |

## Related Links

- [Get-SQLiteViewData on GitHub](https://github.com/genXdev/genXdev)
