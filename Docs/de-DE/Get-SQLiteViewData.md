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
| `-ConnectionString` | String | ✅ | — | 0 | — | Die Verbindungszeichenfolge zur SQLite-Datenbank. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Der Pfad zur SQLite-Datenbankdatei. *(Parameter set: )* |
| `-ViewName` | String | ✅ | — | 1 | — | Der Name der abzufragenden Ansicht. |
| `-Count` | Int32 | — | — | 2 | `100` | Anzahl der zurückzugebenden Datensätze. -1 für alle Datensätze. |

## Related Links

- [Get-SQLiteViewData on GitHub](https://github.com/genXdev/genXdev)
