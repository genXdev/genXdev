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
| `-ConnectionString` | String | ✅ | — | 0 | — | Die Verbindungszeichenfolge zur SQLite-Datenbank. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Der Pfad zur SQLite-Datenbankdatei. *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | Der Name der Tabelle, aus der Daten abgefragt werden. |
| `-Count` | Int32 | — | — | 2 | `100` | Die maximale Anzahl der zurückzugebenden Datensätze. -1 für alle. |

## Related Links

- [Get-SQLiteTableData on GitHub](https://github.com/genXdev/genXdev)
