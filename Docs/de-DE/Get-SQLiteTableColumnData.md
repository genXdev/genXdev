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
| `-ConnectionString` | String | ✅ | — | 0 | — | Die Verbindungszeichenfolge zur SQLite-Datenbank *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Der Pfad zur SQLite-Datenbankdatei *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | Der Name der abzufragenden Tabelle |
| `-ColumnName` | String | ✅ | — | 2 | — | Der Name der abzurufenden Spalte |
| `-Count` | Int32 | — | — | 3 | `100` | Anzahl der zurückzugebenden Datensätze. Standardwert: 100. Verwenden Sie -1 für alle. |

## Related Links

- [Get-SQLiteTableColumnData on GitHub](https://github.com/genXdev/genXdev)
