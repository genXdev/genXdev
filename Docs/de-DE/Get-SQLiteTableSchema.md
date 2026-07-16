# Get-SQLiteTableSchema

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLiteTableSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTableSchema -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTableSchema -TableName <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Die Verbindungszeichenfolge zur SQLite-Datenbank *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Der Pfad zur SQLite-Datenbankdatei *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | Der Name der Tabelle |

## Related Links

- [Get-SQLiteTableSchema on GitHub](https://github.com/genXdev/genXdev)
