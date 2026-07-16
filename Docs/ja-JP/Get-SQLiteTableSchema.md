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
| `-ConnectionString` | String | ✅ | — | 0 | — | SQLiteデータベースへの接続文字列 *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | SQLiteデータベースファイルへのパス *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | テーブルの名前 |

## Related Links

- [Get-SQLiteTableSchema on GitHub](https://github.com/genXdev/genXdev)
