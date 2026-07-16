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
| `-ConnectionString` | String | ✅ | — | 0 | — | Die Verbindungszeichenfolge zur SQLite-Datenbank. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Der Pfad zur SQLite-Datenbankdatei. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 1 | — | Der Name der Ansicht. |

## Related Links

- [Get-SQLiteViewSchema on GitHub](https://github.com/genXdev/genXdev)
