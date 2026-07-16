# Get-SQLiteViewSchema

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLiteViewSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLiteViewSchema -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteViewSchema -ViewName <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | De verbindingsreeks naar de SQLite-database. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Het pad naar het SQLite-databasebestand. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 1 | — | De naam van de weergave. |

## Related Links

- [Get-SQLiteViewSchema on GitHub](https://github.com/genXdev/genXdev)
